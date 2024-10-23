# 驾驶人保有量

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                   | 时间          |
| -------- | ------ | ------------------------------------------ | ------------- |
| 立项版本 | 赵大伟 | 展示本市驾驶人保有量以及环比，新增，注销量 | 2022年7月11日 |
|          |        |                                            |               |

## 2.页面及接口设计

### 一级组件

```javascript
  DrvFlowNumCard: () => import('@/components/DrvFlowNumCard')
```

![1657521870557](assets\1657521870557.png)

#### 驾驶人保有量接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverParcSurvey' //驾驶人保有量接口
```

##### 数据流

查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），注册量（全部数据）数据进行统计。

### 二级弹窗

```javascript
driverParcDetail: () => import('./CitySurveyNumCard/details/DriverParcDetail'), // 驾驶人保有量分析
```

![1657521932433](assets\1657521932433.png)

#### 保有量变化趋势接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverParcTendencyList'   
```

##### 数据流

查下发库的DRIVINGLICENSE 表，取最近12各月发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），注册量（全部数据）数据进行统计。

#### 驾驶人分析构成接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverAnalyseList'  //0:所有 1:年龄构成 2:驾龄构成 3:驾驶类型 4:驾证状态
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据字段统计1.年龄构成 2:驾龄构成 3:驾证类型 4.驾证状态。

#### 驾驶人三率接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverThreeRateList'  
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据状态字段统计三率

### 地图下钻

#### 获取区域驾驶人保有量等详情

![1657522989093](assets\1657522989093.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getAreaDriverDateList‘
```

##### 数据流

查下发库的DRIVINGLICENSE 表，取最近12各月发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），注册量（全部数据）、行政区划数据进行统计。

#### 获取驾驶人构成分析数据

![1657522989093](assets\1657531516679.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverAnalyseList’
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据字段、行政区化统计1.年龄构成 2:驾龄构成 3:驾证类型 4.驾证状态。

#### 获取区域驾驶人三率名称

![1657522989093](assets\1657531559031.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getAreaDriverThreeRateList'
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据状态字段、行政区划统计各区域三率

### 

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