#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
git clone https://github.com/kenzok8/litte.git
rm -rf package/litte/luci-app-passwall
rm -rf package/litte/luci-app-smartdns
rm -rf feeds/lienol/lienol/luci-theme-bootstrap-mod
sed -i 's/"DISTRIB_DESCRIPTION='OpenWrt '"/"DISTRIB_DESCRIPTION='Lienol '"/g' package/default-settings/files/zzz-default-settings
sed -i 's/"DISTRIB_REVISION='19.07-SNAPSHOT'"/"DISTRIB_REVISION='litte'"/g' package/default-settings/files/zzz-default-settings

