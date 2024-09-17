#!/bin/bash

print_even_numbers() {
    local num=0
    while [[ $((num % 2)) == 0 && $num -lt 10 ]]
    do
        echo "$num"
        num=$((num+2))  # increment by 2 to work with even numbers
    done
}

# Call the function
print_even_numbers

