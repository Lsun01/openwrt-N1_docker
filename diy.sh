#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
git clone https://github.com/frainzy1477/luci-app-clash package/luci-app-clash
git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
git clone https://github.com/Lienol/openwrt-package package/openwrt-package
#now dir is openwrt
./scripts/feeds update -a
./scripts/feeds install -a
