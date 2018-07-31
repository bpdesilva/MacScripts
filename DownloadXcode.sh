echo "Do you wish to Download Xcode Standalone Manually?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) /usr/bin/open -a "/Applications/Google Chrome.app" 'https://developer.apple.com/download/more/'; break;;
        No ) echo "Download Xcode Standalone automatically...."; /usr/bin/open -a "/Applications/Google Chrome.app" 'https://developer.apple.com/services-account/download?path=/Developer_Tools/Xcode_9.4.1/Xcode_9.4.1.xip'; break;;
    esac
done
