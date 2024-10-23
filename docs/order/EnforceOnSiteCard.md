# 现场执法

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
EnforceOnSiteCard: () => import('@/components/EnforceOnSiteCard'), // 现场执法
```

![1675234462024](assets\1675234462024.png)

#### 接口

```javascript
POST '/HiatmpPro/ole/law/site/getSiteNumTotal' // 现场执法数量统计
```

```javascript
POST '/HiatmpPro/ole/law/site/getSiteRankNumTotal' // 现场执法特征分析
```



#### 数据流



### 二级弹窗

![1675234614361](assets\1675234614361.png)

##### 接口

```javascript
POST '/HiatmpPro/ole/law/site/getSiteTrend' // 现场执法趋势分析
```

```javascript
POST '/HiatmpPro/ole/law/site/getTypeOfSite' // 违法高发类型分析
```

```javascript
POST '/HiatmpPro/ole/law/site/getDeptOfSite' // 各大队执法排名
```

##### 数据流



### 地图下钻

![1675234871510](assets\1675234871510.png)

#### 接口

同各大队执法排名

#### 数据流




## 3.依赖

### 数据库依赖表

| 表名          | 中文名     | 所属库 | 数据来源 |
| ------------- | ---------- | ------ | -------- |
| vio_force     | 现场违法表 | 下发库 | 六合一   |
| vio_violation | 违法表     | 下发库 | 六合一   |

### 服务依赖

| 服务名                  | 版本        | 备注 |
| ----------------------- | ----------- | ---- |
| urbantraffic-hiatmp-ole | 1.0-SNAPSHO |      |

### 其他依赖（适配器/大数据/现场系统等）

无