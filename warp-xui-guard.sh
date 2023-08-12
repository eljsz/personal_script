#!/bin/bash

apt-get update -y && apt-get install curl -y
apt-get install wget -y

# 定义菜单选项数组
options=("安装 Warp"
         "安装 x-ui"
         "安装 x-ui + 进程守护"
         "全部安装"
         "退出")

# 显示菜单并等待用户选择
select option in "${options[@]}"; do
    case $option in
        "安装 Warp")
            # 执行安装 Warp 的代码
            wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            echo "Warp 安装完成！"
            ;;
        "安装 x-ui")
            bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
            echo "x-ui 安装完成！"
            ;;
        "安装 x-ui + 进程守护")
            bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
            echo "x-ui + 进程守护安装完成！"
            ;;
        "全部安装")
            # 安装 Warp
            wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
            echo "Warp 安装完成！"

            # 安装 x-ui
            bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
            echo "x-ui 安装完成！"

            # 安装 x-ui + 进程守护
            bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
            echo "x-ui + 进程守护安装完成！"
            ;;
        "退出")
            echo "退出脚本"
            exit 0
            ;;
        *)
            echo "无效选项"
            ;;
    esac
done

echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
