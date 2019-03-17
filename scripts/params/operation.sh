#!/usr/bin/env bash

:<<EOF
1. 算术运算
    - +
    - -
    - \*
    - /
    - %
2. 关系运算
    - eq: equal
    - ne: not equal
    - gt: greater than
    - lt: less than
    - ge: greater equal
    - le: less equal
3. 布尔运算
    - -a
    - -o
    - !
4. 逻辑运算
    - &&
    - ||
5. 字符串运算符
    - =
    - !=
    - -z
    - -n
    - $
5. 文件测试
    - f
    - r
    - w
    - x
    - d

EOF

numberOne=100
numberTwo=21

printf "%-10s %-10s %-10s %-10s\n" 参数1 参数2 运算符 结果
printf "%-10d %-10d %-10s %-10d\n" ${numberOne} ${numberTwo} "+" `expr ${numberOne} + ${numberTwo}`
printf "%-10d %-10d %-10s %-10d\n" ${numberOne} ${numberTwo} "-" `expr ${numberOne} - ${numberTwo}`
printf "%-10d %-10d %-10s %-10d\n" ${numberOne} ${numberTwo} "*" `expr ${numberOne} \* ${numberTwo}`
printf "%-10d %-10d %-10s %-10d\n" ${numberOne} ${numberTwo} "/" `expr ${numberOne} / ${numberTwo}`
printf "%-10d %-10d %-10s %-10d\n" ${numberOne} ${numberTwo} "%" `expr ${numberOne} % ${numberTwo}`


if [[ ${numberTwo} -ge ${numberOne} ]]
then
    echo "${numberTwo}" ">=" ${numberOne}
else
    echo "${numberTwo}" "<" ${numberOne}
fi

if test ${numberOne} -le 100 -a ${numberTwo} -ge 20;
then
    echo "HaHa"
fi

if [[ ${numberOne} -le 100 && ${numberTwo} -ge 20 ]];
then
    echo "HaHaHa"
fi


strOne=""

if [[ ${strOne} ]];
then
    echo "空参数"
fi

strTwo="Hello_World"

if [[ -n ${strTwo} ]];
then
    echo ${#strTwo}
fi

if ! [[ -z ${strTwo} ]];
then
    echo ${#strTwo}
fi

if [[ ${#strTwo} -ne 0 ]];
then
    echo ${#strTwo}
fi


dir=`pwd`

if [[ -d ${dir} ]];
then
    echo ${dir}
    for VAR in `ls ${dir}` ; do
        echo ${VAR}
    done

fi


