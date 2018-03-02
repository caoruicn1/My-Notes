最近再一次拾起了Ubuntu，为了更好的玩儿转Linux，专门到网上搜到的这些常用的终端命令，根据命令使用类别的不同分为了9个大类，都在下面一一列举了出来，个人觉得还是很有用的，在以后的时间里，小弟会随时更新自己对于Ubuntu的使用心得一.
### 文件目录类
1.建立目录：mkdir 目录名

2.删除空目录：rmdir 目录名

3.无条件删除子目录： rm -rf 目录名

4.改变当前目录：cd 目录名 (进入用户home目录：cd ~;进入上一级目录：cd -)

5.查看自己所在目录：pwd

6.查看当前目录大小：du

7.显示目录文件列表：ls -l (-a：增加显示隐含目录) 其中：蓝：目录;绿：可执行文件;红：压缩文件;浅蓝：链接文件;灰：其他文件;红底白字：错误的链接文件

8.浏览文件：more 文件名.txt;less 文件名.txt

9.复制文件： cp 源文件 目标文件 (-r：包含目录)

10.查找文件：(1)find (2)locate 命令名

11.链接：(1)建立hard链接：ln 来源文件 链接文件(-d：创建目录链接）；(2)建立符号链接：ln -s 来源文件 链接文件

#### 二.驱动挂载类

1.检查硬盘使用情况：df -T -h

2.检查磁盘分区：fdisk -l

3.挂载软硬光区：mount -t /dev/fdx|hdax /mnt/目录名
其中：：modos--FAT16;vfat--FAT32;ntfs--NTFS;光驱--iso9660
支持中文名：mount
-o iocharset=x /dev/hdax /mnt/目录名(其中：x=cp936或
挂载光驱：mount
-t auto /dev/cdrom /mnt/cdrom
挂载ISO文件：mount
-t iso9660 -o loop xxx.iso /path

4.解除挂载：umount /mnt/目录名
解除所有挂载：umount -a

5.建立文件系统：mkfs -t /dev/hdxx。其中：ftype：ext2、ext3、swap等

### 三.程序安装类
1.RPM包安装：
(1)安装 rpm -ivh somesoft.rpm
(2)反安装 rpm -e somefost.rpm
(3)查询 rpm -q somefost 或 rpm -qpi somefost.rpm(其中：p未安装;i包含的信息)
(4)查询安装后位置：rpm -ql somefost.rpm
(5)升级安装：rpm -Uvh somesoft.rpm
(6)强制安装：rpm -ivh --nodeps somesoft.rpm 或 rpm -ivh --nodeps --force somesoft.rpm

2.源代码包安装：
查阅README基本用法
(1)配置：解压目录下 ./configure
(2)编译：解压目录下 make
(3)安装：解压目录下 make install

3.src.rpm的安装需要用到rpmbuild命令加上--rebuild参数。如 rpmbuild --rebuild ***.src.rpm。然后在/usr/src/下找

3.FC3下iso程序安装：system-config-packages--isodir=iso所在目录
RH下iso程序安装：redhat-config-packages--isodir=iso所在目录

### 四.压缩解压类

1.tar.gz类：(1)解压：tar
-xvzf 文件.tar.gz；(2)tar.gz解至tar：gzip
-d 文件.tar.gz(2)压缩：gzip
待压缩文件

2.tar未压缩类：(1)解包：tar
-xvf 文件.tar；(2)打包：tar
-cvf 文件.tar
文件列表

3.zip类：(1)解压：unzip 文件.zip
-d dir；(2)压缩：zip zipfile 待压缩文件列表

4.bz2类：(1)解压：bunzip2 文件.bz2或bzip2
-d 文件.bz2；(2)压缩：bzip2 待压缩文件

5.z类：
(1)解压：uncompress 文件.z；
(2)压缩：compress 文件

### 五.进程控制类
1.列出当前进程ID：ps
-auxw

2.终止进程：
(1)终止单一进程：kill
进程ID号
(2)终止该程序所有进程：Killall
程序名
(3)终止X-Window程序：xkill
3.查看资源占用情况：(1)top
(2)free (3)dmesg
4.查看环境变量值：env
5.重启：(1)reboot
(2)Ctrl Alt Del (3)init 6
6.关机：(1)shutdown
-h now (2)halt (3)init 0
7.切换桌面：switchdesk
gnome|KDE|...

### 六.程序运行类
1.查询命令：whereis
命令名
2.后台运行X-Window程序：程序名&
3.强行退出X-Window程序：Ctrl
Alt Backspace
4.查看帮助：
(1)简明帮助：命令名 --help | less
(2)更多帮助：man 命令名
(3)info 命令名
(4)help 命令名
5.查看系统路径：echo $PATH

6.查看当前shell堆栈：echo $SHLVL
7.<
/ >：输入/输出重定向;|：管道左的输入是管道右输入

### 六.用户帐号类
1.增加用户帐号：(1)用
户 名：adduser
用户帐号名
(2)设置密码：
passwd
用户帐号名
2.删除用户帐号：userdel
用户帐号名
3.增加用户组：groupadd
用户组名
4.删除用户组：groupdel
用户组名
5.暂时终止用户帐号：passwd
-l 用户帐号名
6.恢复被终止帐号：passwd
-u 用户帐号名

### 7.权限设定
(1)chmod
-a|u|g|o |-|=r|w|x 文件/目录名
其中：a--所有用户(all);u--本用户(user);g--用户组(group);o--其他用户(other
users)
--增加权限;---删除权限;=--设置权限
文件：r--只读权限(read);w--写权限(write);x--执行权限(execute)
目录：r--允许列目录下文件和子目录;w--允许生成和删除目录下文件;x--允许访问该目录
(2)chmod
xxx 文件/目录名
其中：execute=1;write=2;read=4
x取值：0--没有任何权限(常用);1--只能执行(不常见);2--只能写(不常见);3--只能写和执行(不常见);4--只读(常见);5--只读和执行(常见);6--读和写(常见);7--读.写和执行

### 七.vi编辑类
1.进入后为命令模式：(1)插入i；(2)打开0；(3)修改c；(4)取代r；(5)替换s
2.经(1)后进入全屏幕编辑模式。
3.命令模式-->编辑模式(a/i)；编辑模式-->命令模式(Esc)；命令模式-->末行模式(：)。
4.：w/w
newfile保存
5.：q/q!退出iv；：wq保存退出

### 八.网络服务
1.显示网络接口参数：ifconfig
2.显示系统邮件：mail
3.启动/终止web服务：httpd
-k start|stop|restart
4.查看网络状况：(1)联机状况：ping
xxx.xxx.xxx.xxx；
(2)显示网络状况：netstat
，其中：options：-a==所有sockets；-l==包含网络设备；-n==数字IP；
-o==其他信息；-r==路由表；-t==只列TCP
sockets；-u==只列UDP
sockets；-w==只列raw
sockets；
-x==只列Unix
Domain sockets
