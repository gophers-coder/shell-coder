#!/usr/bin/env bash

:<<EOF
1. sed: stream editor
按行为单位,对文本进行替换\新增\选取

-d 删除
-p print
-s search and replace
-e editor == ";"

EOF

# delete
sed '1,2d' /etc/passwd
sed '$d' /etc/passwd

# print
sed -n '1p' /etc/passwd
sed -n '1,3p' /etc/passwd
sed -n '/R.*/p' /ete/passwd

# replace
sed 's/read/READ/g' /etc/passwd
sed 's/read/READ/2' /etc/passwd

# insert
sed -i '.bak' '/^$/d' /etc/passwd
sed -i.bak '/^$/d' /etc/passwd
