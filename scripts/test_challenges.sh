#!/bin/bash

declare -a valid=("Challenge01" "Challenge02")

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