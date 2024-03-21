#!/bin/bash
echo -n "Enter first name: "
read first
read -p "Enter second name: " second
read -sp "Password: " pass
echo -e "\nHello $first $second!\nyour password is $pass"
