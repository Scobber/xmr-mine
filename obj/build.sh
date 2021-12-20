#!/bin/bash
cd /opt
git clone https://github.com/xmrig/xmrig.git
mkdir xmrig/build && cd xmrig/scripts
bash ./build_deps.sh && cd ../build
cmake .. -DXMRIG_DEPS=scripts/deps
#make -j$(nproc)
