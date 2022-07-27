#!/usr/bin/bash

command="$1"

case $command in
	"convert")
		inputFile="$2"
		outputFile="$3"

		ffmpeg -i $inputFile $outputFile
		;;
	"trim")
		inputFile="$2"

		#name output file

		#split input file name
		readarray -d . -t arr <<< "$inputFile"

		#get number of parts
		n=${#arr[*]}

		for (( i=0; i<$n-2; i++ )); do
			outputFile+=${arr[i]}"."
		done
		outputFile+=${arr[$n-2]}"-trimmed."${arr[$n-1]}

		startTime="$3"
		if [ -z "$4" ]; then
			ffmpeg -ss $startTime -i $inputFile -c copy $outputFile
		else
			endTime="$4"
			ffmpeg -ss $startTime -to $endTime -i $inputFile -c copy $outputFile
		fi
		;;
	*)
		echo "Command $command not recognized."
		exit 1
		;;
esac