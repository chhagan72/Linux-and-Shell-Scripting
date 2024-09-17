#!/bin/bash

create_directory() {
	mkdir demp
}


if ! create_directory; then
	echo " The firectory is allready exists"
	exit 1
fi

echo " This should not work beacause the code is interrupted"

