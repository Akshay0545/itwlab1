#!/bin/bash

# Function to check if a number is prime
is_prime() {
    local num=$1
    if [ $num -lt 2 ]; then
        return 1
    fi

    for ((i = 2; i*i <= num; i++)); do
        if [ $((num % i)) -eq 0 ]; then
            return 1
        fi
    done
    return 0
}

# Function to print the pyramid of prime numbers
print_prime_pyramid() {
    local height=$1
    local number=2

    for ((i = 1; i <= height; i++)); do
        local spaces=$((height - i))

        # Print leading spaces
        for ((j = 0; j < spaces; j++)); do
            echo -n " "
        done

        local count=0

        # Print the prime numbers
        while [ $count -lt $((2 * i - 1)) ]; do
            is_prime $number
            if [ $? -eq 0 ]; then
                printf "%d " $number
                count=$((count + 1))
            fi
            number=$((number + 1))
        done

        echo "" # Move to the next line
    done
}

# Set the height of the pyramid
pyramid_height=5

# Print the pyramid of prime numbers
print_prime_pyramid $pyramid_height
