push!(LOAD_PATH,"../src/")

using HiOscSolver
using Documenter
using DocumenterCitations
using Plots
ENV["GKSwstype"] = "100"

bib = CitationBibliography(joinpath(@__DIR__, "references.bib")
makedocs(
    bib, 
    sitename = "HiOscSolver.jl",
    strict = true, 
    authors="Yves Mocquard",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ymocquar.github.io/HiOscSolver.jl",
        assets=String[],
    ),
    modules = [HiOscSolver],
    pages = ["Documentation" => "index.md",
             "Types"         => "types.md",
             "Functions"     => "functions.md",
             "Tutoriel" => "docfr.md",
             "References" => "references.md"],
    repo = "https://github.com/ymocquar/HiOscSolver.jl/blob/{commit}{path}#{line}"
)

deploydocs(;
branch = "gh-pages",
    devbranch = "main",
    repo="github.com/ymocquar/HiOscSolver.jl",
)