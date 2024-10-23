#  车辆查验检验业务

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述                 | 时间      |
| -------- | ------ | ------------------------ | --------- |
| 立项版本 | 赵大伟 | 展示车辆检验业务相关数据 | 2022-7-14 |
|          |        |                          |           |

## 2.页面及接口设计

### 一级组件

```javascript
VehCheckCard: () => import('@/components/VehCheckCard'), // 车辆检测业务
```

![1657781898528](assets\1657781898528.png)

#### 获取车辆检测概况接口

```javascript
POST '/HiatmpPro/cov/vehicle/test/getVehicleTestSurvey'
```

##### 数据流

通过veh_check表的时间和检验结果（jyjg）判断合格率，参加单位（cjdw）判断查验量

> select * from frm_social_dept d where d.jglx='14' --单位

### 二级弹窗

```javascript
vehCheckDetail: () => import("@/components/VehCheckCard/details/VehCheckDetail"), // 车驾管车辆检测下钻
```

![1657781997054](assets\1657781997054.png)

#### 获取机动车审验业务办理趋势接口

```javascript
POST '/HiatmpPro/cov/vehicle/test/getVehicleTestTendencyList'
```

##### 数据流

通过veh_check表的时间和检验结果（jyjg）判断合格率统计12月数据趋势

#### 获取各车辆类型的业务办理情况接口

```javascript
POST '/HiatmpPro/cov/vehicle/test/getVehicleTestTypeList'
```

##### 数据流

通过veh_check的xh与车辆表xh关联，判断统计车辆类型



#### 获取监测站的合格率和检验率接口

```javascript
POST '/HiatmpPro/cov/vehicle/test/getVehicleTestByMonitor'
```

##### 数据流

通过veh_check参加单位（cjdw）统计

> select * from frm_social_dept d where d.jglx='14' --单位

#### 获取查验员的合格率和检验率接口

```javascript
POST '/HiatmpPro/cov/vehicle/test/getVehicleTestByInspector'
```

##### 数据流

通过veh_check经办人（jbr）统计检验员数据

### 地图下钻

暂无

## 3.依赖

### 数据库依赖表

| 表名            | 中文名           | 所属库 | 数据来源   |
| --------------- | ---------------- | ------ | ---------- |
| VEH_CHECK       | 检验信息历史表   | 下发库 | 第三方数据 |
| FRM_SOCIAL_DEPT | 社会化机构部门表 | 下发库 | 第三方数据 |
| VEHICLE         | 机动车表         | 下发库 | 第三方数据 |
| FRM_CODE        | 字典表           | 下发库 | 第三方数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）