#!/bin/bash

add_user()
{
USER=$1
PASS=$2

useradd -m -p $PASS $USER && "Successfully added the user"

}

#MAIN

add_user chhagan chhagan@123
