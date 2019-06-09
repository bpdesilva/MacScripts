# Uninstall MYSQL From Mac
echo "Uninstalling MYSQL for Mac..."
SERVICE='mysql'
echo "Validating service status.."
if pgrep -xq -- "${SERVICE}"; then
    echo "The service running.."
    echo "Killing service.."
    kill $(pgrep mysql)
    echo "MYSQL service was killed..."
else
    echo "MYSQL service was not running..."
    echo "Proceeding with uninstalling MYSQL for Mac..."
fi
echo "Removing files..."
sudo rm /usr/local/mysql
sudo rm -rf /usr/local/mysql*
sudo rm -rf /Library/StartupItems/MySQLCOM
sudo rm -rf /Library/PreferencePanes/My*
file="/etc/hostconfig"
if [ -f "$file" ]
then
edit /etc/hostconfig and remove the line MYSQLCOM=-YES-
else
    echo "$0: File '${file}' not found."
fi
rm -rf ~/Library/PreferencePanes/My*
sudo rm -rf /Library/Receipts/mysql*
sudo rm -rf /Library/Receipts/MySQL*
sudo rm -rf /private/var/db/receipts/*mysql*
echo "Unistallation Sucessful!"