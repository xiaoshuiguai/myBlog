# 警情列表

## 1.基本信息

### 权限

通过警情处置流程、警情流转情况，当前登录装账号的岗位权限、所属部门共同决定警情是否可见、警情操作按钮是否可见

### 扩展

无

### 历史记录

| 版本     | 开发人                                             | 需求描述                     | 时间       |
| -------- | -------------------------------------------------- | ---------------------------- | ---------- |
| 立项版本 | 前端：荆征驿、孟范超  后端：孟范超、张国庆、武晋先 | 警情列表、详情展示及标签统计 | 2022/07/15 |
|          |                                                    |                              |            |

## 2.页面及接口设计

### 一级组件

```javascript
  PoliceCaseListCard: () => import("@/components/PoliceCaseListCard"), //警情列表组件
```

![1657689466726](assets\1657689466726.png)

#### 接口

```javascript
POST '/HiatmpPro/psd/policeCase/getImportPoliceCaseCount' // 警情标签统计
```

```javascript
POST '/HiatmpPro/psd/policeCase/list' // 警情列表
```

#### 数据流

##### 警情接入数据流

通过MQ、适配器等进行警情接入，数据最终流向PIS_INFO_BASE表，警情系统通过

```
info_feature = '0'
and b.info_stage in ('03', '04', '05')
```

来筛选已确认的快情报进行警情处置

![管控情报数据流向图](assets\1234567.png)

##### 标签生成数据流

警情通过以下逻辑生成警情标签

![1657762337553](assets\1657762337553.png)

### 二级弹窗

![1657689681490](assets\1657689681490.png)



#### 接口

```javascript
GET '/HiatmpPro/psd/policeCase/detail' // 警情详情查询
```

```javascript
GET '/HiatmpPro/psd/log/timeline' // 警情时间轴查询
```

```javascript
POST '/HiatmpPro/psd/policeCase/issue' // 警情下发
```

```javascript
POST '/HiatmpPro/psd/policeCase/sign' // 警情签收
```

```javascript
POST '/HiatmpPro/psd/policeCase/rollback' // 警情回退
```

```javascript
POST '/HiatmpPro/psd/policeCase/report' // 警情上报
```

```javascript
POST '/HiatmpPro/psd/policeCase/done' // 警情结案
```

```javascript
POST '/HiatmpPro/pisd/policecase/updatePoliceCaseDetail' // 警情补充
```

#### 数据流/设计逻辑

PSD_FLOW_NODE表+PSD_FLOW_EDGE表数据决定警情的处置流程

PSD_FLOW_INSTANCE表保存了每个警情在警情处置流程中流转的具体情况

通过警情处置流程、警情流转情况，当前登录装账号的岗位权限、所属部门共同决定警情是否可见、警情操作按钮是否可见

### 地图下钻

![1657689719090](assets\1657689719090.png)

![1657690526785](assets\1657690526785.png)

#### 接口

```javascript
POST '/HiatmpPro/commond/common/queryDevice' // 包围圈周边设备查询
```

```javascript
POST '/HiatmpPro/pisd/common/getPoliceListByCoordinate' // 包围圈内警力查询
```

```javascript
GET '/HiatmpPro/jiangmen/common/getSysParamsList' // 查询系统参数
```

#### 数据流

使用空间计算，查询包围圈范围内的设备、警力



## 3.依赖

### 数据库依赖表

| 表名                 | 中文名           | 所属库 | 数据来源                                         |
| -------------------- | ---------------- | ------ | ------------------------------------------------ |
| PIS_INFO_BASE        | 情报表           | 管控库 | 122平台通过适配器接入                            |
| PIS_POLICE_CASE_INFO | 警情详细信息     | 管控库 | 122平台通过适配器接入                            |
| PSD_POST             | 警情岗位表       | 管控库 | 系统默认数据                                     |
| PSD_ACTION           | 警情操作表       | 管控库 | 系统默认数据                                     |
| PSD_FLOW_NODE        | 警情处置流程节点 | 管控库 | 部署时根据现场警情处置过程修改                   |
| PSD_FLOW_EDGE        | 警情处置流程路线 | 管控库 | 部署时根据现场警情处置过程修改                   |
| PSD_FLOW_INSTANCE    | 警情处置流转实例 | 管控库 | 警情初始化、处置过程、警情同步时自动生成         |
| PIS_ORDER            | 警情指令流转表   | 管控库 | 下发、反馈指令时生成的数据                       |
| FACE_AREA            | 辖区表           | 管控库 | 系统默认数据，现场根据情况修改                   |
| FACE_DISTRICT_CENTER | 辖区中心点表     | 管控库 | 系统默认数据，现场根据情况修改                   |
| PSD_FLOW_LOG         | 警情处置过程记录 | 管控库 | 警情处置操作是生成的过程记录（包括系统自动操作） |
| PIS_FAST_OPER_LOG    | 警情指令流转记录 | 管控库 | 警情分拣、确认、指令流转的过程记录表             |
| GPS_DATA             | GPS表            | 管控库 | 现场GPS设备上传                                  |

### 

| 服务名                           | 版本 | 备注 |
| -------------------------------- | ---- | ---- |
| urbantraffic-hiatmp-base         |      |      |
| urbantraffic-hiatmp-psd          |      |      |
| urbantraffic-hiatmp-dao-pis      |      |      |
| urbantraffic-hiatmp-server-pis   |      |      |
| urbantraffic-hiatmp-dmr          |      |      |
| urbantraffic-hiatmp-dmr-schedule |      |      |
| HiATMP-PIS6.0                    |      |      |
|                                  |      |      |

### 其他依赖（适配器/大数据/现场系统等）

BurstEventChoseAdapter适配器、现场根据122等平台情况开发的定制适配器