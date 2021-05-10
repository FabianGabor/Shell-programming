#!/bin/bash

szoveg1="hello"
szoveg2="world"
szoveg3="hello world"

echo "szoveg3"
echo "$szoveg3"
echo "$szoveg1 world"
echo "$szoveg1 $szoveg2"

szoveg4=$szoveg1" "$szoveg2
echo "$szoveg4"