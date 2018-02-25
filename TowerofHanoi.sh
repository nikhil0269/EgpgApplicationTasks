#!/bin/bash
#-----------------------------------------------------------------
#				 Tower Of Hanoi
			#	==================
			#Here I am naming source tower as 1, temprary 
			#tower as 2 and destnation tower as 3.
			#and also the name of disks as 1 2 3 ... n from 
			# top to bottom
#-----------------------------------------------------------------
#---------------------------------------------
#NAME: Nikhil Kumar Mishra
#Email: nikhil0269@gmail.com
#---------------------------------------------

TowerofHanoi(){
	local n=$1
		local ini=$2
		local  t=$3
		local dest=$4

		if [ $n == 1 ];then		#Base case
			echo "move disk $n from tower $ini to tower $dest"
				return 
				fi
				local c=$((n-1))

				TowerofHanoi $c $ini $dest $t                 #Recursive call
				echo "move disk $n from tower $ini to tower $dest"
				c=$((n-1))
				TowerofHanoi $c $t $ini $dest                 #Recursive call
				return 
}


sour=1    		#First piller(initial)
temp=2       		#temprary piller
dest=3	     		#Destination piller

#Reading no. of disks on the tower
read -p "Enter no. of disks" n
echo "The order is :"
TowerofHanoi $n $sour $temp $dest

#-------------------------------------------------------------
# 		 End of Tower Of Hanoi
#-------------------------------------------------------------
