#!/usr/bin/bash

add(){
    return $(( $1 + $2 ))
}

add 5 10
echo "The sum is: $?"