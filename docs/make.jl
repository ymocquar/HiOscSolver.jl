push!(LOAD_PATH,"../src/")

using Documenter
using DocumenterCitations
using Plots
using HiOscSolver

ENV["GKSwstype"] = "100"

bib = CitationBibliography(joinpath(@__DIR__, "references.bib"))
makedocs(
    bib, 
    sitename = "HiOscSolver.jl",
    authors="Yves Mocquard",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://ymocquar.github.io/HiOscSolver.jl",
        assets=String[],
    ),
    modules = [HiOscSolver],
    pages = ["Documentation"    => "index.md",
             "Numerical Method" => "numerical_method.md",
             "Quickstart"       => "quickstart.md",
             "Charged Particle" => "charged_particle.md",
             "Henon-Heiles"     => "henon_heiles.md",
             "Future work"      => "future_work.md",
             "Types"            => "types.md",
             "Functions"        => "functions.md"],
    repo = "https://github.com/ymocquar/HiOscSolver.jl/blob/{commit}{path}#{line}"
)

deploydocs(;
branch = "gh-pages",
    devbranch = "main",
    repo="github.com/ymocquar/HiOscSolver.jl",
)
