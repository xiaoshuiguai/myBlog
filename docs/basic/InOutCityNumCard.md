# 进出城总数

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述               | 时间          |
| -------- | ------ | ---------------------- | ------------- |
| 立项版本 | 张健锋 | 展示本市当天进出城总数 | 2022年7月12日 |
|          |        |                        |               |

## 2.页面及接口设计

### 一级组件

```javascript
   inOutCityNumCard: () => import('./InOutCityNumCard/InOutCityNumCard'),
```

![16575218703.JPG](assets\16575218703.png)

#### 进出城总数接口

```javascript
POST '/HiatmpPro/jiangmen/jtts/getInOutNum' //进出城总数接口
```

##### 数据流

取大数据hbase的hi_city_idx表的innum,outnum两个字段从当天0点到当前时间前10分钟那条数据的汇总

### 二级弹窗

```javascript
   gobacknumdetail: () => import("../components/InOutCityNumCard/GoBackNumDetail/GoBackNumDetail"),进出城总数弹窗
   getalloncarpie: () => import("../components/InOutCityNumCard/GoBackNumDetail/GetAllOnCarPie"),进出城外省车分布和本省外市车分布弹窗
   gobacknummonitor: () => import("../components/InOutCityNumCard/GoBackNumDetail/GoBackNumMonitor"),进出城地图点位弹窗
```

![16575218803.JPG](assets\16575218803.png)

#### 点击进出城总数相应的下钻接口

```javascript
POST '/HiatmpPro/jiangmen/jtts/getGobacknumDeatil'   //点击拥堵里程，拥堵指数，平均速度相应的下钻接口
POST '/HiatmpPro/jiangmen/jtts/getInoutcitySwitch'   //进出城点位排名
```

##### 数据流

1、取大数据hbase的hi_city_idx表的innum,outnum从当天0点到当前时间前10分钟那条数据组成24小时趋势图,上周,上月取满一周,一个月的平均值组成24小时趋势图
2、取大数据库dim_hi_index_rules表的配置好的数据（全部在字段前面对应加上in或者out）
车辆类型占比（如大型车inlargenum,小型车insmallnum,其他inothernum,摩托车inmotonum,
归属地分析（如本市车incitynum,外省车inotherprvnum,本省外市车inprvothercitynum,
以及外省车分布（如北京inbjnum）,本省外市车分布（如粤A ingz440100等）的全部字段在大数据hbase的hi_city_idx表从当天0点到当前时间前10分钟那条数据汇总
3、取大数据hbase的hi_inout_idx表每一个点位的innum,outnum,inrate,outrate,全天进出城累计总数


### 地图下钻

#### 点击相应的点位详情

```javascript
POST '/HiatmpPro/jiangmen/jtts/getInoutcitySwitch'   //进出城点位排名
```

![16575218804.JPG](assets\16575218804.png)

##### 数据流

1、取大数据hbase的hi_inout_idx表每一个点位的innum,outnum从当天0点到当前时间前10分钟那条数据组成24小时趋势图,上周,上月取满一周,一个月的平均值组成24小时趋势图
2、取大数据hbase的hi_inout_idx表每一个点位的车辆类型占比（如大型车largenum,小型车smallnum,其他othernum,摩托车motonum）,归属地分析（如本市车citynum,外省车otherprvnum,本省外市车prvothercitynum）

## 3.依赖

### 数据库依赖表

| 表名                          | 中文名                 | 所属库   | 数据来源      |
| ----------------------------- | ---------------------  | -------- | ------------- |
| dim_hi_area                   | 大数据区域表           | 大数据库 | hidcp基础数据 |
| dim_hi_index_rules            | 大数据规则表           | 大数据库 | hidcp基础数据 |
| dim_hi_inoutcity_crossing     | 大数据进出城点位表     | 大数据库 | hidcp基础数据 |
| dim_hi_inoutcity_direction    | 大数据进出城点位设备表 | 大数据库 | hidcp基础数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）

| 服务名              | 版本 | 备注 |
| ------------------- | ---- | ---- |
| hidcp-data-server   |      |      |