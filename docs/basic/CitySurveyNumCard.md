# 城市概况

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人                     | 需求描述                   | 时间       |
| -------- | -------------------------- | -------------------------- | ---------- |
| 立项版本 | 前端：孟范超  后端：武晋先 | 城市人、车、路指标统计展示 | 2022/07/12 |
|          |                            |                            |            |

## 2.页面及接口设计

### 一级组件

```javascript
CitySurveyNumCard: () => import('@/components/CitySurveyNumCard'), // 城市概况
```



![1657607747280](assets\1675218731751.png)

#### 接口

```javascript
POST '/HiatmpPro/cov/city/getCityTotalNum' // 城市概况数据接口
```

#### 数据流

- **机动车保有量**：根据时间、状态统计VEHICLE表的数量

  ```
  
  ```

- **驾驶人保有量**：查下发库的DRIVINGLICENSE 表，发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），注册量（全部数据）数据进行统计。

- **路网长度**：根据bis_section数据统计路网长度

### 二级弹窗

#### 机动车保有量分析

![Image_20220712142710](assets\1675218768775.png)



##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleTendencyList' // 机动车保有量变化趋势
```

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleAnalyseList' // 机动车构成分析
```

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleThreeRateList' // 机动车三率
```

##### 数据流

- **机动车保有量变化趋势：**从VEHICLE表统计机动车保有量变化趋势、机动车构成、机动车三率

- **机动车构成分析：**根据时间、状态机动车VEHICLE表状态、号牌种类字段关联枚举表；使用性质为运营性质统计数量

```
FRM_CODE f
on trim(v.zt) = f.dmz
and f.xtlb = '00'
and f.dmlb = '1017'

--
FRM_CODE f
on trim(v.hpzl) = f.dmz
        and f.xtlb = '00'
        and f.dmlb = '1007'

--        
syxz in ('B', 'C', 'D', 'E', 'F', 'G', 'N', 'R', 'U')    
```

- **机动车三率：**根据VEHICLE表机动车状态统计机动车三率

#### 驾驶人保有量分析

![1657607522241](assets\1675218822483.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getDriverParcTendencyList' // 驾驶人保有量变化趋势
```

```javascript
POST '/HiatmpPro/cov/driver/getDriverAnalyseList' // 驾驶人构成分析
```

```javascript
POST '/HiatmpPro/cov/driver/getDriverThreeRateList' // 驾驶人三率
```

##### 数据流

- 查下发库的DRIVINGLICENSE 表，取最近12各月发证机关是`鲁B`的保有量（状态不是C|E|F|G），注销量（状态是G），注册量（全部数据）数据进行统计。

- 查下发库的DRIVINGLICENSE 表，根据字段统计1.年龄构成 2:驾龄构成 3:驾证类型 4.驾证状态。

- 查下发库的DRIVINGLICENSE 表，根据状态字段统计三率

#### 城市路网分析

![1657607581599](assets\1675218874624.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/road/getCityRoad' // 路网长度,快速路,主干路,次干路,支路统计 /道路级配合理性
```

##### 数据流

从BIS_SECTION统计路网数据

### 地图下钻

#### 辖区列表公用接口

```javascript
POST '/HiatmpPro/commond/common/getAreaList'
```

#### 机动车保有量变化趋势

![1657610670715](assets\1657610670715.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleNumByArea' // 区域机动车保有量详情
```

```javascript
POST '/HiatmpPro/cov/vehicle/getVehicleTendencyByArea' // 区域机动车保有量变化趋势
```

##### 数据流

根据时间、状态统计VEHICLE表的数量、注销量、新增量

#### 机动车构成分析

![1657612566298](assets\1657612566298.png)

![1657612604036](assets\1657612604036.png)

![1657612632971](assets\1657612632971.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getAreaVehicleAnalyseList' // 区域机动车构成分析
```

##### 数据流

根据时间、状态、行政区划统计机动车VEHICLE表的状态、类型、使用性质

#### 机动车三率

![1657612658917](assets\1657612658917.png)



##### 接口

```javascript
POST '/HiatmpPro/cov/vehicle/getAreaVehicleThreeRateList' // 区域机动车三率下钻
```

##### 数据流

根据时间、状态、行政区划统计机动车VEHICLE表机动车三率

#### 驾驶人保有量变化趋势

![1657614580480](assets\1657614580480.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getAreaDriverDateList'
```

##### 数据流

同【驾驶人保有量】【接口】【数据流】

#### 驾驶人构成分析

![1657618439143](assets\1657618439143.png)

![1657618531343](assets\1657618531343.png)

![1657619879436](assets\1657619879436.png)

![1657619907461](assets\1657619907461.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getAreaDriverAnalyseList'
```

##### 数据流

查下发库的DRIVINGLICENSE 表，根据字段统计1.年龄构成 2:驾龄构成 3:驾证类型 4.驾证状态。

#### 驾驶人三率

![1657616772849](assets\1657616772849.png)

##### 接口

```javascript
POST '/HiatmpPro/cov/driver/getAreaDriverThreeRateList'
```

##### 数据流

同【驾驶人保有量】【接口】【数据流】


## 3.依赖

### 数据库依赖表

| 表名           | 中文名   | 所属库   | 数据来源   |
| -------------- | -------- | -------- | ---------- |
| DRIVINGLICENSE | 驾驶人表 | 下发库   | 第三方库   |
| VEHICLE        | 机动车表 | 下发库   | 第三方数据 |
| FRM_CODE       | 字典表   | 下发库   | 第三方数据 |
| BIS_SECTION    | 路段表   | 三平台库 | 三平台     |
|                |          |          |            |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

无