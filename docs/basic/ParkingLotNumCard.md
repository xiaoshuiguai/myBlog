# 停车场数据分析

## 1.基本信息

### 权限

无

### 扩展

无

### 历史记录

| 版本     | 开发人                     | 需求描述       | 时间       |
| -------- | -------------------------- | -------------- | ---------- |
| 立项版本 | 前端：孟范超  后端：武晋先 | 停车场数据展示 | 2022/07/12 |
|          |                            |                |            |

## 2.页面及接口设计

### 一级组件

```javascript
  ParkingLotNumCard: () => import('@/components/ParkingLotNumCard'), // 停车场数据分析
```

![1657538082910](assets\1657538082910.png)

#### 停车场数据统计接口

```javascript
POST '/HiatmpPro/parking/statistics/totalAnalysis'
```

##### 数据流

停车场泊位信息表parkingspace、停车场信息表faci_vehiclepark进行数据统计

### 二级弹窗

![1657620404646](assets\1657620404646.png)

#### 停车场空闲车位数量变化趋势接口

```javascript
GET '/HiatmpPro/parking/statistics/trend' //停车场数量变化趋势
```

##### 数据流

从停车位历史信息表parkingspace_history进行数据统计（关联停车场泊位信息表parkingspace、停车场信息表faci_vehiclepark）

#### 停车场重点区域分析接口

```javascript
POST '/HiatmpPro/parking/statistics/getFaceAreaParkingInfoList' //停车场重点区域分析
```

##### 数据流

 从停车场泊位信息表parkingspace、停车场信息表faci_vehiclepark根据dept字段进行区域统计

### 地图下钻

#### 停车场数量变化趋势下钻

![1657620453380](assets\1657620453380.png)

##### 区域停车场详情统计接口

```javascript
POST '/HiatmpPro/parking/statistics/getAreaPackingInfoList' // 区域停车场详情统计
```

数据流

从停车场泊位信息表parkingspace、停车场信息表faci_vehiclepark根据dept字段进行区域停车场数据查询

##### 区域交通指数变化趋势接口

```javascript
POST '/HiatmpPro/parking/statistics/getAreaTpiTrendList' // 区域交通指数变化趋势
```

数据流

从停车场泊位信息表parkingspace、停车场信息表faci_vehiclepark根据dept字段进行区域停车场数据查询



## 3.依赖

### 数据库依赖表

| 表名                 | 中文名             | 所属库 | 数据来源               |
| -------------------- | ------------------ | ------ | ---------------------- |
| faci_vehiclepark     | 停车场信息表       | 管控库 | 现场定制适配器接入数据 |
| parkingspace         | 停车场泊位信息表   | 管控库 | 现场定制适配器接入数据 |
| parkingspace_history | 停车泊位历史信息表 | 管控库 | 现场定制适配器接入数据 |
| department           | 部门表             | 管控库 | 基础平台维护的部门数据 |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-parking |      |      |

### 其他依赖（适配器/大数据/现场系统等）

现场定制停车场数据接入适配器