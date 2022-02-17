# Mobile Safe
![](https://img.shields.io/github/license/yangshunhuai/mobile-safe?style=plastic) ![](https://img.shields.io/badge/language-C++-blue?style=plastic) ![](https://img.shields.io/github/languages/code-size/yangshunhuai/mobile-safe?style=plastic)

一个存手机的乐高保险箱，不到时间手机/平板拿不出来。

## 介绍
你会不会在工作/学习的时候忍不住玩手机？如果会，你可以将手机关进这个箱子里，提前设置好时间，时间不到的话手机是拿不出来的。

## 硬件
硬件主控采用EV3，外壳使用一个长方形塑料框架。将硬纸板用3号钉轴和一个半轴套安装在每个面上。

在Hardware文件夹下有BrickLink Studio模型文件和虚拟渲染图、实物图和安装说明。

## 软件
因为EV3官方的系统很容易退出程序，并且**可以直接用Motor Control把门打开**，很不安全，所以用ev3dev系统，更加安全并且可以锁定退出键。

原本想用C来写这个程序，因为我C++几乎没有学过但是C至少会用，但是ev3dev-c这个库永远都装不上，遂放弃，改用C++。

### 编译
一般采用交叉编译的方法，在PC上编译完成后将ELF程序带到EV3主机上使用。

首先，配置编译环境。需要确保arm-linux-gnueabi-gcc和arm-linux-gnueabi-binutils装好了，可以用下面两条命令验证，也可以用`make test-env`。
```bash
arm-linux-gnueabi-gcc -v
arm-linux-gnueabi-ld -v
```
然后make一下，即可得到mobile-safe文件。
```
make
```