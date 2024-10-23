# 风险驾驶人

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                                | 时间          |
| -------- | ------ | ------------------------------------------------------- | ------------- |
| 立项版本 | 张天禹 | 源头风控-展示风险驾驶人及逾期未换证、未审验、未学习数据 | 2022年7月12日 |
|          |        |                                                         |               |

## 2.页面及接口设计

### 一级组件

```javascript
 SafeSourceDriverDashBoard: () => import("@/components/SafeSourceDriverDashBoard/index.tsx") 
```

![img](assets\2634231539.bmp)

#### 获取风险驾驶人概况接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskDriverSurvey'
```

##### 数据流

根据下发库DRIVINGLICENSE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险驾驶人及变化比例。

#### 获取风险驾驶人三率信息接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskDriverThreeRateList'
```

##### 数据流

根据下发库DRIVINGLICENSE 表和管控库COC_SAFE_RISK_ITEM表联合统计驾驶人三率数据。

### 二级弹窗

```javascript
SafeHighRiskDriverDetail: () => import("../components/SafeSourceDriverDashBoard/details/SafeHighRiskDriverDetail")
```

#### 风险驾驶人历史趋势接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getRiskDriverTrend'
```

#### 风险驾驶人辖区排名接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getRiskDriverAreaList'
```

##### 详情

![img](assets\driver.bmp)

##### 辖区排名下钻

![img](assets\1278106896.bmp)

![img](assets\2381953264.bmp)

#### 获取风险驾驶人详情接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskDriverDetailList'
```

##### 数据流

根据下发库DRIVINGLICENSE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险驾驶人列表和各项评分。

### 地图下钻

逾期未换证地图详情

![img](assets\1452092029.bmp)

逾期审验地图详情

![img](assets\463034078.bmp)

逾期未学习地图详情

![img](assets\2953312734.bmp)

#### 获取区域风险驾驶人三率名称接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getAreaDriverThreeRateListSafe'
```

#### 数据流

根据下发库DRIVINGLICENSE 表来确定各区域驾驶人三率。

## 3.依赖

### 数据库依赖表

| 表名               | 中文名     | 所属库 | 数据来源                            |
| ------------------ | ---------- | ------ | ----------------------------------- |
| DRIVINGLICENSE     | 驾驶人表   | 下发库 | 第三方库                            |
| COC_SAFE_RISK_ITEM | 风险评分表 | 管控库 | 适配器urbantraffic-hiatmp-riskdrive |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

适配器：urbantraffic-hiatmp-riskdrive