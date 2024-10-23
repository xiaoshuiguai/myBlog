
# 情报指挥 - 警情总数

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                   | 时间          |
| -------- | ------ | ------------------------------------------ | ------------- |
| 立项版本 | 卜景浩 | 展示本市122警情总量以及同比				 | 2022年7月12日 |
|          |        |                                            |               |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceCaseNumCard: () => import("@/components/PoliceCaseCommand/PoliceCaseNumCard/index")
```
![1234572.png](assets\1234572.png)

#### 警情总数接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getPoliceCaseAreaTotal' //警情总数接口
```

##### 数据流

查下管控库的 PIS_INFO_BASE 表，取122警情数据按前台条件进行统计。

### 二级弹窗

```javascript
policeCaseNumCardDetail: () => import("@/components/PoliceCaseCommand/PoliceCaseNumCard/detail/index")// 警情总量分析
```
![1234568.png](assets\1234568.png)

#### 警情量趋势接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getDateAnalysis'   
```

##### 数据流

查管控库的 PIS_INFO_BASE 表，取122警情数据根据大队部门、发生时间字段进行统计。

#### 高发单位分析接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getDeptAnalysis'   
```

##### 数据流

查管控库的 PIS_INFO_BASE 表，取122警情数据根据大队部门、发生时间字段进行统计。

#### 高发时段接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getTimeAnalysis'  
```

##### 数据流

查管控库的 PIS_INFO_BASE 表，取122警情数据根据发生时间字段进行统计。

### 二级下钻，单位详情

#### 获取区域大队122警情总量，一般、简易事故总量等详情
```javascript
policeCaseRoadSectionNumCard: () => import("@/components/PoliceCaseCommand/PoliceCasePointListCard/detail/PoliceCaseRoadSectionNumCard/index")
```

![1234573.png](assets\1234573.png)

##### 接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getDetailInfo‘
```

##### 数据流

查管控库的 PIS_INFO_BASE、RA_ACD_FILE 、RA_ACD_FILEHUMAN、RA_ACD_DUTYSIMPLE、RA_ACD_DUTYSIMPLEHUMAN 表，
取122警情和一般警情事故警情、简易事故警情数据，根据大队门、发生时间字段进行统计。

## 3.依赖

### 数据库依赖表

| 表名           | 中文名   | 所属库 | 数据来源 |
| -------------- | -------- | ------ | -------- |
| PIS_INFO_BASE | 情报表 | 管控库 | 第三方库 |
| RA_ACD_FILE | 一般事故表 | 管控库 | 第三方库 |
| RA_ACD_FILEHUMAN | 一般事故关联人员表 | 管控库 | 第三方库 |
| RA_ACD_DUTYSIMPLE | 简易程序事故表 | 管控库 | 第三方库 |
| RA_ACD_DUTYSIMPLEHUMAN | 简易程序事故关联人员表 | 管控库 | 第三方库 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）
| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| 122jj |      |   122交警警情接入适配器   |