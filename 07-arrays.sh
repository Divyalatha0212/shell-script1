#!/bin/bash
MOVIES=("RRR","BOSE","3")
echo "first movie is: ${MOVIES[0]}"
echo "all movies are: ${MOVIES(@)}"