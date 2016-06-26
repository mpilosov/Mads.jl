import Mads
import DataStructures

function mamkemadsmodelrun(madsdata::Associative)
	times = Mads.getobstime(madsdata)
	names = Mads.getobskeys(madsdata)
	function madsmodelrun(parameters::Associative) # model run
		f(t) = parameters["a"] * (t ^ parameters["n"]) + parameters["b"] * t + parameters["c"] # a * t^2 - b
		predictions = DataStructures.OrderedDict{AbstractString, Float64}(zip(names, map(f, times)))
		return predictions
	end
end