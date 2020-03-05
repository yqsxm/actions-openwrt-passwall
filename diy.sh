#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
sed -i 's/"DISTRIB_DESCRIPTION='OpenWrt '"/"DISTRIB_DESCRIPTION='Lienol '"/g' package/default-settings/files/zzz-default-settings
sed -i 's/"DISTRIB_REVISION='R20.1.24'"/"DISTRIB_REVISION='19.07'"/g' package/default-settings/files/zzz-default-settings
git clone https://github.com/kenzok8/openwrt-packages.git package/openwrt-packages
