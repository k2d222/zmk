#!/usr/bin/env fish
source .venv/bin/activate.fish
cd app
# was nice_nano_v2 before
west build -d build/left -b nice_nano//zmk -S studio-rpc-usb-uart -- -DSHIELD=splitkb_aurora_sweep_left -DZMK_CONFIG="../../zmk-config/config"
cp build/left/zephyr/zmk.uf2 ../build/left.uf2
echo "CREATED build/left.uf2"

west build -d build/right -b nice_nano//zmk -S studio-rpc-usb-uart -- -DSHIELD=splitkb_aurora_sweep_right -DZMK_CONFIG="../../zmk-config/config"
cp build/right/zephyr/zmk.uf2 ../build/right.uf2
echo "CREATED build/right.uf2"

echo "$(realpath .)/build/"
