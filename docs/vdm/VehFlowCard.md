# 车管业务

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述               | 时间      |
| -------- | ------ | ---------------------- | --------- |
| 立项版本 | 赵大伟 | 展示车管业务的办理情况 | 2022-7-14 |
|          |        |                        |           |

## 2.页面及接口设计

### 一级组件

```javascript
VehFlowCard: () => import('@/components/VehFlowCard'), // 车管业务  
```

![1657711845299](assets\1657711845299.png)

#### 获取车管概况接口

```javascript
POST '/HiatmpPro/cov/vehicle/manage/getVehicleManageSurvey'
```

##### 数据流

根据时间、统计VEH_FLOW表数据量；

VEH_FLOW的业务类型，根据字典表查询重点关注的业务量 

> frm_code t
> ​        where t.xtlb = '01'
> ​        and t.dmlb = '0006' and t.dmz in ('A','B','D','E','G','P','K')

### 二级弹窗

```javascript
vehFlowDetail: () => import("@/components/VehFlowCard/details/VehFlowDetail"), // 车驾管机动车下钻
```

![1657711902608](assets\1657711902608.png)

#### 获取车管业务办理趋势接口

```javascript
POST '/HiatmpPro/cov/vehicle/manage/getVehicleManageTendencyList'
```

##### 数据流

统计VEH_FLOW表每月数据量 

#### 获取各车辆类型的业务办理情况接口

```javascript
POST '/HiatmpPro/cov/vehicle/manage/getVehicleTypeList'
```

##### 数据流

根据VEH_FLOW表的hpzl号牌种类关联字典表,统计数量

> select * from frm_code f where f.xtlb = '00'
> ​        and f.dmlb = '1007'

### 地图下钻

#### 暂无

## 3.依赖

### 数据库依赖表

| 表名     | 中文名 | 所属库 | 数据来源 |
| -------- | ------ | ------ | -------- |
| VEH_FLOW |        |        |          |
| FRM_CODE |        |        |          |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）