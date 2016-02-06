# Mads

## Internal

---

<a id="method__allwellsoff.1" class="lexicon_definition"></a>
#### allwellsoff!(madsdata::Associative{K, V})
Turn off all the wells in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:163](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L163)

---

<a id="method__allwellson.1" class="lexicon_definition"></a>
#### allwellson!(madsdata::Associative{K, V})
Turn on all the wells in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:139](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L139)

---

<a id="method__asinetransform.1" class="lexicon_definition"></a>
#### asinetransform(params::Array{T, 1},  lowerbounds::Array{T, 1},  upperbounds::Array{T, 1},  indexlogtransformed::Array{T, 1})
Arcsine transformation of model parameters

*source:*
[Mads/src/MadsSine.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSine.jl#L2)

---

<a id="method__bayessampling.1" class="lexicon_definition"></a>
#### bayessampling(madsdata,  numsequences)
Brute force parallel Bayesian sampling

`Mads.bayessampling(madsdata, numsequences; nsteps=100, burnin=1000, thinning=1)`

Arguments:

- `madsdata` : MADS problem dictionary
- `numsequences` :
- `nsteps` : 
- `burnin` : 
- `thinning` : 

Returns:

- `mcmcchain` : 


*source:*
[Mads/src/MadsMC.jl:53](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L53)

---

<a id="method__bayessampling.2" class="lexicon_definition"></a>
#### bayessampling(madsdata::Associative{K, V})
Bayes Sampling

`Mads.bayessampling(madsdata; nsteps=100, burnin=1000, thinning=1)`

Arguments:

- `madsdata` : MADS problem dictionary
- `nsteps` :  
- `burnin` :  
- `thinning` :   

Returns:

- `mcmcchain` : 


*source:*
[Mads/src/MadsMC.jl:20](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L20)

---

<a id="method__calibrate.1" class="lexicon_definition"></a>
#### calibrate(madsdata::Associative{K, V})
Calibrate

`Mads.calibrate(madsdata; tolX=1e-3, tolG=1e-6, maxEval=1000, maxIter=100, maxJacobians=100, lambda=100.0, lambda_mu=10.0, np_lambda=10, show_trace=false, usenaive=false)`

Arguments:

- `madsdata` : MADS problem dictionary
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `maxJacobians` : maximum number of Jacobian solves
- `lambda` : initial Levenberg-Marquardt lambda 
- `lambda_mu` : lambda multiplication factor [10]
- `np_lambda` : number of parallel lambda solves
- `show_trace` : shows solution trace [default=false]
- `usenaive` : use naive Levenberg-Marquardt solver

Returns:

- `minimumdict` : model parameter dictionary with the optimal values at the minimum
- `results` : optimization algorithm results (e.g. results.minimum)



*source:*
[Mads/src/MadsCalibrate.jl:87](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsCalibrate.jl#L87)

---

<a id="method__calibratenlopt.1" class="lexicon_definition"></a>
#### calibratenlopt(madsdata::Associative{K, V})
Do a calibration using NLopt 

*source:*
[Mads/src/MadsCalibrate.jl:129](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsCalibrate.jl#L129)

---

<a id="method__calibraterandom.1" class="lexicon_definition"></a>
#### calibraterandom(madsdata::Associative{K, V},  numberofsamples)
Calibrate with random initial guesses

`Mads.calibraterandom(madsdata, numberofsamples; tolX=1e-3, tolG=1e-6, maxEval=1000, maxIter=100, maxJacobians=100, lambda=100.0, lambda_mu=10.0, np_lambda=10, show_trace=false, usenaive=false)`

Arguments:

- `madsdata` : MADS problem dictionary
- `numberofsamples` : number of random initial samples
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `maxJacobians` : maximum number of Jacobian solves
- `lambda` : initial Levenberg-Marquardt lambda 
- `lambda_mu` : lambda multiplication factor [10]
- `np_lambda` : number of parallel lambda solves
- `show_trace` : shows solution trace [default=false]
- `usenaive` : use naive Levenberg-Marquardt solver

Returns:

- `bestresult` : optimal results tuple: [1] model parameter dictionary with the optimal values at the minimum; [2] optimization algorithm results (e.g. bestresult[2].minimum)



*source:*
[Mads/src/MadsCalibrate.jl:26](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsCalibrate.jl#L26)

---

<a id="method__cmadsins_obs.1" class="lexicon_definition"></a>
#### cmadsins_obs(obsid::Array{T, 1},  instructionfilename::AbstractString,  inputfilename::AbstractString)
Call C MADS ins_obs() function from the MADS dynamic library

*source:*
[Mads/src/MadsIO.jl:319](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L319)

---

<a id="method__computemass.1" class="lexicon_definition"></a>
#### computemass(madsdata::Associative{K, V})
Compute injected/reduced contaminant mass

`Mads.computemass(madsdata; time = 0)`

Arguments:

- `madsdata` : MADS problem dictionary
- `time` : computational time

Returns:

- `mass_injected` : total injected mass
- `mass_reduced` : total reduced mass


*source:*
[Mads/src/MadsAnasol.jl:193](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsAnasol.jl#L193)

---

<a id="method__computemass.2" class="lexicon_definition"></a>
#### computemass(madsfiles)
Compute injected/reduced contaminant mass for a given set of mads input files

`Mads.computemass(madsfiles; time = 0, path = ".")`

Arguments:

- `madsfiles` : matching pattern for Mads input files (string or regular expression accepted)
- `time` : computational time
- `path` : search directory for the mads input files 

Returns:

- `lambda` : array with all the lambda values
- `mass_injected` : array with associated total injected mass
- `mass_reduced` : array with associated total reduced mass


*source:*
[Mads/src/MadsAnasol.jl:252](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsAnasol.jl#L252)

---

<a id="method__computeparametersensitities.1" class="lexicon_definition"></a>
#### computeparametersensitities(madsdata::Associative{K, V},  saresults::Associative{K, V})
Compute sensitivities for each model parameter; averaging the sensitivity indices over the entire observation range

Arguments:

- `madsdata` : MADS problem dictionary
- `saresults` : sensitivity analysis results


*source:*
[Mads/src/MadsSA.jl:439](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L439)

---

<a id="method__contamination.1" class="lexicon_definition"></a>
#### contamination(wellx,  welly,  wellz,  n,  lambda,  theta,  vx,  vy,  vz,  ax,  ay,  az,  H,  x,  y,  z,  dx,  dy,  dz,  f,  t0,  t1,  t)
Compute concentration for a point in space and time (x,y,z,t)

`Mads.contamination(wellx, welly, wellz, n, lambda, theta, vx, vy, vz, ax, ay, az, H, x, y, z, dx, dy, dz, f, t0, t1, t; anasolfunction="long_bbb_ddd_iir_c")`

Arguments:

- `wellx` - observation point (well) X coordinate
- `welly` - observation point (well) Y coordinate
- `wellz` - observation point (well) Z coordinate
- `n` - porosity
- `lambda` - first-order reaction rate
- `theta` - groundwater flow direction
- `vx` - advective transport velocity in X direction
- `vy` - advective transport velocity in Y direction
- `vz` - advective transport velocity in Z direction
- `ax` - dispersivity in X direction (longitudinal)
- `ay` - dispersivity in Y direction (transverse horizontal)
- `az` - dispersivity in Y direction (transverse vertical)
- `H` - Hurst coefficient for Fractional Brownian dispersion
- `x` - X coordinate of contaminant source location 
- `y` - Y coordinate of contaminant source location
- `z` - Z coordinate of contaminant source location
- `dx` - source size (extent) in X direction
- `dy` - source size (extent) in Y direction
- `dz` - source size (extent) in Z direction
- `f` - source mass flux
- `t0` - source starting time
- `t1` - source termination time
- `t` - time to compute concentration at the observation point
- `anasolfunction` : Anasol function to call (check out the Anasol module) [long_bbb_ddd_iir_c]

Returns:

- predicted concentration at (wellx, welly, wellz, t)


*source:*
[Mads/src/MadsAnasol.jl:152](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsAnasol.jl#L152)

---

<a id="method__copyright.1" class="lexicon_definition"></a>
#### copyright()
Produce MADS copyright information

*source:*
[Mads/src/MadsHelp.jl:9](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelp.jl#L9)

---

<a id="method__create_documentation.1" class="lexicon_definition"></a>
#### create_documentation()
Create web documentation files for Mads functions

*source:*
[Mads/src/MadsHelp.jl:14](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelp.jl#L14)

---

<a id="method__create_tests_off.1" class="lexicon_definition"></a>
#### create_tests_off()
Turn off the generation of MADS tests (default)

*source:*
[Mads/src/MadsHelpers.jl:17](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L17)

---

<a id="method__create_tests_on.1" class="lexicon_definition"></a>
#### create_tests_on()
Turn on the generation of MADS tests (dangerous)

*source:*
[Mads/src/MadsHelpers.jl:12](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L12)

---

<a id="method__createmadsproblem.1" class="lexicon_definition"></a>
#### createmadsproblem(infilename::AbstractString,  outfilename::AbstractString)
Create a new Mads problem where the observation targets are computed based on the model predictions

- `Mads.createmadsproblem(infilename, outfilename)`
- `Mads.createmadsproblem(madsdata, outfilename)`
- `Mads.createmadsproblem(madsdata, predictions, outfilename)

Arguments:

- `infilename` : input Mads file
- `outfilename` : output Mads file
- `madsdata` : MADS problem dictionary
- `predictions` : dictionary of model predictions


*source:*
[Mads/src/MadsCreate.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsCreate.jl#L16)

---

<a id="method__createobservations.1" class="lexicon_definition"></a>
#### createobservations!(madsdata::Associative{K, V},  time,  observation)
Create observations in the MADS problem dictionary based on `time` and `observation` arrays 


*source:*
[Mads/src/MadsObservations.jl:101](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L101)

---

<a id="method__deletenan.1" class="lexicon_definition"></a>
#### deleteNaN!(df::DataFrames.DataFrame)
Delete rows with NaN in a Dataframe `df`

*source:*
[Mads/src/MadsSA.jl:655](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L655)

---

<a id="method__dobigdt.1" class="lexicon_definition"></a>
#### dobigdt(madsdata::Associative{K, V},  nummodelruns::Int64)
Perform BIG-DT analysis

Arguments:

- `madsdata` : MADS problem dictionary
- `nummodelruns` : number of model runs
- `numhorizons` : number of info-gap horizons of uncertainty
- `maxHorizon` : maximum info-gap horizons of uncertainty
- `numlikelihoods` : number of Bayesian likelihoods

Returns:

- `bigdtresults` : dictionary with BIG-DT results


*source:*
[Mads/src/MadsBIG.jl:121](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsBIG.jl#L121)

---

<a id="method__dumpasciifile.1" class="lexicon_definition"></a>
#### dumpasciifile(filename::AbstractString,  data)
Dump ASCII file

*source:*
[Mads/src/MadsASCII.jl:8](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsASCII.jl#L8)

---

<a id="method__dumpjsonfile.1" class="lexicon_definition"></a>
#### dumpjsonfile(filename::AbstractString,  data)
Dump a JSON file

*source:*
[Mads/src/MadsJSON.jl:8](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsJSON.jl#L8)

---

<a id="method__dumpwelldata.1" class="lexicon_definition"></a>
#### dumpwelldata(filename::AbstractString,  madsdata)
Dump well data from MADS problem dictionary into a ASCII file

*source:*
[Mads/src/MadsYAML.jl:237](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L237)

---

<a id="method__dumpyamlfile.1" class="lexicon_definition"></a>
#### dumpyamlfile(filename::AbstractString,  yamldata)
Dump YAML file in JSON format

*source:*
[Mads/src/MadsYAML.jl:49](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L49)

---

<a id="method__dumpyamlmadsfile.1" class="lexicon_definition"></a>
#### dumpyamlmadsfile(madsdata,  filename::AbstractString)
Dump YAML Mads file

Arguments:

- `madsdata` : MADS problem dictionary
- `filename` : file name


*source:*
[Mads/src/MadsYAML.jl:179](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L179)

---

<a id="method__efast.1" class="lexicon_definition"></a>
#### efast(md::Associative{K, V})
Sensitivity analysis using Saltelli's extended Fourier Amplitude Sensitivity Testing (eFAST) method

Arguments:

- `madsdata` : MADS problem dictionary
- `N` : number of samples
- `M` : maximum number of harmonics
- `gamma` : multiplication factor (Saltelli 1999 recommends gamma = 2 or 4)
- `seed` : initial random seed


*source:*
[Mads/src/MadsSA.jl:691](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L691)

---

<a id="method__evaluatemadsexpression.1" class="lexicon_definition"></a>
#### evaluatemadsexpression(expressionstring,  parameters)
Evaluate the expression in terms of the parameters, return a Dict() containing the expression names as keys, and the values of the expression as values

*source:*
[Mads/src/MadsMisc.jl:60](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L60)

---

<a id="method__evaluatemadsexpressions.1" class="lexicon_definition"></a>
#### evaluatemadsexpressions(madsdata::Associative{K, V},  parameters)
Evaluate the expressions in terms of the parameters, return a Dict() containing the expression names as keys, and the values of the expression as values

*source:*
[Mads/src/MadsMisc.jl:69](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L69)

---

<a id="method__forward.1" class="lexicon_definition"></a>
#### forward(madsdata::Associative{K, V})
Perform a forward run using the initial or provided values for the model parameters

- `forward(madsdata)`
- `forward(madsdata, paramvalues)`

Arguments:

- `madsdata` : MADS problem dictionary
- `paramvalues` : dictionary of model parameter values

Returns:

- `obsvalues` : dictionary of model predictions


*source:*
[Mads/src/MadsForward.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsForward.jl#L16)

---

<a id="method__forwardgrid.1" class="lexicon_definition"></a>
#### forwardgrid(madsdata::Associative{K, V})
Perform a forward run over a 3D grid defined in `madsdata` using the initial or provided values for the model parameters

- `forwardgrid(madsdata)`  
- `forwardgrid(madsdata, paramvalues))`

Arguments:

- `madsdata` : MADS problem dictionary
- `paramvalues` : dictionary of model parameter values

Returns:

- `array3d` : 3D array with model predictions along a 3D grid


*source:*
[Mads/src/MadsForward.jl:41](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsForward.jl#L41)

---

<a id="method__getextension.1" class="lexicon_definition"></a>
#### getextension(filename)
Get file name extension

Example:

```
ext = Mads.getextension("a.mads") # ext = "mads" 
```


*source:*
[Mads/src/MadsIO.jl:134](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L134)

---

<a id="method__getmadsdir.1" class="lexicon_definition"></a>
#### getmadsdir()
Get the directory where currently Mads is running

`problemdir = Mads.getmadsdir()`


*source:*
[Mads/src/MadsIO.jl:90](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L90)

---

<a id="method__getmadsinputfile.1" class="lexicon_definition"></a>
#### getmadsinputfile()
Get the default MADS input file set as a MADS global variable using `setmadsinputfile(filename)`

`Mads.getmadsinputfile()`

Arguments: `none`

Returns:

- `filename` : input file name (e.g. `input_file_name.mads`)


*source:*
[Mads/src/MadsIO.jl:54](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L54)

---

<a id="method__getmadsproblemdir.1" class="lexicon_definition"></a>
#### getmadsproblemdir(madsdata::Associative{K, V})
Get the directory where the Mads data file is located

`Mads.getmadsproblemdir(madsdata)`

Example:

```
madsdata = Mads.loadmadsproblemdir("../../a.mads")
madsproblemdir = Mads.getmadsproblemdir(madsdata)
```

where `madsproblemdir` = `"../../"`


*source:*
[Mads/src/MadsIO.jl:81](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L81)

---

<a id="method__getmadsrootname.1" class="lexicon_definition"></a>
#### getmadsrootname(madsdata::Associative{K, V})
Get the MADS problem root name

`madsrootname = Mads.getmadsrootname(madsdata)`


*source:*
[Mads/src/MadsIO.jl:63](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L63)

---

<a id="method__getobskeys.1" class="lexicon_definition"></a>
#### getobskeys(madsdata::Associative{K, V})
Get keys for all the observations in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L2)

---

<a id="method__getparamdict.1" class="lexicon_definition"></a>
#### getparamdict(madsdata::Associative{K, V})
Get dictionary with all parameters and their respective initial values

`Mads.getparamdict(madsdata)`

Arguments:

- `madsdata` : MADS problem dictionary

Returns:

- `paramdict` : dictionary with all parameters and their respective initial values


*source:*
[Mads/src/MadsParameters.jl:35](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L35)

---

<a id="method__getparamdistributions.1" class="lexicon_definition"></a>
#### getparamdistributions(madsdata::Associative{K, V})
Get probabilistic distributions of all parameters in the MADS problem dictionary

`Mads.getparamdistributions(madsdata; init_dist=false)`

Note:

Probabilistic distribution of parameters can be defined only if `dist` or `min`/`max` model parameter fields are specified in the MADS problem dictionary `madsdata`.

Arguments:

- `madsdata` : MADS problem dictionary
- `init_dist` : if `true` use the distribution defined for initialization in the MADS problem dictionary (defined using `init_dist` parameter field); else use the regular distribution defined in the MADS problem dictionary (defined using `dist` parameter field)


*source:*
[Mads/src/MadsParameters.jl:459](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L459)

---

<a id="method__getparamkeys.1" class="lexicon_definition"></a>
#### getparamkeys(madsdata::Associative{K, V})
Get keys of all parameters in the MADS dictionary

`Mads.getparamkeys(madsdata)`

Arguments:

- `madsdata` : MADS problem dictionary

Returns:

- `paramkeys` : array with the keys of all parameters in the MADS dictionary


*source:*
[Mads/src/MadsParameters.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L16)

---

<a id="method__getparamsinit_max.1" class="lexicon_definition"></a>
#### getparamsinit_max(madsdata)
Get an array with `init_max` values for all the MADS model parameters

*source:*
[Mads/src/MadsParameters.jl:240](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L240)

---

<a id="method__getparamsinit_max.2" class="lexicon_definition"></a>
#### getparamsinit_max(madsdata,  paramkeys)
Get an array with `init_max` values for parameters defined by `paramkeys`

*source:*
[Mads/src/MadsParameters.jl:206](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L206)

---

<a id="method__getparamsinit_min.1" class="lexicon_definition"></a>
#### getparamsinit_min(madsdata)
Get an array with `init_min` values for all the MADS model parameters

*source:*
[Mads/src/MadsParameters.jl:200](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L200)

---

<a id="method__getparamsinit_min.2" class="lexicon_definition"></a>
#### getparamsinit_min(madsdata,  paramkeys)
Get an array with `init_min` values for parameters defined by `paramkeys`

*source:*
[Mads/src/MadsParameters.jl:166](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L166)

---

<a id="method__getparamsmax.1" class="lexicon_definition"></a>
#### getparamsmax(madsdata)
Get an array with `min` values for all the MADS model parameters

*source:*
[Mads/src/MadsParameters.jl:160](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L160)

---

<a id="method__getparamsmax.2" class="lexicon_definition"></a>
#### getparamsmax(madsdata,  paramkeys)
Get an array with `max` values for parameters defined by `paramkeys`

*source:*
[Mads/src/MadsParameters.jl:137](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L137)

---

<a id="method__getparamsmin.1" class="lexicon_definition"></a>
#### getparamsmin(madsdata)
Get an array with `min` values for all the MADS model parameters

*source:*
[Mads/src/MadsParameters.jl:131](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L131)

---

<a id="method__getparamsmin.2" class="lexicon_definition"></a>
#### getparamsmin(madsdata,  paramkeys)
Get an array with `min` values for parameters defined by `paramkeys`

*source:*
[Mads/src/MadsParameters.jl:108](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L108)

---

<a id="method__getrootname.1" class="lexicon_definition"></a>
#### getrootname(filename::AbstractString)
Get file name root

Example:

```
r = Mads.getrootname("a.rnd.dat") # r = "a"
r = Mads.getrootname("a.rnd.dat", first=false) # r = "a.rnd"
```


*source:*
[Mads/src/MadsIO.jl:111](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L111)

---

<a id="method__getsourcekeys.1" class="lexicon_definition"></a>
#### getsourcekeys(madsdata::Associative{K, V})
Get keys of all source parameters in the MADS dictionary

`Mads.getsourcekeys(madsdata)`

Arguments:

- `madsdata` : MADS problem dictionary

Returns:

- `sourcekeys` : array with keys of all source parameters in the MADS dictionary


*source:*
[Mads/src/MadsParameters.jl:56](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L56)

---

<a id="method__getwellkeys.1" class="lexicon_definition"></a>
#### getwellkeys(madsdata::Associative{K, V})
Get keys for all the wells in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:8](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L8)

---

<a id="method__haskeyword.1" class="lexicon_definition"></a>
#### haskeyword(madsdata::Associative{K, V},  keyword::AbstractString)
Check for a `keyword` in a class within the Mads dictionary `madsdata`

- `Mads.haskeyword(madsdata, keyword)`
- `Mads.haskeyword(madsdata, class, keyword)`

Arguments:

- `madsdata` : MADS problem dictionary
- `class` : dictionary class; if not provided searches for `keyword` in `Problem` class
- `keyword` : dictionary key

Returns: `true` or `false`

Examples:

- `Mads.haskeyword(madsdata, "disp")` ... searches in `Problem` class by default
- `Mads.haskeyword(madsdata, "Wells", "R-28")` ... searches in `Wells` class for a keyword "R-28"


*source:*
[Mads/src/MadsHelpers.jl:55](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L55)

---

<a id="method__help.1" class="lexicon_definition"></a>
#### help()
Produce MADS help information

*source:*
[Mads/src/MadsHelp.jl:4](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelp.jl#L4)

---

<a id="method__ins_obs.1" class="lexicon_definition"></a>
#### ins_obs(instructionfilename::AbstractString,  inputfilename::AbstractString)
Apply Mads instruction file `instructionfilename` to read model input file `inputfilename`

*source:*
[Mads/src/MadsIO.jl:261](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L261)

---

<a id="method__instline2regexs.1" class="lexicon_definition"></a>
#### instline2regexs(instline::AbstractString)
Convert an instruction line in the Mads instruction file into regular expressions

*source:*
[Mads/src/MadsIO.jl:208](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L208)

---

<a id="method__islog.1" class="lexicon_definition"></a>
#### islog(madsdata::Associative{K, V},  parameterkey::AbstractString)
Is parameter with key `parameterkey` log-transformed?

*source:*
[Mads/src/MadsParameters.jl:273](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L273)

---

<a id="method__isopt.1" class="lexicon_definition"></a>
#### isopt(madsdata::Associative{K, V},  parameterkey::AbstractString)
Is parameter with key `parameterkey` optimizable?

*source:*
[Mads/src/MadsParameters.jl:263](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L263)

---

<a id="method__levenberg_marquardt.1" class="lexicon_definition"></a>
#### levenberg_marquardt(f::Function,  g::Function,  x0)
Levenberg-Marquardt optimization

Arguments:

- `f` : forward model function
- `g` : gradient function for the forward model
- `x0` : initial parameter guess
- `root` : Mads problem root name
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `tolOF` : objective function update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `maxJacobians` : maximum number of Jacobian solves
- `lambda` : initial Levenberg-Marquardt lambda [eps(Float32)]
- `lambda_scale` : lambda scaling factor 
- `lambda_mu` : lambda multiplication factor μ [10]
- `lambda_nu` : lambda multiplication factor ν [10]
- `np_lambda` : number of parallel lambda solves
- `show_trace` : shows solution trace [default=false]
- `alwaysDoJacobian`: computer Jacobian each iteration [false]
- `callback` : call back function for debugging


*source:*
[Mads/src/MadsLM.jl:163](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L163)

---

<a id="method__levenberg_marquardt.2" class="lexicon_definition"></a>
#### levenberg_marquardt(f::Function,  g::Function,  x0,  o::Function)
Levenberg-Marquardt optimization

Arguments:

- `f` : forward model function
- `g` : gradient function for the forward model
- `x0` : initial parameter guess
- `root` : Mads problem root name
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `tolOF` : objective function update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `maxJacobians` : maximum number of Jacobian solves
- `lambda` : initial Levenberg-Marquardt lambda [eps(Float32)]
- `lambda_scale` : lambda scaling factor 
- `lambda_mu` : lambda multiplication factor μ [10]
- `lambda_nu` : lambda multiplication factor ν [10]
- `np_lambda` : number of parallel lambda solves
- `show_trace` : shows solution trace [default=false]
- `alwaysDoJacobian`: computer Jacobian each iteration [false]
- `callback` : call back function for debugging


*source:*
[Mads/src/MadsLM.jl:163](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L163)

---

<a id="method__loadasciifile.1" class="lexicon_definition"></a>
#### loadasciifile(filename::AbstractString)
Load ASCII file

*source:*
[Mads/src/MadsASCII.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsASCII.jl#L2)

---

<a id="method__loadjsonfile.1" class="lexicon_definition"></a>
#### loadjsonfile(filename::AbstractString)
Load a JSON file

*source:*
[Mads/src/MadsJSON.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsJSON.jl#L2)

---

<a id="method__loadmadsfile.1" class="lexicon_definition"></a>
#### loadmadsfile(filename::AbstractString)
Load MADS input file defining a MADS problem dictionary

- `Mads.loadmadsfile(filename)`
- `Mads.loadmadsfile(filename; julia=false)`
- `Mads.loadmadsfile(filename; julia=true)`

Arguments:

- `filename` : input file name (e.g. `input_file_name.mads`)
- `julia` : if `true`, force using `julia` parsing fuctions; if `false` (default), use `python` parsing functions [boolean]

Returns:

- `madsdata` : Loaded Mads data class

Example: `md = loadmadsfile("input_file_name.mads")`


*source:*
[Mads/src/MadsIO.jl:19](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L19)

---

<a id="method__loadyamlfile.1" class="lexicon_definition"></a>
#### loadyamlfile(filename::AbstractString)
Load YAML file

*source:*
[Mads/src/MadsYAML.jl:39](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L39)

---

<a id="method__loadyamlmadsfile.1" class="lexicon_definition"></a>
#### loadyamlmadsfile(filename::AbstractString)
Load YAML Mads file

Arguments:

- `filename` : file name
- `julia=false` : use Python YAML library (if available)
- `julia=true` : use Julia YAML library (if available)


*source:*
[Mads/src/MadsYAML.jl:68](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L68)

---

<a id="method__localsa.1" class="lexicon_definition"></a>
#### localsa(madsdata::Associative{K, V})
Local sensitivity analysis based on eigen analysis of covariance matrix

Arguments:

- `madsdata` : MADS problem dictionary
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsSA.jl:74](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L74)

---

<a id="method__madscrit.1" class="lexicon_definition"></a>
#### madscrit(message::AbstractString)
MADS critical error messages

*source:*
[Mads/src/MadsLog.jl:31](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L31)

---

<a id="method__madsdebug.1" class="lexicon_definition"></a>
#### madsdebug(message::AbstractString)
MADS debug messages

*source:*
[Mads/src/MadsLog.jl:9](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L9)

---

<a id="method__madserr.1" class="lexicon_definition"></a>
#### madserr(message::AbstractString)
MADS error messages

*source:*
[Mads/src/MadsLog.jl:26](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L26)

---

<a id="method__madsinfo.1" class="lexicon_definition"></a>
#### madsinfo(message::AbstractString)
MADS information/status messages

*source:*
[Mads/src/MadsLog.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L16)

---

<a id="method__madsoutput.1" class="lexicon_definition"></a>
#### madsoutput(message::AbstractString)
MADS output

*source:*
[Mads/src/MadsLog.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L2)

---

<a id="method__madswarn.1" class="lexicon_definition"></a>
#### madswarn(message::AbstractString)
MADS warning messages

*source:*
[Mads/src/MadsLog.jl:21](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLog.jl#L21)

---

<a id="method__makearrayconditionalloglikelihood.1" class="lexicon_definition"></a>
#### makearrayconditionalloglikelihood(madsdata::Associative{K, V},  conditionalloglikelihood)
Make a conditional log likelihood function that accepts an array containing the opt parameters' values

*source:*
[Mads/src/MadsMisc.jl:25](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L25)

---

<a id="method__makearrayfunction.1" class="lexicon_definition"></a>
#### makearrayfunction(madsdata::Associative{K, V},  f::Function)
Make a version of the function `f` that accepts an array containing the optimal parameters' values

`Mads.makearrayfunction(madsdata, f)`

Arguments:

- `madsdata` : MADS problem dictionary
- `f` : ...

Returns:

- `arrayfunction` : function accepting an array containing the optimal parameters' values


*source:*
[Mads/src/MadsMisc.jl:15](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L15)

---

<a id="method__makearrayloglikelihood.1" class="lexicon_definition"></a>
#### makearrayloglikelihood(madsdata::Associative{K, V},  loglikelihood)
Make a log likelihood function that accepts an array containing the opt parameters' values

*source:*
[Mads/src/MadsMisc.jl:38](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L38)

---

<a id="method__makebigdt.1" class="lexicon_definition"></a>
#### makebigdt!(madsdata::Associative{K, V},  choice::Associative{K, V})
Setup BIG-DT problem

Arguments:

- `madsdata` : MADS problem dictionary
- `choice` : dictionary of BIG-DT choices (scenarios)

Returns:

- `bigdtproblem` : BIG-DT problem type


*source:*
[Mads/src/MadsBIG.jl:32](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsBIG.jl#L32)

---

<a id="method__makebigdt.2" class="lexicon_definition"></a>
#### makebigdt(madsdata::Associative{K, V},  choice::Associative{K, V})
Setup BIG-DT problem

Arguments:

- `madsdata` : MADS problem dictionary
- `choice` : dictionary of BIG-DT choices (scenarios)

Returns:

- `bigdtproblem` : BIG-DT problem type


*source:*
[Mads/src/MadsBIG.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsBIG.jl#L16)

---

<a id="method__makecomputeconcentrations.1" class="lexicon_definition"></a>
#### makecomputeconcentrations(madsdata::Associative{K, V})
Create a function to compute concentrations for all the observation points using Anasol

`Mads.makecomputeconcentrations(madsdata)`

Arguments:

- `madsdata` : MADS problem dictionary

Returns:

- `computeconcentrations` : function to compute concentrations; `computeconcentrations` returns a dictionary of observations and model predicted concentrations

Examples:

`computeconcentrations()`

or

```
computeconcentrations = Mads.makecomputeconcentrations(madsdata)
paramkeys = Mads.getparamkeys(madsdata)
paramdict = OrderedDict(zip(paramkeys, map(key->madsdata["Parameters"][key]["init"], paramkeys)))
forward_preds = computeconcentrations(paramdict)
```


*source:*
[Mads/src/MadsAnasol.jl:30](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsAnasol.jl#L30)

---

<a id="method__makelmfunctions.1" class="lexicon_definition"></a>
#### makelmfunctions(madsdata)
Make forward model functions needed for Levenberg-Marquardt optimization


*source:*
[Mads/src/MadsLM.jl:4](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L4)

---

<a id="method__makelogprior.1" class="lexicon_definition"></a>
#### makelogprior(madsdata::Associative{K, V})
Make a function to compute the prior log-likelihood of the model parameters listed in the MADS problem dictionary `madsdata`

*source:*
[Mads/src/MadsFunc.jl:264](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L264)

---

<a id="method__makemadscommandfunction.1" class="lexicon_definition"></a>
#### makemadscommandfunction(madsdata::Associative{K, V})
Make MADS function to execute the model defined in the MADS problem dictionary `madsdata`

The model fields that can be used to define the model are:

- `Model` : execute a julia function defined in an input julia file that will accept a `parameter` dictionary with all the model parameters as an input argument and will return an `observation` dictionary with all the model predicted observations

- `MADS model` : create a julia function based on an input julia file; the input file should have a function that accepts as an argument the MADS problem dictionary; this function should a create a julia function that will accept a `parameter` dictionary with all the model parameters as an input argument and will return an `observation` dictionary with all the model predicted observations

- `Internal model` : execute an internal julia function that accept a `parameter` dictionary with all the model parameters as an input argument and will return an `observation` dictionary with all the model predicted observations

- `Command` : execute an external unix command or script that will execute an external model.

- `Julia` : execute a julia script that will execute an external model.

Both `Command` and `Julia` can use different approaches to pass model parameters to the external model and different approaches to get back the model outputs. The available options for writing model inputs and reading model outputs are listed below.

Options for writing model inputs:

- `Templates` : template files for writing model input files as defined at http://mads.lanl.gov
- `ASCIIParameters` : model parameters written in a ASCII file
- `YAMLParameters` : model parameters written in a YAML file
- `JSONParameters` : model parameters written in a JSON file

Options for reading model outputs:

- `Instructions` : instruction files for reading model output files as defined at http://mads.lanl.gov
- `ASCIIPredictions` : model predictions read from a ASCII file
- `YAMLPredictions` : model predictions read from a YAML file
- `JSONPredictions` : model predictions read from a JSON file


*source:*
[Mads/src/MadsFunc.jl:36](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L36)

---

<a id="method__makemadscommandfunctionandgradient.1" class="lexicon_definition"></a>
#### makemadscommandfunctionandgradient(madsdata::Associative{K, V})
Make MADS forward & gradient functions for the model defined in the MADS problem dictionary `madsdata`

*source:*
[Mads/src/MadsFunc.jl:194](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L194)

---

<a id="method__makemadscommandgradient.1" class="lexicon_definition"></a>
#### makemadscommandgradient(madsdata::Associative{K, V})
Make MADS gradient function to compute the parameter-space gradient for the model defined in the MADS problem dictionary `madsdata`

*source:*
[Mads/src/MadsFunc.jl:179](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L179)

---

<a id="method__makemadsconditionalloglikelihood.1" class="lexicon_definition"></a>
#### makemadsconditionalloglikelihood(madsdata::Associative{K, V})
Make a function to compute the conditional log-likelihood of the model parameters conditioned on the model predictions/observations.
Model parameters and observations are defined in the MADS problem dictionary `madsdata`.


*source:*
[Mads/src/MadsFunc.jl:279](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L279)

---

<a id="method__makemadsloglikelihood.1" class="lexicon_definition"></a>
#### makemadsloglikelihood(madsdata::Associative{K, V})
Make a function to compute the log-likelihood for a given set of model parameters, associated model predictions and existing observations.
The function can be provided as an external function in the MADS problem dictionary under `LogLikelihood` or computed internally.


*source:*
[Mads/src/MadsFunc.jl:304](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsFunc.jl#L304)

---

<a id="method__maxtorealmaxfloat32.1" class="lexicon_definition"></a>
#### maxtorealmaxFloat32!(df::DataFrames.DataFrame)
Scale down values larger than max(Float32) in a Dataframe `df` so that Gadfly can plot the data

*source:*
[Mads/src/MadsSA.jl:667](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L667)

---

<a id="method__montecarlo.1" class="lexicon_definition"></a>
#### montecarlo(madsdata::Associative{K, V})
Monte Carlo analysis

`Mads.montecarlo(madsdata; N=100)`

Arguments:

- `madsdata` : MADS problem dictionary
- `N` : number of samples (default = 100)

Returns:

- `outputdicts` : parameter dictionary containing the data arrays

Dumps:

- YAML output file with the parameter dictionary containing the data arrays (`<mads_root_name>.mcresults.yaml`)


*source:*
[Mads/src/MadsMC.jl:76](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L76)

---

<a id="method__naive_get_deltax.1" class="lexicon_definition"></a>
#### naive_get_deltax(JpJ::Array{T, 2},  Jp::Array{T, 2},  f0::Array{T, 1},  lambda::Real)
Naive Levenberg-Marquardt optimization: get the LM parameter space step


*source:*
[Mads/src/MadsLM.jl:83](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L83)

---

<a id="method__naive_levenberg_marquardt.1" class="lexicon_definition"></a>
#### naive_levenberg_marquardt(f::Function,  g::Function,  x0::Array{T, 1})
Naive Levenberg-Marquardt optimization

Arguments:

- `f` : forward model function
- `g` : gradient function for the forward model
- `x0` : initial parameter guess
- `o` : objective function
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `tolOF` : objective function update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `lambda` : initial Levenberg-Marquardt lambda [100]
- `lambda_mu` : lambda multiplication factor μ [10]
- `np_lambda` : number of parallel lambda solves


*source:*
[Mads/src/MadsLM.jl:121](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L121)

---

<a id="method__naive_levenberg_marquardt.2" class="lexicon_definition"></a>
#### naive_levenberg_marquardt(f::Function,  g::Function,  x0::Array{T, 1},  o::Function)
Naive Levenberg-Marquardt optimization

Arguments:

- `f` : forward model function
- `g` : gradient function for the forward model
- `x0` : initial parameter guess
- `o` : objective function
- `tolX` : parameter space tolerance
- `tolG` : parameter space update tolerance
- `tolOF` : objective function update tolerance
- `maxEval` : maximum number of model evaluations
- `maxIter` : maximum number of optimization iterations
- `lambda` : initial Levenberg-Marquardt lambda [100]
- `lambda_mu` : lambda multiplication factor μ [10]
- `np_lambda` : number of parallel lambda solves


*source:*
[Mads/src/MadsLM.jl:121](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L121)

---

<a id="method__naive_lm_iteration.1" class="lexicon_definition"></a>
#### naive_lm_iteration(f::Function,  g::Function,  o::Function,  x0::Array{T, 1},  f0::Array{T, 1},  lambdas::Array{T, 1})
Naive Levenberg-Marquardt optimization: perform LM iteration


*source:*
[Mads/src/MadsLM.jl:92](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsLM.jl#L92)

---

<a id="method__nothing2nan.1" class="lexicon_definition"></a>
#### nothing2nan!(dict::Associative{K, V})
Convert Void's into NaN's in a dictionary

*source:*
[Mads/src/MadsSA.jl:635](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L635)

---

<a id="method__obslineismatch.1" class="lexicon_definition"></a>
#### obslineismatch(obsline::AbstractString,  regexs::Array{Regex, 1})
Match an instruction line in the Mads instruction file with model input file

*source:*
[Mads/src/MadsIO.jl:239](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L239)

---

<a id="method__paramarray2dict.1" class="lexicon_definition"></a>
#### paramarray2dict(madsdata::Associative{K, V},  array)
Convert parameter array to a parameter dictionary of arrays


*source:*
[Mads/src/MadsMC.jl:124](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L124)

---

<a id="method__parametersample.1" class="lexicon_definition"></a>
#### parametersample(madsdata::Associative{K, V},  numsamples::Integer)
Independent sampling of model parameters defined in the MADS problem dictionary

Arguments:

- `madsdata` : MADS problem dictionary
- `numsamples` : number of samples
- `parameterkey` : model parameter key
- `init_dist` : if `true` use the distribution defined for initialization in the MADS problem dictionary (defined using `init_dist` parameter field); else use the regular distribution defined in the MADS problem dictionary (defined using `dist` parameter field)


*source:*
[Mads/src/MadsSA.jl:19](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L19)

---

<a id="method__parametersample.2" class="lexicon_definition"></a>
#### parametersample(madsdata::Associative{K, V},  numsamples::Integer,  parameterkey::AbstractString)
Independent sampling of model parameters defined in the MADS problem dictionary

Arguments:

- `madsdata` : MADS problem dictionary
- `numsamples` : number of samples
- `parameterkey` : model parameter key
- `init_dist` : if `true` use the distribution defined for initialization in the MADS problem dictionary (defined using `init_dist` parameter field); else use the regular distribution defined in the MADS problem dictionary (defined using `dist` parameter field)


*source:*
[Mads/src/MadsSA.jl:19](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L19)

---

<a id="method__paramrand.1" class="lexicon_definition"></a>
#### paramrand(madsdata::Associative{K, V},  parameterkey::AbstractString)
Random numbers for a MADS model parameter defined by `parameterkey`

Arguments:

- `madsdata` : MADS problem dictionary
- `parameterkey` : model parameter key
- `numsamples` : number of samples
- `paramdist` : dictionary with parameter distributions


*source:*
[Mads/src/MadsSA.jl:42](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L42)

---

<a id="method__plotsaresults_monty.1" class="lexicon_definition"></a>
#### plotSAresults_monty(wellname,  madsdata,  result)
Plot the sensitivity analysis results for each well (Specific plot requested by Monty)

*source:*
[Mads/src/MadsSA.jl:1494](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L1494)

---

<a id="method__plotgrid.1" class="lexicon_definition"></a>
#### plotgrid(madsdata::Associative{K, V},  s::Array{Float64, N})
Plot a 3D grid solution based on model predictions in array `s`, initial parameters, or user provided parameter values

```
plotgrid(madsdata, s; addtitle=true, title="", filename="", format="")
plotgrid(madsdata; addtitle=true, title="", filename="", format="")
plotgrid(madsdata, parameters; addtitle=true, title="", filename="", format="")
```

Arguments:

- `madsdata` : MADS problem dictionary
- `parameters` : dictionary with model parameters
- `s` : model predictions array
- `addtitle` : add plot title [true]
- `title` : plot title
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:132](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L132)

---

<a id="method__plotmadsproblem.1" class="lexicon_definition"></a>
#### plotmadsproblem(madsdata::Associative{K, V})
Plot contaminant sources and wells defined in MADS problem dictionary

Arguments:

- `madsdata` : MADS problem dictionary
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:50](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L50)

---

<a id="method__plotmass.1" class="lexicon_definition"></a>
#### plotmass(lambda,  mass_injected,  mass_reduced,  filename::AbstractString)
Plot injected/reduced contaminant mass

- `Mads.plotmass(lambda, mass_injected, mass_reduced, filename="file_name")`

Arguments:

- `lambda` : array with all the lambda values
- `mass_injected` : array with associated total injected mass
- `mass_reduced` : array with associated total reduced mass
- `filename` : output filename for the generated plot
- `format` : output plot format (`png`, `pdf`, etc.)

Dumps: image file with name `filename` and in specified `format`


*source:*
[Mads/src/MadsAnasol.jl:289](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsAnasol.jl#L289)

---

<a id="method__plotmatches.1" class="lexicon_definition"></a>
#### plotmatches(madsdata_in::Associative{K, V})
Plot the matches between model predictions and observations

```
plotmatches(madsdata; filename="", format="")
plotmatches(madsdata, result; filename="", format="")
```

Arguments:

- `madsdata` : MADS problem dictionary
- `result` : dictionary with model predictions
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:203](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L203)

---

<a id="method__plotobssaresults.1" class="lexicon_definition"></a>
#### plotobsSAresults(madsdata,  result)
Plot the sensitivity analysis results for the observations

Arguments:

- `madsdata` : MADS problem dictionary
- `result` : sensitivity analysis results
- `filter` : string or regex to plot only observations containing `filter`
- `keyword` : to be added in the auto-generated filename
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:476](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L476)

---

<a id="method__plotrobustnesscurves.1" class="lexicon_definition"></a>
#### plotrobustnesscurves(madsdata::Associative{K, V},  bigdtresults::Dict{K, V})
Plot BIG-DT robustness curves

Arguments:

- `madsdata` : MADS problem dictionary
- `bigdtresults` : BIG-DT results
- `filename` : output file name used to dump plots
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsBIG.jl:165](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsBIG.jl#L165)

---

<a id="method__plotwellsaresults.1" class="lexicon_definition"></a>
#### plotwellSAresults(madsdata,  result)
Plot the sensitivity analysis results for all the wells in the MADS problem dictionary (wells class expected)

Arguments:

- `madsdata` : MADS problem dictionary
- `result` : sensitivity analysis results
- `xtitle` : x-axis title
- `ytitle` : y-axis title
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:357](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L357)

---

<a id="method__plotwellsaresults.2" class="lexicon_definition"></a>
#### plotwellSAresults(madsdata,  result,  wellname)
Plot the sensitivity analysis results for a given well in the MADS problem dictionary (wells class expected)

Arguments:

- `madsdata` : MADS problem dictionary
- `result` : sensitivity analysis results
- `wellname` : well name
- `xtitle` : x-axis title
- `ytitle` : y-axis title
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:382](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L382)

---

<a id="method__printsaresults.1" class="lexicon_definition"></a>
#### printSAresults(madsdata::Associative{K, V},  results::Associative{K, V})
Print sensitivity analysis results

*source:*
[Mads/src/MadsSA.jl:524](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L524)

---

<a id="method__quietoff.1" class="lexicon_definition"></a>
#### quietoff()
Make MADS not quiet

*source:*
[Mads/src/MadsHelpers.jl:7](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L7)

---

<a id="method__quieton.1" class="lexicon_definition"></a>
#### quieton()
Make MADS quiet

*source:*
[Mads/src/MadsHelpers.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L2)

---

<a id="method__readasciipredictions.1" class="lexicon_definition"></a>
#### readasciipredictions(filename::AbstractString)
Read MADS predictions from an ASCII file

*source:*
[Mads/src/MadsASCII.jl:13](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsASCII.jl#L13)

---

<a id="method__readjsonpredictions.1" class="lexicon_definition"></a>
#### readjsonpredictions(filename::AbstractString)
Read MADS model predictions from a JSON file

*source:*
[Mads/src/MadsJSON.jl:15](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsJSON.jl#L15)

---

<a id="method__readobservations.1" class="lexicon_definition"></a>
#### readobservations(madsdata::Associative{K, V})
Read observations

*source:*
[Mads/src/MadsIO.jl:285](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L285)

---

<a id="method__readobservations_cmads.1" class="lexicon_definition"></a>
#### readobservations_cmads(madsdata::Associative{K, V})
Read observations using C Mads library

*source:*
[Mads/src/MadsIO.jl:305](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L305)

---

<a id="method__readyamlpredictions.1" class="lexicon_definition"></a>
#### readyamlpredictions(filename::AbstractString)
Read MADS model predictions from a YAML file `filename`

*source:*
[Mads/src/MadsYAML.jl:232](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsYAML.jl#L232)

---

<a id="method__regexs2obs.1" class="lexicon_definition"></a>
#### regexs2obs(obsline,  regexs,  obsnames,  getparamhere)
Get observations for a set of regular expressions

*source:*
[Mads/src/MadsIO.jl:245](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L245)

---

<a id="method__resetmodelruns.1" class="lexicon_definition"></a>
#### resetmodelruns()
Reset the model runs count to be equal to zero

*source:*
[Mads/src/MadsHelpers.jl:32](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L32)

---

<a id="method__rosenbrock.1" class="lexicon_definition"></a>
#### rosenbrock(x::Array{T, 1})
Rosenbrock test function

*source:*
[Mads/src/MadsTestFunctions.jl:17](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L17)

---

<a id="method__rosenbrock2_gradient_lm.1" class="lexicon_definition"></a>
#### rosenbrock2_gradient_lm(x)
Parameter gradients of the Rosenbrock test function

*source:*
[Mads/src/MadsTestFunctions.jl:7](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L7)

---

<a id="method__rosenbrock2_lm.1" class="lexicon_definition"></a>
#### rosenbrock2_lm(x)
Rosenbrock test function (more difficult to solve)

*source:*
[Mads/src/MadsTestFunctions.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L2)

---

<a id="method__rosenbrock_gradient.1" class="lexicon_definition"></a>
#### rosenbrock_gradient!(x::Array{T, 1},  storage::Array{T, 1})
Parameter gradients of the Rosenbrock test function

*source:*
[Mads/src/MadsTestFunctions.jl:27](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L27)

---

<a id="method__rosenbrock_gradient_lm.1" class="lexicon_definition"></a>
#### rosenbrock_gradient_lm(x::Array{T, 1})
Parameter gradients of the Rosenbrock test function for LM optimization (returns the gradients for the 2 components separetely)

*source:*
[Mads/src/MadsTestFunctions.jl:33](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L33)

---

<a id="method__rosenbrock_hessian.1" class="lexicon_definition"></a>
#### rosenbrock_hessian!(x::Array{T, 1},  storage::Array{T, 2})
Parameter Hessian of the Rosenbrock test function

*source:*
[Mads/src/MadsTestFunctions.jl:43](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L43)

---

<a id="method__rosenbrock_lm.1" class="lexicon_definition"></a>
#### rosenbrock_lm(x::Array{T, 1})
Rosenbrock test function for LM optimization (returns the 2 components separetely)

*source:*
[Mads/src/MadsTestFunctions.jl:22](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTestFunctions.jl#L22)

---

<a id="method__saltelli.1" class="lexicon_definition"></a>
#### saltelli(madsdata::Associative{K, V})
Saltelli sensitivity analysis

Arguments:

- `madsdata` : MADS problem dictionary
- `N` : number of samples
- `seed` : initial random seed


*source:*
[Mads/src/MadsSA.jl:304](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L304)

---

<a id="method__saltellibrute.1" class="lexicon_definition"></a>
#### saltellibrute(madsdata::Associative{K, V})
Saltelli sensitivity analysis (brute force)

Arguments:

- `madsdata` : MADS problem dictionary
- `N` : number of samples
- `seed` : initial random seed


*source:*
[Mads/src/MadsSA.jl:157](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L157)

---

<a id="method__saltelliprintresults2.1" class="lexicon_definition"></a>
#### saltelliprintresults2(madsdata::Associative{K, V},  results::Associative{K, V})
Print sensitivity analysis results (method 2)

*source:*
[Mads/src/MadsSA.jl:600](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSA.jl#L600)

---

<a id="method__scatterplotsamples.1" class="lexicon_definition"></a>
#### scatterplotsamples(madsdata,  samples::Array{T, 2},  filename::AbstractString)
Create histogram/scatter plots of model parameter samples

Arguments:

- `madsdata` : MADS problem dictionary
- `samples` : matrix with model parameters
- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:313](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L313)

---

<a id="method__searchdir.1" class="lexicon_definition"></a>
#### searchdir(key::Regex)
Get files in the current directory or in a directory difined by `path` matching pattern `key` which cann be a string or regular expression

- `Mads.searchdir(key)`
- `Mads.searchdir(key; path = ".")`

Arguments:

- `key` : matching pattern for Mads input files (string or regular expression accepted)
- `path` : search directory for the mads input files

Returns:

- `filename` : an array with file names matching the pattern in the specified directory


*source:*
[Mads/src/MadsIO.jl:159](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L159)

---

<a id="method__setallparamsoff.1" class="lexicon_definition"></a>
#### setallparamsoff!(madsdata::Associative{K, V})
Set all parameters OFF

*source:*
[Mads/src/MadsParameters.jl:290](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L290)

---

<a id="method__setallparamson.1" class="lexicon_definition"></a>
#### setallparamson!(madsdata::Associative{K, V})
Set all parameters ON

*source:*
[Mads/src/MadsParameters.jl:282](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L282)

---

<a id="method__setdebuglevel.1" class="lexicon_definition"></a>
#### setdebuglevel(level::Int64)
Set MADS debug level

*source:*
[Mads/src/MadsHelpers.jl:22](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L22)

---

<a id="method__setdynamicmodel.1" class="lexicon_definition"></a>
#### setdynamicmodel(madsdata::Associative{K, V},  f::Function)
Set Dynamic Model for MADS model calls using internal Julia functions

*source:*
[Mads/src/MadsMisc.jl:55](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMisc.jl#L55)

---

<a id="method__setimagefileformat.1" class="lexicon_definition"></a>
#### setimagefileformat!(filename,  format)
Set image file `format` based on the `filename` extension, or sets the `filename` extension based on the requested `format`. The default `format` is `SVG`. `PNG`, `PDF`, `ESP`, and `PS` are also supported.

`Mads.setimagefileformat!(filename, format)`

Arguments:

- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)

Returns:

- `filename` : output file name
- `format` : output plot format (`png`, `pdf`, etc.)


*source:*
[Mads/src/MadsPlot.jl:16](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsPlot.jl#L16)

---

<a id="method__setmadsinputfile.1" class="lexicon_definition"></a>
#### setmadsinputfile(filename::AbstractString)
Set a default MADS input file

`Mads.setmadsinputfile(filename)`

Arguments:

- `filename` : input file name (e.g. `input_file_name.mads`)


*source:*
[Mads/src/MadsIO.jl:39](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L39)

---

<a id="method__setobservationtargets.1" class="lexicon_definition"></a>
#### setobservationtargets!(madsdata::Associative{K, V},  predictions::Associative{K, V})
Set observations (calibration targets) in the MADS problem dictionary based on `predictions` dictionary

*source:*
[Mads/src/MadsObservations.jl:123](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L123)

---

<a id="method__setobstime.1" class="lexicon_definition"></a>
#### setobstime!(madsdata::Associative{K, V})
Set observation time based on the observation name in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:52](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L52)

---

<a id="method__setobsweights.1" class="lexicon_definition"></a>
#### setobsweights!(madsdata::Associative{K, V},  value::Number)
Set observation weights in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:61](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L61)

---

<a id="method__setparamoff.1" class="lexicon_definition"></a>
#### setparamoff!(madsdata::Associative{K, V},  parameterkey)
Set a specific parameter with a key `parameterkey` OFF

*source:*
[Mads/src/MadsParameters.jl:303](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L303)

---

<a id="method__setparamon.1" class="lexicon_definition"></a>
#### setparamon!(madsdata::Associative{K, V},  parameterkey::AbstractString)
Set a specific parameter with a key `parameterkey` ON

*source:*
[Mads/src/MadsParameters.jl:298](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L298)

---

<a id="method__setparamsdistnormal.1" class="lexicon_definition"></a>
#### setparamsdistnormal!(madsdata::Associative{K, V},  mean,  stddev)
Set normal parameter distributions for all the model parameters in the MADS problem dictionary

`Mads.setparamsdistnormal!(madsdata, mean, stddev)`

Arguments:

- `madsdata` : MADS problem dictionary
- `mean` : array with the mean values
- `stddev` : array with the standard deviation values


*source:*
[Mads/src/MadsParameters.jl:318](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L318)

---

<a id="method__setparamsdistuniform.1" class="lexicon_definition"></a>
#### setparamsdistuniform!(madsdata::Associative{K, V},  min,  max)
Set uniform parameter distributions for all the model parameters in the MADS problem dictionary

`Mads.setparamsdistuniform!(madsdata, min, max)`

Arguments:

- `madsdata` : MADS problem dictionary
- `min` : array with the minimum values
- `max` : array with the maximum values


*source:*
[Mads/src/MadsParameters.jl:336](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L336)

---

<a id="method__setparamsinit.1" class="lexicon_definition"></a>
#### setparamsinit!(madsdata::Associative{K, V},  paramdict::Associative{K, V})
Set initial parameter guesses in the MADS dictionary

`Mads.setparamsinit!(madsdata, paramdict)`

Arguments:

- `madsdata` : MADS problem dictionary
- `paramdict` : dictionary with initial model parameter values


*source:*
[Mads/src/MadsParameters.jl:255](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L255)

---

<a id="method__setprocs.1" class="lexicon_definition"></a>
#### setprocs()
Set the available processors based on environmental variables

*source:*
[Mads/src/MadsParallel.jl:20](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParallel.jl#L20)

---

<a id="method__setprocs.2" class="lexicon_definition"></a>
#### setprocs(np)
Set the number of processors to `np`

*source:*
[Mads/src/MadsParallel.jl:15](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParallel.jl#L15)

---

<a id="method__setprocs.3" class="lexicon_definition"></a>
#### setprocs(np,  nt)
Set the number of processors to `np` and the number of threads to `nt`

*source:*
[Mads/src/MadsParallel.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParallel.jl#L2)

---

<a id="method__setverbositylevel.1" class="lexicon_definition"></a>
#### setverbositylevel(level::Int64)
Set MADS verbosity level

*source:*
[Mads/src/MadsHelpers.jl:27](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsHelpers.jl#L27)

---

<a id="method__setwellweights.1" class="lexicon_definition"></a>
#### setwellweights!(madsdata::Associative{K, V},  value::Number)
Set well weights in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:69](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L69)

---

<a id="method__showallparameters.1" class="lexicon_definition"></a>
#### showallparameters(madsdata::Associative{K, V})
Show all parameters in the MADS problem dictionary

*source:*
[Mads/src/MadsParameters.jl:406](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L406)

---

<a id="method__showobservations.1" class="lexicon_definition"></a>
#### showobservations(madsdata::Associative{K, V})
Show observations in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:80](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L80)

---

<a id="method__showparameters.1" class="lexicon_definition"></a>
#### showparameters(madsdata::Associative{K, V})
Show optimizable parameters in the MADS problem dictionary

*source:*
[Mads/src/MadsParameters.jl:375](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsParameters.jl#L375)

---

<a id="method__sinetransform.1" class="lexicon_definition"></a>
#### sinetransform(sineparams::Array{T, 1},  lowerbounds::Array{T, 1},  upperbounds::Array{T, 1},  indexlogtransformed::Array{T, 1})
Sine transformation of model parameters

*source:*
[Mads/src/MadsSine.jl:10](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSine.jl#L10)

---

<a id="method__sinetransformfunction.1" class="lexicon_definition"></a>
#### sinetransformfunction(f::Function,  lowerbounds::Array{T, 1},  upperbounds::Array{T, 1},  indexlogtransformed::Array{T, 1})
Sine transformation of a function

*source:*
[Mads/src/MadsSine.jl:17](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSine.jl#L17)

---

<a id="method__sinetransformgradient.1" class="lexicon_definition"></a>
#### sinetransformgradient(g::Function,  lowerbounds::Array{T, 1},  upperbounds::Array{T, 1},  indexlogtransformed::Array{T, 1})
Sine transformation of a gradient function

*source:*
[Mads/src/MadsSine.jl:25](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsSine.jl#L25)

---

<a id="method__spaghettiplot.1" class="lexicon_definition"></a>
#### spaghettiplot(madsdata::Associative{K, V},  paramdictarray::DataStructures.OrderedDict{K, V})
Generate a combined spaghetti plot for the `selected` (`type != null`) model parameter

`Mads.spaghettiplot(madsdata, paramdictarray; filename="", keyword = "", format="", xtitle="X", ytitle="Y", obs_plot_dots=true)`

Arguments:

- `madsdata` : MADS problem dictionary
- `paramdictarray` : dictionary containing the parameter data arrays to be plotted
- `filename` : output file name used to output the produced plots
- `keyword` : keyword to be added in the file name used to output the produced plots (if `filename` is not defined)
- `format` : output plot format (`png`, `pdf`, etc.)
- `xtitle` : `x` axis title
- `ytitle` : `y` axis title
- `obs_plot_dots` : plot observation as dots (`true` [default] or `false`)

Returns: `none`

Dumps:

- Image files (`<mads_rootname>-<keyword>-<number_of_samples>-spaghetti.<default_image_extension>`)



*source:*
[Mads/src/MadsMC.jl:270](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L270)

---

<a id="method__spaghettiplots.1" class="lexicon_definition"></a>
#### spaghettiplots(madsdata::Associative{K, V},  paramdictarray::DataStructures.OrderedDict{K, V})
Generate separate spaghetti plots for each `selected` (`type != null`) model parameter

`Mads.spaghettiplots(madsdata, paramdictarray; format="", keyword="", xtitle="X", ytitle="Y", obs_plot_dots=true )`

Arguments:

- `madsdata` : MADS problem dictionary
- `paramdictarray` : parameter dictionary containing the data arrays to be plotted
- `keyword` : keyword to be added in the file name used to output the produced plots
- `format` : output plot format (`png`, `pdf`, etc.)
- `xtitle` : `x` axis title
- `ytitle` : `y` axis title
- `obs_plot_dots` : plot observation as dots (`true` [default] or `false`)

Returns: `none`

Dumps:

- Image files (`<mads_rootname>-<keyword>-<param_key>-<number_of_samples>-spaghetti.<default_image_extension>`)



*source:*
[Mads/src/MadsMC.jl:155](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsMC.jl#L155)

---

<a id="method__test.1" class="lexicon_definition"></a>
#### test()
Execute Mads tests

*source:*
[Mads/src/MadsTest.jl:2](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsTest.jl#L2)

---

<a id="method__welloff.1" class="lexicon_definition"></a>
#### welloff!(madsdata,  wellname::AbstractString)
Turn off a specific well in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:171](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L171)

---

<a id="method__wellon.1" class="lexicon_definition"></a>
#### wellon!(madsdata::Associative{K, V},  wellname::AbstractString)
Turn on a specific well in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:147](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L147)

---

<a id="method__wells2observations.1" class="lexicon_definition"></a>
#### wells2observations!(madsdata::Associative{K, V})
Convert `Wells` class to `Observations` class in the MADS problem dictionary

*source:*
[Mads/src/MadsObservations.jl:187](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsObservations.jl#L187)

---

<a id="method__writeparameters.1" class="lexicon_definition"></a>
#### writeparameters(madsdata::Associative{K, V})
Write initial parameters

*source:*
[Mads/src/MadsIO.jl:192](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L192)

---

<a id="method__writeparameters.2" class="lexicon_definition"></a>
#### writeparameters(madsdata::Associative{K, V},  parameters)
Write parameters

*source:*
[Mads/src/MadsIO.jl:199](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L199)

---

<a id="method__writeparametersviatemplate.1" class="lexicon_definition"></a>
#### writeparametersviatemplate(parameters,  templatefilename,  outputfilename)
Write parameters via MADS template

*source:*
[Mads/src/MadsIO.jl:165](https://github.com/madsjulia/Mads.jl/tree/e0d0f14752d120469347c8475f65daecfdb06b00/src/MadsIO.jl#L165)
