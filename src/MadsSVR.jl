import SVR
import DataStructures
import DocumentFunction

function svrtrain(madsdata::Associative, paramarray::Array{Float64,2}; check::Bool=false, savefile::Bool=false, addminmax::Bool=true, svm_type::Int32=SVR.EPSILON_SVR, kernel_type::Int32=SVR.RBF, degree::Integer=3, gamma::Float64=1/numberofsamples, coef0::Float64=0.0, C::Float64=1000.0, nu::Float64=0.5, p::Float64=0.1, cache_size::Float64=100.0, eps::Float64=0.001, shrinking::Bool=true, probability::Bool=false, verbose::Bool=false)
	numberofsamples = size(paramarray, 1)
	predictions = Mads.forward(madsdata, paramarray)'

	npred = size(predictions, 1)
	svrmodel = Array(SVR.svmmodel, npred)
	svrpredictions2 = Array(Float64, 0, numberofsamples)
	for i=1:npred
		sm = SVR.train(predictions[i,:], paramarray'; svm_type=svm_type, kernel_type=kernel_type, gamma=gamma, coef0=coef0, C=C, nu=nu, p=p, cache_size=cache_size, eps=eps, shrinking=shrinking, probability=probability);
		svrmodel[i] = sm
		if check
			y_pr = SVR.predict(sm, paramarray');
			svrpredictions2 = [svrpredictions2; y_pr']
		end
		if savefile
			Mads.mkdir("svrmodels")
			SVR.savemodel(sm, joinpath("svrmodels", "$r-$i-$numberofsamples.svr"))
		end
	end
	if check
		Mads.spaghettiplot(madsdata, predictions, keyword="svr-training", format="PNG")
		Mads.display("$rootname-svr-training-$numberofsamples-spaghetti.png")
		info("SVR discrepancy $(maximum(abs.(svrpredictions2 .- predictions)))")
		Mads.spaghettiplot(madsdata, svrpredictions2, keyword="svr-prediction2", format="PNG")
		Mads.display("$rootname-svr-prediction2-$numberofsamples-spaghetti.png")
		svrpredictions = svrpredict(svrmodel, paramarray)
		info("SVR discrepancy $(maximum(abs.(svrpredictions .- predictions)))")
		Mads.spaghettiplot(madsdata, svrpredictions, keyword="svr-prediction", format="PNG")
		Mads.display("$rootname-svr-prediction-$numberofsamples-spaghetti.png")
	end
	return svrmodel
end
function svrtrain(madsdata::Associative, numberofsamples::Integer=100; addminmax::Bool=true, kw...)
	rootname = splitdir(Mads.getmadsrootname(madsdata))[end]
	paramdict = Mads.getparamrandom(madsdata, numberofsamples)
	paramarray = hcat(map(i->collect(paramdict[i]), keys(paramdict))...)
	if addminmax
		k = Mads.getoptparamkeys(madsdata)
		pmin = Mads.getparamsmin(madsdata, k)
		pmax = Mads.getparamsmax(madsdata, k)
		pinit = Mads.getparamsinit(madsdata, k)
		gmin, gmax = Mads.meshgrid(pmin, pmax)
		paramarray = [paramarray; gmin; gmax; pinit']
		numberofsamples += 2 * length(k) + 1
	end
	svrtrain(madsdata, paramarray; kw...)
end

@doc """
Train SVR

$(DocumentFunction.documentfunction(svrtrain;
argtext=Dict("madsdata"=>"MADS problem dictionary",
			"numberofsamples"=>"number of random samples in the training set [default=`100`]"),
keytext=Dict("check"=>"[default=`false`]",
			"savefile"=>"[default=`false`]",
			"addminmax"=>"[default=`true`]",
			"svm_type"=>"[default=`SVR.EPSILON_SVR`]",
			"kernel_type"=>"[default=`SVR.RBF`]",
			"degree"=>"[default=`3`]",
			"gamma"=>"[default=`1/numberofsamples`]",
			"coef0"=>"[default=`0`]",
			"C"=>"[default=`10000.0`]",
			"nu"=>"[default=`0.5`]",
			"p"=>"[default=`0.1`]",
			"cache_size"=>"[default=`100.0`]",
			"eps"=>"[default=`0.001`]",
			"shrinking"=>"[default=`true`]",
			"probability"=>"[default=`false`]",
			"verbose"=>"[default=`false`]")))

Returns:

- SVR model
""" svrtrain

function svrpredict(svrmodel::Array{SVR.svmmodel, 1}, paramarray::Array{Float64, 1})
	npred = length(svrmodel)
	y = Array(Float64, npred)
	for i=1:npred
		y[i] = SVR.predict(svrmodel[i], paramarray');
	end
	return y
end
function svrpredict(svrmodel::Array{SVR.svmmodel, 1}, paramarray::Array{Float64, 2})
	npred = length(svrmodel)
	y = Array(Float64, 0, size(paramarray, 1))
	for i=1:npred
		y = [y; SVR.predict(svrmodel[i], paramarray')'];
	end
	return y
end

@doc """
Predict SVR

$(DocumentFunction.documentfunction(svrpredict;
argtext=Dict("svrmodel"=>"SVR model",
			"paramarray"=>"parameter array")))

Returns:

-
""" svrpredict

"""
Free SVR

$(DocumentFunction.documentfunction(svrfree;
argtext=Dict("svrmodel"=>"SVR model")))
"""
function svrfree(svrmodel::Array{SVR.svmmodel, 1})
	npred = length(svrmodel)
	for i=1:npred
		if isassigned(svrmodel, i)
			SVR.freemodel(svrmodel[i])
		end
	end
	nothing
end

"""
Dump SVR models in files

$(DocumentFunction.documentfunction(svrdump;
argtext=Dict("svrmodel"=>"SVR model",
			"rootname"=>"root name",
			"numberofsamples"=>"number of samples")))
"""
function svrdump(svrmodel::Array{SVR.svmmodel, 1}, rootname::String, numberofsamples::Int)
	npred = length(svrmodel)
	Mads.mkdir("svrmodels")
	for i=1:npred
		if isassigned(svrmodel, i)
			SVR.savemodel(svrmodel[i], joinpath("svrmodels", "$rootname-$i-$numberofsamples.svr"))
		end
	end
	nothing
end

"""
Load SVR models from files

$(DocumentFunction.documentfunction(svrload;
argtext=Dict("npred"=>"number of model predictions",
			"rootname"=>"root name",
			"numberofsamples"=>"number of samples")))

Returns:

- SVR model
"""
function svrload(npred::Int, rootname::String, numberofsamples::Int)
	svrmodel = Array(SVR.svmmodel, npred)
	for i=1:npred
		filename = joinpath("svrmodels", "$rootname-$i-$numberofsamples.svr")
		if isfile(filename)
			svrmodel[i] = SVR.loadmodel(filename)
		else
			warn("$filename does not exist")
		end
	end
	return svrmodel
end

"""
Make SVR model functions (executor and cleaner)

$(DocumentFunction.documentfunction(makesvrmodel;
argtext=Dict("madsdata"=>"MADS problem dictionary",
			"numberofsamples"=>"number of samples [default=`100`]"),
keytext=Dict("check"=>"[default=`false`]",
			"addminmax"=>"[default=`true`]",
			"loaddata"=>"[default=`false`]",
			"savefile"=>"[default=`false`]",
			"svm_type"=>"[default=`SVR.EPSILON_SVR`]",
			"kernel_type"=>"[default=`SVR.RBF`]",
			"degree"=>"[default=`3`]",
			"gamma"=>"[default=`1/numberofsamples`]",
			"coef0"=>"[default=`0`]",
			"C"=>"[default=`1000.0`]",
			"nu"=>"[default=`0.5`]",
			"p"=>"[default=`0.001`]",
			"cache_size"=>"[default=`100.0`]",
			"eps"=>"[default=`0.001`]",
			"shrinking"=>"[default=`true`]",
			"probability"=>"[default=`false`]",
			"verbose"=>"[default=`false`]",
			"seed"=>"[default=`0`]")))

Returns:

- svrexec, svrread, svrsave, svrclean
"""
function makesvrmodel(madsdata::Associative, numberofsamples::Integer=100; check::Bool=false, addminmax::Bool=true, loaddata::Bool=false, savefile::Bool=false, svm_type::Int32=SVR.EPSILON_SVR, kernel_type::Int32=SVR.RBF, degree::Integer=3, gamma::Float64=1/numberofsamples, coef0::Float64=0.0, C::Float64=1000.0, nu::Float64=0.5, p::Float64=0.001, cache_size::Float64=100.0, eps::Float64=0.001, shrinking::Bool=true, probability::Bool=false, verbose::Bool=false, seed::Integer=0)
	rootname = splitdir(Mads.getmadsrootname(madsdata))[end]
	optnames = Mads.getoptparamkeys(madsdata)
	obsnames = Mads.getobskeys(madsdata)
	npreds = length(obsnames)
	function svrexec(paramarray::Union{Array{Float64, 1}, Array{Float64, 2}})
		return svrpredict(svrmodel, paramarray)
	end
	function svrexec(paramdict::Associative)
		d = DataStructures.OrderedDict{String, Float64}()
		for k in optnames
			d[k] = paramdict[k]
		end
		parvector = collect(values(d))
		p = svrpredict(svrmodel, parvector')
		DataStructures.OrderedDict{String, Float64}(zip(obsnames, p))
	end
	function svrclean()
		svrfree(svrmodel)
	end
	function svrsave()
		svrdump(svrmodel, rootname, numberofsamples)
	end
	function svrread()
		svrmodel = svrload(npreds, rootname, numberofsamples)
		nothing
	end

	if loaddata
		svrread()
	else
		svrmodel = svrtrain(madsdata, numberofsamples; check=check, addminmax=addminmax, savefile=savefile, svm_type=svm_type, kernel_type=kernel_type, gamma=gamma, coef0=coef0, C=C, nu=nu, p=p, cache_size=cache_size, eps=eps, shrinking=shrinking, probability=probability);
	end

	return svrexec, svrread, svrsave, svrclean
end