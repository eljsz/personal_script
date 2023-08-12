#!/bin/bash

# 颜色设置
green="\e[32m"
plain="\e[0m"

# 显示菜单并等待用户选择
echo -e "
  ${green}x-ui 面板管理脚本${plain}
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
        echo "退出脚本"
        exit 0
        ;;
    1)
        echo "安装 warp"
		wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        ;;
    2)
        echo "安装 x-ui"
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        ;;
    2)
        echo "安装 x-ui + xray进程守护"
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
	2)
        echo "全部安装"
		wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
    *)
        echo "无效选项"
        ;;
esac



echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
