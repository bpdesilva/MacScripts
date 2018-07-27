echo "Uninstalling Anaconda From Mac..."
echo "Warning this script will erase all Anaconda Projects! Backup before you run it"
conda install anaconda-clean   # install the package anaconda clean
anaconda-clean --yes           # clean all anaconda related files and directories
echo "Brute Forcing uninstall....."
sudo rm -rf ~/anaconda3
sudo rm -rf ~/anaconda
sudo rm -rf ~/.anaconda/navigator
sudo rm -rf ~/.condarc ~/.conda ~/.continuum
nano ~/.bash_profile
echo "Uninstallation of Anaconda From Mac has been completed"
