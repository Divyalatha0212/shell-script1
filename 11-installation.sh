#!/bin/bash
USERID=$(id -u)

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
echo "Installation is..FAILURE"
exit 1
else
echo "Installing MYSQL..SUCCESS"
fi

dnf install git -y
then 
echo "Installing git is..FAILURE"
exit 1
else
echo "Installing git is..SUCCESS"
fi