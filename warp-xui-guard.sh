#!/bin/bash

apt-get update -y && apt-get install curl -y
apt-get install wget -y

#!/bin/bash

wget https://raw.githubusercontent.com/eljsz/personal_script/master/warp-xui-guard-menu.sh
mkdir /etc/dg
mv -f warp-xui-guard-menu.sh /etc/dg >/dev/null 2>&1
chmod +x /etc/dg/warp-xui-guard-menu.sh >/dev/null 2>&1
ln -sf /etc/dg/warp-xui-guard-menu.sh /usr/bin/dg && info " $(text 38) "


# 颜色设置
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

# mkdir -p /usr/bin/x-ui
# wget --no-check-certificate -O /usr/bin/x-ui https://raw.githubusercontent.com/eljsz/personal_script/master/warp-xui-guard-menu.sh
# chmod +x /usr/local/x-ui/warp-xui-guard-menu.sh
# chmod +x /usr/bin/x-ui
# alias dg='sh /usr/local/x-ui/warp-xui-guard-menu.sh'
# source ~/.bashrc 
# 定义别名
# alias dg='bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/warp-xui-guard-menu.sh)'
# nano ~/.bashrc
# nano ~/.zshrc
# alias dg='bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/warp-xui-guard-menu.sh)'
# source ~/.bashrc   # 如果使用的是 Bash
# source ~/.zshrc    # 如果使用的是 Zsh


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
        echo -e "${green}退出脚本${plain}"
        ;;
    1)
        echo -e "${green}开始安装 warp${plain}"
        wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        ;;
    2)
        echo -e "${green}开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        ;;
    3)
        echo -e "${green}开始安装 x-ui + xray进程守护${plain}"
        echo -e "${green}开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        read -p "按回车继续安装xray..."
        echo -e "${green}开始安装 xray进程守护${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
    4)
        echo -e "${green}全部安装${plain}"
        echo -e "${green}开始安装 warp${plain}"
        wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        read -p "按回车继续安装 x-ui..."
        echo -e "${green}开始安装 x-ui${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        read -p "按回车继续安装 xray 进程守护..."
        echo -e "${green}开始安装 xray进程守护${plain}"
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        ;;
    *)
        echo "无效选项"
        ;;
esac


    
# alias dg='bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/warp-xui-guard-menu.sh)'
echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
