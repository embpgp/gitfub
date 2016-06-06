#!/bin/sh
#
# Linux shell fUKK the github
# 
# First you must hava a remote repository in your github by ssh
#
# Then your local PC must git remote it
#
# Copyright (C) 2016 embpgp
#
# GPL
#
#

commit(){
	#git status
	sleep 1
	echo "*********Begin the ($1) times commit*****************************"
	#git pull
	sleep 1
	git add *
	sleep 1
	git commit -m "the $1 times commit"
	sleep 1
	git push origin master
	echo "**********successful********************************************"
}

	

#the nahap log
nohap="nohap.out"
value=0   #count the times
while true
do
	commit $value   #call the function
	value=`expr $value + 1`
	echo $value > ./fUKK.txt  #change the file ,make the git status change
	if [ $value -eq $1 ]   #after a loop times 
		then
		value=0
		if [ -f $nohap ] 
			then
			echo "" > $nohap  #flush the log
		fi
	fi
	sleep 5
done
