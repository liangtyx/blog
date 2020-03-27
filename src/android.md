---
layout: post
title: Android
slug: android
date: 2020-03-17 20:34
status: publish
author: OPEN
categories: 
  - Tech
tags: 
  - tech
  - android
excerpt: Android
---


### android 刷机相关

>原生recovery的界面是一个倒地机器人，同时按电源键+音量上即可打开菜单  

#### Nexus6P
在设备管理中去掉GOOGLE，清除屏锁，恢复出厂
打开OEM锁和usb调试
连接电脑，安装驱动
```
#重启进入BL，或关机状态下同时按电源键+音量下
adb reboot bootloader
#解锁BL:
fastboot flashing unlock
#刷入TWRP:
fastboot flash recovery twrp***.img
#也可引导进入临时TWRP：
fastboot boot twrp***.img
```
进入TWRP，点install刷入Magisk包获取ROOT

可能用到的命令：
```
adb devices  
adb push filename.zip /sdcard/
adb sideload *.zip
```

#### Redmi4X
官网解锁Bootloader
刷TWRP后刷入Magisk获取ROOT
解锁system分区：
```
adb root
adb disable-verity
```
TWRP四清后卡刷ROM
