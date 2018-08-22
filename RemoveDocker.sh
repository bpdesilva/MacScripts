#References
#Github = https://github.com/docker/toolbox/blob/master/osx/uninstall.sh
#Stackoverflow = https://stackoverflow.com/questions/37465526/how-to-uninstall-docker-completely-from-a-mac/39823119
#Stackoverflow = https://stackoverflow.com/questions/37465526/how-to-uninstall-docker-completely-from-a-mac
#Github = https://github.com/boot2docker/osx-installer/blob/master/uninstall.sh

if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi

echo "Removing Docker VMs..."
docker-machine rm -f $(docker-machine ls -q);

echo "Removing Docker..."
rm -rf /Applications/Docker.app

echo "Removing Docker binaries..."
rm -f /usr/local/bin/docker
rm -f /usr/local/bin/docker-machine
rm -r /usr/local/bin/docker-machine-driver*
rm -f /usr/local/bin/docker-compose

echo "Removing boot2docker.iso"
rm -rf /usr/local/share/boot2docker

echo "Forget packages"
pkgutil --forget io.docker.pkg.docker
pkgutil --forget io.docker.pkg.dockercompose
pkgutil --forget io.docker.pkg.dockermachine
pkgutil --forget io.boot2dockeriso.pkg.boot2dockeriso

echo "All Done!"
