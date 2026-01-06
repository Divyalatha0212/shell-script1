#!/bin/bash
NO1=$1
NO2=$2

SUM=$(($NO1 + $NO2))
MUL=$(($NO1 * $NO2))
DIF=$(($NO1 - $NO2))
echo "total of $NO1 & $NO2 is: $SUM"
echo "mul of $NO1 & $NO2 is: $MUL"
echo "dif of $NO1 & $NO2 is: $DIF"
