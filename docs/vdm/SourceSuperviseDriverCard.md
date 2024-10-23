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
SourceSuperviseDriverCard: () => import('@/components/SourceSuperviseDriverCard'), // 重点驾驶人
```

![1657797241352](assets\driver1.bmp)

#### 重点驾驶人保有量接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverParcSurvey' //重点驾驶人保有量接口
```

##### 数据流

查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），准假车型（A1|A2|A3|B1|B2）注册量（全部数据）数据进行统计。

#### 重点驾驶人三率接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverThreeRateList' //重点驾驶人保有量接口
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据准假车型（A1|A2|A3|B1|B2），状态字段统计三率

### 二级弹窗

```javascript
VdmHighRiskDriverDetail: () => import('@/components/SourceSuperviseDriverCard/details/VdmHighRiskDriverDetail'),//重点驾驶人保有量下钻
```

![1657797735584](assets\driver2.bmp)

#### 重点驾驶人保有量变化趋势接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverParcTendencyList'  
```

##### 数据流

查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），准假车型（A1|A2|A3|B1|B2）注册量（全部数据）数据进行统计近12各月数据。



#### 重点驾驶人分析构成接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverAnalyseList'
```

##### 数据流

查下发库的DRIVINGLICENSE 表，准假车型（A1|A2|A3|B1|B2），年龄进行统计。



```javascript
VdmDriverAnalysisDetail: () => import('@/components/SourceSuperviseDriverCard/details/VdmDriverAnalysisDetail'),//重点驾驶人三率下钻}
```

![1657797980332](assets\driver3.bmp)

#### 重点驾驶人三率变化趋势接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverThreeRateTrend' 
```

##### 数据流

查下发库的DRIVINGLICENSE 表，准假车型（A1|A2|A3|B1|B2），状态字段进行统计



#### 按准驾车型分析接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getDriverThreeRateByType'
```

##### 数据流

查下发库的DRIVINGLICENSE 表，准假车型（A1|A2|A3|B1|B2）字段进行统计



#### 明细清单接口

```javascript
POST '/HiatmpPro/cov/keyVehicle/getVehicleThreeRateOverDue'
```

##### 数据流

查下发库的DRIVINGLICENSE表



### 地图下钻

#### 获取区域重点驾驶人保有量等详情

![1657797855012](assets\1657797855012.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getAreaDriverDateList' //获取区域重点驾驶人详情
```

##### 数据流

查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），准假车型（A1|A2|A3|B1|B2）注册量，行政区划数据进行统计。

#### 获取重点驾驶人构成分析数据

![1657797888936](assets\1657797888936.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getAreaDriverAnalyseList' //获取区域重点驾驶人构成分析数据
```

##### 数据流

查下发库的DRIVINGLICENSE 表，准假车型（A1|A2|A3|B1|B2），年龄，行政区划进行统计。



#### 获取区域驾驶人三率名称

![1657522989093](assets\1657531559031.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/keyDriver/getAreaDriverThreeRateList' //获取区域重点驾驶人三率名称
```

##### 数据流

查下发库的DRIVINGLICENSE 表，准假车型（A1|A2|A3|B1|B2），状态，行政区划进行统计。



## 3.依赖

### 数据库依赖表

| 表名           | 中文名   | 所属库 | 数据来源 |
| -------------- | -------- | ------ | -------- |
| DRIVINGLICENSE | 驾驶人表 | 下发库 | 第三方库 |

数据结构见：[数据结构](../script/xfk.md)

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

暂无