#!/bin/bash

# Password Encypter

#colors
rset='\033[0m'
red='\033[1;31m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'

# Taking User input:
echo -e "$blue Enter your passphrase: $rset"
read -r "PASSPH"

echo -e "$blue Select Hash Type: $rset"

echo -e "$red 1 for md5sum $rset"
echo -e "$ylo 2 for sha1sum $rset"
echo -e "$pink 3 for sha224sum $rset"
echo -e "$cyan 4 for sha256sum $rset"
echo -e "$blue 5 for sha512sum $rset"
echo -e "$grn 6 for shasum $rset"
echo -e "$red 7 for all $rset"
read -r "PASSTYPE"

# Generating password
md5=$(echo -e -n "$PASSPH" | md5sum)
sha1=$(echo -e -n "$PASSPH" | sha1sum)
sha224=$(echo -e -n "$PASSPH" | sha224sum)
sha256=$(echo -e -n "$PASSPH" | sha256sum)
sha512=$(echo -e -n "$PASSPH" | sha512sum)
sha=$(echo -e -n "$PASSPH" | shasum)

if [[ "${PASSTYPE}" == "1" ]];
then
	echo -e "$red ${md5} $rset"
fi

if [[ "${PASSTYPE}" == "2" ]];
then
	echo -e "$ylo ${sha1} $rset" 
fi

if [[ "${PASSTYPE}" == "3" ]];
then
	echo -e "$pink ${sha224} $rset"	
fi

if [[ "${PASSTYPE}" == "4" ]];
then
	echo "$cyan ${sha256} $rset"
fi

if [[ "${PASSTYPE}" == "5" ]];
then
	echo "$blue ${sha512} $rset"
fi

if [[ "${PASSTYPE}" == "6" ]];
then
	echo "$grn ${sha} $rset"
fi

if [[ "${PASSTYPE}" == "7" ]];
then
	echo -e "$red ${md5} --md5sum $rset"
	echo -e "$ylo ${sha1} --sha1sum $rset"
	echo -e "$pink ${sha224} --sha224sum $rset"
	echo -e "$cyan ${sha256} --sha256sum $rset"
	echo -e "$blue ${sha512} --sha512sum $rset"
	echo -e "$grn ${sha} --shasum $rset"
fi
