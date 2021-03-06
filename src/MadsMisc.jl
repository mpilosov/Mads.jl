import MetaProgTools
import DataStructures
import DocumentFunction

"""
Make a version of the function `f` that accepts an array containing the optimal parameter values

$(DocumentFunction.documentfunction(makearrayfunction;
argtext=Dict("madsdata"=>"MADS problem dictionary",
            "f"=>"function [default=`makemadscommandfunction(madsdata)`]")))

Returns:

- function accepting an array containing the optimal parameter values
"""
function makearrayfunction(madsdata::Associative, f::Function=makemadscommandfunction(madsdata))
	optparamkeys = getoptparamkeys(madsdata)
	initparams = DataStructures.OrderedDict{String,Float64}(zip(getparamkeys(madsdata), getparamsinit(madsdata)))
	function arrayfunction(arrayparameters::Vector)
		return f(merge(initparams, DataStructures.OrderedDict{String,Float64}(zip(optparamkeys, arrayparameters))))
	end
	return arrayfunction
end

"""
Make a version of the function `f` that accepts an array containing the optimal parameter values, and returns an array of observations

$(DocumentFunction.documentfunction(makedoublearrayfunction;
argtext=Dict("madsdata"=>"MADS problem dictionary",
            "f"=>"function [default=`makemadscommandfunction(madsdata)`]")))

Returns:

- function accepting an array containing the optimal parameter values, and returning an array of observations
"""
function makedoublearrayfunction(madsdata::Associative, f::Function=makemadscommandfunction(madsdata))
	arrayfunction = makearrayfunction(madsdata, f)
	obskeys = getobskeys(madsdata)
	function doublearrayfunction(arrayparameters::Vector)
		dictresult = arrayfunction(arrayparameters)
		arrayresult = Array{Float64}(length(obskeys))
		i = 1
		for k in obskeys
			arrayresult[i] = dictresult[k]
			i += 1
		end
		return arrayresult
	end
	return doublearrayfunction
end

"""
Make a conditional log likelihood function that accepts an array containing the optimal parameter values

$(DocumentFunction.documentfunction(makearrayconditionalloglikelihood;
argtext=Dict("madsdata"=>"MADS problem dictionary",
            "conditionalloglikelihood"=>"conditional log likelihood")))

Returns:

- a conditional log likelihood function that accepts an array
"""
function makearrayconditionalloglikelihood(madsdata::Associative, conditionalloglikelihood)
	f = makemadscommandfunction(madsdata)
	optparamkeys = getoptparamkeys(madsdata)
	initparams = DataStructures.OrderedDict{String,Float64}(zip(getparamkeys(madsdata), getparamsinit(madsdata)))
	function arrayconditionalloglikelihood(arrayparameters::Vector)
		predictions = f(merge(initparams, DataStructures.OrderedDict{String,Float64}(zip(optparamkeys, arrayparameters))))
		cll = conditionalloglikelihood(predictions, madsdata["Observations"])
		return cll
	end
	return arrayconditionalloglikelihood
end

"""
Make a log likelihood function that accepts an array containing the optimal parameter values

$(DocumentFunction.documentfunction(makearrayloglikelihood;
argtext=Dict("madsdata"=>"MADS problem dictionary",
            "loglikelihood"=>"log likelihood")))

Returns:

- a log likelihood function that accepts an array
"""
function makearrayloglikelihood(madsdata::Associative, loglikelihood) # make log likelihood array
	f = makemadscommandfunction(madsdata)
	optparamkeys = getoptparamkeys(madsdata)
	initparams = DataStructures.OrderedDict{String,Float64}(zip(getparamkeys(madsdata), getparamsinit(madsdata)))
	function arrayloglikelihood(arrayparameters::Vector)
		predictions = DataStructures.OrderedDict()
		try
			predictions = f(merge(initparams, DataStructures.OrderedDict{String,Float64}(zip(optparamkeys, arrayparameters))))
		catch e
			return -Inf
		end
		loglikelihood(DataStructures.OrderedDict{String,Float64}(zip(optparamkeys, arrayparameters)), predictions, madsdata["Observations"])
	end
	return arrayloglikelihood
end

"""
Evaluate an expression string based on a parameter dictionary

$(DocumentFunction.documentfunction(evaluatemadsexpression;
argtext=Dict("expressionstring"=>"expression string",
            "parameters"=>"parameter dictionary applied to evaluate the expression string")))

Returns:

- dictionary containing the expression names as keys, and the values of the expression as values
"""
function evaluatemadsexpression(expressionstring::String, parameters::Associative)
	expression = parse(expressionstring)
	expression = MetaProgTools.populateexpression(expression, parameters)
	local retval::Float64
	retval = eval(expression) # populate the expression with the parameter values, then evaluate it
	return retval
end

"""
Evaluate all the expressions in the Mads problem dictiorany based on a parameter dictionary

$(DocumentFunction.documentfunction(evaluatemadsexpressions;
argtext=Dict("madsdata"=>"MADS problem dictionary",
            "parameters"=>"parameter dictionary applied to evaluate the expression strings")))

Returns:

- dictionary containing the expression names as keys, and the values of the expression as values
"""
function evaluatemadsexpressions(madsdata::Associative, parameters::Associative)
	if haskey(madsdata, "Expressions")
		expressions = Dict()
		for exprname in keys(madsdata["Expressions"])
			expressions[exprname] = evaluatemadsexpression(madsdata["Expressions"][exprname]["exp"], parameters)
		end
		return expressions
	else
		return Dict()
	end
end

"Convert `@sprintf` macro into `sprintf` function"
sprintf(args...) = eval(:@sprintf($(args...)))

"""
Parse parameter distribution from a string

$(DocumentFunction.documentfunction(getdistribution;
argtext=Dict("dist"=>"parameter distribution",
            "inputname"=>"input name (name of a parameter or observation)",
            "inputtype"=>"input type (parameter or observation)")))

Returns:

- distribution
"""
function getdistribution(dist::String, i::String, inputtype::String)
	distribution = nothing
	try
		distribution = Distributions.eval(parse(dist))
	catch e
		printerrormsg(e)
		madserror("Something is wrong with $(inputtype) '$(inputname)' distribution (dist: '$(dist)')")
	end
	return distribution
end
