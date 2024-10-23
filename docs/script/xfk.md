

# 下发库表

## 目录

| 表名称                  | 中文名                               |
| ----------------------- | ------------------------------------ |
| ACD_FILE                | 事故信息主表                         |
| ACD_FILEHUMAN           | 事故信息人员表                       |
|                         |                                      |
| DRIVINGLICENSE          | [驾驶人（驾照）表](#DRIVINGLICENSE)  |
| DRV_ARMY_CHECK          | 军警换证表                           |
| DRV_EXAM_LIMIT_WWW      | 考试成绩表                           |
| DRV_FLOW                | 业务流水表                           |
| DRV_GRADE_LOG           | 科目二、三成绩日志表                 |
| DRV_PREASIGN            | 考试预约表                           |
| DRV_SCHOOLINFO          | 驾校信息表                           |
| DRV_THEORYEXAM_LOG      | 科目一、四考试日志                   |
|                         |                                      |
| FRM_CODE                | 下发库枚举                           |
| FRM_CODETYPE            | 代码类型表                           |
| FRM_DEPARTMENT          | 部门基本信息表                       |
| FRM_SOCIAL_DEPT         | 社会化机构部门表                     |
|                         |                                      |
| NET_PRO_VEHDRV_FLOW     | 互联网业务受理流水表（机动车驾驶人） |
| NET_SYS_USER            | 互联网用户信息表                     |
| NET_TRFF_TRANSPCORP_VEH | 客货运企业机动车信息                 |
|                         |                                      |
| VEHICLE                 | 机动车基本信息                       |
| VEH_CHECK               | 检验信息历史表                       |
| VEH_CODE                | 代码信息表                           |
| VEH_FLOW                | 车管流水日志表                       |
|                         |                                      |
| VIO_FORCE               | 强制措施表                           |
| VIO_SURVEIL             | 非现场文本记录表                     |
| VIO_VIOLATION           | 违法记录表                           |

## DRIVINGLICENSE 

```sql
-- Create table 驾驶人（驾照）表     
create table DRIVINGLICENSE
(
  dabh     CHAR(36) not null,
  sfzmhm   VARCHAR2(18) not null,
  zjcx     VARCHAR2(15),
  yzjcx    VARCHAR2(30),
  qfrq     DATE not null,
  syrq     DATE,
  cclzrq   DATE not null,
  ccfzjg   VARCHAR2(10),
  jzqx     CHAR(1) not null,
  yxqs     DATE not null,
  yxqz     DATE not null,
  ljjf     NUMBER(3) not null,
  cfrq     DATE,
  xxtzrq   DATE,
  bzcs     NUMBER(2) not null,
  zt       VARCHAR2(16) not null,
  ly       CHAR(1) not null,
  jxmc     VARCHAR2(64),
  jly      VARCHAR2(30),
  xzqh     VARCHAR2(10) not null,
  xzqj     VARCHAR2(10),
  fzrq     DATE not null,
  jbr      VARCHAR2(30),
  glbm     VARCHAR2(12) not null,
  fzjg     VARCHAR2(10) not null,
  gxsj     DATE not null,
  lsh      VARCHAR2(13),
  xgzl     VARCHAR2(15),
  bz       VARCHAR2(1024),
  jyw      VARCHAR2(256),
  ydabh    CHAR(12),
  sqdm     VARCHAR2(12),
  zxbh     CHAR(13),
  xh       CHAR(36) not null,
  sfzmmc   CHAR(1),
  hmcd     CHAR(1),
  xm       VARCHAR2(30),
  xb       CHAR(1),
  csrq     DATE,
  gj       CHAR(3),
  djzsxzqh VARCHAR2(10),
  djzsxxdz VARCHAR2(128),
  lxzsxzqh VARCHAR2(10),
  lxzsxxdz VARCHAR2(128),
  lxzsyzbm VARCHAR2(6),
  lxdh     VARCHAR2(20),
  sjhm     VARCHAR2(20),
  dzyx     VARCHAR2(30),
  zzzm     VARCHAR2(18),
  zzfzjg   VARCHAR2(30),
  zzfzrq   DATE,
  sfbd     CHAR(1),
  dwbh     VARCHAR2(12),
  syyxqz   DATE,
  xczg     CHAR(1) default 0,
  xczjcx   VARCHAR2(15),
  ryzt     CHAR(1),
  sxbj     CHAR(1),
  xzcrq    DATE,
  sxqksbj  CHAR(1),
  jyw2     VARCHAR2(256),
  sltj     VARCHAR2(2),
  id       VARCHAR2(15)
)
tablespace HIFACETS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  );
-- Add comments to the columns 
comment on column DRIVINGLICENSE.dabh
  is '档案编号(12)';
comment on column DRIVINGLICENSE.sfzmhm
  is '身份证明号码';
comment on column DRIVINGLICENSE.zjcx
  is '准驾车型';
comment on column DRIVINGLICENSE.yzjcx
  is '原准驾车型';
comment on column DRIVINGLICENSE.qfrq
  is '下一清分日期';
comment on column DRIVINGLICENSE.syrq
  is '下一审验日期';
comment on column DRIVINGLICENSE.cclzrq
  is '初次领证日期';
comment on column DRIVINGLICENSE.ccfzjg
  is '初次发证机关';
comment on column DRIVINGLICENSE.jzqx
  is '驾证期限';
comment on column DRIVINGLICENSE.yxqs
  is '有效期始';
comment on column DRIVINGLICENSE.yxqz
  is '有效期止';
comment on column DRIVINGLICENSE.ljjf
  is '累积记分';
comment on column DRIVINGLICENSE.cfrq
  is '超分日期';
comment on column DRIVINGLICENSE.xxtzrq
  is '学习通知日期';
comment on column DRIVINGLICENSE.bzcs
  is '补证次数';
comment on column DRIVINGLICENSE.zt
  is '驾驶证状态';
comment on column DRIVINGLICENSE.ly
  is '驾驶人来源';
comment on column DRIVINGLICENSE.jxmc
  is '驾校名称';
comment on column DRIVINGLICENSE.jly
  is '教练员';
comment on column DRIVINGLICENSE.xzqh
  is '行政区划';
comment on column DRIVINGLICENSE.xzqj
  is '乡镇区局';
comment on column DRIVINGLICENSE.fzrq
  is '发证日期';
comment on column DRIVINGLICENSE.jbr
  is '经办人';
comment on column DRIVINGLICENSE.glbm
  is '管理部门';
comment on column DRIVINGLICENSE.fzjg
  is '发证机关';
comment on column DRIVINGLICENSE.gxsj
  is '更新时间';
comment on column DRIVINGLICENSE.lsh
  is '流水号';
comment on column DRIVINGLICENSE.xgzl
  is '相关资料';
comment on column DRIVINGLICENSE.bz
  is '备注';
comment on column DRIVINGLICENSE.jyw
  is '校验位';
comment on column DRIVINGLICENSE.ydabh
  is '原档案编号';
comment on column DRIVINGLICENSE.sqdm
  is '社区代码';
comment on column DRIVINGLICENSE.zxbh
  is '证芯编号';
comment on column DRIVINGLICENSE.xh
  is '序号(15)';
comment on column DRIVINGLICENSE.sfzmmc
  is '身份证明名称';
comment on column DRIVINGLICENSE.hmcd
  is '号码长度';
comment on column DRIVINGLICENSE.xm
  is '姓名';
comment on column DRIVINGLICENSE.xb
  is '性别1男2女';
comment on column DRIVINGLICENSE.csrq
  is '出生日期';
comment on column DRIVINGLICENSE.gj
  is '国籍';
comment on column DRIVINGLICENSE.djzsxzqh
  is '登记住所行政区划';
comment on column DRIVINGLICENSE.djzsxxdz
  is '登记住所详细地址';
comment on column DRIVINGLICENSE.lxzsxzqh
  is '联系住所行政区划';
comment on column DRIVINGLICENSE.lxzsxxdz
  is '联系住所详细地址';
comment on column DRIVINGLICENSE.lxzsyzbm
  is '联系住所邮政编码';
comment on column DRIVINGLICENSE.lxdh
  is '联系电话';
comment on column DRIVINGLICENSE.sjhm
  is '手机号码';
comment on column DRIVINGLICENSE.dzyx
  is '电子邮箱';
comment on column DRIVINGLICENSE.zzzm
  is '暂住证明';
comment on column DRIVINGLICENSE.zzfzjg
  is '暂住发证机关';
comment on column DRIVINGLICENSE.zzfzrq
  is '暂住发证日期';
comment on column DRIVINGLICENSE.sfbd
  is '是否本地';
comment on column DRIVINGLICENSE.dwbh
  is '属地信息';
comment on column DRIVINGLICENSE.syyxqz
  is '审验有效期止';
comment on column DRIVINGLICENSE.xczg
  is '校车驾驶资格1有0无';
comment on column DRIVINGLICENSE.xczjcx
  is '校车资格准驾车型';
comment on column DRIVINGLICENSE.ryzt
  is '人员状态。0：正常；1：有吸毒记录';
comment on column DRIVINGLICENSE.sxbj
  is '实习标记1是2否';
comment on column DRIVINGLICENSE.xzcrq
  is '需转出日期';
comment on column DRIVINGLICENSE.sxqksbj
  is '实习期考试标记0未参加1参加';
-- Create/Recreate indexes 
create index IDX_DRIVINGLICENSE_CCLZRQ on DRIVINGLICENSE (CCLZRQ)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_CSRQ_XCZG on DRIVINGLICENSE (CSRQ, XCZG)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_DWBH on DRIVINGLICENSE (DWBH)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_FZJG on DRIVINGLICENSE (FZJG)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_GLBM on DRIVINGLICENSE (GLBM)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_GXSJ on DRIVINGLICENSE (GXSJ)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_JXMC on DRIVINGLICENSE (JXMC)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_SXBJ on DRIVINGLICENSE (SXBJ)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_SYYXQZ on DRIVINGLICENSE (SYYXQZ)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_XCZG on DRIVINGLICENSE (XCZG)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_XZQH on DRIVINGLICENSE (XZQH)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_ZJCX on DRIVINGLICENSE (ZJCX)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_ZT on DRIVINGLICENSE (ZT)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRIVINGLICENSE_ZXBH on DRIVINGLICENSE (ZXBH)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRV_CFRQ on DRIVINGLICENSE (CFRQ)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index IDX_DRV_SJHM on DRIVINGLICENSE (SJHM)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index JSZXX_SFZMHM_IDX on DRIVINGLICENSE (SFZMHM)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index JSZXX_ZZZM_IDX on DRIVINGLICENSE (ZZZM)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create unique index PK_DRIVINGLICENSE on DRIVINGLICENSE (DABH)
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Create/Recreate primary, unique and foreign key constraints 
alter table DRIVINGLICENSE
  add constraint PK_DRIVINGLICENSE_XH primary key (XH)
  using index 
  tablespace HIFACETS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

```

