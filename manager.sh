while true; 
do
echo "------ MENU ------"
echo "1. Add students"
echo "2. Show students"
echo "3. Search students"
echo "4. Exit"
echo "Please choose from menu:"
read menu
if [ "$menu" -eq 1 ]; then
	echo "---- ADD STUDENTS ---"
	echo "What's your name?"
	read name
	echo "what's your age?"
	read age
		if [ $age -lt 18 ]; then
			echo "Student is minor (not saved)"
		else 
		{
			echo "---- STUDENTS LIST ----"
			echo "Name: $name"
			echo "Age: $age"
			echo "-----------------"
		} >> students.txt
			echo "Student Saved"
		fi
elif [ "$menu" -eq 2 ]; then
	echo "---- SHOW STUDENTS ----"
	cat students.txt
elif [ "$menu" -eq 3 ]; then
	echo "---- SEARCH STUDENTS ----"
	echo " what's the student name you searching for"
	read name2
	if grep -A 1 $name2 students.txt; then 
		echo "found"
	else 
		echo "Not found"
	fi
elif [ "$menu" -eq 4 ]; then
	break
	echo "exiting....."

fi
done
