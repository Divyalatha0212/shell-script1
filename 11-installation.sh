#!/bin/bash
USERID=$(id -u)
R="\e[31m
G="\e[32m
Y="\e[33m
N="\e[0m


if [ $USERID -ne 0 ]
then
echo "Please run the script with root access"
exit 1
else
echo "you are the root user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
echo -e "Installation is..$R FAILURE"
exit 1
else
echo -e "Installing MYSQL..$G SUCCESS"
fi

dnf install git -y
if [ $? -ne 0 ]
then 
echo -e "Installing git is..$R FAILURE"
exit 1
else
echo -e "Installing git is..$G SUCCESS"
fi