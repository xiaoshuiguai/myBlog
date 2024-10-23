# 拥堵里程，拥堵指数，平均速度仪表盘

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                              | 时间          |
| -------- | ------ | ----------------------------------------------------- | ------------- |
| 立项版本 | 张健锋 | 展示本市5分钟的拥堵里程,拥堵指数,平均速度以及相应同比 | 2022年7月12日 |
|          |        |                                                       |               |

## 2.页面及接口设计

### 一级组件

```javascript
   trafficSituationDashBoard: () => import('./TrafficSituationDashBoard/TrafficSituationDashBoard'),
```

![16575218701.JPG](assets\16575218701.png)

#### 拥堵里程，拥堵指数，平均速度仪表盘接口

```javascript
POST '/HiatmpPro/jiangmen/jtts/getCityIndex' //拥堵里程，拥堵指数，平均速度仪表盘接口
```

##### 数据流

取大数据hbase的hi_city_idx表的jamlen,tpi,speed三个字段的当前时间前10分钟的那条数据,以及上周相同时间刻数据进行同比

### 二级弹窗

```javascript
congestionmileagedetail: () => import("../components/TrafficSituationDashBoard/CongestionMileageDetail/CongestionMileageDetail"),拥堵里程，拥堵指数，平均速度仪表盘弹窗
```

![16575218801](assets\16575218801.png)

#### 点击拥堵里程，拥堵指数，平均速度相应的下钻接口

```javascript
POST '/HiatmpPro/jiangmen/jtts/getCongestionDetial'   //点击拥堵里程，拥堵指数，平均速度相应的下钻接口
```

##### 数据流

1、取大数据hbase的hi_city_idx表的jamlen,tpi,speed从当天0点到当前时间前10分钟那条数据组成24小时趋势图,上周,上月取满一周,一个月的平均值组成24小时趋势图
2、取大数据库dim_hi_area表的区域类型为11的辖区大队,大数据hbase的hi_area_idx表的jamlen,tpi,avgspeed三个字段的当前时间前10分钟的那条数据

## 3.依赖

### 数据库依赖表

| 表名           | 中文名       | 所属库   | 数据来源      |
| -------------- | ------------ | -------- | ------------- |
| dim_hi_area    | 大数据区域表 | 大数据库 | hidcp基础数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）

| 服务名              | 版本 | 备注 |
| ------------------- | ---- | ---- |
| hidcp-data-server   |      |      |