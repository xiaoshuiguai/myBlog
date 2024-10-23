# 酒醉驾违法查处

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
CheckDrinkIllegalCard: () => import('@/components/CheckDrinkIllegalCard'), // 酒醉驾违法查处
```

![1658142712950](assets\1658142712950.png)

#### 接口

```javascript
POST /HiatmpPro/cockpit/workResult/getForceWork 
```

### 二级弹窗

### 地图下钻

![1675253061091](assets\1675253061091.png)

#### 辖区列表公用接口

```javascript
POST /HiatmpPro/commond/common/getAreaList
```

##### 




## 3.依赖

### 数据库依赖表

| 表名                 | 中文名         | 所属库 | 数据来源     |
| -------------------- | -------------- | ------ | ------------ |
| CKPT_OLE_JLKD_RESULT | 减量控大结果表 | 管控库 | 下发库违法表 |
|                      |                |        |              |

### 服务依赖

| 服务名                  | 版本         | 备注 |
| ----------------------- | ------------ | ---- |
| urbantraffic-hiatmp-ole | 1.0-SNAPSHOT |      |

### 其他依赖（适配器/大数据/现场系统等）

jlkdAnalyseAdapter   

QSYTaskAdapter