# Remove leading and trailing whitespace
sed -E 's/^[[:space:]]+//' GW2022ref.fa.out.test |
sed -E 's/[[:space:]]+$//' > temp.txt

# Remove spaces before asterisks
sed -E 's/[[:space:]]([*])/\1/g' temp.txt > temp2.txt

# Convert remaining runs of spaces to commas
sed 's/  */,/g' temp2.txt > temp3.txt

rm temp.txt
rm temp2.txt

# Replace header line with one that has the correct number of variables
awk 'NR==1 {$0="SW_score,perc_div.,perc_del.,perc_ins.,query_sequence,q_begin,q_end,q_left,letter,matching_repeat,repeat_class_family,r_begin,r_end,r_left,ID"}1' temp3.txt > GW2022.dummy

# Remove unnecessary second line of header
sed -i '2,3d' GW2022.dummy

rm temp3.txt
