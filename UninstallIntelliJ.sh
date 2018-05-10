echo "Uninstalling IntelliJIdea From Mac..."
sudo rm -Rf ~/Library/Preferences/com.jetbrains.intellij.plist
sudo rm -Rf ~/Library/Preferences/com.jetbrains.intellij.plist.lockfile
sudo rm -Rf ~/Library/Preferences/IntelliJIdea13
echo "Erasing all IntelliJIdea Cache.. 1 of 2"
sudo rm -Rf ~/Library/Caches/IntelliJIdea13
sudo rm -Rf ~/Library/Application Support/IntelliJIdea13
echo "Erasing all IntelliJIdea Cache.. 2 of 2"
sudo rm -Rf ~/Library/Caches/com.jetbrains.intellij
sudo rm -Rf ~/Library/Caches/com.jetbrains.intellij
sudo rm -Rf ~/Library/Logs/IntelliJIdea13
sudo rm -Rf ~/Library/Saved Application State/com.jetbrains.intellij.savedState
echo "Uninstallation of IntelliJIdea From Mac has been completed"
