# 今日警情数量

## 1.基本信息

### 权限

通过警情处置流程、警情流转情况，当前登录装账号的岗位权限、所属部门共同决定警情是否可见，对当前账号能看到的警情进行数量统计

### 扩展

暂无可传参数进行样式展示控制

### 历史记录

| 版本     | 开发人                     | 需求描述                                      | 时间       |
| -------- | -------------------------- | --------------------------------------------- | ---------- |
| 立项版本 | 前端：荆征驿  后端：孟范超 | 对122平台等接入的快情报（警情）进行展示、处置 | 2022/07/13 |
|          |                            |                                               |            |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceCaseLineCard: () => import("@/components/PoliceCaseLineCard"), //今日警情
```

![1657674748319](assets\1657674748319.png)

#### 接口

```javascript
GET '/HiatmpPro/psd/statistics/today' // 今日警情统计查询
```

#### 数据流

通过MQ、适配器等进行警情接入，数据最终流向PIS_INFO_BASE表，警情系统通过

```
info_feature = '0'
and b.info_stage in ('03', '04', '05')
```

来筛选已确认的快情报进行警情处置

![管控情报数据流向图](assets/1234567.png)

### 二级弹窗

![1675231941894](assets\1675231941894.png)

#### 接口

```javascript
GET '/HiatmpPro/psd/statistics/trend' // 警情变化趋势
```

```javascript
GET '/HiatmpPro/psd/pureStatistics/deptRank' // 警情部门排名
```

```javascript
GET '/HiatmpPro/psd/statistics/type' // 警情类型统计
```

#### 数据流

从pis_info_base表进行数据统计

### 地图下钻

![1675232210782](assets\1675232210782.png)

#### 接口

```javascript
GET '/HiatmpPro/psd/pureStatistics/deptRank' // 警情部门排名
```

#### 数据流

从pis_info_base表对各部门警情数量分类型进行统计。

## 3.依赖

### 数据库依赖表

| 表名                 | 中文名         | 所属库 | 数据来源                       |
| -------------------- | -------------- | ------ | ------------------------------ |
| PIS_INFO_BASE        | 情报表         | 管控库 | 122平台通过适配器接入          |
| PIS_ORDER            | 警情指令流转表 | 管控库 | 下发、反馈指令时生成的数据     |
| face_area            | 辖区表         | 管控库 | 系统默认数据，现场根据情况修改 |
| FACE_DISTRICT_CENTER | 辖区中心点表   | 管控库 | 系统默认数据，现场根据情况修改 |
| POLICE               | 警员表         | 管控库 | 基础平台维护的警员信息         |
| DEPARTMENT           | 部门表         | 管控库 | 基础平台维护的部门信息         |
| EQUIPMENT_INFO       | 设备信息表     | 管控库 | 基础平台维护的设备信息         |
| MONITOR_POINT        | 设备安装点表   | 管控库 | 基础平台维护的设备安装点信息   |
|                      |                |        |                                |

### 服务依赖

| 服务名                      | 版本 | 备注 |
| --------------------------- | ---- | ---- |
| urbantraffic-hiatmp-base    |      |      |
| urbantraffic-hiatmp-dao-pis |      |      |
| HiATMP-PIS6.0               |      |      |

### 其他依赖（适配器/大数据/现场系统等）

BurstEventChoseAdapter适配器、现场根据122等平台情况开发的定制适配器