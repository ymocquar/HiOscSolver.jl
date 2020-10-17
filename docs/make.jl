push!(LOAD_PATH,"../src/")

using HiOscSolver
using Documenter

makedocs(
    sitename = "HiOscSolver.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ymocquar.github.io/HiOscSolver.jl",
        assets=String[],
    ),
    modules = [HiOscSolver],
    pages = ["Documentation" => "index.md",
             "Types"         => "types.md",
             "Functions"     => "functions.md"],
    repo = "https://github.com/ymocquar/HiOscSolver.jl/blob/{commit}{path}#{line}"
)

deploydocs(;
    repo="github.com/ymocquar/Uchiyama.jl",
)
