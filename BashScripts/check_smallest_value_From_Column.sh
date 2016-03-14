############################################
#	This script will list and sort
#	values of all the columns according
#	to the third column.
###########################################
for f in Iteration_PostionLC1_inclusive_X_-*.txt
do
	echo $f
	sort -r -nk 3 $f 
	#sort -r -nk 3 $f | tail -n1
done
