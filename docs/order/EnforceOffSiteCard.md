# 非现场执法

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
EnforceOffSiteCard: () => import('@/components/EnforceOffSiteCard'), // 非现场执法
```

![1675234948566](assets\1675234948566.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/offsite/getCaptureAndEquipment' // 
```

```javascript
POST '/HiatmpPro/ole/law/offsite/getAuditInfoAndResult' //
```

#### 数据流



### 二级弹窗

![1675235477843](assets\1675235477843.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/offsite/getIllegalTrend' // 非现场执法变化趋势分析
```

```javascript
POST '/HiatmpPro/ole/law/offsite/getIllegalPoint' // 违法高发点位TOP5
```

```javascript
POST '/HiatmpPro/ole/law/offsite/getTypeOfCapture' //重点违法类型分析
```

```javascript
POST '/HiatmpPro/ole/law/offsite/getCaptureTypeNum' //违法抓拍来源分析
```

```javascript
POST '/HiatmpPro/ole/law/offsite/getDeptOfCapture' //各大队执法排名
```

#### 数据流



### 地图下钻

![1675237356090](assets\1675237356090.png)

#### 接口

同各大队执法排名

#### 数据流




## 3.依赖

### 数据库依赖表

| 表名           | 中文名       | 所属库 | 数据来源 |
| -------------- | ------------ | ------ | -------- |
| vio_surveil    | 非现场违法表 | 下发库 | 六合一   |
| illegal_data   | 非现场记录表 | 管控库 | 设备上传 |
| equipment_info | 设备表       | 管控库 | 实施维护 |
| monitor_point  | 点位表       | 管控库 | 实施维护 |

### 服务依赖

| 服务名                  | 版本         | 备注 |
| ----------------------- | ------------ | ---- |
| urbantraffic-hiatmp-ole | 1.0-SNAPSHOT |      |

### 其他依赖（适配器/大数据/现场系统等）

无