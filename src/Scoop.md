---
layout: post
title: Scoop相关
slug: scoop
date: 2020-03-17 20:34
status: publish
author: OPEN
categories: 
  - Tech
tags: 
  - tech
excerpt: Scoop相关
---



#### 安装 Scoop

运行 Pow­er­Shell (Win+x , i)
```powershell
# 允许本地脚本执行
set-executionpolicy remotesigned -scope currentuser
# 自定义安装路径(可选)
[environment]::setEnvironmentVariable('SCOOP','D:\scoop','User')
$env:SCOOP='D:\scoop'
# 自定义全局路径(可选)
[environment]::setEnvironmentVariable('SCOOP_GLOBAL','D:\bin','Machine')
$env:SCOOP_GLOBAL='D:\bin'
# 安装 Scoop
iex (new-object net.webclient).downloadstring('https://get.scoop.sh')
```
安装完尝试一下：
`scoop`

添加软件源：
```
scoop bucket add extras
scoop bucket add dorado https://github.com/h404bi/dorado
```
[官方源列表](https://github.com/lukesampson/scoop/blob/master/buckets.json)
[Scoop buckets by Github score](https://github.com/rasa/scoop-directory/blob/master/by-score.md)

我的软件清单：
```
scoop install aria2 sudo 7zip git colortool vim
scoop install windowsterminal
scoop install clash-for-windows honeyview potplayer
scoop install typora
```
其他
```
#给Scoop设置http代理
scoop config proxy 127.0.0.1:7890
#重置应用以解决冲突,会重置环境变量,快捷方式等..
scoop reset *
#检查潜在的问题..执行下看看使用scoop会有什么问题
scoop checkup
#如果使用了aria2感觉慢的话可以关闭
scoop config aria2-enabled false  
#日常更新软件
scoop update * && scoop cleanup *
scoop cache rm *
# 查看 Scoop 还能直接识别哪些 bucket
scoop bucket known
```
