#Reference Link:  https://gist.github.com/dotcomputercraft/b7283bd52f4b5389e748
#Reference User : dotcomputercraft => John Montoya
#Reference Link: https://gist.github.com/TonyMtz/d75101d9bdf764c890ef
#Reference User : TonyMtz => TonyMtz
#Reference Link:https://superuser.com/questions/268946/uninstall-node-js
echo "If the below fails, navigate to your installtion directory on the terminal & type - make uninstall"
echo "Removing Node From Mac..."
echo "Warning this script will erase all Node Components!"
sudo rm /usr/local/bin/npm
sudo rm /usr/local/share/man/man1/node.1
sudo rm /usr/local/lib/dtrace/node.d
sudo rm -rf ~/.npm
sudo rm -rf ~/.node-gyp
sudo rm /opt/local/bin/node
sudo rm /opt/local/include/node
sudo rm–rf /usr/local/bin/node
sudo rm -rf /opt/local/lib/node_modules
sudo rm -rf /Users/[homedir]/.npm
sudo rm -rf /usr/local/bin/npm
sudo rm -rf /usr/local/share/man/man1/node.1
sudo rm -rf /usr/local/lib/dtrace/node.d
sudo rm -rf node*
echo "Uninstallation of Node From Mac has been completed"
