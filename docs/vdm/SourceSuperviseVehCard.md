# 重点驾驶人

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述 | 时间          |
| -------- | ------ | -------- | ------------- |
| 立项版本 | 赵大伟 |          | 2022年7月11日 |
|          |        |          |               |

## 2.页面及接口设计

### 一级组件

```javascript
SourceSuperviseVehCard: () => import('@/components/SourceSuperviseVehCard'), // 重点机动车
```

![1657799542501](assets\1657799542501.png)

#### 重点车辆保有量接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleSurvey' //重点车辆保有量
```

##### 数据流



#### 重点车辆二率接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleThreeRateList' //重点车辆二率
```

##### 数据流

### 二级弹窗

```javascript
VdmHighRiskVehDetail: () => import('@/components/SourceSuperviseVehCard/details/VdmHighRiskVehDetail'),// 车驾管大屏-源头监管-重点机动车保有量下钻
```

![1657799845147](assets\veh2.bmp)

#### 获取重点机动车保有量变化趋势

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleTendencyList'
```

##### 数据流

查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），准假车型（A1|A2|A3|B1|B2）注册量（全部数据）数据进行统计近12各月数据。



#### 获取重点机动车构成分析数据

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleAnalyseList'
```

##### 数据流



```javascript
VdmInspectionRateDetail: () => import('@/components/SourceSuperviseVehCard/details/VdmInspectionRateDetail'),// 车驾管大屏-源头监管-重点机动车三率下钻
```

![1657800211039](assets\veh3.bmp)

#### 重点机动车两率变化趋势接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleThreeRateTrend'//获取三率变化趋势
```

##### 数据流



#### 按准驾车型分析接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleThreeRateByType'
```

##### 数据流



#### 明细清单接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleThreeRateOverDue'
```

##### 数据流



### 地图下钻

#### 获取区域重点机动车保有量等详情

![1657797855012](assets\1657797855012.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleNumByArea'//获取区域重点机动车保有量数据
```

##### 数据流



#### 获取区域机动车构成分析接口

![1657800038812](assets\1657800038812.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getAreaVehicleAnalyseList'//获取区域重点机动车构成分析数据
```

##### 数据流



#### 获取区域重点机动车二率

![1657779166548](assets\1657779166548.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getAreaVehicleThreeRateList'//获取区域重点机动车三率名称
```

##### 数据流



## 3.依赖

### 数据库依赖表

| 表名 | 中文名 | 所属库 | 数据来源 |
| ---- | ------ | ------ | -------- |
|      |        | 下发库 | 第三方库 |

数据结构见：[数据结构](../script/xfk.md)

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

暂无