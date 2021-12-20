#!/bin/bash
cd /opt
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
ls
chmod +x build.uv.sh
chmod +x build.hwloc.sh
chmod +x build.openssl.sh
bash ./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
#make -j$(nproc)
