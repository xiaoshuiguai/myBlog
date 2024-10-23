# 图层

## 1.基本信息

### 权限

暂无权限控制

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人 | 需求描述 | 时间 |
| -------- | ------ | -------- | ---- |
| 立项版本 |        |          |      |
|          |        |          |      |

## 2.页面及接口设计

### 一级组件

```javascript
  
```

![1657538067971](assets\1657538067971.png)

获取当前展示的图层接口

```javascript
POST '/HiatmpPromaplayer/getMaplayerInfo'
```

向后台传入showPage参数，后台通过showPage返回当前页面要展示哪些图层。



然后通过OPERATION_TYPE控制返回的数据是通过sql展示【OPERATION_TYPE=0】，还是maplayer内部接口展示【OPERATION_TYPE=1】，还是通过地图图层展示【OPERATION_TYPE=2】。





#### 路况接口

```javascript
POST '/HiatmpPro/maplayer/getMaplayerData'
```

##### 数据流

调用接口后

后台获取表face_maplayer_base_info的路况数据，OPERATION_TYPE为3，为WMS图层，返回WMSid作为maplayerCode；

前台当maplayerCode不为空时，请求地图自带接口201（maplayerCode的值）图层。

201图层当为图吧地图引擎接口时为请求数据展示。其他地图引擎为geoserver发布图层。核心取的数据为：

```sql
select m.positions,t.status
  from monitor_section_positions m
  left join  section_status_present t
    on m.sectionid = t.section_id
```

#### GPS接口

```javascript
POST '/HiatmpPro/maplayer/getMaplayerData'
```

##### 数据流

调用接口后

后台获取表face_maplayer_base_info的03数据，OPERATION_TYPE为0，为sql方法queryDataBySql，根据表的Sql_Content查询数据，返回前台；

前台，根据数据进行展示，并通过初始化时的

201图层当为图吧地图引擎接口时为请求数据展示。其他地图引擎为geoserver发布图层。核心取的数据为：

```sql
select m.positions,t.status
  from monitor_section_positions m
  left join  section_status_present t
    on m.sectionid = t.section_id
```





### 二级弹窗

#### XXX接口

```javascript

```

##### 数据流

#### 

### 地图下钻

#### 接口

```javascript

```

#### 数据流

## 3.依赖

### 数据库依赖表

| 表名 | 中文名 | 所属库 | 数据来源 |
| ---- | ------ | ------ | -------- |
|      |        |        |          |

### 服务依赖

| 服务名 | 版本 | 备注 |
| ------ | ---- | ---- |
|        |      |      |

### 其他依赖（适配器/大数据/现场系统等）