#!/bin/sh
clear
#This program is designed to move, copy, rename files or folders
echo "Welcome to Minimal File Explorer"
echo "Select Action Number Below"
echo "1. Move files"
echo "2. Copy files"
echo "3. Rename File"
echo "4. Create Folder"
echo "5. Create File"
echo "6. Rename Folder"
echo "7. End Program"

#Define actions for each option Selected
read USERINPUT

if [ $USERINPUT -eq 1 ]
   then
	echo "Enter File Path"
	read FILEPATH

	echo "Enter File Destination Path"
	read DESTINATION
	
	mv $FILEPATH $DESTINATION
	echo "File $FILEPATH moved to $DESTINATION"
	

	
elif [ $USERINPUT -eq 2 ]
   then
	echo "YOu want to Copy File. Follow the instruction Below"
	echo "Enter the File Name to copy"
	read FILEPATH

	echo "Enter the file Destination Path"
	read DESTINATION

	cp $FILEPATH $DESTINATION
	echo "Your file $FILEPATH was successfully moved to $DESTINATION"	


elif [ $USERINPUT -eq 3 ]
   then
	echo "You have seleted Option 3, to Rename a file"
	echo "Enter The File Name From the List of files below"
	ls -l
	read FILENAME
	echo " "
	echo "Enter the New Name"
	read NEWNAME

	mv $FILENAME $NEWNAME
	echo "Hurray!!! the file $FILENAME to $NEWNAME"

elif [ $USERINPUT -eq 4 ]
   then
	echo "You want to Create a Folder"
	echo "Enter Folder Name"
	read FOLDERNAME
	
	mkdir $FOLDERNAME
	echo "Your folder has been Created Successfully: $FOLDERNAME"

elif [ $USERINPUT -eq 5 ]
   then
	echo "You want to Create a File"
	read FILENAME
	touch $FILENAME
	echo "Your file $FILENAME was Created Successfully"

elif [ $USERINPUT -eq 6 ]
   then
	echo "You want to Rename Folder"
	unset FOLDERNAME
	ls -l
	echo "Enter Folder Name"
	read FOLDERNAME
	echo "Enter The Name of the New Folder"
	read NEWFOLDERNAME
	echo " "

	mv $FOLDERNAME $NEWFOLDERNAME
	echo "Your Folder Name has been rename from $FOLDERNAME to $NEWFOLDERNAME"
	
	
else
   echo "Program ended with exit code 0"

fi
