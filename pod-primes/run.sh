#!/bin/sh

set -m

date &
python3 ./my_script.py
fg %1
