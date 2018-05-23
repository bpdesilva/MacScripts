echo "Do you wish to list all updates ?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Listing all available updates....";sudo softwareupdate -l; break;;
        No ) exit;;
    esac
done
echo "Do you wish to install all available updates ?"
select ny in "Yes" "No"; do
    case $ny in
        Yes ) echo "Installing all available updates....";sudo sudo softwareupdate -iva; break;;
        No ) exit;;
    esac
done
