#!/bin/bash

read -p "Enter Your username: " username

echo "Your username is: $username"

sudo useradd -m $username
echo "The new user name is created"

