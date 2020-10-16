push!(LOAD_PATH,"../src/")

using Documenter
using HiOscSolver

makedocs(
    sitename = "HiOscSolver.jl",
    format = Documenter.HTML(),
    modules = [HiOscSolver],
    pages = ["Documentation" => "index.md",
             "Types"         => "types.md",
             "Functions"     => "functions.md"],
    repo = "https://github.com/HiOscSolver.jl/blob/{commit}{path}#{line}"
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
#=deploydocs(
    repo = "<repository url>"
)=#
