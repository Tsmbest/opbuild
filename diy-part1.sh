#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
echo 'src-git passwall_luci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default
echo 'src-git dockerman https://github.com/lisaac/luci-app-dockerman.git' >>feeds.conf.default
git clone https://github.com/xkstudio/luci-app-pptp-server.git package/pptp
echo 'src-git openvswitch git://github.com/pichuang/openvwrt.git' >>feeds.conf.default
echo 'src-git adguardhome git://github.com/pichuang/openvwrt.git' >>feeds.conf.default
echo 'src-git openclash git://github.com/pichuang/openvwrt.git' >>feeds.conf.default
