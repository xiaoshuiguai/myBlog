# 警员在线统计

## 1.基本信息

### 权限

无

### 扩展

无

### 历史记录

| 版本     | 开发人 | 需求描述         | 时间       |
| -------- | ------ | ---------------- | ---------- |
| 立项版本 | 江门   | 统计警力在线人数 | 2022/07/15 |
|          |        |                  |            |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceOnlineNumCard: () => import('@/components/PoliceOnlineNumCard'), // 警员在线统计
```

![1675232510451](assets\1675232510451.png)

#### 接口

```javascript
GET '/HiatmpPro/jiangmen/dutyPosture/getOnLineStatistic'
```

#### 数据流

根据POLICE、GPS_DATA、EQUIPMENT_INFO表关联进行统计

### 二级弹窗

![1675232560002](assets\1675232560002.png)

#### 接口

```javascript
POST '/HiatmpPro/cockpit/dutyPosture/getOnLineAnalyse'
```

#### 数据流

根据POLICE、GPS_DATA、EQUIPMENT_INFO表关联进行统计

### 地图下钻

![1675232981854](assets\1675232981854.png)

#### 接口

```javascript
POST '/HiatmpPro/cockpit/dutyPosture/getOnLineAnalyse' // 在线警员统计
```

#### 数据流

点击在岗人数后，查询在线的警力GPS数据展示到地图上

## 3.依赖

### 数据库依赖表

| 表名           | 中文名    | 所属库 | 数据来源 |
| -------------- | --------- | ------ | -------- |
| POLICE         | 警员表    | 管控库 | 现场维护 |
| GPS_DATA       | 实时GPS表 | 管控库 | 现场接入 |
| EQUIPMENT_INFO | 设备表    | 管控库 | 现场维护 |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

GPS设备数据接入