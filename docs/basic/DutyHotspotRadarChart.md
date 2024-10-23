# 勤务热点分析雷达

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述                 | 时间       |
| -------- | ------ | ------------------------ | ---------- |
| 立项版本 | 张天禹 | 勤务热点多维度匹配度分析 | 2022/07/14 |
|          |        |                          |            |

## 2.页面及接口设计

### 一级组件

```javascript
  DutyHotspotRadarChart:
		() => import("@/components/DutyHotspotRadarChart/index"),//勤务热点分析-雷达图
```

![1657782317903](assets\1657782317903.png)

#### 接口

```javascript
POST '/HiatmpPro/jiangmen/qwdc/getDutyInspectorScore'
```

#### 数据流

通过hotspot_time_overlap_data覆盖度表来对雷达图5各维度的的评分进行均衡汇总，并和上个时间维度进行同比。

### 二级弹窗

无

### 地图下钻

无

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