# 隐患治理成效

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                        | 时间          |
| -------- | ------ | ------------------------------- | ------------- |
| 立项版本 | 张天禹 | 工作成效-展示隐患和事故统计数据 | 2022年7月12日 |
|          |        |                                 |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeHiddenNumCard: () => import("@/components/SafeHiddenNumCard/index.tsx")
```

![1657699125812](assets\1657699125812.png)

#### 隐患治理统计接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerStatic'
```

##### 数据流

COC_SAFE_HIDDEN_DANGER

#### 事故深度调查统计接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getAccidentAnalysisStatic'
```

##### 数据流

coc_safe_accident_analysis

### 二级弹窗

```javascript
SafeRoadHiddenDetail: () => import("../components/SafeHiddenNumCard/details/SafeRoadHiddenDetail")
```

![1657699149114](assets\1657699149114.png)

#### 按部门统计完成率列表接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerStaticByDept'
```

##### 数据流

COC_SAFE_HIDDEN_DANGER

```
SafeAccidentCheckDetail: () => import("../components/SafeHiddenNumCard/details/SafeAccidentCheckDetail")
```

![1657700690552](assets\1657700690552.png)

#### 事故深度调查统计接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getAccidentAnalysisList'
```

##### 数据流

coc_safe_accident_analysis

### 地图下钻

![1657700613113](assets\1657700613113.png)

#### 隐患地图详情接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerList'
```

#### 数据流

COC_SAFE_HIDDEN_DANGER

## 3.依赖

### 数据库依赖表

| 表名                       | 中文名 | 所属库 | 数据来源 |
| -------------------------- | ------ | ------ | -------- |
| coc_safe_accident_analysis |        |        |          |
| COC_SAFE_HIDDEN_DANGER     |        |        |          |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）