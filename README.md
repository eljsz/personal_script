### 初始化vps
<pre><code>apt-get update -y && apt-get install curl -y && apt-get install wget -y</code></pre>

### 30秒检测x-ui是否是运行状态，守护x-ui，开机自启动
<pre><code>bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/check_x-ui.sh)</code></pre>

### 整合脚本: warp+x-ui+进程守护
<pre><code>bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/warp-xui-guard.sh)</code></pre>

### 安装mariadb数据库
<pre><code>bash <(curl -Ls https://raw.githubusercontent.com/eljsz/script-integration/master/mariadb.sh)</code></pre>
