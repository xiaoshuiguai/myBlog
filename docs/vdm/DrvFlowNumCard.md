# 驾管业务

## 1.基本信息

### 权限

无相关权限设计

### 扩展

无相关扩展参数设计

### 历史记录

| 版本     | 开发人 | 需求描述                                                     | 时间 |
| -------- | ------ | ------------------------------------------------------------ | ---- |
| 立项版本 | 赵大伟 | 1.默认展示驾管业务办理总量、同比；支持下钻;<br/>2.默认展示按业务类型办理量分析，包括业务名称、办理数量。支持下钻，点击某一类业务，地图展示该业务各分所办理数量、排名、同比、人均办理量、满意度 |      |
|          |        |                                                              |      |

## 2.页面及接口设计

### 一级组件

```javascript
   DrvFlowNumCard: () => import('@/components/DrvFlowNumCard'), // 驾驶人保有量
```

![1657623959223](assets\1657623959223.png)

#### 获取驾管概况接口

```javascript
POST '/HiatmpPro/cov/driver/manage/getDriverManageSurvey'
```

##### 数据流

根据时间查询DRV_FLOW表统计办理量

根据枚举统计各业务办理情况

> --统计业务类型 
>
> frm_code t
> ​        where t.xtlb = '02'
> ​        and t.dmlb = '0008'

### 二级弹窗

```javascript
drvFlowDetail: () => import('@/components/DrvFlowCard/details/DrvFlowDetail'), // 驾管业务类型下钻
```

![1657624125496](assets\1657624125496.png)

#### 获取驾管业务办理趋势接口

```javascript
POST '/HiatmpPro/cov/driver/manage/getDriverManageTendencyList'
```

##### 数据流

根据时间查询DRV_FLOW表统计近1年办理趋势

#### 获取驾管分所数据接口

```javascript
POST '/HiatmpPro/cov/driver/manage/getAreaDriverManageList'
```

##### 数据流

根据时间，管理部门查询DRV_FLOW表统计办理量

#### 按驾驶证类型业务办理量接口

```javascript
POST '/HiatmpPro/cov/driver/manage/getDriverLicenseTypeList'
```

##### 数据流

根据时间查询DRV_FLOW准驾车型字段统计

### 地图下钻

![1657624377672](assets\1657624377672.png)

#### 获取驾管分所数据接口

```javascript
POST '/HiatmpPro/cov/driver/manage/getAreaTypeDriverManageList'
```

##### 数据流

根据时间，管理部门，及枚举表查询DRV_FLOW表统计

## 3.依赖

### 数据库依赖表

| 表名           | 中文名         | 所属库 | 数据来源   |
| -------------- | -------------- | ------ | ---------- |
| drv_flow       | 驾管业务流水表 | 下发库 | 第三方数据 |
| frm_code       | 字典表         | 下发库 | 第三方数据 |
| drv_army_check | 驾管军警换证表 | 下发库 | 第三方数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |
|                         |      |      |

### 其他依赖（适配器/大数据/现场系统等）