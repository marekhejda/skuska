#!/bin/bash


clear
echo " "
echo "What is your name and surname?"
read name
echo " "
echo "Hello" $name
echo " "
echo "If you want create account press enter or press Ctrl+C for exit "
read answer
echo "write login"
read login
adduser -c "$name" -e 2022-12-31 $login
echo ""
echo "create password"
passwd $login
echo ""
echo "$(tput setaf 1)now you are logged in"
echo""
tput setaf 7
tail -n1 /etc/passwd
echo ""
su $login

























