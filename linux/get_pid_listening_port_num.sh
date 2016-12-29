#!/bin/bash

if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters. Please give one port number."
fi

lsof -i :$1
