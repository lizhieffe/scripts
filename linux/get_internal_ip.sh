#!/bin/bash

# print $NF is to print the last column
ip route get 8.8.8.8 | awk '{print $NF; exit}'
