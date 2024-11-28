## 1 netstat 概述
netstat 是一款命令行工具，主要是用于列出系统上所有的网络套接字连接情况，包括 tcp, udp 以及 unix 套接字，另外它还能列出处于监听状态（即等待接入请求）的套接字。除此之外，netstat 命令还可用于显示路由表，接口状态 (Interface Statistics)，masquerade 连接，多播成员 (Multicast Memberships) 等。从整体上看，netstat的输出结果可以分为两个部分：
### 1.1 Active Internet connections
有源TCP连接，UDP连接。

```sh
======================== TCP CLIENT ===================================================
[root@localhost ~]# netstat -tnp | more
Active Internet connections (w/o servers)
Proto Recv-Q Send-Q Local Address               Foreign Address             State       PID/Program name
tcp        0      0 127.0.0.1:3050              127.0.0.1:32795             ESTABLISHED 3161/fbserver
tcp        0      0 10.228.90.11:22             10.41.166.94:58005          ESTABLISHED 13824/sshd
tcp        0      0 10.228.90.11:49168          10.41.103.97:443            TIME_WAIT   -
tcp        0  13032 10.228.90.11:8002           10.228.90.5:11111           ESTABLISHED 6738/./tcp_client
...
 
======================== TCP SERVER ===================================================
[root@localhost ~]# netstat -anplt
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address               Foreign Address             State       PID/Program name
tcp    89768      0 10.228.90.5:11111           10.228.90.11:8002           ESTABLISHED 29561/./tcp_server
...
```

**recv-Q**:网络接收队列

表示收到的数据已经在本地接收缓冲，但是还有多少没有被进程取走，recv()如果接收队列Recv-Q一直处于阻塞状态，可能是遭受了拒绝服务 denial-of-service 攻击；

**send-Q**:网路发送队列

本地没有发生的数据，如果发送队列Send-Q不能很快的清零，可能是有应用向外发送数据包过快，或者是对方接收数据包不够快；

>这两个值通常应该为0，如果不为0可能是有问题的。packets在两个队列里都不应该有堆积状态。可接受短暂的非0情况。如图上所示，tcp_server 没有读取 tcp_client 发来的数据。

### 1.2 Active UNIX domain sockets
有源Unix域套接口(和网络套接字一样，但是只能用于本机通信，性能可以提高一倍)。查看unix接口命令如下：
``` shell
Proto RefCnt Flags       Type       State         I-Node Path
unix  12     [ ]         DGRAM                    10269  /dev/log
unix  2      [ ]         DGRAM                    7917   @/org/kernel/udev/udevd
unix  2      [ ]         DGRAM                    10481  @/org/freedesktop/hal/udev_event
unix  2      [ ]         DGRAM                    6939979
unix  2      [ ]         DGRAM                    6478837
unix  3      [ ]         STREAM     CONNECTED     6354883 /var/run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     6354882
unix  3      [ ]         STREAM     CONNECTED     6255685 /var/run/dbus/system_bus_socket
unix  3      [ ]         STREAM     CONNECTED     6255684
unix  2      [ ]         DGRAM                    6255683
unix  2      [ ]         DGRAM                    5633176
```

- Proto    显示连接使用的协议
- RefCnt 表示连接到本套接口上的进程号
- Types   显示套接口的类型
- State    显示套接口当前的状态
- Path     表示连接到套接口的其它进程使用的路径名



## 2 netstat 命令参数
-a或--all：显示所有连线中的Socket；

-A<网络类型>或--<网络类型>：列出该网络类型连线中的相关地址；

-c或--continuous：持续列出网络状态；

-C或--cache：显示路由器配置的快取信息；

-e或--extend：显示网络其他相关信息；

-F或--fib：显示FIB；

-g或--groups：显示多重广播功能群组组员名单；

-h或--help：在线帮助；

-i或--interfaces：显示网络界面信息表单；

-l或--listening：显示监控中的服务器的Socket；

-M或--masquerade：显示伪装的网络连线；

-n或--numeric：直接使用ip地址，而不通过域名服务器；

-N或--netlink或--symbolic：显示网络硬件外围设备的符号连接名称；

-o或--timers：显示计时器；

-p或--programs：显示正在使用Socket的程序识别码和程序名称；

-r或--route：显示Routing Table；

-s或--statistice：显示网络工作信息统计表；

-t或--tcp：显示TCP传输协议的连线状况；

-u或--udp：显示UDP传输协议的连线状况；

-v或--verbose：显示指令执行过程；

-V或--version：显示版本信息；

-w或--raw：显示RAW传输协议的连线状况；

-x或--unix：此参数的效果和指定"-A unix"参数相同；

--ip或--inet：此参数的效果和指定"-A inet"参数相同。

## 3 netstat 常见用法
### 3.1 列出所有端口 (包括监听和未监听的)
```shell
列出所有端口 netstat -a
列出所有 tcp 端口 netstat -at
列出所有 udp 端口 netstat -au
```
### 3.2 列出所有处于监听状态的 Sockets
```shell
只显示监听端口 netstat -l
只列出所有监听 tcp 端口 netstat -lt
只列出所有监听 udp 端口 netstat -lu
只列出所有监听 UNIX 端口 netstat -lx
```

### 3.3 显示每个协议的统计信息
```
显示所有端口的统计信息 netstat -s
显示 TCP 或 UDP 端口的统计信息 netstat -st 或 -su
```
### 3.4 在 netstat 输出中显示 PID 和进程名称 netstat-p
```
netstat -p 可以与其它开关一起使用，就可以添加 “PID/进程名称” 到 netstat 输出中， 这样 debugging 的时候可以很方便的发现特定端口运行的程序。
```
### 3.5 在 netstat 输出中不显示主机，端口和用户名 (host, port or user)
当你不想让主机，端口和用户名显示，使用 netstat -n。将会使用数字代替那些名称。
同样可以加速输出，因为不用进行比对查询。
```
# netstat -an
如果只是不想让这三个名称中的一个被显示，使用以下命令
# netsat -a --numeric-ports
# netsat -a --numeric-hosts
# netsat -a --numeric-users
```
### 3.6 持续输出 netstat 信息
```
netstat 将每隔一秒输出网络信息。
# netstat -c
```
### 3.7 显示系统不支持的地址族 (Address Families)
```
netstat --verbose
```
### 3.8 显示核心路由信息 netstat -r
``` sh
# netstat -r
注意： 使用 netstat -rn 显示数字格式，不查询主机名称。

[root@localhost ~]# netstat -rn
Kernel IP routing table
Destination     Gateway         Genmask         Flags   MSS Window  irtt Iface
80.80.80.0      0.0.0.0         255.255.255.0   U         0 0          0 eth8
10.228.90.0     0.0.0.0         255.255.255.0   U         0 0          0 eth9
1.1.0.0         0.0.0.0         255.255.255.0   U         0 0          0 tap0
169.254.0.0     0.0.0.0         255.255.0.0     U         0 0          0 eth8
169.254.0.0     0.0.0.0         255.255.0.0     U         0 0          0 eth9
10.0.0.0        10.228.90.1     255.0.0.0       UG        0 0          0 eth9
0.0.0.0         1.1.0.3         0.0.0.0         UG        0 0          0 tap0
[root@localhost ~]#
```

表头说明：

- Destination:目标网络或者主机。
- Gateway:网关地址，如果没有设置则为*。
- Genmask:目标网络掩码；如果默认路由则用"0.0.0.0"。
- Flags标志说明:
``` sh
U Up表示此路由当前为启动状态
H Host，表示此网关为一主机
G Gateway，表示此网关为一路由器
R Reinstate Route，使用动态路由重新初始化的路由
D Dynamically,此路由是动态性地写入
M Modified，此路由是由路由守护程序或导向器动态修改! 表示此路由当前为关闭状态
```

- Iface:对于这个路由，数据包将要发送到那个接口（网卡）。

### 3.9 找出程序运行的端口
```sh
并不是所有的进程都能找到，没有权限的会不显示，使用 root 权限查看所有的信息。
# netstat -ap | grep ssh
 
找出运行在指定端口的进程
# netstat -an | grep ':80'
```

### 3.10 显示网络接口列表
``` sh
# netstat -i
显示详细信息，像是ifconfig 使用 netstat-ie
 
[root@localhost ~]# netstat -i
Kernel Interface table
Iface       MTU Met    RX-OK RX-ERR RX-DRP RX-OVR    TX-OK TX-ERR TX-DRP TX-OVR Flg
eth8       1500   0  9150807      0      0      0      128      0      0      0 BMRU
eth9       1500   0  9297220      0      0      0   144187      0      0      0 BMRU
eth12      1500   0   294871      0      0      0        6      0      0      0 BMRU
eth13      1500   0        0      0      0      0        6      0      0      0 BMRU
lo        16436   0 95290843      0      0      0 95290843      0      0      0 LRU
tap0       1500   0        0      0      0      0       48      0      0      0 BRU
tap0:1     1500   0      - no statistics available -                            BRU
[root@localhost ~]#
```
MTU和Met字段表示的是接口的MTU和度量值值；RX和TX这两列表示的是已经准确无误地收发了多少数据包（ RX - OK / TX - OK）、产生了多少错误（ RX-ERR/TX-ERR）、丢弃了多少包（RX-DRP/TX-DRP），由于误差而遗失了多少包（RX-OVR/TX-OVR）；最后一列展示的是为这个接口设置的标记，在利用ifconfig显示接口配置时，这些标记都采用一个字母。它们的说明如下：

B 已经设置了一个广播地址。
L 该接口是一个回送设备。
M 接收所有数据包（混乱模式）。
N 避免跟踪。
O 在该接口上，禁用A R P。
P 这是一个点到点链接。
R 接口正在运行。
U 接口处于“活动”状态。

## 4 netstat 实现原理
使用 strace 跟踪一下netstat执行过程：
```shell
[root@localhost ~]# strace netstat -t
execve("/bin/netstat", ["netstat", "-t"], [/* 36 vars */]) = 0
brk(0)                                  = 0x1e4a000
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40f008000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
open("/etc/ld.so.cache", O_RDONLY)      = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=121484, ...}) = 0
mmap(NULL, 121484, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7fe40efea000
close(3)                                = 0
open("/lib64/libselinux.so.1", O_RDONLY) = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0PX@\3201\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0755, st_size=124624, ...}) = 0
mmap(0x31d0400000, 2221912, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x31d0400000
mprotect(0x31d041d000, 2093056, PROT_NONE) = 0
mmap(0x31d061c000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1c000) = 0x31d061c000
mmap(0x31d061e000, 1880, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x31d061e000
close(3)                                = 0
open("/lib64/libc.so.6", O_RDONLY)      = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0p\356\201\3161\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0755, st_size=1926520, ...}) = 0
mmap(0x31ce800000, 3750152, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x31ce800000
mprotect(0x31ce98a000, 2097152, PROT_NONE) = 0
mmap(0x31ceb8a000, 20480, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x18a000) = 0x31ceb8a000
mmap(0x31ceb8f000, 18696, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x31ceb8f000
close(3)                                = 0
open("/lib64/libdl.so.2", O_RDONLY)     = 3
read(3, "\177ELF\2\1\1\0\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\340\r\0\3171\0\0\0"..., 832) = 832
fstat(3, {st_mode=S_IFREG|0755, st_size=22536, ...}) = 0
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40efe9000
mmap(0x31cf000000, 2109696, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x31cf000000
mprotect(0x31cf002000, 2097152, PROT_NONE) = 0
mmap(0x31cf202000, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x2000) = 0x31cf202000
close(3)                                = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40efe7000
arch_prctl(ARCH_SET_FS, 0x7fe40efe77a0) = 0
mprotect(0x31d061c000, 4096, PROT_READ) = 0
mprotect(0x31ceb8a000, 16384, PROT_READ) = 0
mprotect(0x31cf202000, 4096, PROT_READ) = 0
mprotect(0x31ce61f000, 4096, PROT_READ) = 0
munmap(0x7fe40efea000, 121484)          = 0
statfs("/selinux", {f_type="EXT2_SUPER_MAGIC", f_bsize=4096, f_blocks=5039583, f_bfree=516574, f_bavail=260574, f_files=1281120, f_ffree=831149, f_fsid={-1732439464, 1687617228}, f_namelen=255, f_frsize=4096}) = 0
brk(0)                                  = 0x1e4a000
brk(0x1e6b000)                          = 0x1e6b000
open("/proc/filesystems", O_RDONLY)     = 3
fstat(3, {st_mode=S_IFREG|0444, st_size=0, ...}) = 0
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40f007000
read(3, "nodev\tsysfs\nnodev\trootfs\nnodev\tb"..., 1024) = 304
read(3, "", 1024)                       = 0
close(3)                                = 0
munmap(0x7fe40f007000, 4096)            = 0
open("/usr/lib/locale/locale-archive", O_RDONLY) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=99158576, ...}) = 0
mmap(NULL, 99158576, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7fe409156000
close(3)                                = 0
open("/usr/share/locale/locale.alias", O_RDONLY) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=2512, ...}) = 0
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40f007000
read(3, "# Locale name alias data base.\n#"..., 4096) = 2512
read(3, "", 4096)                       = 0
close(3)                                = 0
munmap(0x7fe40f007000, 4096)            = 0
open("/usr/share/locale/en_US.UTF-8/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale/en_US.utf8/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale/en_US/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale/en.UTF-8/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale/en.utf8/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
open("/usr/share/locale/en/LC_MESSAGES/net-tools.mo", O_RDONLY) = -1 ENOENT (No such file or directory)
fstat(1, {st_mode=S_IFCHR|0620, st_rdev=makedev(136, 1), ...}) = 0
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7fe40f007000
write(1, "Active Internet connections (w/o"..., 42Active Internet connections (w/o servers)
) = 42
write(1, "Proto Recv-Q Send-Q Local Addres"..., 88Proto Recv-Q Send-Q Local Address               Foreign Address             State
) = 88
open("/proc/net/tcp", O_RDONLY)         = 3
fstat(3, {st_mode=S_IFREG|0444, st_size=0, ...}) = 0
mmap(NULL, 4096, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_AN
```
netstat是通过读取 /proc/net/路径下的tcp、udp、unix等文件来获取连接信息的。
```
[root@localhost ~]# netstat -ntp | grep 11111
tcp        0  13032 10.228.90.11:8002           10.228.90.5:11111           ESTABLISHED 6738/./tcp_client
[root@localhost ~]# cat /proc/net/tcp
  sl  local_address rem_address   st tx_queue rx_queue tr tm->when retrnsmt   uid  timeout inode                                                    
   0: 00000000:1E14 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 15313 1 ffff880422c8a340 299 0 0 2 -1                    
   1: 00000000:1E35 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 15316 1 ffff880822abaf00 299 0 0 2 -1                    
   2: 00000000:0015 00000000:0000 0A 00000000:00000000 00:00000000 00000000     0        0 14164 1 ffff880422a8edc0 299 0 0 2 -1                    
	...                 
  44: 0B5AE40A:1F42 055AE40A:2B67 01 000032E8:00000000 04:000000A2 00000000     0        0 6940153 2 ffff880313f73700 20 0 0 10 -1                  
	...               
[root@localhost ~]#
```
如果 netstat 加上 -p 则还要需要读取相应的进程名。

## 查看所有tcp端口监听

```shell
#查看所有tcp端口监听
netstat -lntup 
```

## 查看nginx端口监听

```
netstat -unltp|grep nginx
```



[netstat 命令详解及实现原理](https://blog.csdn.net/wangquan1992/article/details/109508822)
