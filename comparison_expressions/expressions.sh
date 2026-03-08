#!/usr/bin/bash
# Numeric comparison
[ 2 -gt 3 ] && echo "true one"
# String comparison
[ "mohamed" = "ahmed" ] && echo "true"

[ 1 -eq 1 ] && [ 5 -gt 4 ] && echo "both true"

[[ 1 -eq 1 && 5 -gt 4 ]] && echo "both true"