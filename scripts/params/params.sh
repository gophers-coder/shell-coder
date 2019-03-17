#!/usr/bin/env bash

# 命令行传入参数和变量

:<<EOF
1. 变量
2. 参数
3. 输出
4. 执行

notice: 变量不能有空格
EOF

fileName=${0}

firstParam=${1}

echo "start execute command"
echo ${fileName} : ${firstParam}

echo ""

printf "%-10s   %-20s\n" 文件名称   参数
printf "%-10s   %-20s\n" ${fileName}    ${firstParam}