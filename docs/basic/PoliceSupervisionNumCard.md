# 警务监管

## 1.基本信息

### 权限

暂无权限控制

### 扩展

无

### 历史记录

| 版本     | 开发人                     | 需求描述                 | 时间       |
| -------- | -------------------------- | ------------------------ | ---------- |
| 立项版本 | 前端：孟范超  后端：武晋先 | 预警总体统计及各类型统计 | 2022/07/14 |
|          |                            |                          |            |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceSupervisionNumCard: 
	() => import('@/components/PoliceSupervisionNumCard'), // 警务监管
```

![1657538168263](assets\1657538168263.png)

#### 接口

```javascript
POST '/HiatmpPro/psa/getWarnNumByDeptNew'
```

```javascript
POST '/HiatmpPro/psa/getWarnItemListByDeptNew'
```

#### 数据流



### 二级弹窗

无

### 地图下钻

无

## 3.依赖

### 数据库依赖表

| 表名                  | 中文名        | 所属库 | 数据来源    |
| --------------------- | ------------- | ------ | ----------- |
| department            | 部门表        | 管控   | BSP警员管理 |
| psa_monitor_info      | 监管项/点信息 | 管控   |             |
| psa_monitor_exception | 预警信息表    | 管控   |             |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）