# 执法态势分析

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
CitySurveyNumCard: () => import('@/components/EnforceSituationMixCard'), //  执法态势分析
```

![1675234053193](assets\1675234053193.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/situtation/getLawEnforcementInfo' // 执法态势分析查询
```

#### 数据流



### 二级弹窗

![1675234089477](E:\svn\HiATMP2022\LCP\trunk\docs\ds\详细设计\领导驾驶舱\docs\order\assets\1675234089477.png)

##### 接口

```javascript
POST '/HiatmpPro/ole/law/situtation/getLawEnforcementTrend' // 近12月变化趋势
```

```javascript
POST '/HiatmpPro/ole/law/situtation/getAreaIllegalList' // 各大队执法排名
```

##### 数据流



### 地图下钻

![1675234288920](assets\1675234288920.png)

##### 接口

同各大队执法排名

##### 数据流




## 3.依赖

### 数据库依赖表

| 表名          | 中文名           | 所属库 | 数据来源 |
| ------------- | ---------------- | ------ | -------- |
| vio_surveil   | 非现场违法表     | 下发库 | 六合一   |
| ILLEGAL_DATA  | 非现场违法记录表 | 管控库 | 设备     |
| vio_force     | 现场违法表       | 下发库 | 六合一   |
| vio_violation | 违法表           | 下发库 | 六合一   |



### 服务依赖

| 服务名                  | 版本         | 备注 |
| ----------------------- | ------------ | ---- |
| urbantraffic-hiatmp-ole | 1.0-SNAPSHOT |      |

### 其他依赖（适配器/大数据/现场系统等）

无