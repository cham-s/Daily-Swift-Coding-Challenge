#!/bin/bash

declare -a valid=("Challenge01" "Challenge02" "Challenge03" "Challenge04" \
	"Challenge05" "Challenge06" "Challenge07" "Challenge08" "Challenge09" \
	"Challenge10" "Challenge11" "Challenge12" "Challenge13" "Challenge14" \
	"Challenge15" "Challenge16" "Challenge18" "Challenge18" "Challenge19" \
	"Challenge20" "Challenge21" "Challenge22" "Challenge23" "Challenge30" \
	"Challenge31" "Challenge32" "Challenge33"
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
