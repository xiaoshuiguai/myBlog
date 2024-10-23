# 勤务热点分析-列表

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述         | 时间       |
| -------- | ------ | ---------------- | ---------- |
| 立项版本 | 张天禹 | 勤务热点列表分析 | 2022/07/15 |
|          |        |                  |            |

## 2.页面及接口设计

### 一级组件

```javascript
DutyHotspotListCard: () => import("@/components/DutyHotspotListCard/index"),//勤务热点分析-list
```

![1657782480133](assets\1657782480133.png)

#### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getHotSpotList'
```

##### 数据流

### 二级弹窗

![1657782573273](assets\1657782573273.png)

#### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getExportData'
```

##### 数据流

通过查询各勤务热点覆盖警力表hotspot_police_day来进行各辖区点位评分排名和覆盖度排名，并给予分析评价。

### 地图下钻

#### 事故黑点

![1657782651958](assets\1657782651958.png)

##### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getHotSpotAccidentDetail'
```

##### 数据流

根据事故黑点表hotspot_accident_base_data关联违法表vio_violation和事故acd_dutysimple,acd_file表查询统计和趋势措施分析

#### 秩序乱点

![1657782738230](assets\1657782738230.png)

##### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getHotSpotOrderChaosDetail'
```

##### 数据流

根据秩序乱点表hotspot_order_chaos_base_data关联违法表vio_violation查询统计和趋势措施分析

#### 常发拥堵

![1657782758293](assets\1657782758293.png)

##### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getHotSpotJamDetail'
```

##### 数据流

根据常发堵点（来源：大数据服务）表hotspot_trf_block_base_data关联违法表vio_violation查询统计和趋势措施分析

#### 五车聚点

![1657782776805](assets\1657782776805.png)

##### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getHotSpotFourVehDetail'
```

##### 数据流

根据五车汇聚（两客一危，校车，泥头车）表hotspot_focus_point_base_data关联违法表vio_violation查询统计和趋势措施分析

## 3.依赖

### 数据库依赖表

| 表名                          | 中文名                             | 所属库 | 数据来源                          |
| ----------------------------- | ---------------------------------- | ------ | --------------------------------- |
| hotspot_accident_base_data    | 事故黑点基础数据                   | 管控   | dutypoint适配器                   |
| hotspot_accident_relation     | 事故黑点与事故数据关联表           | 管控   | dutypoint适配器                   |
| hotspot_five_veh              | 五车（两客一危 校车 泥头车）详情表 | 管控   | 第三方                            |
| hotspot_focus_point_base_data | 重点关注基础数据                   | 管控   | 第三方                            |
| hotspot_four_veh_base_data    | 五车聚点基础数据                   | 管控   | dutypoint适配器                   |
| hotspot_order_chaos_base_data | 秩序乱点基础数据                   | 管控   | dutypoint适配器                   |
| hotspot_police_day            | 热点覆盖警力表                     | 管控   | hiatmp-adapter-hotspot-police     |
| hotspot_road_relation         | 关注点与路段路口关联表             | 管控   | dutypoint适配器                   |
| hotspot_time_overlap_data     | 热点警力覆盖度结果表               | 管控   | DutyDataHandlerAdapterForJiangmen |
| hotspot_timeinterval_data     | 热点时段数据                       | 管控   | dutypoint适配器                   |
| hotspot_trf_block_base_data   | 常发堵点基础数据                   | 管控   | hiatmp-adapter-traffic-block      |

### 服务依赖

| 服务名                               | 版本 | 备注 |
| ------------------------------------ | ---- | ---- |
| urbantraffic-hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）

1 事故黑点适配器：dutypoint
2 常发堵点适配器：hiatmp-adapter-traffic-block
3 poi适配器：poi
4 警力适配器：hiatmp-adapter-hotspot-police
5 勤务匹配度适配器：DutyDataHandlerAdapterForJiangmen