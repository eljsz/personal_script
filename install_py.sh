#!/bin/sh

# 检查Python是否已经安装
command -v python3.8 >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "Python3.8尚未安装，正在安装..."
    sudo apt-get update
    sudo apt-get install -y python3.8
else
    echo "Python3.8已经安装."
fi

# 检查pip是否已经安装
command -v pip3 >/dev/null 2>&1
if [ $? -ne 0 ]; then
    echo "pip尚未安装，正在安装..."
    sudo apt-get install -y python3-pip
else
    echo "pip已经安装."
fi