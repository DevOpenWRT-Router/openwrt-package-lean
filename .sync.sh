#!/usr/bin/env bash
################################################################
# Copyright (c) 2021 Eliminater74
#
# Updated: 06/16/2021 Eliminater74
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
#
# Description: Script used to fetch/sync LEAD from lede source
################################################################
### I did not originally write this script, It was written
### someone else whos name I am not sure of, All I did was
### Customized it to my needs, Pretty much modded it.
################################################################


# if error occured, then exit
set -e

# path
project_root_path=`pwd`
tmp_path="$project_root_path/.tmp"

if [ -d $tmp_path ]; then
    rm -rf $tmp_path
fi

if [ ! -d $tmp_path ]; then
    mkdir -p $tmp_path
fi

### git lede/lean
if [ ! -d $tmp_path/lean ]; then
    mkdir -p $tmp_path/lean
    cd $tmp_path/lean
    git init
    git remote add origin https://github.com/coolsnowwolf/lede.git
    git config core.sparsecheckout true
fi
cd $tmp_path/lean
if [ ! -e .git/info/sparse-checkout ]; then
    touch .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-accesscontrol" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-accesscontrol" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-adbyby-plus" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-adbyby-plus" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-airplay2" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-airplay2" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-amule" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-amule" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-arpbind" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-arpbind" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-autoreboot" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-autoreboot" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-baidupcs-web" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-baidupcs-web" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-cifs-mount" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-cifs-mount" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-cifsd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-cifsd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-cpufreq" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-cpufreq" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-diskman" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-diskman" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-dnsfilter" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-dnsfilter" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-dnsforwarder" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-dnsforwarder" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-docker" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-docker" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-easymesh" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-easymesh" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-familycloud" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-familycloud" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-filetransfer" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-filetransfer" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-flowoffload" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-flowoffload" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-frpc" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-frpc" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-frps" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-frps" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-guest-wifi" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-guest-wifi" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-haproxy-tcp" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-haproxy-tcp" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-ipsec-vpnd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-ipsec-vpnd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-jd-dailybonus" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-jd-dailybonus" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-kodexplorer" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-kodexplorer" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-music-remote-center" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-music-remote-center" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-mwan3helper" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-mwan3helper" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-n2n_v2" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-n2n_v2" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-netdata" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-netdata" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-nfs" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-nfs" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-nft-qos" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-nft-qos" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-nps" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-nps" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-openvpn-server" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-openvpn-server" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-pppoe-relay" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-pppoe-relay" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-ps3netsrv" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-ps3netsrv" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-qbittorrent" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-qbittorrent" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-ramfree" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-ramfree" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-rclone" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-rclone" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-samba4" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-samba4" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-sfe" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-sfe" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-softethervpn" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-softethervpn" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-ssrserver-python" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-ssrserver-python" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-syncdial" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-syncdial" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-ttyd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-ttyd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-turboacc" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-turboacc" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-unblockmusic" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-unblockmusic" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-usb-printer" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-usb-printer" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-uugamebooster" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-uugamebooster" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-v2ray-server" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-v2ray-server" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-verysync" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-verysync" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-vlmcsd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-vlmcsd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-vsftpd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-vsftpd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-webadmin" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-webadmin" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-wrtbwmon" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-wrtbwmon" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-xlnetacc" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-xlnetacc" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-app-zerotier" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-app-zerotier" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-lib-docker" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-lib-docker" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-lib-fs" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-lib-fs" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-proto-bonding" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-proto-bonding" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-theme-argon" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-theme-argon" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/luci-theme-netgear" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/luci-theme-netgear" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/UnblockNeteaseMusic" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/UnblockNeteaseMusic" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/UnblockNeteaseMusicGo" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/UnblockNeteaseMusicGo" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/adbyby" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/adbyby" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/amule" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/amule" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/antileech" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/antileech" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/autocore" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/autocore" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/automount" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/automount" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/autosamba" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/autosamba" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/baidupcs-web" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/baidupcs-web" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/csstidy" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/csstidy" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ddns-scripts_aliyun" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ddns-scripts_aliyun" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ddns-scripts_dnspod" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ddns-scripts_dnspod" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/dns2socks" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/dns2socks" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/dnsforwarder" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/dnsforwarder" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/dnsproxy" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/dnsproxy" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/dsmboot" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/dsmboot" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/fast-classifier" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/fast-classifier" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/frp" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/frp" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/gmediarender" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/gmediarender" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ipt2socks" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ipt2socks" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ipv6-helper" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ipv6-helper" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/k3-brcmfmac4366c-firmware" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/k3-brcmfmac4366c-firmware" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/k3screenctrl" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/k3screenctrl" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/libcryptopp" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/libcryptopp" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/microsocks" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/microsocks" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/mt" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/mt" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/n2n_v2" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/n2n_v2" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/npc" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/npc" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ntfs3-mount" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ntfs3-mount" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ntfs3" .git/info/sparse-checkout` -ge 0 ]; then
    echo "package/lean/ntfs3" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/openwrt-fullconenat" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/openwrt-fullconenat" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/pdnsd-alt" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/pdnsd-alt" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/polarssl" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/polarssl" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/ps3netsrv" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/ps3netsrv" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/qBittorrent-static" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/qBittorrent-static" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/qBittorrent" .git/info/sparse-checkout` -ge 0 ]; then
    echo "package/lean/qBittorrent" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/qt5" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/qt5" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/qtbase" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/qtbase" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/qttools" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/qttools" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/r8125" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/r8125" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/r8152" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/r8152" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/r8168" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/r8168" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/rblibtorrent" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/rblibtorrent" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/rclone-ng" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/rclone-ng" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/rclone-webui-react" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/rclone-webui-react" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/rclone" .git/info/sparse-checkout` -ge 0 ]; then
    echo "package/lean/rclone" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/redsocks2" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/redsocks2" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/shortcut-fe" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/shortcut-fe" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/simple-obfs" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/simple-obfs" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/srelay" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/srelay" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/tcpping" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/tcpping" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/trojan" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/trojan" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/uugamebooster" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/uugamebooster" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/verysync" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/verysync" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/vlmcsd" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/vlmcsd" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/vsftpd-alt" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/vsftpd-alt" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/wol" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/wol" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/wxbase" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/wxbase" >> .git/info/sparse-checkout
fi
if [ `grep -c "package/lean/default-settings" .git/info/sparse-checkout` -eq 0 ]; then
    echo "package/lean/default-settings" >> .git/info/sparse-checkout
fi
git pull --depth 1 origin master

############################################################################################

### packages
if [ -d $project_root_path/luci-app-accesscontrol ]; then
    rm -rf $project_root_path/luci-app-accesscontrol
fi
if [ -d $project_root_path/luci-app-adbyby-plus ]; then
    rm -rf $project_root_path/luci-app-adbyby-plus
fi
if [ -d $project_root_path/luci-app-airplay2 ]; then
    rm -rf $project_root_path/luci-app-airplay2
fi
if [ -d $project_root_path/luci-app-amule ]; then
    rm -rf $project_root_path/luci-app-amule
fi
if [ -d $project_root_path/luci-app-arpbind ]; then
    rm -rf $project_root_path/luci-app-arpbind
fi
if [ -d $project_root_path/luci-app-autoreboot ]; then
    rm -rf $project_root_path/luci-app-autoreboot
fi
if [ -d $project_root_path/luci-app-baidupcs-web ]; then
    rm -rf $project_root_path/luci-app-baidupcs-web
fi
if [ -d $project_root_path/luci-app-cifs-mount ]; then
    rm -rf $project_root_path/luci-app-cifs-mount
fi
if [ -d $project_root_path/luci-app-cifsd ]; then
    rm -rf $project_root_path/luci-app-cifsd
fi
if [ -d $project_root_path/luci-app-cpufreq ]; then
    rm -rf $project_root_path/luci-app-cpufreq
fi
if [ -d $project_root_path/luci-app-diskman ]; then
    rm -rf $project_root_path/luci-app-diskman
fi
if [ -d $project_root_path/luci-app-dnsfilter ]; then
    rm -rf $project_root_path/luci-app-dnsfilter
fi
if [ -d $project_root_path/luci-app-dnsforwarder ]; then
    rm -rf $project_root_path/luci-app-dnsforwarder
fi
if [ -d $project_root_path/luci-app-docker ]; then
    rm -rf $project_root_path/luci-app-docker
fi
if [ -d $project_root_path/luci-app-easymesh ]; then
    rm -rf $project_root_path/luci-app-easymesh
fi
if [ -d $project_root_path/luci-app-familycloud ]; then
    rm -rf $project_root_path/luci-app-familycloud
fi
if [ -d $project_root_path/luci-app-filetransfer ]; then
    rm -rf $project_root_path/luci-app-filetransfer
fi
if [ -d $project_root_path/luci-app-flowoffload ]; then
    rm -rf $project_root_path/luci-app-flowoffload
fi
if [ -d $project_root_path/luci-app-frpc ]; then
    rm -rf $project_root_path/luci-app-frpc
fi
if [ -d $project_root_path/luci-app-frps ]; then
    rm -rf $project_root_path/luci-app-frps
fi
if [ -d $project_root_path/luci-app-guest-wifi ]; then
    rm -rf $project_root_path/luci-app-guest-wifi
fi
if [ -d $project_root_path/luci-app-haproxy-tcp ]; then
    rm -rf $project_root_path/luci-app-haproxy-tcp
fi
if [ -d $project_root_path/luci-app-ipsec-vpnd ]; then
    rm -rf $project_root_path/luci-app-ipsec-vpnd
fi
if [ -d $project_root_path/luci-app-jd-dailybonus ]; then
    rm -rf $project_root_path/luci-app-jd-dailybonus
fi
if [ -d $project_root_path/luci-app-kodexplorer ]; then
    rm -rf $project_root_path/luci-app-kodexplorer
fi
if [ -d $project_root_path/luci-app-music-remote-center ]; then
    rm -rf $project_root_path/luci-app-music-remote-center
fi
if [ -d $project_root_path/luci-app-mwan3helper ]; then
    rm -rf $project_root_path/luci-app-mwan3helper
fi
if [ -d $project_root_path/luci-app-n2n_v2 ]; then
    rm -rf $project_root_path/luci-app-n2n_v2
fi
if [ -d $project_root_path/luci-app-netdata ]; then
    rm -rf $project_root_path/luci-app-netdata
fi
if [ -d $project_root_path/luci-app-nfs ]; then
    rm -rf $project_root_path/luci-app-nfs
fi
if [ -d $project_root_path/luci-app-nft-qos ]; then
    rm -rf $project_root_path/luci-app-nft-qos
fi
if [ -d $project_root_path/luci-app-nps ]; then
    rm -rf $project_root_path/luci-app-nps
fi
if [ -d $project_root_path/luci-app-openvpn-server ]; then
    rm -rf $project_root_path/luci-app-openvpn-server
fi
if [ -d $project_root_path/luci-app-pppoe-relay ]; then
    rm -rf $project_root_path/luci-app-pppoe-relay
fi
if [ -d $project_root_path/luci-app-ps3netsrv ]; then
    rm -rf $project_root_path/luci-app-ps3netsrv
fi
if [ -d $project_root_path/luci-app-qbittorrent ]; then
    rm -rf $project_root_path/luci-app-qbittorrent
fi
if [ -d $project_root_path/luci-app-ramfree ]; then
    rm -rf $project_root_path/luci-app-ramfree
fi
if [ -d $project_root_path/luci-app-rclone ]; then
    rm -rf $project_root_path/luci-app-rclone
fi
if [ -d $project_root_path/luci-app-samba4 ]; then
    rm -rf $project_root_path/luci-app-samba4
fi
if [ -d $project_root_path/luci-app-sfe ]; then
    rm -rf $project_root_path/luci-app-sfe
fi
if [ -d $project_root_path/luci-app-softethervpn ]; then
    rm -rf $project_root_path/luci-app-softethervpn
fi
if [ -d $project_root_path/luci-app-ssrserver-python ]; then
    rm -rf $project_root_path/luci-app-ssrserver-python
fi
if [ -d $project_root_path/luci-app-syncdial ]; then
    rm -rf $project_root_path/luci-app-syncdial
fi
if [ -d $project_root_path/luci-app-ttyd ]; then
    rm -rf $project_root_path/luci-app-ttyd
fi
if [ -d $project_root_path/luci-app-turboacc ]; then
    rm -rf $project_root_path/luci-app-turboacc
fi
if [ -d $project_root_path/luci-app-unblockmusic ]; then
    rm -rf $project_root_path/luci-app-unblockmusic
fi
if [ -d $project_root_path/luci-app-usb-printer ]; then
    rm -rf $project_root_path/luci-app-usb-printer
fi
if [ -d $project_root_path/luci-app-uugamebooster ]; then
    rm -rf $project_root_path/luci-app-uugamebooster
fi
if [ -d $project_root_path/luci-app-v2ray-server ]; then
    rm -rf $project_root_path/luci-app-v2ray-server
fi
if [ -d $project_root_path/luci-app-verysync ]; then
    rm -rf $project_root_path/luci-app-verysync
fi
if [ -d $project_root_path/luci-app-vlmcsd ]; then
    rm -rf $project_root_path/luci-app-vlmcsd
fi
if [ -d $project_root_path/luci-app-vsftpd ]; then
    rm -rf $project_root_path/luci-app-vsftpd
fi
if [ -d $project_root_path/luci-app-webadmin ]; then
    rm -rf $project_root_path/luci-app-webadmin
fi
if [ -d $project_root_path/luci-app-wrtbwmon ]; then
    rm -rf $project_root_path/luci-app-wrtbwmon
fi
if [ -d $project_root_path/luci-app-xlnetacc ]; then
    rm -rf $project_root_path/luci-app-xlnetacc
fi
if [ -d $project_root_path/luci-app-zerotier ]; then
    rm -rf $project_root_path/luci-app-zerotier
fi
if [ -d $project_root_path/luci-lib-docker ]; then
    rm -rf $project_root_path/luci-lib-docker
fi
if [ -d $project_root_path/luci-lib-fs ]; then
    rm -rf $project_root_path/luci-lib-fs
fi
if [ -d $project_root_path/luci-proto-bonding ]; then
    rm -rf $project_root_path/luci-proto-bonding
fi
if [ -d $project_root_path/luci-theme-argon ]; then
    rm -rf $project_root_path/luci-theme-argon
fi
if [ -d $project_root_path/luci-theme-netgear ]; then
    rm -rf $project_root_path/luci-theme-netgear
fi
if [ -d $project_root_path/UnblockNeteaseMusic ]; then
    rm -rf $project_root_path/UnblockNeteaseMusic
fi
if [ -d $project_root_path/UnblockNeteaseMusicGo ]; then
    rm -rf $project_root_path/UnblockNeteaseMusicGo
fi
if [ -d $project_root_path/adbyby ]; then
    rm -rf $project_root_path/adbyby
fi
if [ -d $project_root_path/amule ]; then
    rm -rf $project_root_path/amule
fi
if [ -d $project_root_path/antileech ]; then
    rm -rf $project_root_path/antileech
fi
if [ -d $project_root_path/autocore ]; then
    rm -rf $project_root_path/autocore
fi
if [ -d $project_root_path/automount ]; then
    rm -rf $project_root_path/automount
fi
if [ -d $project_root_path/autosamba ]; then
    rm -rf $project_root_path/autosamba
fi
if [ -d $project_root_path/baidupcs-web ]; then
    rm -rf $project_root_path/baidupcs-web
fi
if [ -d $project_root_path/csstidy ]; then
    rm -rf $project_root_path/csstidy
fi
if [ -d $project_root_path/ddns-scripts_aliyun ]; then
    rm -rf $project_root_path/ddns-scripts_aliyun
fi
if [ -d $project_root_path/ddns-scripts_dnspod ]; then
    rm -rf $project_root_path/ddns-scripts_dnspod
fi
if [ -d $project_root_path/dns2socks ]; then
    rm -rf $project_root_path/dns2socks
fi
if [ -d $project_root_path/dnsforwarder ]; then
    rm -rf $project_root_path/dnsforwarder
fi
if [ -d $project_root_path/dnsproxy ]; then
    rm -rf $project_root_path/dnsproxy
fi
if [ -d $project_root_path/dsmboot ]; then
    rm -rf $project_root_path/dsmboot
fi
if [ -d $project_root_path/fast-classifier ]; then
    rm -rf $project_root_path/fast-classifier
fi
if [ -d $project_root_path/frp ]; then
    rm -rf $project_root_path/frp
fi
if [ -d $project_root_path/gmediarender ]; then
    rm -rf $project_root_path/gmediarender
fi
if [ -d $project_root_path/ipt2socks ]; then
    rm -rf $project_root_path/ipt2socks
fi
if [ -d $project_root_path/ipv6-helper ]; then
    rm -rf $project_root_path/ipv6-helper
fi
if [ -d $project_root_path/k3-brcmfmac4366c-firmware ]; then
    rm -rf $project_root_path/k3-brcmfmac4366c-firmware
fi
if [ -d $project_root_path/k3screenctrl ]; then
    rm -rf $project_root_path/k3screenctrl
fi
if [ -d $project_root_path/libcryptopp ]; then
    rm -rf $project_root_path/libcryptopp
fi
if [ -d $project_root_path/microsocks ]; then
    rm -rf $project_root_path/microsocks
fi
if [ -d $project_root_path/mt ]; then
    rm -rf $project_root_path/mt
fi
if [ -d $project_root_path/n2n_v2 ]; then
    rm -rf $project_root_path/n2n_v2
fi
if [ -d $project_root_path/npc ]; then
    rm -rf $project_root_path/npc
fi
if [ -d $project_root_path/ntfs3-mount ]; then
    rm -rf $project_root_path/ntfs3-mount
fi
if [ -d $project_root_path/ntfs3 ]; then
    rm -rf $project_root_path/ntfs3
fi
if [ -d $project_root_path/openwrt-fullconenat ]; then
    rm -rf $project_root_path/openwrt-fullconenat
fi
if [ -d $project_root_path/pdnsd-alt ]; then
    rm -rf $project_root_path/pdnsd-alt
fi
if [ -d $project_root_path/polarssl ]; then
    rm -rf $project_root_path/polarssl
fi
if [ -d $project_root_path/ps3netsrv ]; then
    rm -rf $project_root_path/ps3netsrv
fi
if [ -d $project_root_path/qBittorrent-static ]; then
    rm -rf $project_root_path/qBittorrent-static
fi
if [ -d $project_root_path/qBittorrent ]; then
    rm -rf $project_root_path/qBittorrent
fi
if [ -d $project_root_path/qt5 ]; then
    rm -rf $project_root_path/qt5
fi
if [ -d $project_root_path/qtbase ]; then
    rm -rf $project_root_path/qtbase
fi
if [ -d $project_root_path/qttools ]; then
    rm -rf $project_root_path/qttools
fi
if [ -d $project_root_path/r8125 ]; then
    rm -rf $project_root_path/r8125
fi
if [ -d $project_root_path/r8152 ]; then
    rm -rf $project_root_path/r8152
fi
if [ -d $project_root_path/r8168 ]; then
    rm -rf $project_root_path/r8168
fi
if [ -d $project_root_path/rblibtorrent ]; then
    rm -rf $project_root_path/rblibtorrent
fi
if [ -d $project_root_path/rclone-ng ]; then
    rm -rf $project_root_path/rclone-ng
fi
if [ -d $project_root_path/rclone-webui-react ]; then
    rm -rf $project_root_path/rclone-webui-react
fi
if [ -d $project_root_path/rclone ]; then
    rm -rf $project_root_path/rclone
fi
if [ -d $project_root_path/redsocks2 ]; then
    rm -rf $project_root_path/redsocks2
fi
if [ -d $project_root_path/shortcut-fe ]; then
    rm -rf $project_root_path/shortcut-fe
fi
if [ -d $project_root_path/simple-obfs ]; then
    rm -rf $project_root_path/simple-obfs
fi
if [ -d $project_root_path/srelay ]; then
    rm -rf $project_root_path/srelay
fi
if [ -d $project_root_path/tcpping ]; then
    rm -rf $project_root_path/tcpping
fi
if [ -d $project_root_path/trojan ]; then
    rm -rf $project_root_path/trojan
fi
if [ -d $project_root_path/uugamebooster ]; then
    rm -rf $project_root_path/uugamebooster
fi
if [ -d $project_root_path/verysync ]; then
    rm -rf $project_root_path/verysync
fi
if [ -d $project_root_path/vlmcsd ]; then
    rm -rf $project_root_path/vlmcsd
fi
if [ -d $project_root_path/vsftpd-alt ]; then
    rm -rf $project_root_path/vsftpd-alt
fi
if [ -d $project_root_path/wol ]; then
    rm -rf $project_root_path/wol
fi
if [ -d $project_root_path/wxbase ]; then
    rm -rf $project_root_path/wxbase
fi
if [ -d $project_root_path/default-settings ]; then
    rm -rf $project_root_path/default-settings
fi
cp -R $tmp_path/lean/package/lean/* $project_root_path/

# 提交
# cd $tmp_path/lean
# latest_commit_id=`git rev-parse HEAD`
# latest_commit_msg=`git log --pretty=format:"%s" $current_git_branch_latest_id -1`
# echo $latest_commit_id
# echo $latest_commit_msg


## luci-app-lean


cd $project_root_path
cur_time=$(date "+%Y%m%d-%H%M%S")
git add -A && git commit -m "$cur_time" && git push origin main -f
