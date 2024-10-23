# 风险机动车

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                                | 时间          |
| -------- | ------ | ------------------------------------------------------- | ------------- |
| 立项版本 | 张天禹 | 源头风控-展示风险机动车及年审率、报废率、违法处理的数据 | 2022年7月12日 |
|          |        |                                                         |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeSourceVehDashBoard: () => import("@/components/SafeSourceVehDashBoard/index.tsx")
```

![1657679261106](assets\1657679261106.png)

#### 获取风险机动车概况接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskVehicleSurvey'
```

##### 数据流

根据下发库VEHICLE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆及变化比例。

#### 获取风险机动车三率接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskVehicleThreeRateList'
```

##### 数据流

根据下发库VEHICLE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆三率比例。

### 二级弹窗

高风险车详情

```javascript
SafeHighRiskVehDetail: () => import("../components/SafeSourceVehDashBoard/details/SafeHighRiskVehDetail")
```

#### 风险机动车历史趋势接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getRiskVehicleAreaList'
```

#### 风险机动车辖区排名接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getBlackLineDetailList'
```

##### 详情

![img](assets\veh.bmp)

辖区排名下钻

```javascript
SafeHighRiskVehDetail: () => import("../components/SafeSourceVehDashBoard/details/SafeHighRiskVehDetail")
```

![1657679722034](assets\1657679722034.png)

![img](assets\4271367378.bmp)

#### 风险机动车详情接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskVehicleDetailList'
```

##### 数据流

根据下发库VEHICLE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆列表详情。

### 地图下钻

![1657679504249](assets\1657679504249.png)

#### 地图风险车辆区域接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getAreaVehicleThreeRateListSafe'
```

#### 数据流

根据下发库VEHICLE 表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆及三率。

## 3.依赖

### 数据库依赖表

| 表名               | 中文名     | 所属库 | 数据来源                            |
| ------------------ | ---------- | ------ | ----------------------------------- |
| VEHICLE            | 驾驶人表   | 下发库 | 第三方库                            |
| COC_SAFE_RISK_ITEM | 风险评分表 | 管控库 | 适配器urbantraffic-hiatmp-riskdrive |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

适配器：urbantraffic-hiatmp-riskdrive