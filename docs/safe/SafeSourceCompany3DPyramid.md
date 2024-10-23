# 风险机企业

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                        | 时间          |
| -------- | ------ | ------------------------------- | ------------- |
| 立项版本 | 张天禹 | 源头风控-展示风险企业及详情数据 | 2022年7月12日 |
|          |        |                                 |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeSourceCompany3DPyramid: () => import("@/components/SafeSourceCompany3DPyramid/index.tsx")
```

![img](assets\1828541294.bmp)

#### 获取风险企业概况接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskEnterpriseSurvey'
```

##### 数据流

根据下发库NEt_Trff_Transpcorp_veh表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆及变化比例。

### 二级弹窗

```javascript
SafeHighRiskVehDetail: () => import("../components/SafeSourceVehDashBoard/details/SafeHighRiskCompanyEcharts")
```

#### 风险企业历史趋势接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getRiskEnterpriseTrend'
```

#### 风险企业辖区排名接口

```javascript
POST '/HiatmpPro/cov/riskEnterprise/getRiskEnterpriseAreaList'
```

![img](assets\company.bmp)

##### 辖区排名下钻

```javascript
SafeHighRiskVehDetail: () => import("../components/SafeSourceVehDashBoard/details/SafeHighRiskVehDetail")
```

![img](assets\2317677191.bmp)

![1657681062936](assets\1657681062936.png)

#### 风险企业详情接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getRiskEnterpriseDetailList'
```

##### 数据流

根据下发库NEt_Trff_Transpcorp_veh表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆列表详情。

### 地图下钻

![1657681084470](assets\1657681084470.png)

#### 地图企业辖区接口

```javascript
POST '/HiatmpPro/cov/riskDriver/getAreaRiskEnterpriseList'
```

#### 数据流

根据下发库NEt_Trff_Transpcorp_veh表和管控库COC_SAFE_RISK_ITEM表联合统计高风险车辆及三率。

## 3.依赖

### 数据库依赖表

| 表名                    | 中文名     | 所属库 | 数据来源                            |
| ----------------------- | ---------- | ------ | ----------------------------------- |
| NEt_Trff_Transpcorp_veh | 企业表     | 下发库 | 第三方库                            |
| COC_SAFE_RISK_ITEM      | 风险评分表 | 管控库 | 适配器urbantraffic-hiatmp-riskdrive |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

适配器：urbantraffic-hiatmp-riskdrive