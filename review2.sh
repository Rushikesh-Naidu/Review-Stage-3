#!/bin/bash -x

passPat="(?=.*[0-9])(?=.*[a-z]){1,}(?=.*[A-Z]){2,}(?=.*[@#$%^&+=]){1}(?=\S+$).{10,}$"
read -p "Enter the Password: " pass;

if [[ $pass =~ $passPat ]]
then
echo "Password is valid...!";
else
echo "Invalid Password";
fi
