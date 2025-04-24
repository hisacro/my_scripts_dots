#!/bin/sh

if [ "$#" -eq 0 ]; then
	word=$(echo `xclip -o`)
else
	# spell check and passing 1st recommendation
	word=$(echo $1 | aspell -a | awk 'FNR == 2{print $5}'  | tr -d ',' )
	# if spelled right use that as word
	[[ $word == ''  ]] && word=$1
fi

# meaning of it
/home/hisacro/.local/bin/dictd --test $word 2> cat #suppress log

# history of search
grep $word ~/.dic_history > /dev/null || echo $word >> ~/.dic_history
