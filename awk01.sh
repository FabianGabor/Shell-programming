#!/bin/bash

awk -v minta="/^Ha/" -v szam=5 -f awk01.awk walesi/walesi.txt
