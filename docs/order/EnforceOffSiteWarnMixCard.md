# 非现场执法异常分析

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人                     | 需求描述 | 时间       |
| -------- | -------------------------- | -------- | ---------- |
| 立项版本 | 前端：孟范超  后端：武晋先 |          | 2022/07/12 |
|          |                            |          |            |

## 2.页面及接口设计

### 一级组件

```javascript
EnforceOffSiteWarnMixCard: () => import('@/components/EnforceOffSiteWarnMixCard'), //  非现场执法异常分析
```

![1675243733552](assets\1675243733552.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/process/getIllegalWarningTotal' // 今日预警统计
```

```javascript
POST '/HiatmpPro/ole/law/process/getIllegalChange'  // 预警列表
```

#### 数据流



### 二级弹窗

![1675244046472](assets\1675244046472.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/process/getIllegalChangeWindow' // 查询预警详情
```

```javascript
POST '/HiatmpPro/pisd/common/getPoliceListByCoordinate' // 查询周边警力
```

```javascript
POST '/HiatmpPro/commond/common/queryDevice' // 查询周边设备
```

#### 数据流




## 3.依赖

### 数据库依赖表

| 表名           | 中文名       | 所属库 | 数据来源 |
| -------------- | ------------ | ------ | -------- |
| vio_surveil    | 非现场违法表 | 下发库 | 六合一   |
| illegal_data   | 非现场违法表 | 管控库 | 六合一   |
| equipment_info | 设备表       | 管控库 | 实施维护 |
| monitor_point  | 点位表       | 管控库 | 实施维护 |

### 服务依赖

| 服务名                  | 版本         | 备注 |
| ----------------------- | ------------ | ---- |
| urbantraffic-hiatmp-ole | 1.0-SNAPSHOT |      |

### 其他依赖（适配器/大数据/现场系统等）

无