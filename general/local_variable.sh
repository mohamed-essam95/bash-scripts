#!/usr/bin/bash

show_count() {
    local count=10
    echo "Inside: $count"
}
show_count
echo "Outside: $count" # Empty (variable doesn't exist here)