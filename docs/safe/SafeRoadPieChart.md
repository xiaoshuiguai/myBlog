# 事故道路类型分布

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
  SafeRoadPieChart: () => import("@/components/SafeRoadPieChart/index.tsx")
```

![1657697647080](assets\1657697647080.png)

#### 查看各道路类型的事故数据接口

```javascript
POST '/HiatmpPro/cockpit/roadriskcontrol/queryDataByType'
大数据：/acdserver/tag/getAnalyRetBySim
```

##### 数据流

查询下发库事故表acd_file和acd_dutysimple，根据道路类型(1高速、2国省道、3农村道路、4城市道路)，时间，事故数/死亡数进行多维度统计展示。

### 二级弹窗

暂无

### 地图下钻

暂无



## 3.依赖

### 数据库依赖表

| 表名        | 中文名           | 所属库 | 数据来源       |
| ----------- | ---------------- | ------ | -------------- |
| ACD_FILE_BL | 事故信息主表补录 | 管控   | 事故适配器同步 |
|             |                  |        |                |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

AccidentInfoSYNAdapter一般事故同步适配器

SimpleAccidentInfoSYNAdapter简易事故同步适配器

大数据服务