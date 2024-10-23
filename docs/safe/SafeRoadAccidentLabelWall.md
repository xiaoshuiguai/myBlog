# 道路-事故特征分布

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                  | 时间          |
| -------- | ------ | ----------------------------------------- | ------------- |
| 立项版本 | 张天禹 | 道路风控-按各道路类型展示对应事故统计信息 | 2022年7月12日 |
|          |        |                                           |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeRoadAccidentLabelWall: () => import("@/components/SafeRoadAccidentLabelWall/index.tsx")
```

![1657697704097](assets\1657697704097.png)

#### 查看事故特征详情数据接口

```javascript
POST '/HiatmpPro/cockpit/roadriskcontrol/queryAccidentLabelDetail'
```

##### 数据流

根据大数据推送的事故标签和事故数据，计算风险标签，返回各纬度风险列表。

### 二级弹窗

```javascript
SafeAccidentLabelDetail: () => import("../components/SafeRoadAccidentLabelWall/details/SafeAccidentLabelDetail")
```

![1657697741063](assets\1657697741063.png)

#### 事故标签接口

```javascript
POST '/HiatmpPro/cockpit/roadriskcontrol/queryAccidentLabelDetail'，
大数据：/acdserver/tag/getAnalyRetBySim
```

##### 数据流

根据大数据推送的事故标签和事故数据，计算风险标签，返回各纬度风险列表。

### 地图下钻

暂无

## 3.依赖

### 数据库依赖表

| 表名        | 中文名           | 所属库 | 数据来源       |
| ----------- | ---------------- | ------ | -------------- |
| ACD_FILE_BL | 事故信息主表补录 | 管控   | 事故适配器同步 |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

AccidentInfoSYNAdapter一般事故同步适配器

SimpleAccidentInfoSYNAdapter简易事故同步适配器

大数据服务