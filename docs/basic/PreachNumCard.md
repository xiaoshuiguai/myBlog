# 舆情量统计

## 1.基本信息

### 权限

无

### 扩展

无

### 历史记录

| 版本     | 开发人 | 需求描述                   | 时间      |
| -------- | ------ | -------------------------- | --------- |
| 立项版本 | 暂无   | 展示与车管所相关的舆情信息 | 2022-7-13 |
|          |        |                            |           |

## 2.页面及接口设计

### 一级组件

```javascript
  PreachNumCard: () => import("@/components/PreachCard/PreachNumCard")
```

![1657538194359](assets\1657538194359.png)

#### 接口

```javascript
POST '/HiatmpPro/cockpit/publicOpinion/getPreachNum'
```

#### 数据流

通过MQ、适配器等进行情报接入，数据最终流向PIS_INFO_BASE表，舆情分析时通过字段

```
			info_feature = '1'
			and info_stage != '06'
```

来筛选舆情信息

![管控情报数据流向图](assets/1234567.png)

### 二级弹窗

无

### 地图下钻

无

## 3.依赖

### 数据库依赖表

| 表名          | 中文名 | 所属库 | 数据来源 |
| ------------- | ------ | ------ | -------- |
| pis_info_base | 情报表 |        |          |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| HiATMP-PIS6.0               |      |      |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

BurstEventChoseAdapter适配器、现场根据122等平台情况开发的定制适配器