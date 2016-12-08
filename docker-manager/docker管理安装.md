## 1.安装centos 7 系统
###查看SELinux状态：
`
/usr/sbin/sestatus -v          ##如果SELinux status参数为enabled即为开启状态
SELinux status:                 enabled
getenforce                     ##也可以用这个命令检查
`
### 关闭SELinux：
1、临时关闭（不用重启机器）：

`
setenforce 0                  ##设置SELinux 成为permissive模式    setenforce 1 设置SELinux 成为enforcing模式
`

2、修改配置文件需要重启机器：

修改/etc/selinux/config 文件

将SELINUX=enforcing改为SELINUX=disabled

重启机器即可
## 2.配置docker 源

`
vim /etc/yum.repos.d/docker.repo
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
`

## 3.安装docker
`
yum install docker-engine
`
### 4.配置docker启动

systemctl start docker.service 

systemctl enable docker.service 

### 5.服务端安装shipyard

执行shipyard.sh



### 6.客户端安装
`
vi /usr/lib/sysctl.d/00-system.conf
net.ipv4.ip_forward=1
/etc/init.d/network restart
`
`
curl -sSL https://shipyard-project.com/deploy | ACTION=node DISCOVERY=etcd://192.168.36.172:4001 bash -s
`
其中192.168.36.172:4001是shipyard安装服务器IP地址
### 7、参考资料

http://www.cnblogs.com/zhiqli/p/4946119.html

