#!/usr/bin/env bash

:<<EOF
1. 遍历 for
2. 流程控制 if else
3. 流程控制 case esac
4. 流程控制 while

EOF

LOOP_LIMIT=10
SUM=0
for (( VAR = 0; VAR < ${LOOP_LIMIT}; ++VAR )); do
     SUM=`expr ${SUM} + ${VAR}`
done


echo ${SUM}

flag=0
if [[ ${SUM} -eq 45 ]];
then
    flag=0
    echo "Good Job"
elif [[ ${SUM} -lt 45 ]];
then
    flag=-1
    echo "Less Than"
elif [[ ${SUM} -gt 45 ]];
then
    flag=1
    echo "Greater Than"
fi

case ${flag} in
    0)
        echo "Good Job"
    ;;
    1)
        echo "Greater Than"
    ;;
    -1)
        echo "Less Than"
    ;;
esac