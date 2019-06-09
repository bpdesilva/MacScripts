# Uninstall Microsoft Office 2016 From Mac
echo "Uninstalling Microsoft Office 2016 From Mac..."
# commands out of the official guide from microsoft
# source https://support.office.com/en-us/article/Uninstall-Office-2016-for-Mac-eefa1199-5b58-43af-8a3d-b73dc1a8cae3
#Other References : https://gist.github.com/pirafrank/18d62c062e2806c1d183
#Author : https://gist.github.com/pirafrank
echo "Removing Office 2016 apps..."
    rm -rf "/Applications/Microsoft Excel.app"
    rm -rf "/Applications/Microsoft OneNote.app"
    rm -rf "/Applications/Microsoft Outlook.app"
    rm -rf "/Applications/Microsoft PowerPoint.app"
    rm -rf "/Applications/Microsoft Word.app"
    echo "Cleaning additional files..."
    rm /Users/$(whoami)/Library/Containers/com.microsoft.errorreporting
    rm /Users/$(whoami)/Library/Containers/com.microsoft.Excel
    rm /Users/$(whoami)/Library/Containers/com.microsoft.netlib.shipassertprocess
    rm /Users/$(whoami)/Library/Containers/com.microsoft.Office365ServiceV2
    rm /Users/$(whoami)/Library/Containers/com.microsoft.Outlook
    rm /Users/$(whoami)/Library/Containers/com.microsoft.Powerpoint
    rm /Users/$(whoami)/Library/Containers/com.microsoft.RMS-XPCService
    rm /Users/$(whoami)/Library/Containers/com.microsoft.Word
    rm /Users/$(whoami)/Library/Containers/com.microsoft.onenote.mac
    rm "/Users/$(whoami)/Library/Group ContainersUBF8T346G9.ms"
    rm "/Users/$(whoami)/Library/Group ContainersUBF8T346G9.Office"
    rm "/Users/$(whoami)/Library/Group ContainersUBF8T346G9.OfficeOsfWebHost"
    rm -rf "/Library/Application Support/Microsoft/MAU2.0"
    rm -rf "/Library/Fonts/Microsoft"
    rm /Library/LaunchDaemons/com.microsoft.office.licensing.helper.plist
    rm /Library/LaunchDaemons/com.microsoft.office.licensingV2.helper.plist
    rm /Library/Preferences/com.microsoft.Excel.plist
    rm /Library/Preferences/com.microsoft.office.plist
    rm /Library/Preferences/com.microsoft.office.setupassistant.plist
    rm /Library/Preferences/com.microsoft.outlook.databasedaemon.plist
    rm /Library/Preferences/com.microsoft.outlook.office_reminders.plist
    rm /Library/Preferences/com.microsoft.Outlook.plist
    rm /Library/Preferences/com.microsoft.PowerPoint.plist
    rm /Library/Preferences/com.microsoft.Word.plist
    rm /Library/Preferences/com.microsoft.office.licensingV2.plist
    rm /Library/Preferences/com.microsoft.autoupdate2.plist
    rm -rf /Library/Preferences/ByHost/com.microsoft
    rm -rf /Library/Receipts/Office2016_*
    rm /Library/PrivilegedHelperTools/com.microsoft.office.licensing.helper
    rm /Library/PrivilegedHelperTools/com.microsoft.office.licensingV2.helper
    pkgutil --forget com.microsoft.package.Fonts
    pkgutil --forget com.microsoft.package.Microsoft_AutoUpdate.app
    pkgutil --forget com.microsoft.package.Microsoft_Excel.app
    pkgutil --forget com.microsoft.package.Microsoft_OneNote.app
    pkgutil --forget com.microsoft.package.Microsoft_Outlook.app
    pkgutil --forget com.microsoft.package.Microsoft_PowerPoint.app
    pkgutil --forget com.microsoft.package.Microsoft_Word.app
    pkgutil --forget com.microsoft.package.Proofing_Tools
    pkgutil --forget com.microsoft.package.licensing

echo "Finished Uninstallation process."