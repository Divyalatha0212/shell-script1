#!/bin/bash
USERID=$(id -u)
TIMESTAMP=$(date +%F-%h-%m-%s)
SCRIPT_NAME=$( echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME$TIMESTAMP.log

VALIDATE ()
{
    if [ $1 -ne 0 ]
    then
    echo " $2---FAILURE "
    else
    echo "$2---SUCCESS "
    fi
}


if [ $USERID -ne 0 ]
then 
echo " Please run the script in root"
else
echo " you are the root user."
fi

dnf install mysql -y
VALIDATE $? "Installing mysql"

dnf install git -y
VALIDATE $? "installing git"