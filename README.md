## Linux 系统安装基础环境

以 Ubuntu 为例，其他可以安装 Docker 的系统也可以。

以下命令都需要 root 用户身份运行，请自行添加 `sudo`

- 必要的工具 `apt-get update && apt-get install -y vim python-pip curl git`
- 安装 Docker `curl -sSL https://get.daocloud.io/docker | sh` （这一步可能比较慢，请耐心等待，官方的安装指南见 https://docs.docker.com/engine/installation/ ）
- 安装 docker-compose `pip install docker-compose`


## 准备安装文件

请选择磁盘空间富余的位置，依次运行下面的命令

```bash
git clone https://github.com/maplefater/oes-deploy.git && cd oes-deploy
```

## 启动服务

```bash
docker-compose up -d
```

> 对于非root用户，请用 `sudo -E docker-compose up -d`，否则不会传递当前的 `$PWD` 环境变量。

根据网速情况，大约5到30分钟就可以自动搭建完成，全程无需人工干预。

等命令执行完成，然后运行 `docker ps -a`，看到所有的容器的状态没有 `unhealthy` 或 `Exited (x) xxx` 就代表容器启动成功。然后 `docker logs -f oj-backend` 直到看到 `XX entered RUNNING state, process has stayed up for > than 5 seconds (startsecs)` 就可以 `ctrl + c` 结束掉了，代表已经安装成功。

## 尽情享用吧

通过浏览器访问服务器的 HTTP 80 端口或者 HTTPS 443 端口，就可以开始使用了。后台管理路径为`/admin`, 安装过程中自动添加的超级管理员用户名为`root`，密码为`rootroot`， **请务必及时修改密码**。

感谢 [青岛大学OJ](https://github.com/QingdaoU/OnlineJudge) 对我们的帮助