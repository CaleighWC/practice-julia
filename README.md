# practice-julia
Practicing Git and Julia on the DRAC Cedar cluster

# Objective
I want to learn the basics of Julia with a focus on ASCII output. For example, 
the UnicodePlots.jl package.

# Descriptions by Script
- **RM_out_to_csv.sh**  
One of the RepeatMasker outputs is a human-readable table that contains each
instance of a masked repeat as an observation, with coordinates and other 
information in the columns. Unfortunately, they used varying amounts of spaces
and inconsistent headers to make this human-readable, so it can't be loaded in 
as a CSV or TSV file by programs, including Julia. This script cleans the file 
of those characteristics so that it can be read as a CSV in a Julia script I 
was practicing with. I made it to go with repeat_plots.jl. I will probably move 
this and use it in other projects in the future because it may be useful.  
  
- **hello.jl**  
Just a Julia hello world script. It is called by the "submit.sh" script, and 
was one of the first things I made when experimenting with Julia to make sure 
it was working.
  
- **install_packages.jl**  
A script that installs the packages "UnicodePlots", "BenchmarkTools", and
"StatsBase" for Julia. It was made to go with submit.sh but commented out
because it was only necessary to run the first time those packages were used.  
  
- **plots_example.jl**  
A script to test out the UnicodePlots.jl package. It makes some example plots
from the documentation and also defines a function that makes a bar plot of 
the counts of letters in a string.  
  
- **repeat_plots.jl**  
A modification of the bar plot creation part of the plots_example.jl script. 
This one loads the cleaned RepeatMasker output with CSV.jl and DataFrames.jl
and makes a bar plot of the frequency of different repeat families. It was
tested using a 500 line subset of the RepeatMasker output for the greenish
warbler 2022 dataset.

- **repeat_plots_submit.jl**  
A submit script for repeat_plots.jl. This could be modified in the future to
also source RM_out_to_csv.sh and create a temporary file to be read by Julia if
desirable.  
  
- **submit.sh**  
A submit script for hello.jl, install_packages.jl, and plots_example.jl  
  
