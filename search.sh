# ------------------------------------------
# This script was written by Jithin Devasia
# Email : jithindevasia@gmail.com
# ------------------------------------------

#/bin/bash
echo -n "Enter the array limit : "
read n
temp=0; # Setting a flag here
	
	for (( i = 1; i <= n; i++ )); do 
		echo -n "Enter $i item : "
		read a[i] # Array initialization
	done

echo -n "Enter search item : "
read item
	for (( j = 1; j <= n; j++ )); do
		if [[ $item == ${a[j]} ]]; then
			temp=1
			echo "Item found at position $j"
			exit
		fi

	done

		if [[ $temp == 0 ]]; then
			echo "Item not found"
		fi
		