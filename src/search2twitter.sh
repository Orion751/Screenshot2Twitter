#!/bin/bash

: '
Pseudocode

search=first line of searches

Move $search to the end of oldSearches

Create a screenshot with $search

Send the screenshot to Twitter

'

verbose=false

while getopts ":v" opt; do
    case $opt in
        v)
            verbose=true

            shift $((OPTIND-1))
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2

            exit 1
            ;;
    esac
done

searchFile="$1"
oldSearchFile="$2"

search=`head -1 "$searchFile"`

if [ "$verbose" = true ]; then
    echo "$search"
fi

