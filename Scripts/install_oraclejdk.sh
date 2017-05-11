#!/bin/bash
#Script to 'manually' install Oracle Jave on Ubuntu-like systems
JDK=$1
tar -zxvf $JDK
mkdir -p /opt/java
mv $JDK /opt/java
update-alternatives --install "/usr/bin/java" "/opt/java/$JDK/bin/java" 1
update-alternatives --set java /opt/java/$JDK/bin/java
