#!/bin/bash
#-----------------------------------------------------------------
#				 Tower Of Hanoi
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
			echo "move $n disk from $ini to $dest"
				return 
				fi
				local c=$((n-1))

				TowerofHanoi $c $ini $dest $t                 #Recursive call
				echo "move $n disk from $ini to $dest"
				c=$((n-1))
				TowerofHanoi $c $t $ini $dest                 #Recursive call
				return 
}


initial=1    		#First piller(initial)
temp=2       		#temprary piller
dest=3	     		#Destination piller

#Reading no. of disks on the tower
read -p "Enter no. of disks" n
echo "The order is :"
TowerofHanoi $n $initial $temp $dest

#-------------------------------------------------------------
# 		 End of Tower Of Hanoi
#-------------------------------------------------------------
