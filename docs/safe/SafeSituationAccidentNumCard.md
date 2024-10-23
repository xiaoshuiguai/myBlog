# 月度事故态势

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                | 时间          |
| -------- | ------ | --------------------------------------- | ------------- |
| 立项版本 | 张天禹 | 安全态势-展示时间范围内事故数及伤亡人数 | 2022年7月12日 |
|          |        |                                         |               |

## 2.页面及接口设计

### 一级组件

```javascript
  SafeSituationAccidentNumCard: () => import("@/components/SafeSituationAccidentNumCard/index.tsx")
```

![img](assets\2678105693.bmp)

#### 事故统计接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getAccidentStatic'
```

##### 数据流

根据前端时间条件查询下发库acd_dutysimple和acd_file事故表的事故数及伤亡人数。

### 二级弹窗

```javascript
SafeSituationHisYearDetail: () => import("../components/SafeSituationAccidentNumCard/detail/SafeSituationHisYearDetail")
```



![img](assets\257334600.bmp)

#### 事故三年曲线接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getAccidentStaticByMonth'
```

##### 数据流

根据前端时间条件查询下发库acd_dutysimple和acd_file事故表的近三年分类事故数趋势。

### 地图下钻

![img](assets\37453693.bmp)

#### 事故月度统计接口

```javascript
POST '/HiatmpPro/cockpit/safeStatus/getAccidentStaticAll'
```

#### 数据流

根据前端时间条件查询下发库acd_dutysimple和acd_file事故表的各辖区的事故数及伤亡人数。

## 3.依赖

### 数据库依赖表

| 表名           | 中文名     | 所属库 | 数据来源 |
| -------------- | ---------- | ------ | -------- |
| acd_dutysimple | 简易事故表 | 下发库 | 第三方库 |
| acd_file       | 一般事故表 | 下发库 | 第三方库 |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

无