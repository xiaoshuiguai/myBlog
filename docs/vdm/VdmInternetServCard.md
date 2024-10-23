# 驾驶人保有量

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述               | 时间          |
| -------- | ------ | ---------------------- | ------------- |
| 立项版本 | 赵大伟 | 展示互联网服务相关数据 | 2022年7月11日 |
|          |        |                        |               |

## 2.页面及接口设计

### 一级组件

```javascript
VdmInternetServCard: () => import('@/components/VdmInternetServCard/index'), // 互联网服务

```

![1657787413713](assets\1657787413713.png)

#### 获取互联网服务概况接口

```javascript
POST '/HiatmpPro/cov/internet/service/getInternetServiceSurvey' 
```

##### 数据流

根据时间统计NET_SYS_USER表中对应数据计算注册量



#### 获取互联网构成分析数据接口

```javascript
POST '/HiatmpPro/cov/internet/service/getInternetAnalyseList' 
```

##### 数据流

根据时间统计VEH_FLOW、DRV_FLOW表中对应数据

> VEH_FLOW  v.glbm  管理部门限定为网络部门
>
> DRV_FLOW  v.glbm  管理部门限定为网络部门
>
> --热点业务
>
> frm_code t
> ​        where t.xtlb = '01'
> ​        and t.dmlb = '0006'



### 二级弹窗

```javascript
driverParcDetail: () => import('./CitySurveyNumCard/details/DriverParcDetail'), // 驾驶人保有量分析
```

![1657788607814](assets\1657788607814.png)

#### 获取业务办理量的变化趋势接口

```javascript
POST '/HiatmpPro/cov/internet/service/getInternetServiceTency'
```

##### 数据流

根据时间统计NET_SYS_USER表中对应数据计算注册量

## 3.依赖

### 数据库依赖表

| 表名                | 中文名                                                       | 所属库 | 数据来源 |
| ------------------- | ------------------------------------------------------------ | ------ | -------- |
| NET_SYS_USER        | 互联网用户信息表                                             | 下发库 | 第三方库 |
| NET_PRO_VEHDRV_FLOW | 互联网业务受理流水表（机动车驾驶人）--已不使用，使用下方表查询 | 下发库 | 第三方库 |
| DRV_FLOW            | 驾管                                                         | 下发库 | 第三方库 |
| VEH_FLOW            | 车管                                                         | 下发库 | 第三方库 |
| FRM_CODE            | 字典表                                                       | 下发库 | 第三方库 |

数据结构见：[数据结构](../script/xfk.md)

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）

暂无