#!/bin/bash

NUM=0

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
			echo -e "${NUM}. ${MAIN}"
			done	

		elif [[ "$3" == "hex" ]];
        	then
       			until [[ "${NUM}" == "$4" ]];
                	do
                        MAIN=$(openssl rand -"$3" 48 | cut -c1-"$2")
                        NUM=$(expr $NUM + 1)
                        echo -e "${NUM}. ${MAIN}"
                	done
		else
			echo "Encoding method not found....."
		fi
	done
exit
fi