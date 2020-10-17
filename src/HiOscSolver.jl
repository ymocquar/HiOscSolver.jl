module HiOscSolver

using LinearAlgebra
using SparseArrays
using Statistics

include("interface.jl")
export HiOscODEProblem, HiOscInterpolation, AbstractHiOscSolution, HiOscODESolution
export solve, getexactsol
end # module
