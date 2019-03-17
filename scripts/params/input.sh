#!/usr/bin/env bash

:<<EOF
1. 读取参数

EOF


echo "请输入参数:"

while :
do
    read var
    if test ${var} = "quit" -o ${var} = "q" -o ${var} = "exit"; then
            break
    else
        echo "输入的参数为："${var}
    fi
done
