#!/usr/bin/env bash

:<<EOF
分析数据处理: 列

$0
$1
$NF
NF: 列
NR: 行
-F 分隔符
EOF


awk '{print NF}' /etc/passwd
awk '{print $1}' /etc/passwd


awk '/Read/' /etc/passwd
sed -n '/Read/p' /etc/passwd
grep -E 'Read' /etc/passwd

# 第 n 行
awk '{if(NR==1) print $1}' passwd
awk '{if(NR>1 && NR<4)} print $1' passwd

# begin 、end
cat /etc/passwd | awk -F: 'BEGIN{print "name, shell"} {print $1,$NF} END{print "hello  world"}'
:<<EOF
b,4|0
d,3.75&0
k,4|10
m,5,20
EOF
awk -F '[,|&]' '$3>0 {print $3, $2 * $3}' example.csv
awk -F '[,|&]' '{if($3>0) print $3, $2 * $3}' example.csv