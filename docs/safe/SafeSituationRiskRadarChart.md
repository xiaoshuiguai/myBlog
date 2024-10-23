# 安全指数+风险雷达

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                        | 时间          |
| -------- | ------ | ------------------------------- | ------------- |
| 立项版本 | 张天禹 | 安全态势-展示各辖区安全风险指数 | 2022年7月12日 |
|          |        |                                 |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeSituationRiskRadarChart: () => import("@/components/SafeSituationRiskRadarChart/index.tsx")
```

![img](assets\3847321229.bmp)

#### 查询安全风险指数，人、车、路、企、事故的分别得分接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getRiskIndexScore'
```

#### 安全风险指数得分阈值查询接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getRiskIndexThreshold'
```

##### 数据流

查询驾驶舱库COC_SAFE_RISK_INDEX表，根据前端时间查询条件来获取对应的各维度分数，查询COC_CONFIG表确定高中风险阈值。

### 二级弹窗

#### 安全指数趋势

```javascript
SafeSituationHisMonthDetail: () => import("../components/SafeSituationRiskRadarChart/detail/SafeSituationHisMonthDetail")
```

![img](.\assets\1357683377.bmp)

#### 查询最近6个月，五种风险指数接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getRiskIndexByMonth'
```

##### 数据流

查询驾驶舱库COC_SAFE_RISK_INDEX表，根据查询时间获取前6个月的各维度得分。 

### 地图下钻

#### 查询安全风险指数，人、车、路、企、事故的分别得分接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getRiskIndexByMonth'
```

![img](.\assets\101410264.bmp)

#### 数据流

查询驾驶舱库COC_SAFE_RISK_INDEX表，根据查询时间获取不同辖区的的各维度得分。 

## 3.依赖

### 数据库依赖表

| 表名                | 中文名         | 所属库 | 数据来源                            |
| ------------------- | -------------- | ------ | ----------------------------------- |
| COC_SAFE_RISK_INDEX | 安全风险指数表 | 管控   | 适配器urbantraffic-hiatmp-riskdrive |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

适配器：urbantraffic-hiatmp-riskdrive