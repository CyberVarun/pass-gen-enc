#!/bin/bash

if [[ $? != 0 ]];
then
	echo "This must run as root/sudo privlleges"
	echo "By"
	exit
fi

if [[ $1 == "--uninstall" ]];
then
	rm -rf /usr/local/bin/passenc /usr/local/bin/passgen
	echo "Removed previous files"
	exit
fi

echo "Enter which version you want to install(0/1): "
read -r VERSION

if [[ ${VERSION} == "0" ]];
then
	cp passencv0.sh passenc
	cp passgenv0.sh passgen
	mv passgen passenc /usr/local/bin
	echo "Intstalled Version 0"
	echo "Type passgen/passenc to use. Thank you"

elif [[ ${VERSION} == "1" ]];
then
	cp passencv1.sh passenc
	cp passgenv1.sh passgen
	mv passgen passenc /usr/local/bin
	echo "Intstalled Version 1"
	echo "Type passgen/passenc to use. Thank you"

else
	echo "Enter A valid input"
fi