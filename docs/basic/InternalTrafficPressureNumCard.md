# 在途车辆,日活跃车辆

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                       | 时间          |
| -------- | ------ | ---------------------------------------------- | ------------- |
| 立项版本 | 张健锋 | 展示本市5分钟的在途车辆,日活跃车辆以及相应同比 | 2022年7月12日 |
|          |        |                                                |               |

## 2.页面及接口设计

### 一级组件

```javascript
   transitCarNumCard: () => import('./InternalTrafficPressureNumCard/index.ts'),
```

![16575218702.JPG](assets\1675219824818.png)

#### 在途车辆,日活跃车辆接口

```javascript
POST '/HiatmpPro/cockpit/jtts/getTransitNum' //在途车辆,日活跃车辆接口
```

##### 数据流

取大数据hbase的hi_city_idx表的transitnum,daynum两个字段的当前时间前10分钟的那条数据,以及上周相同时间刻数据进行同比

### 二级弹窗

```javascript
import InTransitVehiclesDetail from '@/components/InternalTrafficPressureNumCard/details/InTransitVehiclesDetail';
import DailyActiveVehiclesDetail from '@/components/InternalTrafficPressureNumCard/details/DailyActiveVehiclesDetail';
```

![16575218802.JPG](assets\1675219399762.png)

#### 点击在途车辆,日活跃车辆相应的下钻接口

```javascript
POST '/HiatmpPro/cockpit/jtts/getTransitNumDetail'   //点击在途车辆,日活跃车辆相应的下钻接口
```

##### 数据流

1、取大数据hbase的hi_city_idx表的transitnum,daynum从当天0点到当前时间前10分钟那条数据组成24小时趋势图,上周,上月取满一周,一个月的平均值组成24小时趋势图
2、取大数据库dim_hi_area表的区域类型为11的辖区大队,大数据hbase的hi_area_idx表的transitnum,daynum两个字段的当前时间前10分钟的那条数据
3、取大数据库dim_hi_index_rules表的配置好的车辆类型占比（如大型车largenum,小型车smallnum,其他othernum,摩托车motonum）,归属地分析（如本市车citynum,外省车otherprvnum,本省外市车prvothercitynum）
以及外省车分布（如北京bjnum）,本省外市车分布（如粤A gz440100等）的全部字段在大数据hbase的hi_city_idx表一一取出的当前时间前10分钟的那条数据


## 3.依赖

### 数据库依赖表

| 表名                  | 中文名       | 所属库   | 数据来源      |
| --------------------  | ------------ | -------- | ------------- |
| dim_hi_area           | 大数据区域表 | 大数据库 | hidcp基础数据 |
| dim_hi_index_rules    | 大数据规则表 | 大数据库 | hidcp基础数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）

| 服务名              | 版本 | 备注 |
| ------------------- | ---- | ---- |
| hidcp-data-server   |      |      |