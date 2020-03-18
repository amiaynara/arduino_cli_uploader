#! /bin/bash
#assuming that the board and the libraries already installed

#list connected board
#conda activate python_learn # here all the python libraries are present
arduino-cli board list > board_info.txt; # assume only one board is connected(future scope)
port=$(python  port.py);
directory=$(pwd);
echo "the current directory is : $directory";
arduino-cli compile --fqbn arduino:avr:uno $directory; 
if [ "$?"="0" ]; then
	echo "succesfully compiled";
	echo "Uploading...";
	arduino-cli upload --port  $port --fqbn arduino:avr:uno $directory;
else
	echo "Something went wrong! Check current directory, board connection and syntax";

fi
