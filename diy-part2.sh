#!/bin/bash

# ضبط موديل Xiaomi CR6609
echo 'CONFIG_TARGET_ramips=y' >> .config
echo 'CONFIG_TARGET_ramips_mt7621=y' >> .config
echo 'CONFIG_TARGET_ramips_mt7621_DEVICE_xiaomi_cr6609=y' >> .config

# رفع قوة البث إلى 37 dBm
sed -i 's/20 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
sed -i 's/24 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
sed -i 's/27 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
