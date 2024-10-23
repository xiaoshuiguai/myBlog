# 重点企业

## 1.基本信息

### 权限

无权限控制

### 扩展

无响应控制

### 历史记录

| 版本     | 开发人 | 需求描述               | 时间          |
| -------- | ------ | ---------------------- | ------------- |
| 立项版本 | 张天禹 | 展示车管所重点企业数据 | 2022年7月13日 |
|          |        |                        |               |

## 2.页面及接口设计

### 一级组件

```javascript
SourceSuperviseCompanyCard: () => import('@/components/SourceSuperviseCompanyCard'), // 重点企业
```

![1657674566621](assets\1657674566621.png)

#### 获取重点企业概况接口

```javascript
POST '/HiatmpPro/cov/keyEnterprise/getEnterpriseSurvey'
```

##### 数据流

​	根据客货运企业机动车信息表NET_TRFF_TRANSPCORP_VEH（筛选状态、使用性质、车辆类型、发证机关）获取企业编号，根据企业编号查询企业的风险NET_TRFF_TRANSPCORP 评估等级

### 二级弹窗

```javascript
drvHighRiskCompanyDetail: () => import("@/components/SourceSuperviseCompanyCard/details/DrvHighRiskCompanyDetail"),// 源头监管-重点企业
```

![1657674685540](assets\1657674685540.png)

#### 获取区域企业风险变化趋势接口

```javascript
POST '/HiatmpPro/cov/keyEnterprise/getEnterpriseTendencyList'
```

##### 数据流

同概况逻辑，取近12个月趋势

#### 获取区域企业类型分析接口

```javascript
POST '/HiatmpPro/cov/keyEnterprise/getAreaEnterpriseTypeList'
```

##### 数据流

根据客货运企业机动车信息表NET_TRFF_TRANSPCORP_VEH（筛选状态、使用性质、车辆类型、发证机关）获取企业编号，然后根据NET_TRFF_TRANSPCORP单位性质dwxz统计，使用字典表FRM_CODE的 xtlb='05' AND DMLB='0101'

#### 获取区域隐患企业列表接口

```javascript
POST '/HiatmpPro/cov/keyEnterprise/getHiddenTroubleEnterpriseList'
```

##### 数据流

根据客货运企业机动车信息表NET_TRFF_TRANSPCORP_VEH（筛选状态、使用性质、车辆类型、发证机关）获取企业编号，根据企业编号查询企业的风险NET_TRFF_TRANSPCORP

### 地图下钻

#### 暂无

## 3.依赖

### 数据库依赖表

| 表名                    | 中文名     | 所属库 | 数据来源   |
| ----------------------- | ---------- | ------ | ---------- |
| NET_TRFF_TRANSPCORP     | 企业表     | 下发库 | 第三方数据 |
| NET_TRFF_TRANSPCORP_VEH | 企业机动车 | 下发库 | 第三方数据 |
| FRM_CODE                | 字典表     | 下发库 | 第三方数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）