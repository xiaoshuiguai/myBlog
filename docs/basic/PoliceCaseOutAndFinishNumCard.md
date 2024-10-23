
# 报指挥 - 平均出警时长、办结率

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述                                   | 时间          |
| -------- | ------ | ------------------------------------------ | ------------- |
| 立项版本 | 卜景浩 | 展示本市122警情平均出警时长以及办结率				 | 2022年7月12日 |
|          |        |                                            |               |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceCaseOutAndFinishNumCard: () => import("@/components/PoliceCaseCommand/PoliceCaseOutAndFinishNumCard/index")
```

![1234570.png](assets\1234570.png)

#### 平均出警时长、办结率接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getAvgAnalysis' //平平均出警时长、办结率接口
```


##### 数据流

查下管控库的 PIS_INFO_BASE 表，取122警情数据按前台条件进行统计。

### 二级弹窗

```javascript
policeCaseOutAndFinishNumCardDetail: () => import("@/components/PoliceCaseCommand/PoliceCaseOutAndFinishNumCard/detail/index")// 平均出警时长、办结率
```

#### 平均出警时长分析接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getAvgTimeAnalysis'   
```
![1234571.png](assets\1234571.png)

##### 数据流

查管控库的 PIS_INFO_BASE、CASE_REPLY_INFO 表，取122警情数据根据情报表大队部门、发生时间字段，以及信息反馈表反馈类型进行统计。

#### 平均办结率分析接口

```javascript
POST '/HiatmpPro/jiangmen/policeCase/getFinishRateAnalysis'   
```
![1234569.png](assets\1234569.png)

##### 数据流

查管控库的 PIS_INFO_BASE 表，取122警情数据根据大队部门、发生时间、办结状态字段进行统计。


## 3.依赖

### 数据库依赖表

| 表名           | 中文名   | 所属库 | 数据来源 |
| -------------- | -------- | ------ | -------- |
| PIS_INFO_BASE | 情报表 | 管控库 | 第三方库 |
| CASE_REPLY_INFO | 122警情处理反馈信息表 | 管控库 | 第三方库 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cockpit-jiangmen |      |      |

### 其他依赖（适配器/大数据/现场系统等）
| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| 122PoliceCaseAdapter |      |   122交警警情反馈信息接入适配器   |