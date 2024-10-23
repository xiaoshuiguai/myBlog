# 勤务监督

## 1.基本信息

### 权限

根据当前登录账号所属部门进行数据展示

### 扩展

无

### 历史记录

| 版本     | 开发人                    | 需求描述                                                     | 时间       |
| -------- | ------------------------- | ------------------------------------------------------------ | ---------- |
| 立项版本 | 前端：孟范超 后端：武晋先 | 包括【到勤情况】、【管事情况】、【勤务考核】三部分。<br>【到勤情况】展示迟到、早退、脱岗、旷工数量；<br/>【管事情况】九宫格展示各项管事指标，点击每项指标在地图弹出各辖区指标展示；<br/>【勤务考核】地图弹出各辖区迟到、早退、脱岗、矿工。 | 2022/07/14 |
|          |                           |                                                              |            |

## 2.页面及接口设计

### 一级组件

```javascript
  DutySuperviseNumCard: () => import('@/components/DutySuperviseNumCard'), // 勤务监督
```

![1657537124058](assets\1657537124058.png)

#### 接口

```javascript
POST '/HiatmpPro/cockpit/supervise/getDutySuperviseNum' // 勤务监督 数量统计
```

```javascript
POST '/HiatmpPro/cockpit/supervise/getDutySuperviseAverageList' // 各指标平均值统计
```

#### 数据流



### 二级弹窗

无

### 地图下钻

#### 勤务考核

```javascript
AreaDetailUtil.openLayer({detailItems: [DETAIL_ITEM_KEY.DUTY_SUPERVISE_NUM]})
```

![1657763688685](assets\1657763688685.png)

##### 接口

```javascript
POST '/HiatmpPro/cockpit/supervise/getDutySuperviseNumAreaList'
```

##### 数据流



#### 管事指标

```javascript
AreaDetailUtil.openLayer({detailItems: [DETAIL_ITEM_KEY.DUTY_SUPERVISE_AVERAGE]})
```

![1657766888990](assets\1657766888990.png)

##### 接口

```javascript
POST '/HiatmpPro/cockpit/supervise/getDutySuperviseAverageAreaList'
```

##### 数据流



## 3.依赖

### 数据库依赖表

| 表名                     | 中文名         | 所属库 | 数据来源                        |
| ------------------------ | -------------- | ------ | ------------------------------- |
| police                   | 警员表         | 管控   | BSP警员管理                     |
| department               | 部门表         | 管控   | BSP部门管理                     |
| dm_position              | 岗位信息管理表 | 管控   |                                 |
| dm_deploy                | 岗位排班表     | 管控   |                                 |
| dm_comprehensive_monitor | 综合监控表     | 管控   |                                 |
| dm_deploy_police         | 警力安排表     | 管控   |                                 |
| dm_param_value           | 参数管理设置表 | 管控   |                                 |
| dm_param_define          | 参数管理定义表 | 管控   |                                 |
| dm_police_case           | 警情考核接入表 | 管控   |                                 |
| workloadsource           | 执法工作记录表 | 管控   | 数据来源 1六合一库；2执法记录仪 |

### 服务依赖

| 服务名 | 版本 | 备注 |
| ------ | ---- | ---- |
|        |      |      |

### 其他依赖（适配器/大数据/现场系统等）