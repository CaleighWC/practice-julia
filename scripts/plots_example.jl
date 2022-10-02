using UnicodePlots
@time plt = lineplot([-1, 2, 3, 7], [-1, 2, 9, 4], color = :red, title = "Example Plot", name = "my line", xlabel = "x", ylabel = "y")
@time plt = lineplot([-1, 2, 3, 7], [-1, 2, 9, 4], color = :blue, title = "Example Plot", name = "my line", xlabel = "x", ylabel = "y")
println(plt)

# Make bar plot of nucleotides in a sequence

## Get dictionary of values in sequence

using StatsBase
s = "GATTACA"
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
plt = barplot(nucvec, numvec, title = "Nucleotide Counts")
println(plt)

# Turn this into function because I realized it should work for any string!

function plotfreqs(string, title)
	dict = countmap([c for c in string])
	keyvec = collect(keys(dict))
	countvec = [dict[i] for i in keyvec]
	barplot(keyvec, countvec, title = title)
end

println(plotfreqs("dsafdsiofaosdfffffffdkskkkk", "Please Help"))

