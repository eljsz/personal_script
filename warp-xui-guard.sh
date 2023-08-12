#!/bin/bash

# 提示用户按回车安装Warp
read -p "按回车键开始安装Warp...（Ctrl+C 取消）"

# 执行安装Warp的代码
wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh

# 提示用户按回车继续安装x-ui
read -p "Warp安装完成！按回车键开始安装x-ui...（Ctrl+C 取消）"

bash <(curl -Ls https://raw.githubusercontent.com/eljsz/personal_script/master/x-ui/install.sh)

read -p "x-ui安装完成！按回车键开始安装x-ui+xray进程守护，30秒检测一次，挂了自动运行...（Ctrl+C 取消）"

bash <(curl -Ls https://raw.githubusercontent.com/eljsz/personal_script/master/check_x-ui.sh)

echo "整合脚本安装完成！"
