#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# ضبط موديل Xiaomi CR6609 تلقائياً
echo 'CONFIG_TARGET_ramips=y' >> .config
echo 'CONFIG_TARGET_ramips_mt7621=y' >> .config
echo 'CONFIG_TARGET_ramips_mt7621_DEVICE_xiaomi_cr6609=y' >> .config

# رفع قوة البث إلى 37 dBm
sed -i 's/20 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
sed -i 's/24 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
sed -i 's/27 dBm/37 dBm/g' package/firmware/wireless-regdb/files/db.txt
