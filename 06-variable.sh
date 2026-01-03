#!/bin/bash

read  -p "Please Enter user name:" USERNAME

read -p -s "Please Enter password:" PASSWORD

echo
read -p -s "Confirm the Password:" CONFIRM_PASSWORD

if [ "$PASSWORD" == "$CONFIRM_PASSWORD" ]; then
echo "Password matched"
else
echo "Password not mached" 
fi