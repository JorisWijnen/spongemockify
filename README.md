# spongemockify
![spongemock](https://github.com/JorisWijnen/spongemockify/blob/main/images/spongemock.jpg "SpongeMock")

Small python3 tool that creates 'spongemock' text from command line input.

### Linux
To run the tool from the command line from anywhere in Linux, you can create a symlink to `/usr/bin/` with  
`sudo ln -s PATH_TO_REPOSITORY/spongemockify /usr/bin/spongemockify`

### Windows
To run the tool from the command line from anywhere in Windows, you have to add the script to the PATH.
https://stackoverflow.com/questions/39663091/how-can-i-add-a-python-script-to-the-windows-system-path
(Not tested)

#### Easy copy paste access

It will concatenate all arguments to one string, so quoation marks are not needed.This helps with pasting a copied text after the command.

The output is copied to the clipboard if xclip or xsel is installed.  
`sudo apt-get install xclip`  
`sudo apt-get install xsel` (Note: xsel does not always seem to work.)
