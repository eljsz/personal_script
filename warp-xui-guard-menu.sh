#!/bin/bash

apt-get update -y && apt-get install curl -y
apt-get install wget -y

# 显示 dialog 菜单并获取用户选择
choice=$(dialog --menu "选择安装选项" 12 50 5 \
    1 "安装 Warp" \
    2 "安装 x-ui" \
    3 "安装 x-ui + 进程守护" \
    4 "全部安装" \
    5 "退出" 3>&1 1>&2 2>&3)

case $choice in
    1)
        # 安装 Warp
        wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
        echo "Warp 安装完成！"
        ;;
    2)
        # 安装 x-ui
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
        echo "x-ui 安装完成！"
        ;;
    3)
        # 安装 x-ui + 进程守护
        bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
        echo "x-ui + 进程守护安装完成！"
        ;;
    4)
        # 安装全部
        # ... 执行全部安装代码 ...
        ;;
    5)
        echo "退出脚本"
        exit 0
        ;;
    *)
        echo "无效选项"
        ;;
esac

echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
