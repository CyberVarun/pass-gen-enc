#!/bin/bash

# Password Genrator

# Colors
rset='\033[0m'
grn='\033[1;32m'
blue='\033[1;34m'

# Taking User input
echo -e "$blue Enter the lenth of password you want: $rset"
read -r PASSLEN
echo -e "$blue Enter Hash Type(like base64, hex): $rset"
read -r ENTP
echo -e "$blue How many password you want: $rset"
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
			echo -e "$grn ${NUM}. ${MAIN} $rset"
		done

	elif [[ "${ENTP}" == "hex" ]];
        then
       		until [[ "${NUM}" == "${COUNT}" ]];
                do
                        MAIN=$(openssl rand -"${ENTP}" 48 | cut -c1-"${PASSLEN}")
                        NUM=$(expr $NUM + 1)
                        echo -e "$grn ${NUM}. ${MAIN} $rset"
                done

	else
		echo "Hash Type does not found!!!!"
	fi
done
