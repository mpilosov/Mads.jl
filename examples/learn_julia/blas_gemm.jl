import Base.LinAlg.BLAS

srand(20151001)
n = 2000
A = rand(n, n)
B = rand(n, n)
alpha = 2.0
beta = 3.0
C = Array{Float64}(n, n)
@printf( "Size of matrix C is %d MB\n", sizeof(C) ÷ (1048576))
Base.LinAlg.BLAS.blas_set_num_threads(nworkers())
@printf( "Number of processors %d\n", nworkers())
@time gemm!('N', 'N', alpha, A, B, beta, C)
@show peakflops(n; parallel=false)
@show peakflops(n; parallel=true)
@printf( "Done.")
