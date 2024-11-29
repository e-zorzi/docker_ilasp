#!/usr/bin/env bash

docker build --platform linux/x86_64 -t ilasp .

echo "Built docker image called 'ilasp'."