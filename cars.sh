#! /bin/bash
#Cars.sh
#Joshua Barrs

echo "" #for formatting 

echo "This program has to do with cars!" 

echo "Hit q at any time to quit the program!"
echo "Press e to enter a car into the file My_old_cars"
echo "Press p to print the current inventory of cars" 

read option

while [ $option != "q" ]
do
	case "$option" in
		"e")
			 echo "Please enter the year of the car" 
			read car_year
			echo "Please enter the make of the car"
			read car_make
			echo "Please enter the model of the car" 
			read car_model
			echo "$car_year $car_make $car_model" >> My_old_cars;;
		"p")
			echo "Printing the current inventory of cars"
			cat My_old_cars;;   
		"q") 
			echo "Goodbye!"
			
	esac
	if [ $option != "q" ]
	then
		echo "" #formatting 
		echo "Re-enter a option: q to quit, e to enter a new car into the file, or p to print the current inventory"
		read option
		if [ $option == "q" ] 
		then
			echo "Goodbye"
			echo "" # for formatting 
		fi  
	fi 
done

		
