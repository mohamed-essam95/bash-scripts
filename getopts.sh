#!/usr/bin/bash

while getopts ":abf:" option; do
    case $option in
        a) echo "Option A selected";;
        b) echo "Option B selected";;
        f) echo "File option with value: $OPTARG";;
        :) echo "Error: Option -$OPTARG requires an argument";;
        \?) echo "Error: Invalid option -$OPTARG";;
    esac
done