#!/usr/bin/bash

add(){
    echo $(( $1 + $2 ))
}

result=$(add 5 10)
echo "The sum is: $result"