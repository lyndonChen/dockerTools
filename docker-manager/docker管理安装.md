1.��װcentos 7 ϵͳ
�鿴SELinux״̬��
1��/usr/sbin/sestatus -v      ##���SELinux status����Ϊenabled��Ϊ����״̬
SELinux status:                 enabled
2��getenforce                 ##Ҳ���������������
�ر�SELinux��
1����ʱ�رգ�����������������
setenforce 0                  ##����SELinux ��Ϊpermissiveģʽ
                              ##setenforce 1 ����SELinux ��Ϊenforcingģʽ
2���޸������ļ���Ҫ����������
�޸�/etc/selinux/config �ļ�
��SELINUX=enforcing��ΪSELINUX=disabled
������������
2.����docker Դ
vim /etc/yum.repos.d/docker.repo
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg

3.��װdocker
yum install docker-engine

4.����docker����
systemctl start docker.service 
systemctl enable docker.service 

5.����˰�װshipyard
ִ��shipyard.sh



6.�ͻ��˰�װ
vi /usr/lib/sysctl.d/00-system.conf
net.ipv4.ip_forward=1
/etc/init.d/network restart

curl -sSL https://shipyard-project.com/deploy | ACTION=node DISCOVERY=etcd://192.168.36.172:4001 bash -s



iptables -t nat -A PREROUTING -p tcp �Cdport 9000 -j DNAT �Cto 192.168.203.128:9000



http://www.cnblogs.com/zhiqli/p/4946119.html

