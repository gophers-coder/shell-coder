#!/usr/bin/env bash


data=("golang","java","python")

echo ${IFS}

IFS=","

for i in ${data[@]};
do
    echo ${i}
done
