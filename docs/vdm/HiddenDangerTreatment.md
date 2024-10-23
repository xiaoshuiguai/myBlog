# 隐患治理

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述     | 时间          |
| -------- | ------ | ------------ | ------------- |
| 立项版本 | 赵大伟 | 展示隐患数据 | 2022年7月14日 |
|          |        |              |               |

## 2.页面及接口设计

### 一级组件

```javascript
HiddenDangerTreatment: () => import('@/components/HiddenDangerTreatMent'), // 隐患治理
```

![1657626653351](assets\1657626653351.png)

#### 获取隐患概况接口

```javascript
POST '/HiatmpPro/cov/riskManagement/getRiskManagementSurvey'
```

#### 获取区域风险企业接口

```javascript
POST '/HiatmpPro/cov/riskManagement/getAreaRiskManagement'
```



##### 数据流(TODO)

### 二级弹窗(TODO)

```javascript
HiddenDangerDetail: () => import('@/components/HiddenDangerTreatMent/details/HiddenDangerDetail'),// 车驾管大屏-源头监管-隐患下钻
```



#### 获取风险企业详情接口

```javascript
POST '/riskEnterprise/getRiskEnterpriseDetailList'
```

##### 数据流(TODO)

#### 

### 地图下钻

#### 接口

```javascript

```

#### 数据流

## 3.依赖

### 数据库依赖表

| 表名 | 中文名 | 所属库 | 数据来源 |
| ---- | ------ | ------ | -------- |
|      |        |        |          |

### 服务依赖

| 服务名 | 版本 | 备注 |
| ------ | ---- | ---- |
|        |      |      |

### 其他依赖（适配器/大数据/现场系统等）