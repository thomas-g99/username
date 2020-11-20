#! /bin/bash
# username.sh
# Thomas Gooding
echo 'your username must contain between 3 and 12 lowercase letters, digits, and underscores. It must start with a lowercase letter.'
echo 'Enter a username: '
read -r NAME
while echo "$NAME" | egrep -E -v "^[a-z][0-9]_#{3,12}$" > /dev/null 2>&1
do
	echo "You must enter a Valid username. Between 3 and 12 characters, can be lowecase letter, digits, and underscores. Must start with a lowercase."
	echo "Enter a Username: "
	read -r NAME
done
echo "Thank you"
