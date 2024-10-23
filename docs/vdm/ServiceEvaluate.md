# 服务评价

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述 | 时间 |
| -------- | ------ | -------- | ---- |
| 立项版本 | 张天禹 |          |      |
|          |        |          |      |

## 2.页面及接口设计

### 一级组件

```javascript
ServiceEvaluate: () => import('@/components/ServiceEvaluateCard')
```

![1657808647624](assets\1657808647624.png)

#### 获取服务评价概况接口

```javascript
POST '/HiatmpPro/cov/service/getServiceEvaluationSurvey'
```

##### 数据流

根据时间查询VEH_DRV_SATISFACTION中数量，根据字段判断是否有效，匹配枚举63004判断满意度



### 二级弹窗

![1657808730353](assets\1657808730353.png)

#### 获取满意度变化趋势接口

```javascript
POST '/HiatmpPro/cov/service/getServiceEvaluationTrend'
```

##### 数据流

根据时间查询VEH_DRV_SATISFACTION中数量，根据字段判断是否有效，匹配枚举63004判断满意度进而统计趋势

#### 获取满意度构成分析

```javascript
POST '/HiatmpPro/cov/service/getServiceEvaluationAnalyseList'
```

##### 数据流

根据时间查询VEH_DRV_SATISFACTION中数量，根据字段判断是否有效，匹配枚举63004判断满意度进而统计满意度构成

#### 获取分所不满意度占比分布

```javascript
POST '/HiatmpPro/cov/service/getDissatisfactionByStation'
```

##### 数据流

根据时间查询VEH_DRV_SATISFACTION中数量，根据字段判断是否有效，部门编码、匹配枚举63004判断满意度进而统计分所占比

#### 获取不满意业务列表

```javascript
POST '/HiatmpPro/cov/service/getServiceEvaluationByPerson'
```

##### 数据流

根据时间查询VEH_DRV_SATISFACTION中数量，根据字段判断是否有效，部门编码、匹配枚举63004判断满意度进而统计各分所情况

### 地图下钻

![1657808765334](assets\1657808765334.png)

#### 接口

```javascript

```

#### 数据流

## 3.依赖

### 数据库依赖表

| 表名                 | 中文名                 | 所属库 | 数据来源           |
| -------------------- | ---------------------- | ------ | ------------------ |
| VEH_DRV_SATISFACTION | 满意度表               | 管控库 | 第三方数据批量导入 |
| enum_type            | 枚举表（63004:满意度） | 管控库 | 脚本导入           |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |
|                         |      |      |

### 其他依赖（适配器/大数据/现场系统等）