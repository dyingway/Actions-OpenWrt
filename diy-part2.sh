#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

git clone https://github.com/fw876/helloworld.git package/gfwdown/ssrp
git clone https://github.com/xiaorouji/openwrt-passwall package/gfwdown/passwall

mkdir -p package/gfwdown/redsocks2
wget https://raw.githubusercontent.com/coolsnowwolf/lede/a0ff7c025aaea37ccbb382d9f45ebe1b77c35b4b/package/lean/redsocks2/Makefile -O package/gfwdown/redsocks2/Makefile

wget https://raw.githubusercontent.com/coolsnowwolf/lede/master/tools/Makefile -O tools/Makefile

mkdir -p tools/ucl 
wget https://raw.githubusercontent.com/Lienol/openwrt/af6e1632cd9250c0b4dc47606c1eb92ba4b3ae81/tools/ucl/Makefile -O tools/ucl/Makefile

mkdir -p tools/upx
wget https://raw.githubusercontent.com/Lienol/openwrt/af6e1632cd9250c0b4dc47606c1eb92ba4b3ae81/tools/upx/Makefile -O tools/upx/Makefile
