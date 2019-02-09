#!/bin/bash

declare -a valid=("Challenge01" "Challenge02" "Challenge03" "Challenge04" \
	"Challenge05" "Challenge06" "Challenge07" "Challenge08" "Challenge09" \
	"Challenge10" "Challenge11" "Challenge12" "Challenge13" "Challenge14" \
	"Challenge15" "Challenge16" "Challenge18" "Challenge18" "Challenge19" \
	"Challenge20" "Challenge21" "Challenge22" "Challenge23" "Challenge30" \
	"Challenge31" "Challenge32" "Challenge33" "Challenge34" "Challenge35" \
	"Challenge37" "Challenge38" "Challenge39" "Challenge40" "Challenge42" \
	"Challenge44" "Challenge46" "Challenge47" "Challenge48" "Challenge49" \
	"Challenge50" "Challenge51" "Challenge52" "Challenge53" "Challenge54" \
	"Challenge55" "Challenge56" "Challenge57" "Challenge58" "Challenge59" \
	"Challenge60" "Challenge61" "Challenge63" "Challenge64" "Challenge65" \
	"Challenge66" "Challenge67" "Challenge68" "Challenge69" "Challenge70" \
	"Challenge71" "Challenge72" "Challenge73" "Challenge74" "Challenge75" \
	"Challenge76" "Challenge77" "Challenge78" "Challenge79"
	)

# TODO: more dynamic approach with a filter for testable packages.
# Ideally all packages are testable and all packages are tested via a loop.
# ls -l challenges | awk 'FNR>1 {print $9}' | while read x
# do
# 	if [ "$x" is part of the filter]
# 	then
#    		test challenges/$x
# 	fi
# done

cd challenges

for package in "${valid[@]}"
do
	cd $package && swift --version && swift package update &&  swift test && cd ../
done
