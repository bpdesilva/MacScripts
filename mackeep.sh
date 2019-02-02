# Source : https://github.com/rtrouton/rtrouton_scripts
# Source : https://github.com/mathiasbynens/dotfiles

killall "JustCloud"
killall "MacKeeper Helper"
killall "MacKeeper"
sudo pkgutil --forget com.zeobit.mackeeper.pkg
sudo rm -rf ~/Library/Application\ Support/MacKeeper\ Helper
sudo rm -rf ~/Library/LaunchAgents/com.zeobit.MacKeeper.Helper.plist
sudo rm -rf ~/Library/LaunchAgents/com.mackeeper.MacKeeper.Helper.plist
sudo rm -rf ~/Library/LaunchAgents/com.jdibackup.JustCloud.autostart.plist
sudo rm -rf ~/Library/LaunchAgents/com.jdibackup.JustCloud.notify.plist
sudo rm -rf ~/Library/Logs/JustCloud
sudo rm -rf ~/Library/Logs/MacKeeper.log
sudo rm -rf ~/Library/Logs/MacKeeper.log.signed
sudo rm -rf ~/Library/Logs/SparkleUpdateLog.log
sudo rm -rf ~/Library/Preferences/.3246584E-0CF8-4153-835D-C7D952862F9D
sudo rm -rf ~/Library/Preferences/com.zeobit.MacKeeper.Helper.plist
sudo rm -rf ~/Library/Preferences/com.mackeeper.MacKeeper.Helper.plist
sudo rm -rf ~/Library/Preferences/com.zeobit.MacKeeper.plist
sudo rm -rf ~/Library/Preferences/com.mackeeper.MacKeeper.plist
sudo rm -rf ~/Library/Saved\ Application\ State/com.zeobit.MacKeeper.savedState
sudo rm -rf ~/Library/Saved\ Application\ State/com.mackeeper.MacKeeper.savedState
sudo rm -rf Documents/MacKeeper\ Backups
sudo rm -rf ~/Library/Application Support/MacKeeper Helper
sudo rm -rf ~/Library/Caches/com.mackeeper.MacKeeper
sudo rm -rf ~/Library/Caches/com.mackeeper.MacKeeper.Helper
sudo rm -rf ~/Library/LaunchAgents/com.mackeeper.MacKeeper.Helper.plist
sudo rm -rf ~/Library/Preferences/com.mackeeper.MacKeeper.Helper.plist
sudo rm -rf ~/Library/Preferences/com.mackeeper.MacKeeper.plist
sudo rm -rf ~/Documents/MacKeeper Backups
sudo rm -rf ~/Library/Logs/MacKeeper.log
sudo rm -rf ~/Library/Logs/MacKeeper.log.signed
sudo rm -rf /private/tmp/com.mackeeper.MacKeeper.Installer.config