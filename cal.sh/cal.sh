#!/bin/bash

add(){
    result=$(( $1 + $2 ))
    echo "${result}"
}

subtraction(){
    result=$(( $1 - $2 ))
    echo "${result}"
}

multiplication(){
    result=$(( $1 * $2 ))
    echo "${result}"
}

division(){
    result=$(( $1 / $2 ))
    echo "${result}"
}

power(){
    result=$(( $1 ** $2 ))
    echo "${result}"
}

module(){
    result=$(( $1 % $2 ))
    echo "${result}"
}

echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
echo "5. Power"
echo "6. Module"

read -p "Operation(1|2|3|4|5|6): " operation
read -p "First Number: " n1
read -p "Second Number: " n2

case $operation in
    1) add $n1 $n2;;
    2) subtraction $n1 $n2;;
    3) multiplication $n1 $n2;;
    4)
        if [ $n2 -eq 0 ]; then
            echo "Error: Division by zero!"
        else
            division $n1 $n2
        fi;;
    5) power $n1 $n2;;
    6) 
        if [ $n2 -eq 0 ]; then
            echo "Error: Division by zero!"
        else
            module $n1 $n2
        fi;;
    *) echo "Invalid operation";;
esac

