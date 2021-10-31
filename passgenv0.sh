#!/bin/bash

# Password Genrator

#colors
rset='\033[0m'
red='\033[1;31m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'

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

# Taking User input
echo "Enter the lenth of password you want: "
read -r PASSLEN
echo "Enter encoding method(like base64, hex): "
read -r ENTP
echo "How many password you want: "
read -r COUNT
echo
NUM=0

# Generating Password
for p in $(seq 1 "${COUNT}" );
do
	if [[ "${ENTP}" == "base64" ]];
	then
		until [[ "${NUM}" == "${COUNT}" ]];
		do
			MAIN=$(openssl rand -"${ENTP}" 48 | cut -c1-"${PASSLEN}")
			NUM=$(expr $NUM + 1)
			echo -e "${NUM}. ${MAIN}"
		done

	elif [[ "${ENTP}" == "hex" ]];
        then
       		until [[ "${NUM}" == "${COUNT}" ]];
                do
                        MAIN=$(openssl rand -"${ENTP}" 48 | cut -c1-"${PASSLEN}")
                        NUM=$(expr $NUM + 1)
                        echo -e "${NUM}. ${MAIN}"
                done

	else
		echo "Encoding method not found....."
	fi
done