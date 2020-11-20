# spongemockify
![spongemock](https://github.com/JorisWijnen/spongemockify/blob/main/images/spongemock.jpg "SpongeMock")

Small python3 tool that creates *spongemock* text from command line input.

### Linux
To run the tool from the command line from anywhere in Linux, you can create a symlink to `/usr/bin/` with  
`sudo ln -s PATH_TO_REPOSITORY/spongemockify /usr/bin/spongemockify`

### Windows
To run the tool from the command line from anywhere in Windows, you have to add the script to the PATH.
https://stackoverflow.com/questions/39663091/how-can-i-add-a-python-script-to-the-windows-system-path
(Not tested)

#### Easy copy paste access

It will concatenate all arguments to one string, so quotation marks are not needed. This helps with pasting a copied text after the command.

The output is copied to the clipboard if xclip or xsel is installed.  
`sudo apt-get install xclip`  
`sudo apt-get install xsel` (Note: xsel does not always seem to work.)

## The algorith

For each character in the string
 - randomize an integer from 1 to VARIABLE_RANGE (starts at 10)
 - If integer is 5 or lower, the character is capitalized and the random range is increased by 1
 - If integer is higher than 5 (thus a lowercase letter), decrease the range by 1

This will make is less likely to have back to back strings of multiple uppercase and lowercase letters
