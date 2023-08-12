#!/bin/bash

# 颜色设置
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

# 显示菜单并等待用户选择
echo -e "
  ${green}管理整合脚本${plain}
  ${green}整合作者:地瓜  https://t.me/+vTwBHA9RbtMwYzA9${plain}
  ${green}0.${plain} 退出脚本
————————————————
  ${green}1.${plain} 安装 warp
  ${green}2.${plain} 安装 x-ui
  ${green}3.${plain} 安装 x-ui + xray进程守护
  ${green}4.${plain} 全部安装
"

# 获取用户选择
read -p "请输入选项号码: " choice

case $choice in
    0)
        echo "${green}退出脚本${plain}"
        exit 0
        ;;
    1)
        echo "${green}"开始安装 warp${plain}"
        wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        ;;
    2)
        echo "${green}"开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        ;;
    3)
        echo "${green}"安装 x-ui + xray进程守护${plain}"
        echo "${green}"开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        echo "${green}"开始安装xray进程守护${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
    4)
        echo "${green}"全部安装${plain}"
        echo "${green}"开始安装 warp${plain}"
        wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        echo "${green}"开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        echo "${green}"开始安装xray进程守护${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
    *)
        echo "无效选项"
        ;;
esac

echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
