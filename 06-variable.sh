#!/bin/bash

read -p "Please Enter username: " USERNAME

read -s -p "Please Enter password: " PASSWORD
echo
read -s -p "Confirm the Password: " CONFIRM_PASSWORD
echo

if [ "$PASSWORD" == "$CONFIRM_PASSWORD" ]; then
    echo "Password matched"
else
    echo "Password not matched"
fi