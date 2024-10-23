﻿------------------------------------------------------
-- Export file for user GKPT60@10.16.3.179/HIATMPDB --
-- Created by linan3 on 2022/7/26, 10:47:38 ----------
------------------------------------------------------




-------------------------------modify



--BURST_EVENT

---------------------------------
--  Changed table burst_event  --
---------------------------------
-- Add/modify columns 
alter table BURST_EVENT modify eventid null;
-- Add comments to the columns 
comment on column BURST_EVENT.sourcesuper
  is '警情一级来源 0	人工确认，1	自主检测，2	信息服务';
comment on column BURST_EVENT.reportertype
  is '报警人类型 0	执法民警，1	普通民警，3	群众';
comment on column BURST_EVENT.receivertype
  is '接警人类型 0	执法民警，1	普通民警，3	群众';
comment on column BURST_EVENT.description
  is '';
-- Drop indexes 
drop index TIMECX;
-- Drop primary, unique and foreign key constraints 
alter table BURST_EVENT
  drop constraint BURST_EVENT_PRIMARY cascade;


--PSD_ORDER_ATTACHMENT

-- Add/modify columns 
alter table PSD_ORDER_ATTACHMENT add name NVARCHAR2(200);
-- Add comments to the columns 
comment on column PSD_ORDER_ATTACHMENT.name
  is '附件名称';	


--DEPARTMENT
alter table DEPARTMENT add departmenttype nvarchar2(10);
-- Add comments to the columns 
comment on column DEPARTMENT.departmenttype
  is '部门类型';

--enum_type
alter table enum_type add enumdesc VARCHAR2(255);
alter table ENUM_TYPE modify enumvalue VARCHAR2(100);


--ALERTEVENT_CONFIG
alter table ALERTEVENT_CONFIG modify eventsource VARCHAR2(2000);
alter table ALERTEVENT_CONFIG modify eventtype VARCHAR2(2000);
alter table ALERTEVENT_CONFIG modify eventarea VARCHAR2(2000);


-- WBC_NOTICE_INFO
-- Add/modify columns 
alter table WBC_NOTICE_INFO add menu_id VARCHAR2(32);
alter table WBC_NOTICE_INFO add menu_name NVARCHAR2(40);
alter table WBC_NOTICE_INFO add notice_subtype NVARCHAR2(40);
alter table WBC_NOTICE_INFO add notice_system VARCHAR2(32);
-- Add comments to the columns 
comment on column WBC_NOTICE_INFO.menu_id
  is '通知需要打开的菜单编号';
comment on column WBC_NOTICE_INFO.menu_name
  is '通知需要打开的菜单名称';
comment on column WBC_NOTICE_INFO.notice_subtype
  is '通知的子类型';
comment on column WBC_NOTICE_INFO.notice_system
  is '通知的子系统缩写（bsp,tsm,pis,scs,tpm,ddm,psd,hrv）';
  
-- Add/modify columns 
alter table WBC_NOTICE_INFO add thirdsyscode VARCHAR2(100);
-- Add comments to the columns 
comment on column WBC_NOTICE_INFO.thirdsyscode
  is '通知消息的第三方编号';
  
alter table WBC_NOTICE_INFO modify notice_title NVARCHAR2(1000);
-- PEH_POLICE_EMERGENCY

alter table PEH_POLICE_EMERGENCY modify road_name NVARCHAR2(500);


----------------------------add-------------------
set define off
spool 6.0.log
/*
prompt
prompt Creating table BURST_EVENT
prompt ==========================
prompt
create table BURST_EVENT
(
  eventid           VARCHAR2(32),
  eventname         NVARCHAR2(200),
  detectorid        NVARCHAR2(18),
  location          NVARCHAR2(64),
  locationid        NVARCHAR2(16),
  eventtime         DATE,
  eventtypeid       NVARCHAR2(4),
  imageurl          NVARCHAR2(128),
  status            NUMBER default 0,
  processtime       DATE,
  processperson     NVARCHAR2(20),
  processnotes      NVARCHAR2(256),
  isevent           VARCHAR2(2) default 0,
  auditor           VARCHAR2(20),
  audittime         DATE,
  eventsource       VARCHAR2(4),
  datauploadtime    DATE,
  datasavetime      DATE default sysdate,
  eventlevel        NVARCHAR2(1) default '1',
  departmentid      NVARCHAR2(20),
  areaid            VARCHAR2(8),
  endtime           DATE,
  roadid            VARCHAR2(20),
  roadname          NVARCHAR2(256),
  factory           NVARCHAR2(4),
  concretetypeid    NVARCHAR2(4),
  videourl          NVARCHAR2(2000),
  longitude         VARCHAR2(20),
  latitude          VARCHAR2(20),
  cartype           VARCHAR2(2),
  carnumber         VARCHAR2(16),
  recordline        CLOB,
  ifrelieverelation NUMBER default 0,
  relatedeventid    VARCHAR2(32),
  ipaddress         NVARCHAR2(32),
  sourcesuper       VARCHAR2(2),
  reportuserid      VARCHAR2(20),
  reportusername    VARCHAR2(20),
  phonenum          VARCHAR2(20),
  reportertype      VARCHAR2(2),
  reportusersex     VARCHAR2(1),
  receiverid        VARCHAR2(20),
  receivername      VARCHAR2(20),
  receiverphone     VARCHAR2(20),
  receivertype      VARCHAR2(2),
  receivetime       DATE,
  casetype          VARCHAR2(2),
  addinfo           NVARCHAR2(256),
  direction         VARCHAR2(2),
  pilenum           VARCHAR2(10),
  roadcrossid       VARCHAR2(32),
  meter             VARCHAR2(10),
  address           NVARCHAR2(256),
  similareventid    VARCHAR2(32),
  caramount         VARCHAR2(3),
  vehicleinfo       NVARCHAR2(256),
  duringtime        VARCHAR2(20),
  injurynum         VARCHAR2(3),
  deathnum          VARCHAR2(3),
  disappeartime     DATE,
  jamover           VARCHAR2(2),
  msgpk             NVARCHAR2(200),
  videopreset       VARCHAR2(20),
  author            VARCHAR2(100),
  url               VARCHAR2(1000),
  description       CLOB,
  thirdsyscode      VARCHAR2(32),
  upgradereason     NVARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BURST_EVENT
  is '事件报警';
comment on column BURST_EVENT.eventid
  is '事件ID';
comment on column BURST_EVENT.eventname
  is '事件名称';
comment on column BURST_EVENT.detectorid
  is '检测点ID';
comment on column BURST_EVENT.location
  is '事件地点';
comment on column BURST_EVENT.locationid
  is '事件地点ID';
comment on column BURST_EVENT.eventtime
  is '事件时间';
comment on column BURST_EVENT.eventtypeid
  is '事件类型(枚举1110)';
comment on column BURST_EVENT.imageurl
  is '抓拍图片URL';
comment on column BURST_EVENT.status
  is '状态：1已确认，0待确认';
comment on column BURST_EVENT.processtime
  is '处理时间';
comment on column BURST_EVENT.processperson
  is '事件处理人';
comment on column BURST_EVENT.processnotes
  is '处理说明';
comment on column BURST_EVENT.isevent
  is '是否有效事件（枚举:1001）';
comment on column BURST_EVENT.auditor
  is '审核人';
comment on column BURST_EVENT.audittime
  is '审核时间';
comment on column BURST_EVENT.eventsource
  is '事件来源（枚举：1118）';
comment on column BURST_EVENT.datasavetime
  is '入库时间';
comment on column BURST_EVENT.areaid
  is '行政辖区';
comment on column BURST_EVENT.endtime
  is '结束时间参照信息服务采集接口';
comment on column BURST_EVENT.roadid
  is '路段编号';
comment on column BURST_EVENT.roadname
  is '路段名称';
comment on column BURST_EVENT.factory
  is '生产厂商';
comment on column BURST_EVENT.longitude
  is '经度';
comment on column BURST_EVENT.latitude
  is '纬度';
comment on column BURST_EVENT.cartype
  is '号牌类型';
comment on column BURST_EVENT.carnumber
  is '号牌号码';
comment on column BURST_EVENT.recordline
  is '备案路线';
comment on column BURST_EVENT.ifrelieverelation
  is '是否手动解除关联：0-未手动解除关联，1-已手动解除关联';
comment on column BURST_EVENT.relatedeventid
  is '关联的事件id';
comment on column BURST_EVENT.ipaddress
  is 'ip地址';
comment on column BURST_EVENT.sourcesuper
  is '警情一级来源 0	人工确认，1	自主检测，2	信息服务';
comment on column BURST_EVENT.reportuserid
  is '报警人id';
comment on column BURST_EVENT.reportusername
  is '报警人姓名';
comment on column BURST_EVENT.phonenum
  is '报警人联系电话';
comment on column BURST_EVENT.reportertype
  is '报警人类型 0	执法民警，1	普通民警，3	群众';
comment on column BURST_EVENT.reportusersex
  is '报警人性别（0：男；1：女；2：未知）';
comment on column BURST_EVENT.receiverid
  is '接警人id';
comment on column BURST_EVENT.receivername
  is '接警人姓名';
comment on column BURST_EVENT.receiverphone
  is '接警人联系电话';
comment on column BURST_EVENT.receivertype
  is '接警人类型 0	执法民警，1	普通民警，3	群众';
comment on column BURST_EVENT.receivetime
  is '接警时间';
comment on column BURST_EVENT.casetype
  is '报警类别（0：实时警情:1：信息调度）';
comment on column BURST_EVENT.addinfo
  is '附加信息';
comment on column BURST_EVENT.direction
  is '方向';
comment on column BURST_EVENT.pilenum
  is '桩号';
comment on column BURST_EVENT.roadcrossid
  is '事发路口编号';
comment on column BURST_EVENT.meter
  is '米数';
comment on column BURST_EVENT.address
  is '具体地址';
comment on column BURST_EVENT.similareventid
  is '与之关联的相似警情id';
comment on column BURST_EVENT.caramount
  is '涉案车辆的数量（该字段及以下字段为警情类型是03交通事故时填写）';
comment on column BURST_EVENT.vehicleinfo
  is '涉案车辆的信息：号牌类型|号牌号码|碰撞部位，多辆车逗号隔开';
comment on column BURST_EVENT.duringtime
  is '事发时长，已发生的时间（分钟）';
comment on column BURST_EVENT.injurynum
  is '受伤人数';
comment on column BURST_EVENT.deathnum
  is '死亡人数';
comment on column BURST_EVENT.disappeartime
  is '信号自主检测拥堵警情消散时间';
comment on column BURST_EVENT.jamover
  is '信号自主检测拥堵警情消散状态';
comment on column BURST_EVENT.msgpk
  is '信号自主检测拥堵警情唯一标识';
comment on column BURST_EVENT.thirdsyscode
  is '第三方编号';
comment on column BURST_EVENT.upgradereason
  is '升级原因';
*/
prompt
prompt Creating table IN_VEHICLE_IMAGE
prompt ===============================
prompt
create table IN_VEHICLE_IMAGE
(
  id            VARCHAR2(32) not null,
  name          VARCHAR2(50),
  img_path      VARCHAR2(100),
  content       BLOB,
  save_flag     NUMBER(2),
  img_size      NUMBER(8),
  suffix        VARCHAR2(8),
  create_time   DATE,
  openid        VARCHAR2(100),
  in_vehicle_id VARCHAR2(32),
  img_type      VARCHAR2(20),
  order_no      NUMBER(2),
  case_id       VARCHAR2(32),
  create_user   VARCHAR2(32),
  gxsj          DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table IN_VEHICLE_IMAGE
  is '涉案车辆图片表';
comment on column IN_VEHICLE_IMAGE.gxsj
  is '更新时间';
alter table IN_VEHICLE_IMAGE
  add constraint IN_VEHICLE_IMAGE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PIS_ABANDON_INFO_TAG
prompt ===================================
prompt
create table PIS_ABANDON_INFO_TAG
(
  group_id NVARCHAR2(32) not null,
  taglist  NVARCHAR2(2000) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_ABANDON_INFO_TAG
  is '废弃情报标签表';
comment on column PIS_ABANDON_INFO_TAG.group_id
  is '情报组编号';
comment on column PIS_ABANDON_INFO_TAG.taglist
  is '情报组标签';
alter table PIS_ABANDON_INFO_TAG
  add constraint GROUP_ID_PRE primary key (GROUP_ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PIS_ACCIDENT_CARS
prompt ================================
prompt
create table PIS_ACCIDENT_CARS
(
  id       VARCHAR2(32) not null,
  car_no   VARCHAR2(10) not null,
  car_type VARCHAR2(2) not null,
  info_id  VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_ACCIDENT_CARS
  is '事件车辆关联表';
comment on column PIS_ACCIDENT_CARS.id
  is '编号';
comment on column PIS_ACCIDENT_CARS.car_no
  is '号牌号码';
comment on column PIS_ACCIDENT_CARS.car_type
  is '号牌类型';
comment on column PIS_ACCIDENT_CARS.info_id
  is '情报编号';
alter table PIS_ACCIDENT_CARS
  add constraint PIS_ACCIDENT_CARS_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_ATTACHS
prompt ==========================
prompt
create table PIS_ATTACHS
(
  id             VARCHAR2(32) not null,
  attach_url     VARCHAR2(200) not null,
  attach_type    VARCHAR2(2) not null,
  upload_time    DATE not null,
  upload_account NVARCHAR2(50),
  info_id        VARCHAR2(32),
  oper_id        VARCHAR2(32),
  attach_name    NVARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_ATTACHS
  is '附件表';
comment on column PIS_ATTACHS.id
  is '编号';
comment on column PIS_ATTACHS.attach_url
  is '附件地址';
comment on column PIS_ATTACHS.attach_type
  is '附件类型';
comment on column PIS_ATTACHS.upload_time
  is '上传时间';
comment on column PIS_ATTACHS.upload_account
  is '上传人';
comment on column PIS_ATTACHS.info_id
  is '情报编号';
comment on column PIS_ATTACHS.oper_id
  is '操作日志编号';
comment on column PIS_ATTACHS.attach_name
  is '附件名称';
create index PIS_ATTACHS_INFOID on PIS_ATTACHS (INFO_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PIS_ATTACHS
  add constraint PIS_ATTACHS_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_DISPATCH_INFO
prompt ================================
prompt
create table PIS_DISPATCH_INFO
(
  group_id     VARCHAR2(32) not null,
  upgrade_info NVARCHAR2(500),
  info_stage   NVARCHAR2(2000),
  group_stage  NVARCHAR2(100),
  oper_num     NVARCHAR2(1000),
  create_time  DATE,
  dept_id      NVARCHAR2(2000),
  group_info   NVARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table PIS_DISPATCH_INFO
  is '情报派发信息记录表';
comment on column PIS_DISPATCH_INFO.group_id
  is '情报组编号';
comment on column PIS_DISPATCH_INFO.upgrade_info
  is '升级信息：未升级-0；升级-1|原级别|升级后的级别|升级原因';
comment on column PIS_DISPATCH_INFO.info_stage
  is '派发前的情报组中各个情报的状态：infoid-02.infoid-03,infoid-03';
comment on column PIS_DISPATCH_INFO.group_stage
  is '派发前的情报组状态';
comment on column PIS_DISPATCH_INFO.oper_num
  is '派发在时间轴中生成的记录oper_num';
comment on column PIS_DISPATCH_INFO.create_time
  is '添加时间';
comment on column PIS_DISPATCH_INFO.dept_id
  is '派发时选择的办理部门';
comment on column PIS_DISPATCH_INFO.group_info
  is '派发前的情报组信息（上次派发时间，签收时间，办结时间）';
alter table PIS_DISPATCH_INFO
  add constraint PRIMART_KEY primary key (GROUP_ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PIS_FEATURE_TYPE_CONFIG
prompt ======================================
prompt
create table PIS_FEATURE_TYPE_CONFIG
(
  id           VARCHAR2(32) not null,
  info_type    VARCHAR2(2) not null,
  type_name    VARCHAR2(100) not null,
  subtype      VARCHAR2(10) not null,
  subtype_name VARCHAR2(100) not null,
  feature      VARCHAR2(2) not null,
  close_limit  INTEGER not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_FEATURE_TYPE_CONFIG
  is '类型及类型配置表';
comment on column PIS_FEATURE_TYPE_CONFIG.id
  is '配置编号';
comment on column PIS_FEATURE_TYPE_CONFIG.info_type
  is '情报类型编号';
comment on column PIS_FEATURE_TYPE_CONFIG.type_name
  is '情报类型名称';
comment on column PIS_FEATURE_TYPE_CONFIG.subtype
  is '子类型编号';
comment on column PIS_FEATURE_TYPE_CONFIG.subtype_name
  is '子类型名称';
comment on column PIS_FEATURE_TYPE_CONFIG.feature
  is '情报性质（0：快、1：慢）';
comment on column PIS_FEATURE_TYPE_CONFIG.close_limit
  is '默认办理时长（分钟）';
alter table PIS_FEATURE_TYPE_CONFIG
  add constraint PIS_FEATURE_TYPE_CONFIG_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_FIELD_INDEX
prompt ==============================
prompt
create table PIS_FIELD_INDEX
(
  index_id   VARCHAR2(32) not null,
  field_name VARCHAR2(50),
  field_val  VARCHAR2(200),
  info_ids   CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_FIELD_INDEX
  is '情报内容字段索引表';
comment on column PIS_FIELD_INDEX.index_id
  is '索引编号';
comment on column PIS_FIELD_INDEX.field_name
  is '字段名称';
comment on column PIS_FIELD_INDEX.field_val
  is '字段值';
comment on column PIS_FIELD_INDEX.info_ids
  is '关联情报';
alter table PIS_FIELD_INDEX
  add constraint PIS_FIELD_INDEX_PK primary key (INDEX_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_FIELD_SCHEMA
prompt ===============================
prompt
create table PIS_FIELD_SCHEMA
(
  field_id          VARCHAR2(32) not null,
  field_name        VARCHAR2(50) not null,
  field_desc        VARCHAR2(100),
  field_type        VARCHAR2(2) default 1,
  field_info_type   VARCHAR2(2) not null,
  need_index        VARCHAR2(2) default 0,
  field_info_source VARCHAR2(2) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_FIELD_SCHEMA
  is '情报内容字段释义表';
comment on column PIS_FIELD_SCHEMA.field_id
  is '字段编号';
comment on column PIS_FIELD_SCHEMA.field_name
  is '字段名称';
comment on column PIS_FIELD_SCHEMA.field_desc
  is '字段中文描述';
comment on column PIS_FIELD_SCHEMA.field_type
  is '字段类型(0:数字,1:字符串)';
comment on column PIS_FIELD_SCHEMA.field_info_type
  is '所属情报类型(大类)';
comment on column PIS_FIELD_SCHEMA.need_index
  is '是否需要索引(0:不需要,1:需要)';
comment on column PIS_FIELD_SCHEMA.field_info_source
  is '所属情报来源';
alter table PIS_FIELD_SCHEMA
  add constraint PIS_FIELD_SCHEMA_PK primary key (FIELD_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_GROUP
prompt ========================
prompt
create table PIS_GROUP
(
  group_id               VARCHAR2(32) not null,
  group_level            VARCHAR2(2),
  close_limit            INTEGER,
  dispatch_time          DATE,
  sign_time              DATE,
  close_time             DATE,
  group_stage            VARCHAR2(2) not null,
  sorter_userid          VARCHAR2(10),
  sign_limit             INTEGER,
  dispatch_close_time    DATE,
  recall_time            VARCHAR2(50),
  recall_approval_status VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_GROUP
  is '情报组表';
comment on column PIS_GROUP.group_id
  is '情报组编号';
comment on column PIS_GROUP.group_level
  is '情报组等级';
comment on column PIS_GROUP.close_limit
  is '办理时限（分钟）';
comment on column PIS_GROUP.dispatch_time
  is '分拣时间';
comment on column PIS_GROUP.sign_time
  is '签收时间';
comment on column PIS_GROUP.close_time
  is '办结时间';
comment on column PIS_GROUP.group_stage
  is '当前阶段（情报子系统参数配置表中INFO_STATUS）';
comment on column PIS_GROUP.sorter_userid
  is '分拣员编号（userid）';
comment on column PIS_GROUP.sign_limit
  is '办理时限（分钟，从SIGN_TIME获取）';
comment on column PIS_GROUP.dispatch_close_time
  is '分拣截止时间（情报接入、退回时会更新）';
comment on column PIS_GROUP.recall_time
  is '延期时长（多次用逗号分隔）';
comment on column PIS_GROUP.recall_approval_status
  is '延期审批结果（多次用逗号分隔）';
alter table PIS_GROUP
  add constraint BPIS_GROUP_PK primary key (GROUP_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_GROUP_MARKS
prompt ==============================
prompt
create table PIS_GROUP_MARKS
(
  tag_id    VARCHAR2(32) not null,
  userid    VARCHAR2(10),
  group_id  VARCHAR2(32),
  mark_time DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_GROUP_MARKS
  is '人员标记情报表';
comment on column PIS_GROUP_MARKS.tag_id
  is '标记编号';
comment on column PIS_GROUP_MARKS.userid
  is '人员编号（userid）';
comment on column PIS_GROUP_MARKS.group_id
  is '组编号';
comment on column PIS_GROUP_MARKS.mark_time
  is '标记时间';
alter table PIS_GROUP_MARKS
  add constraint PIS_GROUP_MARKS_PK primary key (TAG_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_GROUP_STAGES
prompt ===============================
prompt
create table PIS_GROUP_STAGES
(
  state_id     VARCHAR2(32) not null,
  start_time   DATE,
  end_time     DATE,
  stage_status VARCHAR2(2),
  last_status  VARCHAR2(2),
  group_id     VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_GROUP_STAGES
  is '情报组进度变化表';
comment on column PIS_GROUP_STAGES.state_id
  is '进度编号';
comment on column PIS_GROUP_STAGES.start_time
  is '开始时间';
comment on column PIS_GROUP_STAGES.end_time
  is '结束时间';
comment on column PIS_GROUP_STAGES.stage_status
  is '当前状态（情报子系统参数配置表中INFO_STATUS）';
comment on column PIS_GROUP_STAGES.last_status
  is '上一状态（情报子系统参数配置表中INFO_STATUS）';
comment on column PIS_GROUP_STAGES.group_id
  is '组编号';
alter table PIS_GROUP_STAGES
  add constraint PIS_GROUP_STAGES_PK primary key (STATE_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_BASE
prompt ============================
prompt
create table PIS_INFO_BASE
(
  info_id         VARCHAR2(32) not null,
  info_channel    VARCHAR2(2) not null,
  info_source     VARCHAR2(2) not null,
  info_feature    VARCHAR2(2),
  info_level      VARCHAR2(2) not null,
  info_type       VARCHAR2(2),
  info_subtype    VARCHAR2(10),
  info_time       DATE not null,
  create_time     DATE not null,
  info_stage      VARCHAR2(2) not null,
  dispatch_time   DATE,
  sign_time       DATE,
  thirdsyscode    VARCHAR2(32),
  simhashcode     VARCHAR2(64),
  info_coordinate VARCHAR2(500),
  info_address    NVARCHAR2(1000),
  confirm_time    DATE,
  confirm_userid  VARCHAR2(10),
  close_time      DATE,
  info_deptid     VARCHAR2(12),
  info_desc       CLOB,
  info_content    CLOB,
  info_topic      CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_BASE
  is '情报信息表';
comment on column PIS_INFO_BASE.info_id
  is '情报编号';
comment on column PIS_INFO_BASE.info_channel
  is '接入渠道（select ''接入渠道名称：''||t.param_desc from pis_param_config t where t.param_code=''INFO_CHANNEL'' and t.param_value= ）';
comment on column PIS_INFO_BASE.info_source
  is '情报来源（select ''情报来源名称：''||t.param_desc from pis_param_config t where t.param_code=''INFO_SOURCE'' and t.param_value= ）';
comment on column PIS_INFO_BASE.info_feature
  is '情报性质(0:快情报,1:慢情报)';
comment on column PIS_INFO_BASE.info_level
  is '情报等级';
comment on column PIS_INFO_BASE.info_type
  is '情报类型(select  ''情报类型名称：''||type_name from pis_feature_type_config t where t.info_type= )';
comment on column PIS_INFO_BASE.info_subtype
  is '情报子类型(select ''子类型名称：''||t.subtype_name from pis_feature_type_config t where t.subtype= )';
comment on column PIS_INFO_BASE.info_time
  is '发生时间';
comment on column PIS_INFO_BASE.create_time
  is '录入时间';
comment on column PIS_INFO_BASE.info_stage
  is '当前阶段(select ''当前阶段名称：''||t.param_desc from pis_param_config t where t.param_code=''INFO_STATUS'' and t.param_value= )';
comment on column PIS_INFO_BASE.dispatch_time
  is '分拣时间';
comment on column PIS_INFO_BASE.sign_time
  is '签收时间';
comment on column PIS_INFO_BASE.thirdsyscode
  is '第三方编号';
comment on column PIS_INFO_BASE.simhashcode
  is '情报hash签名，用于重复情报判定';
comment on column PIS_INFO_BASE.info_coordinate
  is '事发地点坐标';
comment on column PIS_INFO_BASE.info_address
  is '事发地址';
comment on column PIS_INFO_BASE.confirm_time
  is '确认时间';
comment on column PIS_INFO_BASE.confirm_userid
  is '确认人编号';
comment on column PIS_INFO_BASE.close_time
  is '办结时间';
comment on column PIS_INFO_BASE.info_deptid
  is '所属部门';
comment on column PIS_INFO_BASE.info_desc
  is '情报描述';
comment on column PIS_INFO_BASE.info_content
  is '情报备注';
comment on column PIS_INFO_BASE.info_topic
  is '情报标题';
create index PIS_INFO_BASE_CHANNEL_IDX on PIS_INFO_BASE (INFO_CHANNEL)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PIS_INFO_BASE
  add constraint PIS_INFO_BASE_PK primary key (INFO_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_DEPTS
prompt =============================
prompt
create table PIS_INFO_DEPTS
(
  deptid        VARCHAR2(12) not null,
  group_id      VARCHAR2(32) not null,
  is_leader     VARCHAR2(2),
  follower_type VARCHAR2(2),
  add_time      DATE,
  add_dept      VARCHAR2(12),
  work_require  NVARCHAR2(2000),
  is_supervise  VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_DEPTS
  is '情报组处理部门表';
comment on column PIS_INFO_DEPTS.deptid
  is '部门编号';
comment on column PIS_INFO_DEPTS.group_id
  is '组编号';
comment on column PIS_INFO_DEPTS.is_leader
  is '是否主办（0：否；1：是）';
comment on column PIS_INFO_DEPTS.follower_type
  is '协办类型（暂不启用）';
comment on column PIS_INFO_DEPTS.add_time
  is '添加时间';
comment on column PIS_INFO_DEPTS.add_dept
  is '添加部门编号';
comment on column PIS_INFO_DEPTS.work_require
  is '工作要求';
comment on column PIS_INFO_DEPTS.is_supervise
  is '是否督办（0：否；1：是）';
alter table PIS_INFO_DEPTS
  add constraint PIS_INFO_DEPTS_PK primary key (DEPTID, GROUP_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_DEPT_PROCESS
prompt ====================================
prompt
create table PIS_INFO_DEPT_PROCESS
(
  deptid          VARCHAR2(50) not null,
  group_id        VARCHAR2(32) not null,
  info_dept_stage VARCHAR2(2) not null,
  sign_time       DATE,
  close_time      DATE,
  recall_time     DATE,
  return_time     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_DEPT_PROCESS
  is '部门进度信息表';
comment on column PIS_INFO_DEPT_PROCESS.deptid
  is '部门编号';
comment on column PIS_INFO_DEPT_PROCESS.group_id
  is '组编号';
comment on column PIS_INFO_DEPT_PROCESS.info_dept_stage
  is '当前阶段（参考情报子系统参数配置中的INFO_STATUS）';
comment on column PIS_INFO_DEPT_PROCESS.sign_time
  is '签收时间';
comment on column PIS_INFO_DEPT_PROCESS.close_time
  is '办结时间';
comment on column PIS_INFO_DEPT_PROCESS.recall_time
  is '撤回时间';
comment on column PIS_INFO_DEPT_PROCESS.return_time
  is '退回时间';
alter table PIS_INFO_DEPT_PROCESS
  add constraint PIS_INFO_DEPT_PROCESS_PK primary key (DEPTID, GROUP_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_DETAILS
prompt ===============================
prompt
create table PIS_INFO_DETAILS
(
  info_id             VARCHAR2(32) not null,
  areaid              VARCHAR2(6),
  info_location       VARCHAR2(200),
  location_coordinate VARCHAR2(200),
  reporter_name       VARCHAR2(20),
  reporter_sex        VARCHAR2(2),
  reporter_phone      VARCHAR2(20),
  wounded_num         INTEGER,
  death_num           INTEGER,
  accident_shape      VARCHAR2(20),
  entrust_dept        VARCHAR2(20),
  entrust_person      VARCHAR2(20),
  entrust_phone       VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_DETAILS
  is '情报附属信息表';
comment on column PIS_INFO_DETAILS.info_id
  is '情报编号';
comment on column PIS_INFO_DETAILS.areaid
  is '所属辖区编号';
comment on column PIS_INFO_DETAILS.info_location
  is '事发地点名称';
comment on column PIS_INFO_DETAILS.location_coordinate
  is '事发地点坐标';
comment on column PIS_INFO_DETAILS.reporter_name
  is '上报人姓名';
comment on column PIS_INFO_DETAILS.reporter_sex
  is '上报人性别';
comment on column PIS_INFO_DETAILS.reporter_phone
  is '上报人电话';
comment on column PIS_INFO_DETAILS.wounded_num
  is '受伤人数';
comment on column PIS_INFO_DETAILS.death_num
  is '死亡人数';
comment on column PIS_INFO_DETAILS.accident_shape
  is '事故形态';
comment on column PIS_INFO_DETAILS.entrust_dept
  is '交办单位';
comment on column PIS_INFO_DETAILS.entrust_person
  is '交办人姓名';
comment on column PIS_INFO_DETAILS.entrust_phone
  is '交办人电话';
alter table PIS_INFO_DETAILS
  add constraint PIS_INFO_DETAILS_PK primary key (INFO_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_GROUP_RELATION
prompt ======================================
prompt
create table PIS_INFO_GROUP_RELATION
(
  group_id   VARCHAR2(32) not null,
  info_id    VARCHAR2(32) not null,
  is_main    VARCHAR2(2),
  merge_time DATE,
  is_append  VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_GROUP_RELATION
  is '情报组关联情报表';
comment on column PIS_INFO_GROUP_RELATION.group_id
  is '组编号';
comment on column PIS_INFO_GROUP_RELATION.info_id
  is '情报编号';
comment on column PIS_INFO_GROUP_RELATION.is_main
  is '是否主情报（0：否；1：是）';
comment on column PIS_INFO_GROUP_RELATION.merge_time
  is '进组时间';
comment on column PIS_INFO_GROUP_RELATION.is_append
  is '是否追加情报（0：否；1：是）';
alter table PIS_INFO_GROUP_RELATION
  add constraint INFO_GROUP_RELATION_PK primary key (INFO_ID, GROUP_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_INFO_MERGE
prompt =============================
prompt
create table PIS_INFO_MERGE
(
  id           VARCHAR2(32) not null,
  merger_name  VARCHAR2(200),
  info_type    VARCHAR2(1000),
  merger_order INTEGER not null,
  merger_class VARCHAR2(200) not null,
  info_source  VARCHAR2(200),
  MERGE_HOURS  VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_INFO_MERGE
  is '情报去重配置表';
comment on column PIS_INFO_MERGE.id
  is '规则编号';
comment on column PIS_INFO_MERGE.merger_name
  is '规则名称';
comment on column PIS_INFO_MERGE.info_type
  is '适用情报类型';
comment on column PIS_INFO_MERGE.merger_order
  is '规则优先级，数值越大优先级越高';
comment on column PIS_INFO_MERGE.merger_class
  is '规则运算类';
comment on column PIS_INFO_MERGE.info_source
  is '适用情报来源';
alter table PIS_INFO_MERGE
  add constraint PIS_INFO_MERGE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_NOCONFIRM_CONFIG
prompt ===================================
prompt
create table PIS_NOCONFIRM_CONFIG
(
  id           VARCHAR2(32) not null,
  info_source  VARCHAR2(10),
  info_type    VARCHAR2(10),
  info_subtype VARCHAR2(10),
  creatre_user VARCHAR2(20) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_NOCONFIRM_CONFIG
  is '不需确认情报配置表';
comment on column PIS_NOCONFIRM_CONFIG.id
  is '编号';
comment on column PIS_NOCONFIRM_CONFIG.info_source
  is '情报来源';
comment on column PIS_NOCONFIRM_CONFIG.info_type
  is '情报类型';
comment on column PIS_NOCONFIRM_CONFIG.info_subtype
  is '情报子类型';
comment on column PIS_NOCONFIRM_CONFIG.creatre_user
  is '创建人';

prompt
prompt Creating table PIS_OPER_LOG
prompt ===========================
prompt
create table PIS_OPER_LOG
(
  oper_id          VARCHAR2(32) not null,
  oper_code        VARCHAR2(10) not null,
  oper_target_type VARCHAR2(2) not null,
  oper_time        DATE not null,
  oper_account     VARCHAR2(10),
  oper_dept        VARCHAR2(12),
  group_id         VARCHAR2(32),
  state_id         VARCHAR2(32),
  oper_target_id   VARCHAR2(2000) not null,
  oper_num         VARCHAR2(32),
  oper_content     CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_OPER_LOG
  is '处理日志表';
comment on column PIS_OPER_LOG.oper_id
  is '操作日志编号';
comment on column PIS_OPER_LOG.oper_code
  is '操作编码  待确认1：
10 确认有效 11确认废弃 12 升级
待分拣2：
20 分拣 21废弃 22追加派发 23移出组 24升级 25 设为主情报
26 合并
27 批量废弃  28 分拣超期 29 分拣用时
待签收3：
30 签收 31撤回 32督办 33 签收超期

办理中4：
40办结 41退回 42督办 43 添加协办 44 过程反馈 45 撤回
46办结用时 47 办结超期

已完结5：
50重开';
comment on column PIS_OPER_LOG.oper_target_type
  is '操作对象类型（1：部门；2：情报；3：情报组）';
comment on column PIS_OPER_LOG.oper_time
  is '操作时间';
comment on column PIS_OPER_LOG.oper_account
  is '操作人';
comment on column PIS_OPER_LOG.oper_dept
  is '操作部门';
comment on column PIS_OPER_LOG.group_id
  is '组编号';
comment on column PIS_OPER_LOG.state_id
  is '进度编号';
comment on column PIS_OPER_LOG.oper_target_id
  is '操作对象编号';
comment on column PIS_OPER_LOG.oper_num
  is '操作序号';
comment on column PIS_OPER_LOG.oper_content
  is '日志内容  待确认1：
10 确认有效（确认结果）
11 确认废弃（确认结果）
12 升级（升级原因）
待分拣2：
20分拣(工作要求）
21废弃（废弃原因）
22追加派发（工作要求）
23移出组
24升级 （升级原因）
25 设为主情报
26合并（合并的所有情报组编号）
27 批量废弃
28 分拣超期（超期时长）
29 分拣用时（时长）
待签收3：
 30 签收
 31撤回（撤回原因）
 32督办（督办要求）
 33签收超期（超期时长）
办理中4：
 40办结（办理结果）
 41退回（退回原因）
 42督办（督办要求）
 43添加协办（工作要求）
 44过程反馈（反馈内容）
 45撤回（撤回原因）
 46办结用时
 47办结超期
已完结5：
 50重开（重开原因）';
alter table PIS_OPER_LOG
  add constraint PIS_OPER_LOG_PK primary key (OPER_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_PARAM_CONFIG
prompt ===============================
prompt
create table PIS_PARAM_CONFIG
(
  param_code    VARCHAR2(100) not null,
  param_value   VARCHAR2(100) not null,
  param_desc    VARCHAR2(500),
  param_type    VARCHAR2(2),
  param_comment VARCHAR2(500),
  param_id      VARCHAR2(100) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_PARAM_CONFIG
  is '参数配置表';
comment on column PIS_PARAM_CONFIG.param_code
  is '参数代码';
comment on column PIS_PARAM_CONFIG.param_value
  is '参数值';
comment on column PIS_PARAM_CONFIG.param_desc
  is '参数描述';
comment on column PIS_PARAM_CONFIG.param_type
  is '参数类型';
comment on column PIS_PARAM_CONFIG.param_comment
  is '备注';
comment on column PIS_PARAM_CONFIG.param_id
  is 'ID';
alter table PIS_PARAM_CONFIG
  add constraint PIS_PARAM_CONFIG_PK primary key (PARAM_ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PIS_USER_SCREEN_CONFIG
prompt =====================================
prompt
create table PIS_USER_SCREEN_CONFIG
(
  userid       VARCHAR2(10) not null,
  info_feature VARCHAR2(500) not null,
  info_type    VARCHAR2(500) not null,
  info_source  VARCHAR2(500) not null,
  info_subtype VARCHAR2(500),
  update_time  DATE not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_USER_SCREEN_CONFIG
  is '用户情报筛选配置表';
comment on column PIS_USER_SCREEN_CONFIG.userid
  is '用户编号';
comment on column PIS_USER_SCREEN_CONFIG.info_feature
  is '情报性质';
comment on column PIS_USER_SCREEN_CONFIG.info_type
  is '情报类型';
comment on column PIS_USER_SCREEN_CONFIG.info_source
  is '情报来源';
comment on column PIS_USER_SCREEN_CONFIG.info_subtype
  is '情报子类型';
comment on column PIS_USER_SCREEN_CONFIG.update_time
  is '更新时间';
alter table PIS_USER_SCREEN_CONFIG
  add constraint PIS_USER_SCREEN_CONFIG_PK primary key (USERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table POI_POINT
prompt ========================
prompt
create table POI_POINT
(
  pid       VARCHAR2(35),
  poi_id    VARCHAR2(13),
  name      VARCHAR2(150),
  pyname    VARCHAR2(150),
  display_x VARCHAR2(20),
  display_y VARCHAR2(20),
  type      VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table POLICE_XFK
prompt =========================
prompt
create table POLICE_XFK
(
  policeid   VARCHAR2(32) not null,
  policename NVARCHAR2(32) not null,
  deptid     VARCHAR2(12) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table POLICE_XFK
  is '下发库警员表';
comment on column POLICE_XFK.policeid
  is '用户代号';
comment on column POLICE_XFK.policename
  is '姓名';
comment on column POLICE_XFK.deptid
  is '管理部门';
alter table POLICE_XFK
  add constraint PK_POLICE_XFK_POLICEID primary key (POLICEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 160K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PSA_CASE
prompt =======================
prompt
create table PSA_CASE
(
  id         VARCHAR2(60) not null,
  status     VARCHAR2(60),
  case_time  DATE,
  case_type  VARCHAR2(60),
  big_dept   VARCHAR2(60),
  mid_dept   VARCHAR2(60),
  policeid   VARCHAR2(60),
  policename VARCHAR2(60),
  updateflag CHAR(1) default '0'
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on column PSA_CASE.id
  is '案件编号';
comment on column PSA_CASE.status
  is '案件状态，文字描述，对应各业务流程';
comment on column PSA_CASE.case_time
  is '案件发生时间';
comment on column PSA_CASE.case_type
  is '案件类型';
comment on column PSA_CASE.big_dept
  is '大队部门id';
comment on column PSA_CASE.mid_dept
  is '中队部门id';
comment on column PSA_CASE.policeid
  is '警员id';
comment on column PSA_CASE.policename
  is '警员名称';
comment on column PSA_CASE.updateflag
  is '0 不需要更新 1：需要更新';
alter table PSA_CASE
  add constraint PK_CASE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_CASE_EXCEPTION
prompt =================================
prompt
create table PSA_CASE_EXCEPTION
(
  id           VARCHAR2(60) not null,
  case_id      VARCHAR2(60),
  exception_id VARCHAR2(60)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
comment on column PSA_CASE_EXCEPTION.case_id
  is '案件id';
comment on column PSA_CASE_EXCEPTION.exception_id
  is '异常id';
alter table PSA_CASE_EXCEPTION
  add constraint PK_CASE_EXCEPTION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_CASE_SOU_RELATION
prompt ====================================
prompt
create table PSA_CASE_SOU_RELATION
(
  id          VARCHAR2(60) not null,
  case_id     VARCHAR2(60),
  third_table VARCHAR2(2560),
  source_id   VARCHAR2(60),
  source_json CLOB,
  create_time DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on column PSA_CASE_SOU_RELATION.id
  is '主键';
comment on column PSA_CASE_SOU_RELATION.case_id
  is '案件id';
comment on column PSA_CASE_SOU_RELATION.third_table
  is '第三方表';
comment on column PSA_CASE_SOU_RELATION.source_id
  is '第三方表id';
comment on column PSA_CASE_SOU_RELATION.source_json
  is '原始数据json';
comment on column PSA_CASE_SOU_RELATION.create_time
  is '创建时间';
create index PK_CASETABLE on PSA_CASE_SOU_RELATION (CASE_ID, THIRD_TABLE)
  tablespace HIATMPTS
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
create index PK_CASETABLESOURCE on PSA_CASE_SOU_RELATION (CASE_ID, THIRD_TABLE, SOURCE_ID)
  tablespace HIATMPTS
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
create index PK_SOURCEID on PSA_CASE_SOU_RELATION (SOURCE_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_TABLE on PSA_CASE_SOU_RELATION (THIRD_TABLE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PSA_CASE_SOU_RELATION
  add constraint PSA_CASE_SOU_RELATION_PK primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_COLLIDE_SQL
prompt ==============================
prompt
create table PSA_COLLIDE_SQL
(
  id        VARCHAR2(60) not null,
  fields    VARCHAR2(4000) not null,
  tablename VARCHAR2(4000) not null,
  condition VARCHAR2(2000) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_COLLIDE_SQL
  is '碰撞字段查询sql信息表';
comment on column PSA_COLLIDE_SQL.fields
  is '查询字段';
comment on column PSA_COLLIDE_SQL.tablename
  is '表名，包含join语句';
comment on column PSA_COLLIDE_SQL.condition
  is '查询条件';
alter table PSA_COLLIDE_SQL
  add constraint PK_CSQL primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_DATA_COLLECT_LOG
prompt ===================================
prompt
create table PSA_DATA_COLLECT_LOG
(
  id              VARCHAR2(60) not null,
  third_system    VARCHAR2(60),
  begin_time      DATE,
  end_time        DATE,
  result          VARCHAR2(60),
  data_begin_time DATE,
  data_end_time   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on column PSA_DATA_COLLECT_LOG.third_system
  is '第三方系统表';
comment on column PSA_DATA_COLLECT_LOG.begin_time
  is '执行时间';
comment on column PSA_DATA_COLLECT_LOG.end_time
  is '执行结束时间';
comment on column PSA_DATA_COLLECT_LOG.result
  is '执行结果，0进行中，1成功，2失败';

prompt
prompt Creating table PSA_DEPARTMENT_CONFIG
prompt ====================================
prompt
create table PSA_DEPARTMENT_CONFIG
(
  id               VARCHAR2(60),
  parentdepartment VARCHAR2(60),
  code             VARCHAR2(60) not null,
  sort             VARCHAR2(60) default 0,
  dept_level       VARCHAR2(60) default 0,
  dept_user        VARCHAR2(60),
  deptname         VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on column PSA_DEPARTMENT_CONFIG.parentdepartment
  is '上级部门';
comment on column PSA_DEPARTMENT_CONFIG.code
  is '部门编号';
comment on column PSA_DEPARTMENT_CONFIG.sort
  is '大队部门显示顺序';
comment on column PSA_DEPARTMENT_CONFIG.dept_level
  is '部门级别 默认0    市区大队 1 高速大队 2  区市大队 3
';
comment on column PSA_DEPARTMENT_CONFIG.deptname
  is '部门名称';
alter table PSA_DEPARTMENT_CONFIG
  add constraint PK_DEPT_CONFIG primary key (CODE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_EXC_VALUE_RELATION
prompt =====================================
prompt
create table PSA_EXC_VALUE_RELATION
(
  id         VARCHAR2(60) not null,
  monitor_id VARCHAR2(60) not null,
  remark     VARCHAR2(1024) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_EXC_VALUE_RELATION
  is '异常值对应表';
comment on column PSA_EXC_VALUE_RELATION.monitor_id
  is '监管点id';
comment on column PSA_EXC_VALUE_RELATION.remark
  is '对应异常值说明，异常表中value1等字段对应字段说明';
create index INDEX_EXC_VALUE on PSA_EXC_VALUE_RELATION (MONITOR_ID)
  tablespace HIATMPTS
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
alter table PSA_EXC_VALUE_RELATION
  add constraint PK_EXC_VALUE primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_ILLEGAL_TYPE
prompt ===============================
prompt
create table PSA_ILLEGAL_TYPE
(
  id        VARCHAR2(30) not null,
  typeid    VARCHAR2(30),
  typename  VARCHAR2(500),
  viocode   VARCHAR2(4000),
  monitorid VARCHAR2(30)
)
tablespace HIATMPTS
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
comment on table PSA_ILLEGAL_TYPE
  is '违法分类表（违法分析用）';
comment on column PSA_ILLEGAL_TYPE.typeid
  is '分类代码';
comment on column PSA_ILLEGAL_TYPE.typename
  is '分类名称';
comment on column PSA_ILLEGAL_TYPE.viocode
  is '违法代码，逗号隔开';
comment on column PSA_ILLEGAL_TYPE.monitorid
  is '监管项编号';
create index INDEX_ILLEGAL_ILLEGALID on PSA_ILLEGAL_TYPE (TYPEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_ILLEGAL_MONITORID on PSA_ILLEGAL_TYPE (MONITORID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_ILLEGAL_VIOCODE on PSA_ILLEGAL_TYPE (VIOCODE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 167;
alter table PSA_ILLEGAL_TYPE
  add constraint PK_VIOTYPE primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_MONITOR_CONFIG
prompt =================================
prompt
create table PSA_MONITOR_CONFIG
(
  id         VARCHAR2(60) not null,
  updated_by VARCHAR2(60) not null,
  status     VARCHAR2(2) not null,
  start_time DATE not null,
  cease_time DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_CONFIG
  is '监管点配置表';
comment on column PSA_MONITOR_CONFIG.status
  is '状态  0 start 1 stop';
comment on column PSA_MONITOR_CONFIG.start_time
  is '启动时间';
comment on column PSA_MONITOR_CONFIG.cease_time
  is '停止时间';

prompt
prompt Creating table PSA_MONITOR_CONFIG_DETAIL
prompt ========================================
prompt
create table PSA_MONITOR_CONFIG_DETAIL
(
  id                VARCHAR2(60) not null,
  monitor_config_id VARCHAR2(60) not null,
  weight            VARCHAR2(60) not null,
  monitor_id        VARCHAR2(60) not null,
  orderid           VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_CONFIG_DETAIL
  is '监管项配置详情表';
comment on column PSA_MONITOR_CONFIG_DETAIL.monitor_config_id
  is '配置编号';
comment on column PSA_MONITOR_CONFIG_DETAIL.weight
  is '权重';
comment on column PSA_MONITOR_CONFIG_DETAIL.monitor_id
  is '监管项/点编号';
comment on column PSA_MONITOR_CONFIG_DETAIL.orderid
  is '首页专项分析模块监管项的显示顺序';
create index INDEX_CONFIGID on PSA_MONITOR_CONFIG_DETAIL (MONITOR_CONFIG_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_MONITORID on PSA_MONITOR_CONFIG_DETAIL (MONITOR_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_ORDERID on PSA_MONITOR_CONFIG_DETAIL (ORDERID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PSA_MONITOR_CONFIG_DETAIL
  add constraint PK_CONFIG_DETAIL primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_MONITOR_EXCEPTION
prompt ====================================
prompt
create table PSA_MONITOR_EXCEPTION
(
  id                 VARCHAR2(60) not null,
  monitor_config_id  VARCHAR2(60),
  dese               VARCHAR2(256),
  monitor_id         VARCHAR2(60),
  compute_date       DATE,
  police             VARCHAR2(60),
  exc_value          VARCHAR2(60),
  department         VARCHAR2(60),
  person_responsible VARCHAR2(200),
  person_card        VARCHAR2(100),
  exc_time           DATE,
  address            VARCHAR2(2000),
  car_no             VARCHAR2(60),
  value1             VARCHAR2(2000),
  value2             VARCHAR2(2000),
  value3             VARCHAR2(2000),
  value4             VARCHAR2(2000),
  value5             VARCHAR2(2000),
  value6             VARCHAR2(2000),
  value7             VARCHAR2(2000),
  value8             VARCHAR2(2000),
  value9             VARCHAR2(2000),
  value10            CLOB,
  case_id            VARCHAR2(60),
  value11            VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_EXCEPTION
  is '预警信息表';
comment on column PSA_MONITOR_EXCEPTION.monitor_config_id
  is '监管项配置编号';
comment on column PSA_MONITOR_EXCEPTION.dese
  is '异常描述';
comment on column PSA_MONITOR_EXCEPTION.monitor_id
  is '监管点编号';
comment on column PSA_MONITOR_EXCEPTION.compute_date
  is '预警时间';
comment on column PSA_MONITOR_EXCEPTION.police
  is '警员编号';
comment on column PSA_MONITOR_EXCEPTION.exc_value
  is '案件时间';
comment on column PSA_MONITOR_EXCEPTION.department
  is '办案人员部门ID';
comment on column PSA_MONITOR_EXCEPTION.person_responsible
  is '当事人';
comment on column PSA_MONITOR_EXCEPTION.person_card
  is '身份证号';
comment on column PSA_MONITOR_EXCEPTION.exc_time
  is '异常发生时间';
comment on column PSA_MONITOR_EXCEPTION.address
  is '违法地点';
comment on column PSA_MONITOR_EXCEPTION.car_no
  is '车牌号码';
comment on column PSA_MONITOR_EXCEPTION.value1
  is '值1';
comment on column PSA_MONITOR_EXCEPTION.value2
  is '值2';
comment on column PSA_MONITOR_EXCEPTION.value3
  is '值3';
comment on column PSA_MONITOR_EXCEPTION.value4
  is '值4';
comment on column PSA_MONITOR_EXCEPTION.value5
  is '值5';
comment on column PSA_MONITOR_EXCEPTION.value6
  is '值6';
comment on column PSA_MONITOR_EXCEPTION.value7
  is '值7';
comment on column PSA_MONITOR_EXCEPTION.value8
  is '值8';
comment on column PSA_MONITOR_EXCEPTION.value9
  is '值9';
comment on column PSA_MONITOR_EXCEPTION.value10
  is '值10';
comment on column PSA_MONITOR_EXCEPTION.case_id
  is '案件id';
create index INDEX_EXC_CPTIME on PSA_MONITOR_EXCEPTION (COMPUTE_DATE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_EXC_DEPT on PSA_MONITOR_EXCEPTION (DEPARTMENT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_EXC_ID on PSA_MONITOR_EXCEPTION (ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_EXC_MONITOR on PSA_MONITOR_EXCEPTION (MONITOR_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_EXC_POLICE on PSA_MONITOR_EXCEPTION (POLICE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_MONITOR_EXCEPTION_SOURCE
prompt ===========================================
prompt
create table PSA_MONITOR_EXCEPTION_SOURCE
(
  id           VARCHAR2(60) not null,
  exception_id VARCHAR2(60) not null,
  third_table  VARCHAR2(60) not null,
  source_id    VARCHAR2(256) not null,
  source       BLOB not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
nologging;
comment on table PSA_MONITOR_EXCEPTION_SOURCE
  is '预警与案件关联表';
comment on column PSA_MONITOR_EXCEPTION_SOURCE.exception_id
  is '预警编号';
comment on column PSA_MONITOR_EXCEPTION_SOURCE.third_table
  is '第三方表编号';
comment on column PSA_MONITOR_EXCEPTION_SOURCE.source_id
  is '原表主键对应值';
comment on column PSA_MONITOR_EXCEPTION_SOURCE.source
  is '源数据';

prompt
prompt Creating table PSA_MONITOR_EXECUTE_CONFIG
prompt =========================================
prompt
create table PSA_MONITOR_EXECUTE_CONFIG
(
  id          VARCHAR2(60) default sys_guid() not null,
  class_name  VARCHAR2(255) not null,
  monitor_id  VARCHAR2(60) not null,
  del_flag    VARCHAR2(2) not null,
  create_time DATE not null,
  update_time DATE not null,
  remark      VARCHAR2(255),
  exe_type    VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_EXECUTE_CONFIG
  is '适配器执行配置表';
comment on column PSA_MONITOR_EXECUTE_CONFIG.id
  is '主键';
comment on column PSA_MONITOR_EXECUTE_CONFIG.class_name
  is '执行类';
comment on column PSA_MONITOR_EXECUTE_CONFIG.monitor_id
  is '监管点编号';
comment on column PSA_MONITOR_EXECUTE_CONFIG.del_flag
  is '是否删除 0未删除,1已删除';
comment on column PSA_MONITOR_EXECUTE_CONFIG.create_time
  is '添加时间';
comment on column PSA_MONITOR_EXECUTE_CONFIG.update_time
  is '修改时间';
comment on column PSA_MONITOR_EXECUTE_CONFIG.remark
  is '备注';
comment on column PSA_MONITOR_EXECUTE_CONFIG.exe_type
  is '执行类别，0 数据碰撞 1是数据抽取';

prompt
prompt Creating table PSA_MONITOR_EXECUTE_LOG
prompt ======================================
prompt
create table PSA_MONITOR_EXECUTE_LOG
(
  id               VARCHAR2(60) not null,
  monitor_id       VARCHAR2(60) not null,
  begin_time       DATE not null,
  end_time         DATE not null,
  result           VARCHAR2(60),
  create_time      DATE,
  execute_end_time DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_EXECUTE_LOG
  is '监管执行日志表';
comment on column PSA_MONITOR_EXECUTE_LOG.monitor_id
  is '监管点编号';
comment on column PSA_MONITOR_EXECUTE_LOG.begin_time
  is '数据碰撞范围开始时间';
comment on column PSA_MONITOR_EXECUTE_LOG.end_time
  is '数据碰撞范围结束时间';
comment on column PSA_MONITOR_EXECUTE_LOG.result
  is '执行结果，0进行中，1成功，2失败';
comment on column PSA_MONITOR_EXECUTE_LOG.create_time
  is '执行开始时间';
comment on column PSA_MONITOR_EXECUTE_LOG.execute_end_time
  is '执行结束时间';
alter table PSA_MONITOR_EXECUTE_LOG
  add constraint PSA_MONITOR_EXECUTE_LOG_PK primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_MONITOR_EXE_PLAN_CONFIG
prompt ==========================================
prompt
create table PSA_MONITOR_EXE_PLAN_CONFIG
(
  id         VARCHAR2(60) not null,
  monitor_id VARCHAR2(60) not null,
  frequency  VARCHAR2(60) not null,
  fre_type   VARCHAR2(60),
  limitcount VARCHAR2(100),
  full_flag  VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_EXE_PLAN_CONFIG
  is '监管点执行频次表';
comment on column PSA_MONITOR_EXE_PLAN_CONFIG.monitor_id
  is '监管点编号';
comment on column PSA_MONITOR_EXE_PLAN_CONFIG.frequency
  is '执行频率';
comment on column PSA_MONITOR_EXE_PLAN_CONFIG.fre_type
  is '执行类型 0 是碰撞，1是抽取';
comment on column PSA_MONITOR_EXE_PLAN_CONFIG.limitcount
  is '抽取时间范围参数';
comment on column PSA_MONITOR_EXE_PLAN_CONFIG.full_flag
  is '0:增量抽取 1:全量抽取';

prompt
prompt Creating table PSA_MONITOR_FIELD_RELATION
prompt =========================================
prompt
create table PSA_MONITOR_FIELD_RELATION
(
  monitorid VARCHAR2(60) not null,
  fieldid   VARCHAR2(60) not null,
  colnum    NUMBER,
  id        VARCHAR2(60) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_FIELD_RELATION
  is '监管点预警字段关联表';
comment on column PSA_MONITOR_FIELD_RELATION.monitorid
  is '监管点编号';
comment on column PSA_MONITOR_FIELD_RELATION.fieldid
  is '展示字段，详见PSA_WARNING_FIELD表';
comment on column PSA_MONITOR_FIELD_RELATION.colnum
  is '所在列序号';
create index INDEX_FIELDRALATION on PSA_MONITOR_FIELD_RELATION (MONITORID)
  tablespace HIATMPTS
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
alter table PSA_MONITOR_FIELD_RELATION
  add constraint PK_MFR primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_MONITOR_INFO
prompt ===============================
prompt
create table PSA_MONITOR_INFO
(
  id            VARCHAR2(60) not null,
  parent_id     VARCHAR2(60) not null,
  type          VARCHAR2(60) not null,
  monitor_name  VARCHAR2(60) not null,
  status        VARCHAR2(60) default 0 not null,
  monitor_level VARCHAR2(60),
  path_name     VARCHAR2(100),
  remark1       BLOB,
  tables        VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_INFO
  is '监管项/点信息';
comment on column PSA_MONITOR_INFO.parent_id
  is '父节点';
comment on column PSA_MONITOR_INFO.type
  is '1流程风险，2其他风险';
comment on column PSA_MONITOR_INFO.monitor_name
  is '名称';
comment on column PSA_MONITOR_INFO.status
  is '0正常，1开发中，2测试中，3数据未接入';
comment on column PSA_MONITOR_INFO.monitor_level
  is '1监管项 2 监管点';
comment on column PSA_MONITOR_INFO.path_name
  is '监管项对应业务路由';
comment on column PSA_MONITOR_INFO.remark1
  is '描述';
comment on column PSA_MONITOR_INFO.tables
  is '关联碰撞表单';
create index INDEX_MONITOR on PSA_MONITOR_INFO (PARENT_ID, TYPE, STATUS, MONITOR_LEVEL)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_PARENTID on PSA_MONITOR_INFO (PARENT_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PSA_MONITOR_INFO
  add constraint PK_MONITOR primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_MONITOR_PARAM_CONFIG
prompt =======================================
prompt
create table PSA_MONITOR_PARAM_CONFIG
(
  id             VARCHAR2(60) default sys_guid() not null,
  monitor_id     VARCHAR2(60),
  param_code     VARCHAR2(60) not null,
  param_type     VARCHAR2(60),
  param_value    VARCHAR2(3500) not null,
  param_sub_code VARCHAR2(60),
  description    VARCHAR2(300)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_PARAM_CONFIG
  is '监管点参数配置表';
comment on column PSA_MONITOR_PARAM_CONFIG.param_sub_code
  is '参数子编码';
comment on column PSA_MONITOR_PARAM_CONFIG.description
  is '参数描述';
alter table PSA_MONITOR_PARAM_CONFIG
  add constraint PK_MONITOR_PARAM primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSA_MONITOR_THIRD_SYS_CONFIG
prompt ===========================================
prompt
create table PSA_MONITOR_THIRD_SYS_CONFIG
(
  id           VARCHAR2(60) not null,
  monitor_id   VARCHAR2(60),
  third_system VARCHAR2(60)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_MONITOR_THIRD_SYS_CONFIG
  is '监管点三方系统关联表';
alter table PSA_MONITOR_THIRD_SYS_CONFIG
  add constraint PK_M3SYS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSA_SYSTEM_CONFIG
prompt ================================
prompt
create table PSA_SYSTEM_CONFIG
(
  id          VARCHAR2(60) default sys_guid() not null,
  sys_name    VARCHAR2(60),
  status      VARCHAR2(2) default '0',
  create_time DATE,
  update_time DATE,
  parent_id   VARCHAR2(60),
  sys_level   VARCHAR2(2) default '0',
  remark      VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_SYSTEM_CONFIG
  is '第三方系统表';
comment on column PSA_SYSTEM_CONFIG.id
  is 'id';
comment on column PSA_SYSTEM_CONFIG.sys_name
  is '名称';
comment on column PSA_SYSTEM_CONFIG.status
  is '状态';
comment on column PSA_SYSTEM_CONFIG.create_time
  is '创建时间';
comment on column PSA_SYSTEM_CONFIG.update_time
  is '修改时间';
comment on column PSA_SYSTEM_CONFIG.parent_id
  is '上级';
comment on column PSA_SYSTEM_CONFIG.sys_level
  is '类别，0 系统  1 表';

prompt
prompt Creating table PSA_WARNING_FIELD
prompt ================================
prompt
create table PSA_WARNING_FIELD
(
  fieldid      VARCHAR2(60) not null,
  fieldname    VARCHAR2(60) not null,
  iscollide    VARCHAR2(2),
  displaywidth INTEGER,
  sqlid        VARCHAR2(30),
  id           VARCHAR2(60) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 8K
    minextents 1
    maxextents unlimited
  )
nologging;
comment on table PSA_WARNING_FIELD
  is '预警信息展示字段表';
comment on column PSA_WARNING_FIELD.fieldid
  is '字段英文';
comment on column PSA_WARNING_FIELD.fieldname
  is '字段中午说明';
comment on column PSA_WARNING_FIELD.iscollide
  is '是否碰撞字段，N否Y是';
comment on column PSA_WARNING_FIELD.displaywidth
  is '前台设置宽度';
comment on column PSA_WARNING_FIELD.sqlid
  is 'PSA_COLLIDE_SQL表id';
alter table PSA_WARNING_FIELD
  add constraint PK_WF primary key (FIELDID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSD_ACCIDENT_UPLOAD_INFO
prompt =======================================
prompt
create table PSD_ACCIDENT_UPLOAD_INFO
(
  id          VARCHAR2(32),
  upload_time DATE,
  operator    VARCHAR2(32),
  bh          VARCHAR2(30),
  case_type   VARCHAR2(2),
  case_id     VARCHAR2(32)
)
tablespace HIATMPTS
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
comment on table PSD_ACCIDENT_UPLOAD_INFO
  is '警情处置事故上传信息表';
comment on column PSD_ACCIDENT_UPLOAD_INFO.id
  is '数据主键';
comment on column PSD_ACCIDENT_UPLOAD_INFO.upload_time
  is '上传时间';
comment on column PSD_ACCIDENT_UPLOAD_INFO.operator
  is '操作人';
comment on column PSD_ACCIDENT_UPLOAD_INFO.bh
  is '文档编号';
comment on column PSD_ACCIDENT_UPLOAD_INFO.case_type
  is '类型 1强制措施 2处罚决定书';
comment on column PSD_ACCIDENT_UPLOAD_INFO.case_id
  is '警情id';

prompt
prompt Creating table PSD_ALGORITHM_PARAMS
prompt ===================================
prompt
create table PSD_ALGORITHM_PARAMS
(
  paramcode    NVARCHAR2(32) not null,
  paramname    NVARCHAR2(100) not null,
  paramvalue   NVARCHAR2(2000) not null,
  paramcontent NVARCHAR2(250)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table PSD_ALGORITHM_PARAMS
  is '警情处置算法参数配置表';
comment on column PSD_ALGORITHM_PARAMS.paramcode
  is '参数代码';
comment on column PSD_ALGORITHM_PARAMS.paramname
  is '参数名称';
comment on column PSD_ALGORITHM_PARAMS.paramvalue
  is '参数值';
comment on column PSD_ALGORITHM_PARAMS.paramcontent
  is '参数备注';
alter table PSD_ALGORITHM_PARAMS
  add constraint PSD_ALGO_PARAMS_KEY primary key (PARAMCODE)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSD_AREAINDEX_SPEED_RELATION
prompt ===========================================
prompt
create table PSD_AREAINDEX_SPEED_RELATION
(
  id       VARCHAR2(32) default sys_guid() not null,
  minindex VARCHAR2(2) not null,
  maxindex VARCHAR2(2) not null,
  cartype  VARCHAR2(2) not null,
  speed    VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
comment on table PSD_AREAINDEX_SPEED_RELATION
  is '区域指数和速度对照关系表';
comment on column PSD_AREAINDEX_SPEED_RELATION.id
  is '数据主键';
comment on column PSD_AREAINDEX_SPEED_RELATION.minindex
  is '交通指数下限';
comment on column PSD_AREAINDEX_SPEED_RELATION.maxindex
  is '交通指数上限';
comment on column PSD_AREAINDEX_SPEED_RELATION.cartype
  is '车辆类型(与勤务参数表dm_param_define中的DUTY_POSITION_DUTYTYPE对应)';
comment on column PSD_AREAINDEX_SPEED_RELATION.speed
  is '对应车速';
alter table PSD_AREAINDEX_SPEED_RELATION
  add constraint PK_PSD_AREAINDEX_SPEED primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table PSD_POLICE_DATA
prompt ==============================
prompt
create table PSD_POLICE_DATA
(
  id         VARCHAR2(32) not null,
  policetype VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table PSD_POLICE_DATA
  is '警情处置事故民警表';
comment on column PSD_POLICE_DATA.id
  is '警员数据主键对应police表中的uuid';
comment on column PSD_POLICE_DATA.policetype
  is '警员类型';
alter table PSD_POLICE_DATA
  add constraint PK_PSD_POLICE_DATA primary key (ID)
  using index 
  tablespace HIATMPTS
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

prompt
prompt Creating table TMP_GROUPID
prompt ==========================
prompt
create global temporary table TMP_GROUPID
(
  gid      VARCHAR2(50),
  ordernum INTEGER
)
on commit delete rows;





----------------view------------------------

--18个大队的警员数据
create or replace view police_data as
select distinct policeid,policename,deptid  from (
         select p.policeid, replace(replace(p.policename,' ',''),'　','') as policename, p.depid as deptid
           from POLICE p
           join department d on p.DEPID = d.CDEPARTMENTID
           join psa_department_config pdc on (pdc.code = d.CDEPARTMENTID or
                                             pdc.code = d.parentdepartment)
           left join POLICE_xfk px on p.policeid = px.policeid
          where p.auditstate = '1'
            and p.is_effective = '1'
            and p.isclosed = '1'
            and p.policeid != '999999'
            and px.policeid is null
         union all
         select px.policeid, replace(replace(px.policename,' ',''),'　','') as policename, px.deptid as deptid
           from POLICE_xfk px
           join department d on px.deptid = d.CDEPARTMENTID
           join psa_department_config pdc on (pdc.code = d.CDEPARTMENTID or
                                             pdc.code = d.parentdepartment)
);
/


----18个大队的警员id统计数据（判断警号是否存在于18个大队用）
create or replace view police_id_data as
select count(*) cnt, policeid
   from police_data t
  group by t.policeid;
/
  
----18个大队的警员姓名统计数据（判断警员姓名是否存在于18个大队用）
create or replace view police_name_data as
select count(*) cnt, policename
   from police_data t
  group by t.policename;
/


create or replace view police_data_all as
select distinct policeid,policename,deptid  from (
         select p.policeid, replace(replace(p.policename,' ',''),'　','') as policename, p.depid as deptid
           from POLICE p
           join department d on p.DEPID = d.CDEPARTMENTID
      left join POLICE_xfk px on p.policeid = px.policeid
          where p.auditstate = '1'
            and p.is_effective = '1'
            and p.isclosed = '1'
            and p.policeid != '999999'
            and px.policeid is null
         union all
         select px.policeid, replace(replace(px.policename,' ',''),'　','') as policename, px.deptid as deptid
           from POLICE_xfk px
           join department d on px.deptid = d.CDEPARTMENTID
);
/

--所有大队的警号统计数据（判断警号是否重复用）
create or replace view police_id_data_all as
select count(*) cnt, policeid
   from police_data_all t
  group by t.policeid;
/
  
 
--所有大队的警员姓名统计数据（判断警员姓名是否重复用）
create or replace view police_name_data_all as
select count(*) cnt, policename
   from police_data_all t
  group by t.policename;
/



create or replace view department_belongto as
select t.cdepartmentid,
       t.cdepartmentname,
       t.deptshortname,
       to_char(t.nlevel) nlevel,
       to_char(t.departmentflag) departmentflag,
       t.cdepartmentid belongto
  from department t
where t.nlevel = '3'
union all
select t.cdepartmentid,
       t.cdepartmentname,
       t.deptshortname,
       to_char(t.nlevel) nlevel,
       to_char(t.departmentflag) departmentflag,
       t.parentdepartment belongto
  from department t
where t.nlevel = '4'
union all
select t.cdepartmentid,
       t.cdepartmentname,
       t.deptshortname,
       to_char(t.nlevel) nlevel,
       to_char(t.departmentflag) departmentflag,
       t1.parentdepartment belongto
  from department t,department t1
where t.nlevel = '5' and t.parentdepartment=t1.cdepartmentid;
/
 
 
 
create or replace view pis_info_abandon_view as
select to_char(l.oper_target_id) info_id,l.oper_time abandontime from pis_oper_log l where l.oper_code=21 and nvl(instr(l.group_id,'_del'),0)>0
union all
select to_char(r.info_id),l.oper_time from pis_oper_log l,pis_info_group_relation r where l.oper_code=27 and l.group_id=r.group_id;
/
 
 
create or replace view psd_index_view as
select iai.indey dept_index, ia.hiatmp_code dept
         from INDEX_AREA_INDEX@hiatis iai join index_area@hiatis ia on iai.area_id = ia.area_id
         where not exists (select 1 from INDEX_AREA_INDEX@hiatis i where i.area_id = iai.area_id
         and i.insert_time > iai.insert_time) and iai.insert_time > sysdate - (select nvl(pap.paramvalue, 5) from psd_algorithm_params pap where pap.paramcode = 'DEPT_ROADINDEX_INTERVAL') / 1440 group by ia.hiatmp_code, iai.indey;



prompt
prompt Creating view PIS_GROUP_CK_VIEW
prompt ===============================
prompt
create or replace force view pis_group_ck_view as
select l.group_id,count(1)count from pis_oper_log l where l.oper_code='50' group by l.group_id;

prompt
prompt Creating view PIS_GROUP_DATA_VIEW
prompt =================================
prompt
create or replace force view pis_group_data_view as
select GROUP_ID,
       case
         when group_level is not null then
          group_level
         else
          (select min(i1.info_level)
             from pis_info_group_relation r1, pis_info_base i1
            where r1.info_id = i1.info_id
              and r1.group_id = t.group_id)
       end group_level,
       case
         when sign_limit is not null then
          sign_limit
         else
          (select to_number(c.param_value)
             from pis_param_config c
            where c.param_code = 'SIGN_TIME')
       end sign_limit,
       DISPATCH_TIME,
       SIGN_TIME,
       case
         when close_limit is not null then
          close_limit
         else
          (select max(ftc.close_limit)
             from pis_info_base           ib,
                  pis_info_group_relation igr,
                  pis_feature_type_config ftc
            where ib.info_id = igr.info_id
              and ib.info_subtype = ftc.subtype
              and igr.group_id = t.group_id)
       end close_limit,
       CLOSE_TIME,
       GROUP_STAGE,
       SORTER_USERID,
       DISPATCH_CLOSE_TIME,
       t.recall_time,
	   t.recall_approval_status from pis_group t;

prompt
prompt Creating view PIS_GROUP_CQ_VIEW
prompt ===============================
prompt
create or replace force view pis_group_cq_view as
select g.group_id,g.dispatch_time start_time,g.group_stage from pis_group_data_view g
where g.group_stage='03'
and g.dispatch_time+nvl(g.sign_limit,0)/(24*60)<sysdate
union all
select g.group_id,g.sign_time start_time,g.group_stage from pis_group_data_view g
where g.group_stage='04' and g.dispatch_time+nvl(g.close_limit,0)/(24*60)<sysdate;

prompt
prompt Creating view PIS_GROUP_DB_VIEW
prompt ===============================
prompt
create or replace force view pis_group_db_view as
select d.group_id,count(1)count from pis_info_depts d where d.is_supervise='1' group by d.group_id;

prompt
prompt Creating view PIS_GROUP_SJ_VIEW
prompt ===============================
prompt
create or replace force view pis_group_sj_view as
select l.group_id,count(1)count from pis_oper_log l where l.oper_code='24' group by l.group_id;

prompt
prompt Creating view PIS_GROUP_VIEW
prompt ============================
prompt
create or replace force view pis_group_view as
select GROUP_ID,group_level upgrade_level,
        case
         when to_number(nvl(group_level,100))<(select to_number(nvl(min(i1.info_level),100))
             from pis_info_group_relation r1, pis_info_base i1
            where r1.info_id = i1.info_id
              and r1.group_id = t.group_id) then
          group_level
         else
          (select min(i1.info_level)
             from pis_info_group_relation r1, pis_info_base i1
            where r1.info_id = i1.info_id
              and r1.group_id = t.group_id)
       end group_level,
       case
         when sign_limit is not null then
          sign_limit
         else
          (select to_number(c.param_value)
             from pis_param_config c
            where c.param_code = 'SIGN_TIME')
       end sign_limit,
       DISPATCH_TIME,
       SIGN_TIME,
       case
         when close_limit is not null then
          close_limit
         else
          (select max(ftc.close_limit)
             from pis_info_base           ib,
                  pis_info_group_relation igr,
                  pis_feature_type_config ftc
            where ib.info_id = igr.info_id
              and ib.info_subtype = ftc.subtype
              and igr.group_id = t.group_id)
       end close_limit,
       CLOSE_TIME ,
       GROUP_STAGE,
       SORTER_USERID,
       DISPATCH_CLOSE_TIME,
       recall_time,
       t.recall_approval_status,
       (select count(1) from pis_group_db_view db where db.group_id=t.group_id) dbflag,
       (select count(1) from pis_group_ck_view ck where ck.group_id=t.group_id) ckflag,
       (select count(1) from pis_group_cq_view cq where cq.group_id=t.group_id) cqflag
  from pis_group t;

prompt
prompt Creating view PIS_INFO_ABANDON_VIEW
prompt ===================================
prompt
create or replace force view pis_info_abandon_view as
select to_char(l.oper_target_id) info_id,l.oper_time abandontime from pis_oper_log l where l.oper_code=21 and nvl(instr(l.group_id,'_del'),0)>0
union all
select to_char(r.info_id),l.oper_time from pis_oper_log l,pis_info_group_relation r where l.oper_code=27 and l.group_id=r.group_id;

prompt
prompt Creating view PIS_INFO_DISPATCH
prompt ===============================
prompt
create or replace force view pis_info_dispatch as
select substr(g.group_id,0,16)
group_id,g.group_id groupid_del,l.oper_time,l.oper_account,i."INFO_ID",i."INFO_CHANNEL",i."INFO_SOURCE",i."INFO_FEATURE",i."INFO_LEVEL",i."INFO_TYPE",i."INFO_SUBTYPE",i."INFO_TIME",i."CREATE_TIME",i."INFO_STAGE",i."DISPATCH_TIME",i."SIGN_TIME",i."THIRDSYSCODE",i."SIMHASHCODE",i."INFO_COORDINATE",i."INFO_ADDRESS",i."CONFIRM_TIME",i."CONFIRM_USERID",i."CLOSE_TIME",i."INFO_DEPTID",i."INFO_DESC",i."INFO_CONTENT",i."INFO_TOPIC"
  from pis_group g, pis_info_base i, pis_info_group_relation r, pis_oper_log l
 where g.group_id like '%_del%'
   and i.info_id = r.info_id
   and r.group_id = g.group_id
   and l.oper_code='21' and r.group_id=l.group_id and i.info_id=l.oper_target_id
union all
select to_char(l.oper_target_id)
group_id,l.group_id group_del,l.oper_time,l.oper_account,i."INFO_ID",i."INFO_CHANNEL",i."INFO_SOURCE",i."INFO_FEATURE",i."INFO_LEVEL",i."INFO_TYPE",i."INFO_SUBTYPE",i."INFO_TIME",i."CREATE_TIME",i."INFO_STAGE",i."DISPATCH_TIME",i."SIGN_TIME",i."THIRDSYSCODE",i."SIMHASHCODE",i."INFO_COORDINATE",i."INFO_ADDRESS",i."CONFIRM_TIME",i."CONFIRM_USERID",i."CLOSE_TIME",i."INFO_DEPTID",i."INFO_DESC",i."INFO_CONTENT",i."INFO_TOPIC" from pis_oper_log l,pis_info_group_relation r,pis_info_base i,pis_group g
where l.oper_code='27' and i.info_id=r.info_id and r.group_id=l.group_id and g.group_id=r.group_id and g.group_id like '%_del%'
union all
select g.group_id,g.group_id groupid_del,g.dispatch_time oper_time,g.sorter_userid oper_account ,i."INFO_ID",i."INFO_CHANNEL",i."INFO_SOURCE",i."INFO_FEATURE",i."INFO_LEVEL",i."INFO_TYPE",i."INFO_SUBTYPE",i."INFO_TIME",i."CREATE_TIME",i."INFO_STAGE",i."DISPATCH_TIME",i."SIGN_TIME",i."THIRDSYSCODE",i."SIMHASHCODE",i."INFO_COORDINATE",i."INFO_ADDRESS",i."CONFIRM_TIME",i."CONFIRM_USERID",i."CLOSE_TIME",i."INFO_DEPTID",i."INFO_DESC",i."INFO_CONTENT",i."INFO_TOPIC"
from pis_group g, pis_info_group_relation r, pis_info_base i
  where i.info_id = r.info_id and r.group_id = g.group_id  and g.dispatch_time is not null and i.dispatch_time is not null and i.info_stage in ('03','04','05');

  
  
----------------------type---------------
prompt
prompt Creating type TY_ROW_STR_SPLIT
prompt ==============================
prompt
CREATE OR REPLACE TYPE ty_row_str_split  as object (strValue VARCHAR2 (4000));
/

prompt
prompt Creating type TY_TBL_STR_SPLIT
prompt ==============================
prompt
CREATE OR REPLACE TYPE ty_tbl_str_split AS TABLE OF ty_row_str_split;
/


--------------------function---------------
prompt
prompt Creating function BELONGROAD
prompt ============================
prompt
create or replace function belongRoad(longitude in varchar2,latitude in varchar2) return varchar2 is
  t_str  varchar2(4000);
begin
  select t.sectionid into t_str from (
  select m.sectionid,SDO_GEOM.SDO_DISTANCE(G.GEOMETRY,
                                MDSYS.SDO_GEOMETRY(2001,
                                                   8307,
                                                   MDSYS.SDO_POINT_TYPE(to_number(longitude), to_number(latitude), 0),
                                                   NULL,
                                                   NULL),1) distance from monitor_section_positions g left join monitor_section m on g.sectionid = m.sectionid
 WHERE SDO_WITHIN_DISTANCE(G.GEOMETRY,
                           MDSYS.SDO_GEOMETRY(2001,/*点类型*/
                                              8307,
                                              MDSYS.SDO_POINT_TYPE(to_number(longitude), to_number(latitude), 0),
                                              NULL,
                                              NULL),
                           'distance=200 querytype=WINDOW') = 'TRUE'
   AND G.ZOOMLEVEL = '0' order by distance) t where rownum=1;

  return t_str;
end belongRoad;
/

prompt
prompt Creating function COMPLETEHPHM
prompt ==============================
prompt
create or replace function completehphm(hphm in varchar,hpzl in varchar) return varchar2 is
  Result varchar2(20);

begin
  if hpzl = '15' then
    if instr(hphm,'挂')<=0 then
      Result := hphm || '挂';
      return(Result);
    end if;
  end if;

  if hpzl = '16' then
    if instr(hphm,'学')<=0 then
      Result := hphm || '学';
      return(Result);
    end if;
  end if;

  if hpzl = '23' then
    if instr(hphm,'警')<=0 then
      Result := hphm || '警';
      return(Result);
    end if;
  end if;

  if hpzl = '26' then
    if instr(hphm,'港')<=0 then
      Result := hphm || '港';
      return(Result);
    end if;
  end if;

  if hpzl = '27' then
    if instr(hphm,'澳')<=0 then
      Result := hphm || '澳';
      return(Result);
    end if;
  end if;

  if hpzl = '03' then
    if instr(hphm,'使')<=0 then
      Result := hphm || '使';
      return(Result);
    end if;
  end if;

  if hpzl = '04' then
    if instr(hphm,'领')<=0 then
      Result := hphm || '领';
      return(Result);
    end if;
  end if;
  Result:= hphm;
return(Result);
end completehphm;
/

prompt
prompt Creating function FN_SPLIT
prompt ==========================
prompt
CREATE OR REPLACE FUNCTION fn_split(p_str       IN VARCHAR2,
                                    p_delimiter IN VARCHAR2)
  RETURN ty_tbl_str_split IS
  j         INT := 0;
  i         INT := 1;
  len       INT := 0;
  len1      INT := 0;
  str       VARCHAR2(4000);
  str_split ty_tbl_str_split := ty_tbl_str_split();
BEGIN
  len  := LENGTH(p_str);
  len1 := LENGTH(p_delimiter);
  WHILE j < len LOOP
    j := INSTR(p_str, p_delimiter, i);
    IF j = 0 THEN
      j   := len;
      str := SUBSTR(p_str, i);
      str_split.EXTEND;
      str_split(str_split.COUNT) := ty_row_str_split(strValue => str);
      IF i >= len THEN
        EXIT;
      END IF;
    ELSE
      str := SUBSTR(p_str, i, j - i);
      i   := j + len1;
      str_split.EXTEND;
      str_split(str_split.COUNT) := ty_row_str_split(strValue => str);
    END IF;
  END LOOP;
  RETURN str_split;
END fn_split;
/

prompt
prompt Creating function FORMAT_TIME
prompt =============================
prompt
create or replace function format_time(collection_time in Date) return integer is
  Result integer;
begin
  Result:=to_number(trunc(collection_time,'hh24'))*60*60+to_number(trunc(collection_time,'mi'))*60+to_number(trunc(collection_time,'ss'));
  return(Result);
end format_time;
/

prompt
prompt Creating function ISCONTAIN
prompt ===========================
prompt
create or replace function iscontain(str in varchar2, key in varchar2,split in varchar2) return number is
  Result number;
begin
  select instr(split||str||split,split||key||split) into Result from dual;
  return(Result);
end iscontain;
/

prompt
prompt Creating function ISNUMBER
prompt ==========================
prompt
create or replace function Isnumber(P_column in varchar2) return number
is
 l_t number;
begin
  l_t := to_number(P_column) ;
 -- if l_t >=0 then
     return 1;
 -- else
   --  return 0;
 -- end if;
  exception when others then
     return 0;
end;
/

prompt
prompt Creating function IS_VEHICLE_NUMBER
prompt ===================================
prompt
create or replace function is_vehicle_number(p_vehicle_number in varchar2) return number

  is

    v_result number;

    v_express varchar2(600);

    v_p_vehicle_number varchar2(20);

  begin

    -- 默认0，表示不正确

    v_result := 0;
    v_p_vehicle_number := '';

--挂车
    if instr(p_vehicle_number,'挂') > 0 then

      v_p_vehicle_number := substr(p_vehicle_number,1,7);

       v_express := '^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]{1}$';

      if regexp_like(v_p_vehicle_number, v_express) then

        v_result := 1;

      end if;

    end if;


-- 普通车处理（包括警车和军车）

    if length(p_vehicle_number) = 7 then

      v_express := '^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[A-HJ-NP-Z0-9]{4}[A-HJ-NP-Z0-9挂学警港澳使领]{1}$';

      if regexp_like(p_vehicle_number, v_express) then

        v_result := 1;

      end if;

    end if;


    if length(p_vehicle_number) = 8 then

 -- 新能源车处理（分为小型能源车和大型能源车）

    --小型能源车

      v_express := '^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[DF]{1}[[A-HJ-NP-Z0-9]{1}[0-9]{4}$';

      if regexp_like(p_vehicle_number, v_express) then

        v_result := 1;

      end if;

      --大型能源车

      v_express := '^[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼使领A-Z]{1}[A-Z]{1}[0-9]{5}[DF]{1}$';

      if regexp_like(p_vehicle_number, v_express) then

        v_result := 1;

      end if;

 -- 武警车处理

      v_express := '^[W]{1}[J]{1}[京津沪渝冀豫云辽黑湘皖鲁新苏浙赣鄂桂甘晋蒙陕吉闽贵粤青藏川宁琼]{1}[0-9]{4}[0-9XBTSHJD]{1}$';

      if regexp_like(p_vehicle_number, v_express) then

        v_result := 1;

      end if;

    end if;

    return v_result;

  end;
/

prompt
prompt Creating function MD5
prompt =====================
prompt
CREATE OR REPLACE FUNCTION MD5( passwd IN VARCHAR2) RETURN VARCHAR2

IS

    retval varchar2(32);

BEGIN

    retval := (case when passwd is null then null else utl_raw.cast_to_raw(DBMS_OBFUSCATION_TOOLKIT.MD5(INPUT_STRING => passwd)) end);

    RETURN retval;

END;
/

prompt
prompt Creating function PARSEJSON
prompt ===========================
prompt
CREATE OR REPLACE FUNCTION parsejson(p_jsonstr varchar2,p_key varchar2) RETURN VARCHAR2
AS
  rtnVal VARCHAR2(1000);
  i NUMBER(2);
  jsonkey VARCHAR2(500);
  jsonvalue VARCHAR2(1000);
  json VARCHAR2(3000);
BEGIN
  IF p_jsonstr IS NOT NULL THEN
     json := REPLACE(p_jsonstr,'{','') ;
     json := REPLACE(json,'}','') ;
     json := replace(json,'"','') ;
     FOR temprow IN(SELECT strvalue AS VALUE FROM TABLE(fn_split(json, ','))) LOOP
        IF temprow.VALUE IS NOT NULL THEN
           i := 0;
           jsonkey := '';
           jsonvalue := '';
           FOR tem2 IN(SELECT strvalue AS VALUE FROM TABLE(fn_split(temprow.value, ':'))) LOOP
               IF i = 0 THEN
                  jsonkey := tem2.VALUE;
               END IF;
               IF i = 1 THEN
                  jsonvalue := tem2.VALUE;
               END IF;

               i := i + 1;
           END LOOP;

           IF(jsonkey = p_key) THEN
               rtnVal := jsonvalue;
           END if;
        END IF;
     END LOOP;
  END IF;
  RETURN rtnVal;
END parsejson;
/

prompt
prompt Creating function SPLIT
prompt =======================
prompt
CREATE OR REPLACE FUNCTION split (p_list CLOB, p_sep VARCHAR2 := ',')
RETURN tabletype
PIPELINED
/**************************************
* Name: split
* Author: Sean Zhang.
* Date: 2012-09-03.
* Function: 返回字符串被指定字符分割后的表类型。
* Parameters: p_list: 待分割的字符串。
p_sep: 分隔符，默认逗号，也可以指定字符或字符串。
* Example: SELECT *
FROM users
WHERE u_id IN (SELECT COLUMN_VALUE
FROM table (split ('1,2')))
返回u_id为1和2的两行数据。
**************************************/
IS
l_idx PLS_INTEGER;
v_list VARCHAR2 (32676) := p_list;
BEGIN
LOOP
l_idx := INSTR (v_list, p_sep);
IF l_idx > 0
THEN
PIPE ROW (SUBSTR (v_list, 1, l_idx - 1));
v_list := SUBSTR (v_list, l_idx + LENGTH (p_sep));
ELSE
PIPE ROW (v_list);
EXIT;
END IF;
END LOOP;
END;
/

prompt
prompt Creating function SPLITSTR
prompt ==========================
prompt
create or replace function splitstr(str in clob,

                                    i  in number := 0,

                                    sep in varchar2 := ',') return varchar2 is

  t_count number;

  t_str  varchar2(4000);

begin

  t_str := '';

  if i = 0 then

    t_str := str;

  elsif instr(str, sep) = 0 and i = 1 then

    t_str := str;

  else

    select count(*) into t_count from table(split(str, sep));

    if i <= t_count then

      select str

        into t_str

        from (select rownum as item, column_value as str

                from table(split(str, sep)))

      where item = i;

    end if;

  end if;

  return t_str;

end;
/

prompt
prompt Creating function PIS_GROUPCLOSETIME
prompt ====================================
prompt
create or replace function pis_groupclosetime(time    in date,
                                              limit   in varchar2,
                                              recall  in varchar2,
                                              status  in varchar2)
return date is
  Result date;
  status1 varchar2(10);
  status2 varchar2(10);
  len1    int;
  len2    int;
begin
  len1 := 0;
  len2 := 0;
  status1 := splitstr(status,1,',');
  status2 := splitstr(status,2,',');
  if status1='1' then
    len1 := to_number(nvl(splitstr(recall,1,','),'0'));
  end if;
  if status2='1' then
    len2 := to_number(nvl(splitstr(recall,2,','),'0'));
  end if;

  Result := time+limit/(24*60)+len1+len2;

  return(Result);
end pis_groupclosetime;
/

prompt
prompt Creating function RAD
prompt =====================
prompt
create or replace function rad(d number) return number
is
pi number :=3.141592625;
begin
  return  d * pi/180.0;
end ;
/

prompt
prompt Creating function RATIO
prompt =======================
prompt
create or replace function ratio(value in number, beforevalue in number) return varchar2 is
  Result varchar2(4000);
begin
  select case beforevalue when 0 then '--'
  else rtrim(to_char((value-beforevalue)/beforevalue,'FM999999999990.9999'),to_char(0,'.')) end into Result from dual;
  return(Result);
end ratio;
/

prompt
prompt Creating function REGEXP_LIKE_NUMBER
prompt ====================================
prompt
create or replace function regexp_like_number(
  haopai  VARCHAR2,
  haopai2  VARCHAR2 )
   return number is
  sum_i integer;
  size_i integer;
  i integer;
 begin
--declare
-- haopai varchar2(9) := '鲁B1U3O5';
-- haopai2 varchar2(9) := '鲁B12345';
 size_i := length(haopai);
 i  :=1;
 sum_i :=0;

 --dbms_output.put_line(size_i);
 loop
 if(i!=1) then
  if substr(haopai,i,1)!=substr(haopai2,i,1) then
  --dbms_output.put_line(i);
  -- dbms_output.put_line(substr(haopai,i,1));
   -- dbms_output.put_line(substr(haopai2,i,1));
  sum_i:=sum_i+1;
  end if;
  end if;
  i:=i+1;
  exit when i>size_i;
  end loop;
  return(sum_i);
  --dbms_output.put_line(sum_i);
  end;
/

prompt
prompt Creating function REGEXP_LIKE_NUMBER_COMP
prompt =========================================
prompt
create or replace function regexp_like_number_comp(
  haopai  VARCHAR2,
  haopai2  VARCHAR2 )
   return number is
  sum_i integer;
  size_i integer;
  i integer;
 begin
--declare
-- haopai varchar2(9) := 'B1U3O5';
-- haopai2 varchar2(9) := 'B12345';
 size_i := length(haopai);
 i  :=1;
 sum_i :=0;

 --dbms_output.put_line(size_i);
 loop
 --if(i!=1) then
  if substr(haopai,i,1)!=substr(haopai2,i,1) then
  --dbms_output.put_line(i);
  -- dbms_output.put_line(substr(haopai,i,1));
   -- dbms_output.put_line(substr(haopai2,i,1));
  sum_i:=sum_i+1;
  end if;
 -- end if;
  i:=i+1;
  exit when i>size_i;
  end loop;
  return(sum_i);
  --dbms_output.put_line(sum_i);
  end;
/

prompt
prompt Creating function ROADLENGTHINEREA
prompt ==================================
prompt
create or replace function roadLengthInErea(p_dldm varchar2, erea varchar2)
  return number is
  /*
  计算道路(道路代码为dldm)在辖区(行政辖区为erea)内的道路长度
  注意，只有国道、省道、高速才可以使用此方法计算
  */
  TYPE xq_item_type IS TABLE OF VARCHAR2(100) index by binary_integer;
  xqItem xq_item_type;
  /*格式为：李沧,370213,1,1111;.....*/
  xzqhxxlc varchar2(2000);
  xqLength number := 0;

begin

  --select xzqhxxlc into xzqhxxlc from vio_coderoad where dldm = p_dldm and glxzdj not in ('3', '4') and rownum = 1;
  select xzqhxxlc into xzqhxxlc from vio_coderoad where dldm = p_dldm and rownum = 1;
  for item in (select column_value from table(split(xzqhxxlc, ';'))) loop

    select column_value bulk collect into xqItem from table(split(item.column_value, ','));

    if xqItem(2) = erea then
      xqLength := to_number(xqItem(4)) - to_number(xqItem(3));
    end if;

  end loop;

  return xqLength;

exception
  when others then
    dbms_output.put_line(sqlcode || ': ' || sqlerrm || ' in methord :roadLengthInErea');
    return 0;
end;
/

create or replace function trans_vehicle_hpzl
(p_vehicle_hpzl in varchar2,
p_xfk_hpzl in varchar2
)
return varchar2

  is

    v_result varchar2(5);

  begin

    -- 默认0，表示不匹配

    v_result := '';

-- 挂车处理

    if p_xfk_hpzl = '01' or p_xfk_hpzl = '51'  then
        v_result := '01';
    elsif p_xfk_hpzl = '02' or p_xfk_hpzl = '52' then
        v_result := '02';
    elsif p_xfk_hpzl = '07' then
         if p_vehicle_hpzl = '07A'  then
            v_result := '07A';
         else
            v_result := '07B';
         end if;
    elsif p_xfk_hpzl = '15' then
         v_result := '15';
    elsif p_xfk_hpzl is not null then
          v_result := 'A9';
    end if;

    return v_result;

  end;
/


spool off
