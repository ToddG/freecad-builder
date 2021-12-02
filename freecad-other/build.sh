set -e
cd /mnt/build
cmake /mnt/source
make -j$(nproc --ignore=2)
