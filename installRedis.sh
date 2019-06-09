# Uninstall Java From Mac
if [ "${USER}" != "root" ]; then
	echo "$0 must be run as root!"
	exit 2
fi
echo "Installing Redis for Mac..."
echo "########### Warning ! #############"
echo "Installing Redis at $PWD"
curl -O http://download.redis.io/releases/redis-5.0.5.tar.gz
tar xzf redis-5.0.5.tar.gz
cd redis-5.0.5
make
# src/redis-server CLI 