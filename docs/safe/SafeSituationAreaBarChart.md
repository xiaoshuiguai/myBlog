# 安全风险区域排名

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
  SafeSituationAreaBarChart: () => import("@/components/SafeSituationAreaBarChart/index.tsx")
```

![img](.\assets\1287729615.bmp)

#### 接口:安全风险指数总分按部门排名，由高到低

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getRiskIndexByDept'
```

##### 数据流

查询驾驶舱库COC_SAFE_RISK_INDEX表，根据前端时间查询条件来获取对应的各辖区分数排名。

### 二级弹窗

无

### 地图下钻

无

## 3.依赖

### 数据库依赖表

| 表名                | 中文名         | 所属库 | 数据来源 |
| ------------------- | -------------- | ------ | -------- |
| COC_SAFE_RISK_INDEX | 安全风险指数表 | 管控   | 管控     |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

适配器：urbantraffic-hiatmp-riskdrive