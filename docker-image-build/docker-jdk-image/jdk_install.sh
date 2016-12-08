#!/bin/sh

tar zxvf jdk-7u15-linux-x64.tar.gz -C /usr/local/
cat >> /etc/profile <<EOF
export JAVA_HOME=/usr/local/jdk1.7.0_15
export PATH=\$JAVA_HOME/bin:\$PATH
export CLASSPATH=.:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib/tools.jar
EOF
