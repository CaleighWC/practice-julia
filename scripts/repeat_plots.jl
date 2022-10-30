using UnicodePlots

# Make bar plot of amounts of each family of TE in a RepeatModeler output

## Get dictionary to store counts of of each TE family in the RepeatModeler output

using CSV
using DataFrames
df = CSV.read("../data/GW2022.dummy", DataFrame)

using StatsBase
s = df.repeat_class_family
nuc = countmap([c for c in s])
println(nuc)

## Turn dictionary into two vectors for input format of UnicodePlots

### First get vector of keys

nucvec = collect(keys(nuc))
println(nucvec)

### Then get vector of values using vector of keys so the order is right

numvec = [nuc[i] for i in nucvec]
println(numvec)

## Finally, create and print bar plot

println(s)
plt = barplot(nucvec, numvec, title = "Repeat Families")
println(plt)

plot = histogram(df.q_start)
