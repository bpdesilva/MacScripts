#References
#Stack= https://apple.stackexchange.com/questions/177885/how-to-completely-remove-fuse-for-mac-os-x-macfuse-ntfs-3g
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Removing Fuse..."

sudo rm -rf "/Library/Application Support/Developer/Shared/Xcode/Project Templates/MacFUSE"
sudo rm -rf "/Library/Filesystems/fusefs.fs"
sudo rm -rf "/Library/Frameworks/MacFUSE.framework"
sudo rm -rf "/Library/PreferencePanes/MacFUSE.prefPane"
sudo rm -f "/Library/Preferences/com.google.macfuse.plist"
sudo rm -rf "/usr/local/include/fuse"
sudo rm -f "/usr/local/include/fuse.h"
sudo rm -f "/usr/local/lib/libfuse.0.dylib"
sudo rm -f "/usr/local/lib/libfuse.2.7.3.dylib"
sudo rm -f "/usr/local/lib/libfuse.2.dylib"
sudo rm -f "/usr/local/lib/libfuse.dylib"
sudo rm -f "/usr/local/lib/libfuse.la"
sudo rm -f "/usr/local/lib/libfuse_ino64.2.7.3.dylib"
sudo rm -f "/usr/local/lib/libfuse_ino64.2.dylib"
sudo rm -f "/usr/local/lib/libfuse_ino64.dylib"
sudo rm -f "/usr/local/lib/libfuse_ino64.la"
sudo rm -f "/usr/local/lib/pkgconfig/fuse.pc"
sudo rm -rf "/Library/Receipts/MacFUSE.pkg"
sudo rm -rf "/Library/Receipts/MacFUSE Core.pkg"
pkgutil --forget "com.google.macfuse"
pkgutil --forget "com.google.macfuse.core"

echo "All Done!"
