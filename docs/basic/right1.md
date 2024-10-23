# 警员在线统计

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                             | 时间 |
| -------- | ------ | ------------------------------------ | ---- |
| 立项版本 | 梁新亿 | 统计总在线人数，民警人数，辅警人数； |      |
|          |        |                                      |      |

## 2.页面及接口设计

### 一级组件

```javascript
  right1: () => import("@/pages/jiangmen/zhdd/dutyPosture/index")
```

![1657538150968](assets\1657767828233.png)

#### 在线警员接口

```javascript
POST '/HiatmpPro/jiangmen/dutyPosture/getNearPolice' //在线警员接口
```

##### 数据流

查询管控平台数据库POLICE（警员表），GPS_DATA（GPS数据表），EQUIPMENT_INFO（设备信息表），查询阈值时间内（通过数据库配置）的在线警员数。

### 二级弹窗

#### 警员详细信息接口

```javascript
POST '/HiatmpPro/jiangmen/dutyPosture/getNearPolice' //在线警员接口
```

##### 数据流

查询管控平台数据库POLICE（警员表），GPS_DATA（GPS数据表），EQUIPMENT_INFO（设备信息表），DEPARTMENT（部门表）查询阈值时间内（通过数据库配置）具体警员的详细信息。

### 地图下钻

#### 接口

```javascript
POST '/HiatmpPro/jiangmen/dutyPosture/getPoliceTrack' //在线警员历史轨迹接口
```

#### 数据流

查询管控平台数据库POLICE（警员表），GPS_DATA（GPS数据表），EQUIPMENT_INFO（设备信息表），DEPARTMENT（部门表）查询阈值时间内（通过数据库配置）具体警员的历史轨迹。

## 3.依赖

### 数据库依赖表

| 表名           | 中文名     | 所属库         | 数据来源       |
| -------------- | ---------- | -------------- | -------------- |
| POLICE         | 警员表     | 管控平台数据库 | 管控平台数据库 |
| GPS_DATA       | GPS数据表  | 管控平台数据库 | GPS适配器      |
| EQUIPMENT_INFO | 设备信息表 | 管控平台数据库 | 管控平台数据库 |
| DEPARTMENT     | 部门表     | 管控平台数据库 | 管控平台数据库 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）


| 服务名       | 版本 | 备注 |
| ------------ | ---- | ---- |
| GPS适配器    |      |      |