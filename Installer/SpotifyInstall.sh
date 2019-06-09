echo "Changing Directory to Downloads...."
sudo cd ~/downloads
echo "Downloading Spotify....."
curl -O https://download.scdn.co/SpotifyInstaller.zip
echo "Extracting Spotify........."
unzip SpotifyInstaller.zip
open ~/Downloads/Install Spotify.app
