#!/bin/bash
#Want non-empty card keyword
if [[ -z $1 ]] || [[ -z $2 ]] 
   then
       exit
fi

for i in $(seq 0 255)
do
    if [[ -n $(amixer info -c $i | grep -i $1) ]]
        then
            echo $i
            echo "amixer -c $i $2"
            amixer -c $i $2
            break
    fi 
done
