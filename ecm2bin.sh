#!/bin/bash
#-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------


main_process () {

	input_1=$(zenity --file-selection --icon-name=applications-games --title="Pick Game To Convert" --file-filter="*.ecm" 2> /dev/null)

	echo ""ecm-uncompress "'$input_1'" "'$input_1.bin'""" | xclip;

	xclip -o | $SHELL;
	
	process_complete
}


process_complete () {

	zenity --notification --window-icon=face-smile-big.png --text="Done! Enjoy Your Rom!"  2> /dev/null

	zenity --question --icon-name=applications-games --text="Convert Another File(s)?" --timeout=10 --default-cancel --cancel-label=No --ok-label="Bring it on" 2> /dev/null
	if [ $? = 0 ] ; then
		
		main_process
		
	elif [ $? = 1 ] ; then
		
		exit
		
	fi
}









##################### Start Sequence

main_process




























chmod +x ecm2bin.sh