echo "###### Note: Script works for postgre 10 ######"
echo "Uninstalling Postgre 10 from Mac..."
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

while true; do
    read -p "Do you wish to uninstall this program using the terminal?" yn
    case $yn in
        [Yy]* ) sudo /Library/PostgreSQL/9.X/uninstall-postgresql.app/Contents/MacOS/installbuilder.sh; break;;
        [Nn]* ) open /Library/PostgreSQL/9.X/uninstall-postgresql.app;exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

