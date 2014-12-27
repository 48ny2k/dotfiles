#!/bin/sh

# Function used to locate files

discover () {
	keyword=$(echo "$@" | sed 's/ /.*/g' | sed 's:|:\\|:g' | sed 's:(:\\(:g' | sed 's:):\\):g')
	locate -ir $keyword
}	
