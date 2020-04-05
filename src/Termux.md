---
title: Turmux
slug: turmux
date: 2020-04-05 11:52:04
categories: 
  - Tech
tags: 
  - tech
---



### Turmux

手机设置中开启 Termux 的存储权限，或用如下命令开启：
`termux-setup-storage `
开启之后，会在 home 目录多出一个关联/sdcard/的 storage 文件夹

##### 安装 OpenSSH 与其他设备联动
```
apt install openssh
sshd
cat /sdcrad/id_rsa.pub >> .ssh/authorized_keys
```

##### 设置主机别名，用于SSH登录
在客户端编辑.ssh/config文件：
```
Host Nexus7
    HostName 192.168.199.157
    Port 8022
    User u0_a81
    IdentityFile C:\Users\Open\.ssh\id_rsa
    IdentitiesOnly yes
```
