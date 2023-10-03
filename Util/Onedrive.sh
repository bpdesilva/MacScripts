echo "\n\n Killing all Adobe Apps \n\n"

if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

ps -ef | awk '/[O]neDrive/ { print $2 }' | xargs sudo kill -9