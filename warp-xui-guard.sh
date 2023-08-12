#!/bin/bash

apt-get update -y && apt-get install curl -y
apt install wget

# 提示用户选择是否继续安装Warp
read -p "是否继续安装warp？ (y/n): " choice1

if [ "$choice1" == "y" ]; then
    # 执行安装Warp的代码
    wget -N https://raw.githubusercontent.com/fscarmen/warp/main/menu.sh && bash menu.sh
    echo "Warp安装完成！"
fi

# 提示用户选择是否继续安装x-ui
read -p "是否继续安装x-ui？ (y/n): " choice2

if [ "$choice2" == "y" ]; then
    bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/x-ui/install.sh)
    echo "x-ui安装完成！"
	
	# 提示用户选择是否继续安装x-ui+xray进程守护
	read -p "是否继续安装x-ui+xray进程守护，30秒检测一次，挂了自动运行？ (y/n): " choice3

	if [ "$choice3" == "y" ]; then
		bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)
		echo "整合脚本安装完成！"
	else
		echo "安装已完成！"
	fi
fi

echo "电报群：https://t.me/+vTwBHA9RbtMwYzA9"
