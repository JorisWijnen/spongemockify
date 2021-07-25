#!/bin/bash
# This is a bash version of spongemockify

# Check if there are parameters set
if [ "$1" = "" ]
then
 echo "Please insert a string after the command"
else
 # Add all parameters to string
 for param in $@
 do
  string+=$param
  string+=" "
 done

 #Algorithm
 lower_string=$(echo $string | sed 's/[A-Z]/\L&/g')
 # echo $lower_string
 chance=50
 for (( i=0; i<${#lower_string}; i++ ))
 do
  char=${lower_string:i:1}
  # echo $i $char
  random_int=$(shuf -i 1-100 -n 1)
  # echo $random_int
  if [ $random_int -le $chance ] && [ "$char" != " " ]
  then
   new_string+=$(echo $char | sed 's/[a-z]/\U&/g')
   ((chance=chance-20))
  else
   new_string+=$char
   ((chance=chance+20))
  fi
 done
 echo $new_string
fi


