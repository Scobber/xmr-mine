apt update
apt install -y software-properties-common
apt update
while read line; do apt-get install -y  $line; done < /dep/depends.apt
apt clean && rm -R /var/lib/apt/lists/*
cd /opt
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
make -j$(nproc)