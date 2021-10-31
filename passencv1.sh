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

# functions
md5(){
	echo -e -n "$1" | md5sum
}
sha(){
	echo -e -n "$1" | shasum
}
sha1(){
	echo -e -n "$1" | sha1sum
}
sha224(){
	echo -e -n "$1" | sha224sum
}
sha256(){
	echo -e -n "$1" | sha256sum
}
sha512(){
	echo -e -n "$1" | sha512sum
}

#Generating Password
enc=(md5 sha sha1 sha224 sha256 sha512)

if [[ "$1" == "-s" ]];
then
	for i in "${enc[@]}";
	do
		if [[ "$3" == "md5" ]];
		then
			echo -e "$red md5:~ $rset"
			md5 "$2"
			break

		elif [[ "$3" == "sha" ]];
		then
			echo -e "$ylo sha:~ $rset"
			sha "$2"
			break

		elif [[ "$3" == "sha1" ]];
		then
			echo -e "$pink sha1:~ $rset"
			sha1 "$2"
			break

		elif [[ "$3" == "sha224" ]];
		then
			echo -e "$cyan sha224:~ $rset"
			sha224 "$2"
			break

		elif [[ "$3" == "sha256" ]];
		then
			echo -e "$blue sha256:~ $rset"
			sha256 "$2"
			break

		elif [[ "$3" == "sha512" ]];
		then
			echo -e "$grn sha512:~ $rset"
			sha512 "$2"
			break

		elif [[ "$3" == "all" ]];
		then
			echo -e "$red md5:~ $rset"
			md5 "$2"
			echo -e "$ylo sha:~ $rset"
			sha "$2"
			echo -e "$pink sha1:~ $rset"
			sha1 "$2"
			echo -e "$cyan sha224:~ $rset"
			sha224 "$2"
			echo -e "$blue sha256:~ $rset"
			sha256 "$2"
			echo -e "$grn sha512:~ $rset"
			sha512 "$2"
			exit

		elif [[ "$3" != "$i" ]];
		then
			echo "Algorithm not found please try again"
			exit
		fi
	done
exit
fi