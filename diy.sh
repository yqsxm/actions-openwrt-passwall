#!/bin/bash
#=================================================
# Description: Build OpenWrt using GitHub Actions
# Author: kenzo
# https://github.com/kenzok8
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.1.199/g' package/base-files/files/bin/config_generate
git clone https://github.com/kenzok8/litte.git package/litte
git clone https://github.com/kenzok8/small
git clone https://github.com/Lienol/openwrt-package
#git clone https://github.com/fw876/helloworld
#git clone https://github.com/openwrt-develop/luci-theme-atmaterial
#git clone https://github.com/vernesong/OpenClash
#git clone https://github.com/tty228/luci-app-serverchan
#git clone https://github.com/rufengsuixing/luci-app-adguardhome
#git clone https://github.com/pymumu/luci-app-smartdns
#git clone -b 18.06  https://github.com/jerrykuku/luci-theme-argon
#OpenAppFilter（应用过滤）：
#git clone https://github.com/destan19/OpenAppFilter
#KoolproxyR（去广告）：
git clone https://github.com/jefferymvp/luci-app-koolproxyR
#ServerChan（微信推送）：
#git clone https://github.com/tty228/luci-app-serverchan
#Jd-Dailybonus（京东自动签到）
#cd lede/package/lean/ 
#git clone https://github.com/jerrykuku/node-request.git  #git node-request 依赖
#git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git
date=`date +%m.%d.%Y`
sed -i "s/DISTRIB_DESCRIPTION.*/DISTRIB_DESCRIPTION='%D by kenzo'/g" package/base-files/files/etc/openwrt_release
sed -i "s/# REVISION:=x/REVISION:= $date/g" include/version.mk
cp -f default-settings package/*/*/default-settings/files/zzz-default-settings
./scripts/feeds update -a
./scripts/feeds install -a
