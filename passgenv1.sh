#!/bin/bash

NUM=0

# Colors
rset='\033[0m'
grn='\033[1;32m'

# Genrating Password

if [[ "$1" == "-s" ]];
then
	for p in $(seq 1 "$4" );
	do
		if [[ "$3" == "base64" ]];
		then
			until [[ "${NUM}" == "$4" ]];
			do
			MAIN=$(openssl rand -"$3" 48 | cut -c1-"$2")
			NUM=$(expr $NUM + 1)
			echo -e "$grn ${NUM}. ${MAIN} $rset"
			done	

		elif [[ "$3" == "hex" ]];
        	then
       			until [[ "${NUM}" == "$4" ]];
                	do
                        MAIN=$(openssl rand -"$3" 48 | cut -c1-"$2")
                        NUM=$(expr $NUM + 1)
                        echo -e "$grn ${NUM}. ${MAIN} $rset"
                	done
		else
			echo "Encoding method not found....."
		fi
	done
exit
fi
