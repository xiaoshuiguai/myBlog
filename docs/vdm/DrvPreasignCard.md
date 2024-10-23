# 驾考业务组件

## 1.基本信息

### 权限

暂无

### 扩展

暂无

### 历史记录

| 版本     | 开发人 | 需求描述             | 时间          |
| -------- | ------ | -------------------- | ------------- |
| 立项版本 | 赵大伟 | 展示驾考相关业务信息 | 2022年7月13日 |
|          |        |                      |               |

## 2.页面及接口设计

### 一级组件

```javascript
DrvPreasignCard: () => import('@/components/DrvPreasignCard'), // 驾考业务
```

![1657625431698](assets\1657625431698.png)

#### 获取驾考概况接口

```javascript
POST '/HiatmpPro/cov/driver/test/getDriverTestSurvey'
```

##### 数据流

查询预约表drv_preasign总人数

分别统计

科目一、四 DRV_THEORYEXAM_LOG成绩大于90

科目二、三 DRV_GRADE_LOG成绩大于80

### 二级弹窗

```javascript
drvPreasignDetail: () => import('@/components/DrvPreasignCard/details/DrvPreasignDetail'), // 驾考业务下钻
```

![1657625553605](assets\exam.bmp)

#### 获取考试人数变化趋势接口

```javascript
POST '/HiatmpPro/cov/driver/test/getDriverTestTendencyList'
```

##### 数据流

通过DRV_THEORYEXAM_LOG、DRV_GRADE_LOG统计考试人数趋势



#### 驾校合格率排名分析接口

```javascript
POST '/HiatmpPro/cov/driver/test/getDriverSchoolSchool'
```

##### 数据流

通过DRV_THEORYEXAM_LOG、DRV_GRADE_LOG关联驾校DRV_SCHOOLINFO统计各驾校情况



#### 获取考试场地分析

```javascript
POST '/HiatmpPro/cov/driver/test/getDriverSite'
```

##### 数据流

通过DRV_THEORYEXAM_LOG、DRV_GRADE_LOG关联驾校DRV_EXAM_LIMIT_WWW统计各考试场地情况



### 地图下钻

暂无

## 3.依赖

### 数据库依赖表

| 表名               | 中文名               | 所属库 | 数据来源   |
| ------------------ | -------------------- | ------ | ---------- |
| DRV_PREASIGN       | 考试预约表           | 下发库 | 第三方数据 |
| DRV_THEORYEXAM_LOG | 科目一、四考试日志   | 下发库 | 第三方数据 |
| DRV_GRADE_LOG      | 科目二、三成绩日志表 | 下发库 | 第三方数据 |
| DRV_EXAM_LIMIT_WWW | 考试场地表           | 下发库 | 第三方数据 |
| DRV_SCHOOLINFO     | 驾校表               | 下发库 | 第三方数据 |
| VIO_FORCE          | 犯罪表               | 下发库 | 第三方数据 |
| ACD_FILE           | 事故信息主表         | 下发库 | 第三方数据 |
| ACD_FILEHUMAN      | 事故信息人员表       | 下发库 | 第三方数据 |

### 服务依赖

| 服务名                  | 版本 | 备注 |
| ----------------------- | ---- | ---- |
| urbantraffic-hiatmp-cov |      |      |

### 其他依赖（适配器/大数据/现场系统等）