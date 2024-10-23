# 机动车保有量业务

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述             | 时间      |
| -------- | ------ | -------------------- | --------- |
| 立项版本 | 赵大伟 | 展示机动车保有量信息 | 2022-7-14 |
|          |        |                      |           |

## 2.页面及接口设计

### 一级组件

```javascript
 VehFlowNumCard: () => import('@/components/VehFlowNumCard'), // 机动车保有量 
```

![1657711203447](assets/1657711203447.png)

#### 获取车管概况接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleSurvey'
```

##### 数据流

根据时间、状态统计VEHICLE表的数量、注销量、新增量

### 二级弹窗

```javascript
import VehicleParcDetail from '@/components/CitySurveyNumCard/details/VehicleParcDetail';
```

![1657779999991](assets\1657779999991.png)

#### 汽车保有量变化趋势接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleTendencyList'
```

##### 数据流

根据时间、状态统计机动车VEHICLE表的数量、注销量、新增量

#### 车辆状态接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleAnalyseList'
```

##### 数据流

根据时间、状态机动车VEHICLE表状态、号牌种类字段关联枚举表；使用性质为运营性质统计数量

> ```
> FRM_CODE f
> on trim(v.zt) = f.dmz
> and f.xtlb = '00'
> and f.dmlb = '1017'
> 
> --
> FRM_CODE f
> on trim(v.hpzl) = f.dmz
>         and f.xtlb = '00'
>         and f.dmlb = '1007'
> 
> --        
> syxz in ('B', 'C', 'D', 'E', 'F', 'G', 'N', 'R', 'U')        
> ```

#### 机动车两率接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleThreeRateList'
```

##### 数据流

根据机动车状态统计检验率和报废率

### 地图下钻

#### 获取区域驾驶人保有量等详情

![1657778857841](assets\1657778857841.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleNumByArea‘
```

##### 数据流

根据时间、状态、行政区划统计机动车VEHICLE表的数量、注销量、新增量

#### 获取区域机动车车辆状态、类型、使用性质数据

![1657778891473](assets\1657778891473.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getAreaVehicleAnalyseList’
```

##### 数据流

根据时间、状态、行政区划统计机动车VEHICLE表的状态

#### 获取区域机动车两率

![1657779166548](assets\1657779166548.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getAreaVehicleThreeRateList'
```

##### 数据流

根据时间、状态、行政区划统计机动车VEHICLE表的两率

## 3.依赖

### 数据库依赖表

| 表名     | 中文名   | 所属库 | 数据来源   |
| -------- | -------- | ------ | ---------- |
| VEHICLE  | 机动车表 | 下发库 | 第三方数据 |
| FRM_CODE | 字典表   | 下发库 | 第三方数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |
|                         |      |      |

### 其他依赖（适配器/大数据/现场系统等）