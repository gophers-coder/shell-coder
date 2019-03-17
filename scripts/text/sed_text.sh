#!/usr/bin/env bash

:<<EOF
1. 全称：stream editor
2. 文本替换：
    - s/pattern/replace/g 全局替换并打印
    - i 替换原内容
    - i.bak 替换原内容并备份
    - /^$/d 移除空白行
    - & 匹配到的原内容
EOF


count=`cat text.txt | grep -c -E '^本.*?'`
if [[ ${count} -ge 1 ]];
then
    echo ${count}
    sed -i.bak  -e 's/^本./超级😡|&/g' -e '/^$/d' text.txt
fi