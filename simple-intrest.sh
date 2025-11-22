#!/bin/bash

# simple-interest.sh: Calculates the simple interest.
# Usage: ./simple-interest.sh <principal> <rate> <time>

# Check if the correct number of arguments is provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Assign arguments to descriptive variables
PRINCIPAL=$1
RATE=$2
TIME=$3

# Calculate simple interest: (P * R * T) / 100
# We use 'bc' for floating-point arithmetic (since shell math is usually integer-only)
INTEREST=$(echo "scale=2; ($PRINCIPAL * $RATE * $TIME) / 100" | bc)

echo "The simple interest for a principal of $PRINCIPAL, rate of $RATE% per annum, and time of $TIME years is: $INTEREST"

exit 0