#!/bin/sh

commit(){
	git status
	sleep 1
	#git pull
	sleep 1
	git add *
	sleep 1
	git commit -m "the $1 times commit"
	sleep 1
	git push origin master
	echo "成功提交"
}

value = 0
while true
do
commit $value
$((value++))
if [ value == 5 ]
then
value = 0
fi
done
