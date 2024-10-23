# 专项整治行动

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                          | 时间          |
| -------- | ------ | --------------------------------- | ------------- |
| 立项版本 | 张天禹 | 工作成效-展示减量控大专项执法数据 | 2022年7月12日 |
|          |        |                                   |               |

## 2.页面及接口设计

### 一级组件

```javascript
SafeSpecialNumCard: () => import("@/components/SafeSpecialNumCard/index.tsx")
```

![1657765128179](assets\special1.bmp)

![1657765153963](assets\special3.bmp)

![1657765179239](assets\special2.bmp)

#### 减量控大接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerStatic'
```

##### 数据流

查询减量控大结果表jlkd_statistic_result，获取各辖违法数据展示

### 二级弹窗

```javascript
SafeReduceAndControlDetail: () => import("../components/SafeSpecialNumCard/details/SafeReduceAndControlDetail")
```

![1657702300769](assets\special4.bmp)

#### 减量控大接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerStatic'
```

##### 数据流

查询减量控大结果表jlkd_statistic_result，获取各辖违法数据展示

### 地图下钻

![1657702540324](assets\special5.bmp)

#### 减量控大接口

```javascript
POST '/HiatmpPro/cockpit/workResult/getHiddenDangerStatic'
```

#### 数据流

查询减量控大结果表jlkd_statistic_result，获取各辖违法数据展示

## 3.依赖

### 数据库依赖表

| 表名                  | 中文名         | 所属库         | 数据来源             |
| --------------------- | -------------- | -------------- | -------------------- |
| jlkd_illegal_type     | 违法类型配置表 | 减量控大数据库 | 减量控大适配器结果表 |
| jlkd_statistic_detail | 违法道路详情表 | 减量控大数据库 | 减量控大适配器结果表 |
| jlkd_statistic_result | 减量控大结果表 | 减量控大数据库 | 减量控大适配器结果表 |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit |      |      |

### 其他依赖（适配器/大数据/现场系统等）

减量控大适配器-QSYTaskAdapter

减量控大分析适配器jlkdAnalyseAdapter