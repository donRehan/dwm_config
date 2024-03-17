#! /bin/bash

export layout=$(setxkbmap -query | awk 'NR == 3 {print $2}')

if [[ $layout == "us" ]]; then
    setxkbmap -layout ar -option ctrl:swapcaps
elif [[ $layout == "ar" ]]; then
	setxkbmap -layout us -option ctrl:swapcaps
fi
