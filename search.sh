#/bin/bash
echo -n "Enter the array limit : "
read n
temp=0; # Setting a flag here
echo -n "Enter array items one by one [Hit enter key after each item] : "
	
	for (( i = 1; i <= n; i++ )); do 
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
		