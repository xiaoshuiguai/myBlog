------------------------------------------------------
-- Export file for user GKPT62@10.16.3.179/HIATMPDB --
-- Created by linan3 on 2022/7/26, 19:27:28 ----------
------------------------------------------------------

set define off
spool 6.2.log




--FACE_MODE
-- Add/modify columns 
alter table FACE_MODE add isupdate char(1);
-- Add comments to the columns 
comment on column FACE_MODE.isupdate
  is '0-不可修改删除   1-可修改删除';
  
-- Add/modify columns 
alter table FACE_MODE add insert_date date;
-- Add comments to the columns 
comment on column FACE_MODE.insert_date
  is '首次入库时间';


-- PIS_INFO_BASE
-- Add/modify columns 
alter table PIS_INFO_BASE add direction VARCHAR2(32);
alter table PIS_INFO_BASE add road_code VARCHAR2(32);
-- Add comments to the columns 
comment on column PIS_INFO_BASE.direction
  is '方向';
comment on column PIS_INFO_BASE.road_code
  is '所属道路编号';
  
alter table PIS_INFO_BASE modify thirdsyscode VARCHAR2(40);


-- PIS_GROUP
-- Add/modify columns 
alter table PIS_GROUP add deal_image_limit VARCHAR2(2);
-- Add comments to the columns 
comment on column PIS_GROUP.deal_image_limit
  is '办结时图片是否为必填项（0：不是；1：是）';


--MONITOR_POINT
-- Add/modify columns 
alter table MONITOR_POINT add crossingcode VARCHAR2(32);
alter table MONITOR_POINT add sectioncode VARCHAR2(32);
alter table MONITOR_POINT add roadcode VARCHAR2(32);
-- Add comments to the columns 
comment on column MONITOR_POINT.crossingcode
  is '三平台路口编号';
comment on column MONITOR_POINT.sectioncode
  is '三平台路段编号';
comment on column MONITOR_POINT.roadcode
  is '三平台道路编号';
  

--BIS_ROAD
-- Add/modify columns 
alter table BIS_ROAD add TRANSPORT_SYS_CODE VARCHAR2(30);
-- Add comments to the columns 
comment on column BIS_ROAD.TRANSPORT_SYS_CODE
  is '六合一道路编号';

--BIS_DEVICE
-- Add/modify columns 
alter table BIS_DEVICE modify thirdsyscode VARCHAR2(40);

--FACE_AREA_INDEX
-- Add/modify columns 
alter table FACE_AREA_INDEX add inserttime date default sysdate;
alter table FACE_AREA_INDEX add intocity_prv_vehicle_num number;
alter table FACE_AREA_INDEX add outcity_prv_vehicle_num number;
alter table FACE_AREA_INDEX add in_prv_other_city_num number;
alter table FACE_AREA_INDEX add out_prv_other_city_num number;
-- Add comments to the columns 
comment on column FACE_AREA_INDEX.inserttime
  is '插入时间';
comment on column FACE_AREA_INDEX.intocity_prv_vehicle_num
  is '进城车辆中外省车数';
comment on column FACE_AREA_INDEX.outcity_prv_vehicle_num
  is '出城车辆中外省车数';
comment on column FACE_AREA_INDEX.in_prv_other_city_num
  is '进城本省外地车';
comment on column FACE_AREA_INDEX.out_prv_other_city_num
  is '出城本省外地车';


-- FACE_AREA_INDEX_REAL
 -- Add/modify columns 
alter table FACE_AREA_INDEX_REAL add inserttime date default sysdate;
alter table FACE_AREA_INDEX_REAL add intocity_prv_vehicle_num number;
alter table FACE_AREA_INDEX_REAL add outcity_prv_vehicle_num number;
alter table FACE_AREA_INDEX_REAL add in_prv_other_city_num number;
alter table FACE_AREA_INDEX_REAL add out_prv_other_city_num number;
-- Add comments to the columns 
comment on column FACE_AREA_INDEX_REAL.inserttime
  is '插入时间';
comment on column FACE_AREA_INDEX_REAL.intocity_prv_vehicle_num
  is '进城车辆中外省车数';
comment on column FACE_AREA_INDEX_REAL.outcity_prv_vehicle_num
  is '出城车辆中外省车数';
comment on column FACE_AREA_INDEX_REAL.in_prv_other_city_num
  is '进城本省外地车';
comment on column FACE_AREA_INDEX_REAL.out_prv_other_city_num
  is '出城本省外地车';


--FACI_VEHICLEPARK
--补充（脚本）
alter table FACI_VEHICLEPARK modify uuid not null;
alter table FACI_VEHICLEPARK modify delflag not null;
alter table FACI_VEHICLEPARK modify createid not null;
alter table FACI_VEHICLEPARK modify createtime not null;
alter table FACI_VEHICLEPARK modify updateid not null;
alter table FACI_VEHICLEPARK modify updatetime not null;
comment on column FACI_VEHICLEPARK.updateid
  is '更新用户id';
comment on column FACI_VEHICLEPARK.SERIAL
  is '停车场编号';

--EQUIPMENT_INFO
alter table EQUIPMENT_INFO modify thirdsyscode NVARCHAR2(64);

--PIS_ORDER_CIRCULATION
alter table PIS_ORDER_CIRCULATION modify feedback_content NVARCHAR2(1000);


--PIS_FEATURE_TYPE_CONFIG
alter table PIS_FEATURE_TYPE_CONFIG add info_colour Integer default 0;
comment on column PIS_FEATURE_TYPE_CONFIG.info_colour
  is '情报色彩数值';


----------------------------------
--  Changed table face_weather  --
----------------------------------
-- Drop columns 
alter table FACE_WEATHER drop column time;
alter table FACE_WEATHER drop column temp1;
alter table FACE_WEATHER drop column temp2;
alter table FACE_WEATHER drop column wind;
alter table FACE_WEATHER add province VARCHAR2(32);
alter table FACE_WEATHER add adcode VARCHAR2(32);
alter table FACE_WEATHER add city VARCHAR2(32);
alter table FACE_WEATHER modify weather VARCHAR2(32);
alter table FACE_WEATHER add temperature VARCHAR2(32);
alter table FACE_WEATHER add winddirection VARCHAR2(32);
alter table FACE_WEATHER add windpower VARCHAR2(32);
alter table FACE_WEATHER add humidity VARCHAR2(32);
alter table FACE_WEATHER add reporttime VARCHAR2(32);
alter table FACE_WEATHER add insertdate DATE default SYSDATE;
-- Add comments to the columns 
comment on column FACE_WEATHER.id
  is '主键（时间）';
comment on column FACE_WEATHER.province
  is '省份名称';
comment on column FACE_WEATHER.adcode
  is '城市编码';
comment on column FACE_WEATHER.city
  is '城市名称';
comment on column FACE_WEATHER.weather
  is '天气气象（汉字描述）';
comment on column FACE_WEATHER.temperature
  is '实时气温，单位：摄氏度';
comment on column FACE_WEATHER.winddirection
  is '风向描述';
comment on column FACE_WEATHER.windpower
  is '风力级别，单位：级';
comment on column FACE_WEATHER.humidity
  is '空气湿度';
comment on column FACE_WEATHER.reporttime
  is '预报发布时间';
comment on column FACE_WEATHER.insertdate
  is '数据入库时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_WEATHER
  add constraint FACE_WEATHER_ID primary key (ID)
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
prompt Creating table CTS_MQTABLE
prompt ==========================
prompt
create table CTS_MQTABLE
(
  id          VARCHAR2(32) not null,
  type        VARCHAR2(6),
  mq_info     NVARCHAR2(500),
  mq_topic    VARCHAR2(100),
  insert_date DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CTS_MQTABLE
  is '给集成指挥平台发mq消息的记录';
comment on column CTS_MQTABLE.type
  is '类型 01-控重数据';
comment on column CTS_MQTABLE.mq_info
  is '发送的mq消息';
comment on column CTS_MQTABLE.mq_topic
  is 'mq主题';
comment on column CTS_MQTABLE.insert_date
  is '入库时间';
alter table CTS_MQTABLE
  add constraint CTS_MQTABLE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIPMENT_INFO_USER
prompt ==================================
prompt
create table EQUIPMENT_INFO_USER
(
  id        NVARCHAR2(32),
  username  NVARCHAR2(32),
  password  NVARCHAR2(32),
  deviceip  NVARCHAR2(32),
  videotype NVARCHAR2(20),
  angle     NVARCHAR2(20),
  height    NVARCHAR2(20)
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
comment on table EQUIPMENT_INFO_USER
  is '视域推荐设备登录用户信息表';
comment on column EQUIPMENT_INFO_USER.id
  is 'id';
comment on column EQUIPMENT_INFO_USER.username
  is '设备登陆用户名';
comment on column EQUIPMENT_INFO_USER.password
  is '设备登陆密码';
comment on column EQUIPMENT_INFO_USER.deviceip
  is '设备ip';
comment on column EQUIPMENT_INFO_USER.videotype
  is '设备子类型';
comment on column EQUIPMENT_INFO_USER.angle
  is '初始角度，设备默认角度朝向到正北方的角度';
comment on column EQUIPMENT_INFO_USER.height
  is '设备高度';

prompt
prompt Creating table EXPRESSWAY_SITE_FLOW
prompt ===================================
prompt
create table EXPRESSWAY_SITE_FLOW
(
  id                 VARCHAR2(32) default sys_guid() not null,
  entityid           VARCHAR2(40),
  collecttime        DATE,
  inlocalnum         NUMBER,
  innonlocalnum      NUMBER,
  inlargenum         NUMBER,
  insmallnum         NUMBER,
  inothernum         NUMBER,
  outlocalnum        NUMBER,
  outnonlocalnum     NUMBER,
  outlargenum        NUMBER,
  outsmallnum        NUMBER,
  outothernum        NUMBER,
  inotherprvnum      NUMBER,
  inprvothercitynum  NUMBER,
  outotherprvnum     NUMBER,
  outprvothercitynum NUMBER,
  innum              NUMBER,
  outnum             NUMBER,
  inoutnum           NUMBER
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
comment on table EXPRESSWAY_SITE_FLOW
  is '交通运行监测-高速点位流量表';
comment on column EXPRESSWAY_SITE_FLOW.id
  is '主键';
comment on column EXPRESSWAY_SITE_FLOW.entityid
  is '点位expressid';
comment on column EXPRESSWAY_SITE_FLOW.collecttime
  is '数据收集时间';
comment on column EXPRESSWAY_SITE_FLOW.inlocalnum
  is '进-本地';
comment on column EXPRESSWAY_SITE_FLOW.innonlocalnum
  is '进-非本地';
comment on column EXPRESSWAY_SITE_FLOW.inlargenum
  is '进-大型车';
comment on column EXPRESSWAY_SITE_FLOW.insmallnum
  is '进-小型车';
comment on column EXPRESSWAY_SITE_FLOW.inothernum
  is '进-其他车型车';
comment on column EXPRESSWAY_SITE_FLOW.outlocalnum
  is '出-本地车';
comment on column EXPRESSWAY_SITE_FLOW.outnonlocalnum
  is '出-非本地车';
comment on column EXPRESSWAY_SITE_FLOW.outlargenum
  is '出-大型车';
comment on column EXPRESSWAY_SITE_FLOW.outsmallnum
  is '出-小型车';
comment on column EXPRESSWAY_SITE_FLOW.outothernum
  is '出-其他车型车';
comment on column EXPRESSWAY_SITE_FLOW.inotherprvnum
  is '进-外省车';
comment on column EXPRESSWAY_SITE_FLOW.inprvothercitynum
  is '进-外地车（本省）';
comment on column EXPRESSWAY_SITE_FLOW.outotherprvnum
  is '出-外省车';
comment on column EXPRESSWAY_SITE_FLOW.outprvothercitynum
  is '出-外地车（本省）';
comment on column EXPRESSWAY_SITE_FLOW.innum
  is '进-总流量';
comment on column EXPRESSWAY_SITE_FLOW.outnum
  is '出-总流量';
comment on column EXPRESSWAY_SITE_FLOW.inoutnum
  is '进出总流量';
create index IDX_ENTITYID on EXPRESSWAY_SITE_FLOW (ENTITYID)
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
create index IDX_ENTITYID_COLLECTTIME on EXPRESSWAY_SITE_FLOW (ENTITYID, COLLECTTIME)
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
alter table EXPRESSWAY_SITE_FLOW
  add primary key (ID)
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
prompt Creating table FACE_AREA_DAY_STATISTICS
prompt =======================================
prompt
create table FACE_AREA_DAY_STATISTICS
(
  id                 VARCHAR2(32) default sys_guid() not null,
  area_id            VARCHAR2(32),
  vehicle_num        NUMBER(10),
  time               DATE,
  large_vehicle_num  NUMBER(10),
  small_vehicle_num  NUMBER(10),
  other_vehicle_num  NUMBER(10),
  prv_other_city_num NUMBER(10),
  othercity_prv_num  NUMBER(10),
  local_vehicle_num  NUMBER(10),
  time_flag          VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_AREA_DAY_STATISTICS
  is '在途车辆数总数统计表(天)';
comment on column FACE_AREA_DAY_STATISTICS.id
  is '主键';
comment on column FACE_AREA_DAY_STATISTICS.area_id
  is '1-全市(包括市南、市北、李沧、崂山)  其它area_id(例如370202、370203)';
comment on column FACE_AREA_DAY_STATISTICS.vehicle_num
  is '在途车辆总数';
comment on column FACE_AREA_DAY_STATISTICS.time
  is '统计时间(天)  例如：2021-09-28';
comment on column FACE_AREA_DAY_STATISTICS.large_vehicle_num
  is '大型车';
comment on column FACE_AREA_DAY_STATISTICS.small_vehicle_num
  is '小型车';
comment on column FACE_AREA_DAY_STATISTICS.other_vehicle_num
  is '其他车';
comment on column FACE_AREA_DAY_STATISTICS.prv_other_city_num
  is '本省外市车';
comment on column FACE_AREA_DAY_STATISTICS.othercity_prv_num
  is '外省车';
comment on column FACE_AREA_DAY_STATISTICS.local_vehicle_num
  is '本市车';
comment on column FACE_AREA_DAY_STATISTICS.time_flag
  is '时段表示 0-全天 1-早晚高峰 2-早高峰  3-晚高峰';
alter table FACE_AREA_DAY_STATISTICS
  add constraint FACE_AREA_DAY_STATISTICS_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_COMPONENT_CONFIG
prompt ====================================
prompt
create table FACE_COMPONENT_CONFIG
(
  componentid      VARCHAR2(32) not null,
  name             VARCHAR2(60),
  description      VARCHAR2(50),
  type             CHAR(1),
  title            VARCHAR2(30),
  showborder       CHAR(1),
  transparent      VARCHAR2(20),
  refresh_interval NUMBER,
  create_time      DATE,
  update_time      DATE,
  create_user      VARCHAR2(30),
  w                NUMBER,
  h                NUMBER,
  x                NUMBER,
  y                NUMBER,
  i                VARCHAR2(30),
  basefont         NUMBER,
  maxw             NUMBER,
  minw             NUMBER,
  minh             NUMBER,
  maxh             NUMBER,
  border           CHAR(1) default 1,
  url              NVARCHAR2(100)
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
comment on table FACE_COMPONENT_CONFIG
  is '6.2组件表';
comment on column FACE_COMPONENT_CONFIG.name
  is '组件名称';
comment on column FACE_COMPONENT_CONFIG.type
  is '1：专题组件
2：地图组件
3：指标组件
';
comment on column FACE_COMPONENT_CONFIG.title
  is '默认标题';
comment on column FACE_COMPONENT_CONFIG.showborder
  is '是否展示边框';
comment on column FACE_COMPONENT_CONFIG.transparent
  is '背景透明度';
comment on column FACE_COMPONENT_CONFIG.refresh_interval
  is '组件刷新间隔';
comment on column FACE_COMPONENT_CONFIG.w
  is '默认宽';
comment on column FACE_COMPONENT_CONFIG.h
  is '默认高';
comment on column FACE_COMPONENT_CONFIG.x
  is '默认x轴';
comment on column FACE_COMPONENT_CONFIG.y
  is '默认y轴';
comment on column FACE_COMPONENT_CONFIG.i
  is '默认 COMPONENTID';
comment on column FACE_COMPONENT_CONFIG.border
  is '默认是否有边框 0:否 1 :是   ';
alter table FACE_COMPONENT_CONFIG
  add constraint PK_HIFACE_COMPONENT primary key (COMPONENTID)
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
prompt Creating table FACE_DEPARTMENT_MAJORCLASS
prompt =========================================
prompt
create table FACE_DEPARTMENT_MAJORCLASS
(
  id               NVARCHAR2(32),
  nlevel           NVARCHAR2(6),
  detp_type        NVARCHAR2(6),
  majorclass_id    NVARCHAR2(500),
  majorclass_name  NVARCHAR2(10),
  majorclass_order NVARCHAR2(2)
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
comment on table FACE_DEPARTMENT_MAJORCLASS
  is '支队展示的处置措施表';
comment on column FACE_DEPARTMENT_MAJORCLASS.id
  is 'id';
comment on column FACE_DEPARTMENT_MAJORCLASS.nlevel
  is '部门级别';
comment on column FACE_DEPARTMENT_MAJORCLASS.detp_type
  is '支队默认1 高速大队2 市区大队1 郊县大队3';
comment on column FACE_DEPARTMENT_MAJORCLASS.majorclass_id
  is '对应的能显示的处置措施';
comment on column FACE_DEPARTMENT_MAJORCLASS.majorclass_name
  is '处置措施的名称';
comment on column FACE_DEPARTMENT_MAJORCLASS.majorclass_order
  is '处置措施是顺序';

prompt
prompt Creating table FACE_DISTRICT_CENTER
prompt ===================================
prompt
create table FACE_DISTRICT_CENTER
(
  id           VARCHAR2(32) default sys_guid(),
  area_dept_id VARCHAR2(32),
  coordinate   VARCHAR2(100)
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
comment on table FACE_DISTRICT_CENTER
  is '区域中心坐标表';
comment on column FACE_DISTRICT_CENTER.id
  is '主键';
comment on column FACE_DISTRICT_CENTER.area_dept_id
  is '区域id（包括大队、中队、警区）';

prompt
prompt Creating table FACE_DISTRICT_INDEX
prompt ==================================
prompt
create table FACE_DISTRICT_INDEX
(
  index_id          VARCHAR2(32) not null,
  point_id          VARCHAR2(32),
  time              DATE,
  fivemin           NUMBER,
  persent           NUMBER,
  otherplacecar     NUMBER,
  localcar          NUMBER,
  otherprovincescar NUMBER,
  bigcar            NUMBER,
  smallcar          NUMBER,
  othertypecar      NUMBER,
  inout             CHAR(1)
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
comment on table FACE_DISTRICT_INDEX
  is '市级流量指数';
comment on column FACE_DISTRICT_INDEX.index_id
  is 'ID';
comment on column FACE_DISTRICT_INDEX.point_id
  is '点位编号';
comment on column FACE_DISTRICT_INDEX.time
  is '时间';
comment on column FACE_DISTRICT_INDEX.fivemin
  is '5分钟流量';
comment on column FACE_DISTRICT_INDEX.persent
  is '占比';
comment on column FACE_DISTRICT_INDEX.otherplacecar
  is '外地车';
comment on column FACE_DISTRICT_INDEX.localcar
  is '本地车';
comment on column FACE_DISTRICT_INDEX.otherprovincescar
  is '外省车';
comment on column FACE_DISTRICT_INDEX.bigcar
  is '大型车';
comment on column FACE_DISTRICT_INDEX.smallcar
  is '小型车';
comment on column FACE_DISTRICT_INDEX.othertypecar
  is '其他车';
comment on column FACE_DISTRICT_INDEX.inout
  is '进出城类型 0 进城 1 出城';
alter table FACE_DISTRICT_INDEX
  add constraint FACE_DISTRICT_INDEX primary key (INDEX_ID)
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
prompt Creating table FACE_HICON_MAINLINE
prompt ==================================
prompt
create table FACE_HICON_MAINLINE
(
  id               NVARCHAR2(32) default sys_guid() not null,
  line_id          NVARCHAR2(32),
  line_name        NVARCHAR2(100),
  coordinate       CLOB,
  upcrossingcode   NVARCHAR2(32),
  downcrossingcode NVARCHAR2(32),
  health_level     VARCHAR2(10)
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
comment on table FACE_HICON_MAINLINE
  is '无缆绿波干线';
comment on column FACE_HICON_MAINLINE.id
  is 'id 主键';
comment on column FACE_HICON_MAINLINE.line_id
  is '无缆绿波干线id';
comment on column FACE_HICON_MAINLINE.line_name
  is '无缆绿波干线名称';
comment on column FACE_HICON_MAINLINE.coordinate
  is '坐标';
comment on column FACE_HICON_MAINLINE.upcrossingcode
  is '上游路口id';
comment on column FACE_HICON_MAINLINE.downcrossingcode
  is '下游路口id';
comment on column FACE_HICON_MAINLINE.health_level
  is '健康水平';
alter table FACE_HICON_MAINLINE
  add constraint PK_FACE_HICON_MAINLINE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_LABEL_CONFIG
prompt ================================
prompt
create table FACE_LABEL_CONFIG
(
  label_id          VARCHAR2(32) not null,
  label_name        NVARCHAR2(128) not null,
  visible           CHAR(1),
  strategy          VARCHAR2(100),
  reflect_interface VARCHAR2(128) default 1,
  avaiable          VARCHAR2(1),
  label_order       NUMBER
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
comment on table FACE_LABEL_CONFIG
  is '标签基础信息表';
comment on column FACE_LABEL_CONFIG.label_id
  is 'label_id';
comment on column FACE_LABEL_CONFIG.label_name
  is '标签名称';
comment on column FACE_LABEL_CONFIG.visible
  is '0：否；1：是';
comment on column FACE_LABEL_CONFIG.strategy
  is '1：关键字；2：正则提取；3：算法；4：第三方同步';
comment on column FACE_LABEL_CONFIG.reflect_interface
  is '生成策略取值为3时，调用的接口名';
comment on column FACE_LABEL_CONFIG.avaiable
  is '0：否；1：是';
comment on column FACE_LABEL_CONFIG.label_order
  is '标签顺序';
alter table FACE_LABEL_CONFIG
  add primary key (LABEL_ID)
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
alter table FACE_LABEL_CONFIG
  add constraint FACE_LABEL_NAME unique (LABEL_NAME)
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
prompt Creating table FACE_LABEL_KEYWORD
prompt =================================
prompt
create table FACE_LABEL_KEYWORD
(
  id          VARCHAR2(32) not null,
  label_id    VARCHAR2(32),
  blacklist   NVARCHAR2(1024),
  whitelist   NVARCHAR2(1024),
  column_name NVARCHAR2(1024)
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
comment on table FACE_LABEL_KEYWORD
  is '关键字配置';
comment on column FACE_LABEL_KEYWORD.id
  is 'id';
comment on column FACE_LABEL_KEYWORD.label_id
  is '唯一';
comment on column FACE_LABEL_KEYWORD.blacklist
  is '黑名单词汇表，以逗号分隔';
comment on column FACE_LABEL_KEYWORD.whitelist
  is '白名单词汇表，以逗号分隔';
comment on column FACE_LABEL_KEYWORD.column_name
  is '指定过滤的表.字段名.字段值 逗号分隔，全部大写 (根据该字段，过滤数据)';
alter table FACE_LABEL_KEYWORD
  add primary key (ID)
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
prompt Creating table FACE_LABEL_REGEXP
prompt ================================
prompt
create table FACE_LABEL_REGEXP
(
  id          VARCHAR2(32) not null,
  label_id    VARCHAR2(32),
  table_name  VARCHAR2(32),
  column_name VARCHAR2(32),
  regexp      VARCHAR2(32)
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
comment on table FACE_LABEL_REGEXP
  is '标签提取正则配置';
comment on column FACE_LABEL_REGEXP.id
  is 'id';
comment on column FACE_LABEL_REGEXP.label_id
  is 'label_id';
comment on column FACE_LABEL_REGEXP.table_name
  is '表名';
comment on column FACE_LABEL_REGEXP.column_name
  is '列名';
comment on column FACE_LABEL_REGEXP.regexp
  is '匹配策略';
alter table FACE_LABEL_REGEXP
  add primary key (ID)
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
prompt Creating table FACE_LINK_COMPANY
prompt ================================
prompt
create table FACE_LINK_COMPANY
(
  id               VARCHAR2(32) not null,
  company_name     VARCHAR2(100),
  company_type     VARCHAR2(2),
  person           VARCHAR2(50),
  telephone        VARCHAR2(50),
  office_telephone VARCHAR2(50),
  position         VARCHAR2(500),
  coordinate       VARCHAR2(4000),
  createtime       DATE,
  updatetime       DATE
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
comment on table FACE_LINK_COMPANY
  is '联动单位基础信息表';
comment on column FACE_LINK_COMPANY.id
  is '主键';
comment on column FACE_LINK_COMPANY.company_name
  is '联动单位名称';
comment on column FACE_LINK_COMPANY.company_type
  is '联动单位类型：对应枚举610011';
comment on column FACE_LINK_COMPANY.person
  is '联系人';
comment on column FACE_LINK_COMPANY.telephone
  is '联系电话';
comment on column FACE_LINK_COMPANY.office_telephone
  is '办公电话';
comment on column FACE_LINK_COMPANY.position
  is '地址';
comment on column FACE_LINK_COMPANY.coordinate
  is '单位位置坐标';
comment on column FACE_LINK_COMPANY.createtime
  is '新增时间';
comment on column FACE_LINK_COMPANY.updatetime
  is '最后更新时间';

prompt
prompt Creating table FACE_MAPLAYER
prompt ============================
prompt
create table FACE_MAPLAYER
(
  layer_id      VARCHAR2(32) not null,
  layer_name    VARCHAR2(100) not null,
  layer_visible CHAR(1) default 1 not null,
  layer_order   NUMBER,
  creator       VARCHAR2(50),
  createtime    DATE,
  updater       VARCHAR2(50),
  updatetime    DATE,
  sqlview       CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_MAPLAYER
  is '6.2可视化地图图层表';
comment on column FACE_MAPLAYER.layer_id
  is '图层ID';
comment on column FACE_MAPLAYER.layer_name
  is '图层名称';
comment on column FACE_MAPLAYER.layer_visible
  is '是否显示';
comment on column FACE_MAPLAYER.layer_order
  is '图层顺序';
comment on column FACE_MAPLAYER.creator
  is '创建人';
comment on column FACE_MAPLAYER.createtime
  is '创建时间';
comment on column FACE_MAPLAYER.updater
  is '更新人';
comment on column FACE_MAPLAYER.updatetime
  is '更新时间';
comment on column FACE_MAPLAYER.sqlview
  is 'sql视图';
create unique index IDX_FACE_MAPLAYER on FACE_MAPLAYER (LAYER_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table FACE_MAPLAYER
  add constraint PK_FACE_MAPLAYER primary key (LAYER_ID);

prompt
prompt Creating table FACE_MAPLAYER_BASE_INFO
prompt ======================================
prompt
create table FACE_MAPLAYER_BASE_INFO
(
  maplayer_id        VARCHAR2(32) not null,
  maplayer_name      NVARCHAR2(50) not null,
  maplayer_level     VARCHAR2(2) not null,
  parent_maplayer_id VARCHAR2(32),
  operation_type     VARCHAR2(2),
  refresh_frequency  INTEGER,
  sql_content        CLOB,
  class_name         VARCHAR2(32),
  method_name        VARCHAR2(32),
  params             VARCHAR2(200),
  component_code     VARCHAR2(60),
  icon_name          NVARCHAR2(60),
  wms_id             VARCHAR2(20),
  show_flag          VARCHAR2(1),
  show_order         INTEGER,
  active_flag        VARCHAR2(1) default 0,
  maplayer_type      VARCHAR2(1)
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
comment on table FACE_MAPLAYER_BASE_INFO
  is '图层表';
comment on column FACE_MAPLAYER_BASE_INFO.maplayer_id
  is '图层id';
comment on column FACE_MAPLAYER_BASE_INFO.maplayer_name
  is '图层名称';
comment on column FACE_MAPLAYER_BASE_INFO.maplayer_level
  is '图层级别  01-一级 02-二级';
comment on column FACE_MAPLAYER_BASE_INFO.parent_maplayer_id
  is '父图层id';
comment on column FACE_MAPLAYER_BASE_INFO.operation_type
  is '操作类型（包括方法和SQL）  0--SQL 1--方法 2-wms类型';
comment on column FACE_MAPLAYER_BASE_INFO.refresh_frequency
  is '刷新频率  单位是秒  不需要刷新的情况，设置为0';
comment on column FACE_MAPLAYER_BASE_INFO.sql_content
  is 'sql文内容';
comment on column FACE_MAPLAYER_BASE_INFO.class_name
  is '类名';
comment on column FACE_MAPLAYER_BASE_INFO.method_name
  is '方法名';
comment on column FACE_MAPLAYER_BASE_INFO.params
  is '参数';
comment on column FACE_MAPLAYER_BASE_INFO.component_code
  is '前台弹框模板id';
comment on column FACE_MAPLAYER_BASE_INFO.icon_name
  is '图标名称.多个的情况以逗号分割';
comment on column FACE_MAPLAYER_BASE_INFO.wms_id
  is 'WMS图层编号';
comment on column FACE_MAPLAYER_BASE_INFO.show_flag
  is '0-常用图层  1-非常用图层';
comment on column FACE_MAPLAYER_BASE_INFO.show_order
  is '显示顺序';
comment on column FACE_MAPLAYER_BASE_INFO.active_flag
  is '0-启用 1-不启用 是否启用，启用之后显示在全部图层中';
comment on column FACE_MAPLAYER_BASE_INFO.maplayer_type
  is '图层类型 0-绘制点 1-绘制区域 有弹框 2-绘制区域 无弹框 3-其他';
alter table FACE_MAPLAYER_BASE_INFO
  add constraint FACE_MAPLAYER_BASE_IF_PK primary key (MAPLAYER_ID)
  using index 
  tablespace HIATMPTS_IDX
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
prompt Creating table FACE_MAPLAYER_DATA_FILED_INFO
prompt ============================================
prompt
create table FACE_MAPLAYER_DATA_FILED_INFO
(
  maplayer_id VARCHAR2(32) not null,
  filed_id    VARCHAR2(32) not null,
  field_name  NVARCHAR2(50) not null,
  id          VARCHAR2(32) default sys_guid() not null,
  show_order  NUMBER
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
comment on table FACE_MAPLAYER_DATA_FILED_INFO
  is '图层数据字段表';
comment on column FACE_MAPLAYER_DATA_FILED_INFO.maplayer_id
  is '图层id';
comment on column FACE_MAPLAYER_DATA_FILED_INFO.filed_id
  is '字段id';
comment on column FACE_MAPLAYER_DATA_FILED_INFO.field_name
  is '字段描述';
comment on column FACE_MAPLAYER_DATA_FILED_INFO.id
  is '主键';
comment on column FACE_MAPLAYER_DATA_FILED_INFO.show_order
  is '显示顺序';
alter table FACE_MAPLAYER_DATA_FILED_INFO
  add constraint FMDFI_IF_PK primary key (ID)
  using index 
  tablespace HIATMPTS_IDX
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
prompt Creating table FACE_MAPLAYER_DEVICE_REF
prompt =======================================
prompt
create table FACE_MAPLAYER_DEVICE_REF
(
  pointid    NVARCHAR2(16) not null,
  devicetype VARCHAR2(2) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_MAPLAYER_DEVICE_REF
  is '设备关联表';
comment on column FACE_MAPLAYER_DEVICE_REF.pointid
  is '点位编号';
comment on column FACE_MAPLAYER_DEVICE_REF.devicetype
  is '设备类型，01-控距设备，02-雾气浓见度检测';
alter table FACE_MAPLAYER_DEVICE_REF
  add constraint DEVICE_REF_PK primary key (POINTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_MEASURE_HISTORY
prompt ===================================
prompt
create table FACE_MEASURE_HISTORY
(
  id              VARCHAR2(32) not null,
  case_id         VARCHAR2(32),
  rule_id         VARCHAR2(32),
  majorclass      VARCHAR2(32),
  create_time     DATE,
  end_time        DATE,
  adpoted         VARCHAR2(4),
  status          VARCHAR2(4),
  order_id        VARCHAR2(32),
  nlevel          VARCHAR2(4),
  measure_content NVARCHAR2(128),
  measure_real    CLOB,
  measure_recom   CLOB,
  dept_type       NVARCHAR2(4),
  content         NVARCHAR2(500),
  majorclass_id   NVARCHAR2(4)
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
comment on table FACE_MEASURE_HISTORY
  is '处置措施推荐记录表';
comment on column FACE_MEASURE_HISTORY.id
  is 'id';
comment on column FACE_MEASURE_HISTORY.case_id
  is '警情id';
comment on column FACE_MEASURE_HISTORY.rule_id
  is '规则id';
comment on column FACE_MEASURE_HISTORY.majorclass
  is '措施大类';
comment on column FACE_MEASURE_HISTORY.create_time
  is '推荐时间';
comment on column FACE_MEASURE_HISTORY.end_time
  is '执行时间';
comment on column FACE_MEASURE_HISTORY.adpoted
  is '0:否；1：是';
comment on column FACE_MEASURE_HISTORY.status
  is '0：未读；1：已读；2：已执行';
comment on column FACE_MEASURE_HISTORY.order_id
  is '指令id';
comment on column FACE_MEASURE_HISTORY.measure_real
  is '实际的内容 与MEASURE_recom  对应';
comment on column FACE_MEASURE_HISTORY.measure_recom
  is '推荐的内容   诱导屏id，节目内容，警员id，信号机id，信号控制策略……';
comment on column FACE_MEASURE_HISTORY.dept_type
  is '支队1 高速大队1 市区大队2 区县大队2';
comment on column FACE_MEASURE_HISTORY.content
  is '模板内容';
comment on column FACE_MEASURE_HISTORY.majorclass_id
  is '措施大类id';
alter table FACE_MEASURE_HISTORY
  add primary key (ID)
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
prompt Creating table FACE_MEASURE_HISTORY_STATE
prompt =========================================
prompt
create table FACE_MEASURE_HISTORY_STATE
(
  id            NVARCHAR2(32),
  case_id       NVARCHAR2(32),
  measure_id    NVARCHAR2(32),
  majorclass_id NVARCHAR2(4),
  status        NVARCHAR2(1),
  create_time   DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_MEASURE_HISTORY_STATE
  is '处置措施';
comment on column FACE_MEASURE_HISTORY_STATE.id
  is 'id';
comment on column FACE_MEASURE_HISTORY_STATE.case_id
  is '警情id';
comment on column FACE_MEASURE_HISTORY_STATE.measure_id
  is '推荐的措施id';
comment on column FACE_MEASURE_HISTORY_STATE.majorclass_id
  is '处置措施大类id';
comment on column FACE_MEASURE_HISTORY_STATE.status
  is '1未读 ，2 已读 ，3 已执行';
comment on column FACE_MEASURE_HISTORY_STATE.create_time
  is '入库时间';

prompt
prompt Creating table FACE_PLAN_BASE
prompt =============================
prompt
create table FACE_PLAN_BASE
(
  plan_id        NVARCHAR2(32),
  plan_type      NVARCHAR2(4),
  plan_name      NVARCHAR2(200),
  description    NVARCHAR2(400),
  plan_type_name NVARCHAR2(200),
  attachment     VARCHAR2(4000)
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
comment on table FACE_PLAN_BASE
  is '恶劣天气预案基本信息表';
comment on column FACE_PLAN_BASE.plan_id
  is '预案id';
comment on column FACE_PLAN_BASE.plan_type
  is '预案类型,1雨天2雪天3雾天';
comment on column FACE_PLAN_BASE.plan_name
  is '预案名称';
comment on column FACE_PLAN_BASE.description
  is '预案描述';
comment on column FACE_PLAN_BASE.plan_type_name
  is '预案类型名称';
comment on column FACE_PLAN_BASE.attachment
  is '附件url，多个逗号分隔';

prompt
prompt Creating table FACE_PLAN_CAR_INPLACE
prompt ====================================
prompt
create table FACE_PLAN_CAR_INPLACE
(
  id           VARCHAR2(32) not null,
  done_id      NVARCHAR2(32),
  inplace_time DATE,
  truck_id     VARCHAR2(32)
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
comment on table FACE_PLAN_CAR_INPLACE
  is '恶劣天气预案清障车到位表';
comment on column FACE_PLAN_CAR_INPLACE.done_id
  is '执行预案编号';
comment on column FACE_PLAN_CAR_INPLACE.inplace_time
  is '到位时间';
comment on column FACE_PLAN_CAR_INPLACE.truck_id
  is '清障车编号';
alter table FACE_PLAN_CAR_INPLACE
  add constraint KEY_PLAN_CAR primary key (ID)
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
prompt Creating table FACE_PLAN_DDM
prompt ============================
prompt
create table FACE_PLAN_DDM
(
  id           NVARCHAR2(32) not null,
  plan_id      NVARCHAR2(32),
  plan_level   NVARCHAR2(4),
  on_duty_rate NUMBER
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
comment on table FACE_PLAN_DDM
  is '恶劣天气预案勤务信息表';
comment on column FACE_PLAN_DDM.plan_id
  is '预案编号';
comment on column FACE_PLAN_DDM.plan_level
  is '预案等级';
comment on column FACE_PLAN_DDM.on_duty_rate
  is '在岗率%';
alter table FACE_PLAN_DDM
  add constraint PK_PLAN_DDM primary key (ID)
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
prompt Creating table FACE_PLAN_DONE
prompt =============================
prompt
create table FACE_PLAN_DONE
(
  id          NVARCHAR2(32),
  done_id     NVARCHAR2(32),
  plan_type   NVARCHAR2(4),
  plan_level  NVARCHAR2(4),
  plan_range  NVARCHAR2(400) default -1,
  start_time  DATE default sysdate,
  update_time DATE default sysdate,
  end_time    DATE,
  updown      NVARCHAR2(4) default 0,
  is_delete   NVARCHAR2(4) default 0,
  status      NVARCHAR2(4),
  exit_time   DATE
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
comment on table FACE_PLAN_DONE
  is '恶劣天气预案执行记录表';
comment on column FACE_PLAN_DONE.id
  is 'uuid';
comment on column FACE_PLAN_DONE.done_id
  is '表示执行的预案唯一标志';
comment on column FACE_PLAN_DONE.plan_type
  is '预案类型,1雨天2雪天3雾天';
comment on column FACE_PLAN_DONE.plan_level
  is '响应级别';
comment on column FACE_PLAN_DONE.plan_range
  is '响应范围,部门编号逗号分隔';
comment on column FACE_PLAN_DONE.start_time
  is '预案启动日期';
comment on column FACE_PLAN_DONE.update_time
  is ' 预案更新日期';
comment on column FACE_PLAN_DONE.end_time
  is ' 预案终止日期';
comment on column FACE_PLAN_DONE.updown
  is '1升级2降级';
comment on column FACE_PLAN_DONE.is_delete
  is '是否删除 0有效1已删除';
comment on column FACE_PLAN_DONE.status
  is 'on开启，off终止';
comment on column FACE_PLAN_DONE.exit_time
  is '支队退出时间';

prompt
prompt Creating table FACE_PLAN_POLLING
prompt ================================
prompt
create table FACE_PLAN_POLLING
(
  id                NVARCHAR2(32),
  done_id           NVARCHAR2(32),
  polling_account   NVARCHAR2(32),
  polling_dept      NVARCHAR2(32),
  polling_time      DATE,
  polling_video_num NUMBER
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
comment on table FACE_PLAN_POLLING
  is '恶劣天气预案视频巡检表';
comment on column FACE_PLAN_POLLING.polling_video_num
  is '视频路数';

prompt
prompt Creating table FACE_PLAN_VMS_PUB
prompt ================================
prompt
create table FACE_PLAN_VMS_PUB
(
  id              NVARCHAR2(32),
  done_id         NVARCHAR2(32),
  pub_account     NVARCHAR2(32),
  pub_dept        NVARCHAR2(32),
  pub_total_num   NUMBER,
  pub_success_num NUMBER,
  create_time     DATE
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
comment on table FACE_PLAN_VMS_PUB
  is '恶劣天气原诱导发布结果表';
comment on column FACE_PLAN_VMS_PUB.done_id
  is '执行预案编号';
comment on column FACE_PLAN_VMS_PUB.pub_account
  is '发布人';
comment on column FACE_PLAN_VMS_PUB.pub_dept
  is '发布部门';
comment on column FACE_PLAN_VMS_PUB.pub_total_num
  is '发布诱导总数';
comment on column FACE_PLAN_VMS_PUB.pub_success_num
  is '发布成功数量';

prompt
prompt Creating table FACE_POINT_CONTROL
prompt =================================
prompt
create table FACE_POINT_CONTROL
(
  risk_point_id VARCHAR2(32),
  config_id     VARCHAR2(32) default sys_guid() not null,
  control_type  VARCHAR2(1),
  section_code  VARCHAR2(32),
  action        VARCHAR2(2000),
  road_type     VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_POINT_CONTROL.risk_point_id
  is '风险点id';
comment on column FACE_POINT_CONTROL.config_id
  is '主键';
comment on column FACE_POINT_CONTROL.control_type
  is '管控类型1布警2禁行3分流';
comment on column FACE_POINT_CONTROL.section_code
  is '路口或者路段编号';
comment on column FACE_POINT_CONTROL.action
  is '管控措施';
comment on column FACE_POINT_CONTROL.road_type
  is '1路口2路段';

prompt
prompt Creating table FACE_POINT_SIGNAL
prompt ================================
prompt
create table FACE_POINT_SIGNAL
(
  config_id     VARCHAR2(32) default sys_guid() not null,
  risk_point_id VARCHAR2(32),
  device_id     VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_POINT_SIGNAL.config_id
  is '主键';
comment on column FACE_POINT_SIGNAL.risk_point_id
  is '风险点id';
comment on column FACE_POINT_SIGNAL.device_id
  is '设备id';

prompt
prompt Creating table FACE_POINT_VMS
prompt =============================
prompt
create table FACE_POINT_VMS
(
  config_id     VARCHAR2(32) default sys_guid() not null,
  risk_point_id VARCHAR2(32),
  device_id     VARCHAR2(32),
  program_url   VARCHAR2(500),
  is_defalt     VARCHAR2(2),
  svg_id        VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_POINT_VMS.config_id
  is 'id';
comment on column FACE_POINT_VMS.risk_point_id
  is '风险点编号';
comment on column FACE_POINT_VMS.device_id
  is '设备编号';
comment on column FACE_POINT_VMS.program_url
  is '节目编号';
comment on column FACE_POINT_VMS.is_defalt
  is '是否自动生成';
comment on column FACE_POINT_VMS.svg_id
  is 'svgid关联svgeditinfo表';

prompt
prompt Creating table FACE_POLICECASE_LABEL
prompt ====================================
prompt
create table FACE_POLICECASE_LABEL
(
  id              VARCHAR2(32) not null,
  case_id         VARCHAR2(32),
  label_id        VARCHAR2(32),
  updated_time    DATE,
  create_time     DATE,
  reason          VARCHAR2(4000),
  manual_delete   VARCHAR2(1) default 0,
  generation_mode VARCHAR2(1) default 0
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
comment on table FACE_POLICECASE_LABEL
  is '警情标签关联表';
comment on column FACE_POLICECASE_LABEL.id
  is 'id';
comment on column FACE_POLICECASE_LABEL.case_id
  is '警情id';
comment on column FACE_POLICECASE_LABEL.label_id
  is '标签id';
comment on column FACE_POLICECASE_LABEL.updated_time
  is '更新时间';
comment on column FACE_POLICECASE_LABEL.create_time
  is '创建时间';
comment on column FACE_POLICECASE_LABEL.reason
  is '标记原因';
comment on column FACE_POLICECASE_LABEL.manual_delete
  is '是否手动删除 是1  否0 ';
comment on column FACE_POLICECASE_LABEL.generation_mode
  is '生成方式 1手动 0 自动';
alter table FACE_POLICECASE_LABEL
  add primary key (ID)
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
prompt Creating table FACE_POLICECASE_RELATIONS
prompt ========================================
prompt
create table FACE_POLICECASE_RELATIONS
(
  id              VARCHAR2(32) not null,
  case_id         VARCHAR2(32),
  third_id        VARCHAR2(32),
  create_time     DATE,
  label_id        VARCHAR2(32),
  policecase_time DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_POLICECASE_RELATIONS.id
  is '主键';
comment on column FACE_POLICECASE_RELATIONS.case_id
  is '警情id';
comment on column FACE_POLICECASE_RELATIONS.third_id
  is '关联id';
comment on column FACE_POLICECASE_RELATIONS.create_time
  is '创建时间';
comment on column FACE_POLICECASE_RELATIONS.label_id
  is '标签id';
comment on column FACE_POLICECASE_RELATIONS.policecase_time
  is '警情发生时间';
alter table FACE_POLICECASE_RELATIONS
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_REMOVAL_TRUCK
prompt =================================
prompt
create table FACE_REMOVAL_TRUCK
(
  truckid    VARCHAR2(32) not null,
  truckname  NVARCHAR2(32),
  deptid     VARCHAR2(16),
  telephone  VARCHAR2(16),
  coordinate VARCHAR2(100),
  createtime DATE,
  updatetime DATE
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
comment on table FACE_REMOVAL_TRUCK
  is '清障车配置表';
comment on column FACE_REMOVAL_TRUCK.truckid
  is 'id';
comment on column FACE_REMOVAL_TRUCK.truckname
  is '清障车名称';
comment on column FACE_REMOVAL_TRUCK.deptid
  is '所属大队';
comment on column FACE_REMOVAL_TRUCK.telephone
  is '联系方式';
comment on column FACE_REMOVAL_TRUCK.coordinate
  is '坐标';
comment on column FACE_REMOVAL_TRUCK.createtime
  is '创建时间';
comment on column FACE_REMOVAL_TRUCK.updatetime
  is '更新时间';
alter table FACE_REMOVAL_TRUCK
  add constraint FACE_REMOVAL_TRUCK_PK primary key (TRUCKID)
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
prompt Creating table FACE_RISKPOINT_LABEL_RELATIONS
prompt =============================================
prompt
create table FACE_RISKPOINT_LABEL_RELATIONS
(
  id        NVARCHAR2(32),
  label_ids NVARCHAR2(500),
  risk_type NVARCHAR2(1),
  describe  NVARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_RISKPOINT_LABEL_RELATIONS
  is '风险点与标签对应表';
comment on column FACE_RISKPOINT_LABEL_RELATIONS.id
  is 'id';
comment on column FACE_RISKPOINT_LABEL_RELATIONS.label_ids
  is '标签ids 逗号分隔';
comment on column FACE_RISKPOINT_LABEL_RELATIONS.risk_type
  is '风险点类型，对应枚举610010';
comment on column FACE_RISKPOINT_LABEL_RELATIONS.describe
  is '描述';

prompt
prompt Creating table FACE_RISK_POINT
prompt ==============================
prompt
create table FACE_RISK_POINT
(
  id                 VARCHAR2(32) not null,
  risk_point_name    VARCHAR2(100),
  risk_point_type    VARCHAR2(2),
  despriction        VARCHAR2(500),
  position           VARCHAR2(500),
  dimension_type     VARCHAR2(2),
  responsible_person VARCHAR2(50),
  telephone          VARCHAR2(50),
  departmentid       VARCHAR2(16),
  createtime         DATE,
  updatetime         DATE,
  section_code       VARCHAR2(18),
  create_type        VARCHAR2(2) default 0,
  crossing_code      VARCHAR2(20),
  coordinate         CLOB,
  state              VARCHAR2(2) default 0,
  internet_release   VARCHAR2(4000)
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
comment on table FACE_RISK_POINT
  is '风险点管理基础表';
comment on column FACE_RISK_POINT.id
  is '主键';
comment on column FACE_RISK_POINT.risk_point_name
  is '风险点名称';
comment on column FACE_RISK_POINT.risk_point_type
  is '风险点类型：对应枚举610010';
comment on column FACE_RISK_POINT.despriction
  is '描述';
comment on column FACE_RISK_POINT.position
  is '风险点位置';
comment on column FACE_RISK_POINT.dimension_type
  is '标注类型:0点1线2面';
comment on column FACE_RISK_POINT.responsible_person
  is '责任人姓名';
comment on column FACE_RISK_POINT.telephone
  is '联系电话';
comment on column FACE_RISK_POINT.departmentid
  is '所属大队：对应大队id';
comment on column FACE_RISK_POINT.createtime
  is '新增时间';
comment on column FACE_RISK_POINT.updatetime
  is '最后更新时间';
comment on column FACE_RISK_POINT.section_code
  is '所属路段编码，对应bis_section表';
comment on column FACE_RISK_POINT.create_type
  is '是否风险点管理新建，是0';
comment on column FACE_RISK_POINT.crossing_code
  is '路口编码，对应bis_crossing表';
comment on column FACE_RISK_POINT.coordinate
  is '路口路段坐标';
comment on column FACE_RISK_POINT.state
  is '是否配置，默认0,0为未配置，1为配置';
comment on column FACE_RISK_POINT.internet_release
  is '互联网发布内容';
alter table FACE_RISK_POINT
  add constraint RISKPOINTPK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_RISK_POINT_VIDEO
prompt ====================================
prompt
create table FACE_RISK_POINT_VIDEO
(
  risk_point_id VARCHAR2(32),
  deviceid      NVARCHAR2(32),
  presetid      VARCHAR2(32),
  level_horn    VARCHAR2(32),
  pitch_horn    VARCHAR2(32),
  focus         VARCHAR2(32),
  maxos         VARCHAR2(32),
  height        VARCHAR2(32),
  maxlength     VARCHAR2(32),
  isauto        VARCHAR2(2) default 0
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
comment on table FACE_RISK_POINT_VIDEO
  is '风险点视频关联表';
comment on column FACE_RISK_POINT_VIDEO.risk_point_id
  is '风险点id';
comment on column FACE_RISK_POINT_VIDEO.deviceid
  is '视频设备id(枚举111)';
comment on column FACE_RISK_POINT_VIDEO.presetid
  is '预置位id（equip_video_preset表）';
comment on column FACE_RISK_POINT_VIDEO.level_horn
  is '当前设备水平角度';
comment on column FACE_RISK_POINT_VIDEO.pitch_horn
  is '当前设备垂直角度';
comment on column FACE_RISK_POINT_VIDEO.focus
  is '当前设备焦距';
comment on column FACE_RISK_POINT_VIDEO.maxos
  is '设备焦距最大值';
comment on column FACE_RISK_POINT_VIDEO.height
  is '高点高度差';
comment on column FACE_RISK_POINT_VIDEO.maxlength
  is '设备最大可视半径距离
';
comment on column FACE_RISK_POINT_VIDEO.isauto
  is '是否自动0自动1手动';

prompt
prompt Creating table FACE_RULE
prompt ========================
prompt
create table FACE_RULE
(
  id            VARCHAR2(32) not null,
  case_type     VARCHAR2(32),
  label_ids     VARCHAR2(1000),
  nlevel        VARCHAR2(1),
  dept_type     VARCHAR2(1),
  majorclass    NVARCHAR2(50),
  subclass      NVARCHAR2(50),
  content       NVARCHAR2(128),
  interf        VARCHAR2(128),
  update_time   DATE,
  available     VARCHAR2(1) default 1,
  rule_name     NVARCHAR2(50),
  position      NVARCHAR2(32),
  rule_group    VARCHAR2(32),
  majorclass_id NVARCHAR2(2)
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
comment on table FACE_RULE
  is '推荐规则配置表';
comment on column FACE_RULE.id
  is 'id';
comment on column FACE_RULE.case_type
  is '警情类型(备用)';
comment on column FACE_RULE.label_ids
  is '标签id，以逗号分隔';
comment on column FACE_RULE.nlevel
  is '推荐给那个部门';
comment on column FACE_RULE.dept_type
  is '部门类型 高速大队1 市区大队2 郊县大队 3  支队 1 ';
comment on column FACE_RULE.majorclass
  is '大类';
comment on column FACE_RULE.subclass
  is '小类';
comment on column FACE_RULE.content
  is '显示内容';
comment on column FACE_RULE.interf
  is '接口名';
comment on column FACE_RULE.update_time
  is '更新时间';
comment on column FACE_RULE.available
  is '是否启用';
comment on column FACE_RULE.rule_name
  is '规则名称';
comment on column FACE_RULE.position
  is '岗位';
comment on column FACE_RULE.rule_group
  is '规则组（同一个规则组共享规则参数配置）';
comment on column FACE_RULE.majorclass_id
  is '大类对应的id';
alter table FACE_RULE
  add primary key (ID)
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
alter table FACE_RULE
  add constraint FACE_RULE_UNIQUE unique (NLEVEL, LABEL_IDS, MAJORCLASS, DEPT_TYPE)
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
prompt Creating table FACE_RULE_CONFIG
prompt ===============================
prompt
create table FACE_RULE_CONFIG
(
  id           VARCHAR2(32) not null,
  rule_id      VARCHAR2(32),
  params       VARCHAR2(4000),
  ncontent     NVARCHAR2(512),
  nrange       NUMBER,
  screen_type  VARCHAR2(2),
  speed_limit  NUMBER,
  co_deptid    VARCHAR2(32),
  related_dept VARCHAR2(1000),
  case_type    NVARCHAR2(4)
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
comment on table FACE_RULE_CONFIG
  is '规则参数配置';
comment on column FACE_RULE_CONFIG.id
  is 'id';
comment on column FACE_RULE_CONFIG.rule_id
  is '规则id';
comment on column FACE_RULE_CONFIG.params
  is '不同规则的参数，json格式';
comment on column FACE_RULE_CONFIG.ncontent
  is '节目内容';
comment on column FACE_RULE_CONFIG.nrange
  is '范围';
comment on column FACE_RULE_CONFIG.screen_type
  is '诱导屏类型';
comment on column FACE_RULE_CONFIG.speed_limit
  is '限速值';
comment on column FACE_RULE_CONFIG.co_deptid
  is '联动单位id';
comment on column FACE_RULE_CONFIG.related_dept
  is '关联大队';
comment on column FACE_RULE_CONFIG.case_type
  is '警情类型';
alter table FACE_RULE_CONFIG
  add primary key (ID)
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
prompt Creating table FACE_RULE_DEPARTMENT
prompt ===================================
prompt
create table FACE_RULE_DEPARTMENT
(
  dept_name NVARCHAR2(50),
  depts     NVARCHAR2(300),
  dept_type NVARCHAR2(1),
  dept_desc NVARCHAR2(50)
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
comment on table FACE_RULE_DEPARTMENT
  is '市区，高速，郊县大队对应表，在处置措施推荐中用';

prompt
prompt Creating table FACE_SCENE
prompt =========================
prompt
create table FACE_SCENE
(
  sceneid     VARCHAR2(32) not null,
  scenename   VARCHAR2(60) not null,
  description VARCHAR2(100),
  visiable    CHAR(1) default 1,
  create_time DATE,
  update_time DATE,
  create_user VARCHAR2(30),
  titleflag   CHAR(1) default 0
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
comment on table FACE_SCENE
  is '6.2场景表';
comment on column FACE_SCENE.visiable
  is '1:可见0：不可见';
comment on column FACE_SCENE.titleflag
  is '是否自定义title,默认0不配置,展示的是切的图,要不就是SCENENAME值';
alter table FACE_SCENE
  add constraint PK_HIFACE_SCENE primary key (SCENEID)
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
prompt Creating table FACE_SERVICE_AREA
prompt ================================
prompt
create table FACE_SERVICE_AREA
(
  code               VARCHAR2(32) not null,
  name               VARCHAR2(100),
  coordinates        VARCHAR2(100),
  direction          VARCHAR2(16),
  dadept             VARCHAR2(16),
  zhongdept          VARCHAR2(16),
  dldm               VARCHAR2(100),
  managementdept     VARCHAR2(100),
  large_berthnum     NUMBER default 50,
  small_berthnum     NUMBER default 100,
  in_device          VARCHAR2(100),
  out_device         VARCHAR2(1000),
  up_code            VARCHAR2(32),
  down_code          VARCHAR2(32),
  boyun_vedio        VARCHAR2(32),
  status             VARCHAR2(2) default 1,
  service_area_state VARCHAR2(1) default 1
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
comment on table FACE_SERVICE_AREA
  is '服务区基本信息';
comment on column FACE_SERVICE_AREA.code
  is '编号、主键';
comment on column FACE_SERVICE_AREA.name
  is '名称';
comment on column FACE_SERVICE_AREA.coordinates
  is '坐标';
comment on column FACE_SERVICE_AREA.direction
  is '方向';
comment on column FACE_SERVICE_AREA.dadept
  is '所属大队';
comment on column FACE_SERVICE_AREA.zhongdept
  is '所属中队';
comment on column FACE_SERVICE_AREA.dldm
  is '所属道路';
comment on column FACE_SERVICE_AREA.managementdept
  is '所属管理单位';
comment on column FACE_SERVICE_AREA.large_berthnum
  is '大型车泊位数';
comment on column FACE_SERVICE_AREA.small_berthnum
  is '小型车泊位数';
comment on column FACE_SERVICE_AREA.in_device
  is '进口设备编号';
comment on column FACE_SERVICE_AREA.out_device
  is '出口设备编号';
comment on column FACE_SERVICE_AREA.up_code
  is '上游服务区编号';
comment on column FACE_SERVICE_AREA.down_code
  is '下游服务区编号';
comment on column FACE_SERVICE_AREA.boyun_vedio
  is '博云视频编号';
comment on column FACE_SERVICE_AREA.status
  is '枚举3100';
comment on column FACE_SERVICE_AREA.service_area_state
  is '服务区状态 枚举';

prompt
prompt Creating table FACE_SERVICE_BERTHNUM
prompt ====================================
prompt
create table FACE_SERVICE_BERTHNUM
(
  id           VARCHAR2(32) not null,
  code         VARCHAR2(32),
  large_usenum NUMBER,
  small_usenum NUMBER,
  savetime     DATE default sysdate,
  large_rate   NUMBER,
  small_rate   NUMBER
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
comment on table FACE_SERVICE_BERTHNUM
  is '服务区实时泊位数';
comment on column FACE_SERVICE_BERTHNUM.code
  is '服务区编号';
comment on column FACE_SERVICE_BERTHNUM.large_usenum
  is '大车占用泊位数';
comment on column FACE_SERVICE_BERTHNUM.small_usenum
  is '小车占用泊位数';
comment on column FACE_SERVICE_BERTHNUM.savetime
  is '上传时间';

prompt
prompt Creating table FACE_SERVICE_BERTHNUM_HIS
prompt ========================================
prompt
create table FACE_SERVICE_BERTHNUM_HIS
(
  outlargenum NUMBER,
  inlargenum  NUMBER,
  code        VARCHAR2(32),
  insmallnum  NUMBER,
  outsmallnum NUMBER,
  collecttime VARCHAR2(32),
  largenum    NUMBER,
  smallnum    NUMBER,
  createtime  DATE default sysdate,
  large_rate  NUMBER,
  small_rate  NUMBER
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
comment on table FACE_SERVICE_BERTHNUM_HIS
  is '服务区泊位历史信息表';
comment on column FACE_SERVICE_BERTHNUM_HIS.outlargenum
  is '大车出数';
comment on column FACE_SERVICE_BERTHNUM_HIS.inlargenum
  is '大车进数';
comment on column FACE_SERVICE_BERTHNUM_HIS.code
  is '服务区编号';
comment on column FACE_SERVICE_BERTHNUM_HIS.insmallnum
  is '小车进数';
comment on column FACE_SERVICE_BERTHNUM_HIS.outsmallnum
  is '小车出数';
comment on column FACE_SERVICE_BERTHNUM_HIS.collecttime
  is '过车时间';
comment on column FACE_SERVICE_BERTHNUM_HIS.largenum
  is '当前大车数';
comment on column FACE_SERVICE_BERTHNUM_HIS.smallnum
  is '当前小车数';
comment on column FACE_SERVICE_BERTHNUM_HIS.createtime
  is '插入时间';

prompt
prompt Creating table FACE_SERVICE_VEHICLE
prompt ===================================
prompt
create table FACE_SERVICE_VEHICLE
(
  code         VARCHAR2(32),
  car_number   VARCHAR2(32),
  license_type VARCHAR2(32),
  car_type     VARCHAR2(32),
  in_time      DATE,
  out_time     DATE,
  update_time  DATE,
  id           VARCHAR2(32),
  stay_time    NUMBER,
  description  VARCHAR2(400)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FACE_SERVICE_VEHICLE
  is '服务区实时车辆表';
comment on column FACE_SERVICE_VEHICLE.code
  is '服务区编号';
comment on column FACE_SERVICE_VEHICLE.car_number
  is '车牌号';
comment on column FACE_SERVICE_VEHICLE.license_type
  is '车牌类型';
comment on column FACE_SERVICE_VEHICLE.car_type
  is '车辆类型';
comment on column FACE_SERVICE_VEHICLE.in_time
  is '驶入时间';
comment on column FACE_SERVICE_VEHICLE.out_time
  is '驶出时间';
comment on column FACE_SERVICE_VEHICLE.update_time
  is '更新时间';
comment on column FACE_SERVICE_VEHICLE.id
  is 'uuid';
comment on column FACE_SERVICE_VEHICLE.stay_time
  is '停留时长';
comment on column FACE_SERVICE_VEHICLE.description
  is '说明';

prompt
prompt Creating table FACE_SERVICE_VEHICLE_HIS
prompt =======================================
prompt
create table FACE_SERVICE_VEHICLE_HIS
(
  code         VARCHAR2(32),
  car_number   VARCHAR2(32),
  license_type VARCHAR2(32),
  car_type     VARCHAR2(32),
  in_time      DATE,
  out_time     DATE,
  update_time  DATE,
  id           VARCHAR2(32),
  stay_time    NUMBER,
  description  VARCHAR2(400)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table FACE_SERVICE_VEHICLE_HIS
  is '服务区实时车辆表';
comment on column FACE_SERVICE_VEHICLE_HIS.code
  is '服务区编号';
comment on column FACE_SERVICE_VEHICLE_HIS.car_number
  is '车牌号';
comment on column FACE_SERVICE_VEHICLE_HIS.license_type
  is '车牌类型';
comment on column FACE_SERVICE_VEHICLE_HIS.car_type
  is '车辆类型';
comment on column FACE_SERVICE_VEHICLE_HIS.in_time
  is '驶入时间';
comment on column FACE_SERVICE_VEHICLE_HIS.out_time
  is '驶出时间';
comment on column FACE_SERVICE_VEHICLE_HIS.update_time
  is '更新时间';
comment on column FACE_SERVICE_VEHICLE_HIS.id
  is 'uuid';
comment on column FACE_SERVICE_VEHICLE_HIS.stay_time
  is '停留时长';
comment on column FACE_SERVICE_VEHICLE_HIS.description
  is '说明';

prompt
prompt Creating table FACE_SITE_FLOW
prompt =============================
prompt
create table FACE_SITE_FLOW
(
  id          VARCHAR2(32) default sys_guid() not null,
  site_name   VARCHAR2(200),
  incitynum   NUMBER,
  outcitynum  NUMBER,
  create_time DATE,
  temp        VARCHAR2(200),
  temp1       VARCHAR2(200),
  temp2       VARCHAR2(200),
  deleteflag  VARCHAR2(2)
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
comment on table FACE_SITE_FLOW
  is '自定义接口数据录入';
comment on column FACE_SITE_FLOW.id
  is '主键';
comment on column FACE_SITE_FLOW.site_name
  is '点位名称';
comment on column FACE_SITE_FLOW.incitynum
  is '进城数';
comment on column FACE_SITE_FLOW.outcitynum
  is '出城数';
comment on column FACE_SITE_FLOW.create_time
  is '录入时间';
comment on column FACE_SITE_FLOW.temp
  is '临时1';
comment on column FACE_SITE_FLOW.temp1
  is '临时2';
comment on column FACE_SITE_FLOW.temp2
  is '临时3';
comment on column FACE_SITE_FLOW.deleteflag
  is '是否删除';

prompt
prompt Creating table FACE_TABBUTN_CONFIG
prompt ==================================
prompt
create table FACE_TABBUTN_CONFIG
(
  component_id VARCHAR2(32) not null,
  tab_id       INTEGER not null,
  tab_name     NVARCHAR2(20),
  tab_type     VARCHAR2(1),
  tab_url      NVARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_TABBUTN_CONFIG
  is '一张图tab按钮配置表';
comment on column FACE_TABBUTN_CONFIG.component_id
  is '组件id';
comment on column FACE_TABBUTN_CONFIG.tab_id
  is 'tab编号，从1开始';
comment on column FACE_TABBUTN_CONFIG.tab_name
  is 'tab名称';
comment on column FACE_TABBUTN_CONFIG.tab_type
  is 'tab类型，1-界面主题跳转 2-打开新界面';
comment on column FACE_TABBUTN_CONFIG.tab_url
  is 'tab跳转界面，1对应主题名称 2对应url';
alter table FACE_TABBUTN_CONFIG
  add constraint TABBUTN_PK primary key (COMPONENT_ID, TAB_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_THEME
prompt =========================
prompt
create table FACE_THEME
(
  themeid     VARCHAR2(32) not null,
  sceneid     VARCHAR2(32) not null,
  themename   VARCHAR2(45) not null,
  colortheme  VARCHAR2(20),
  basefont    NUMBER,
  adaptscreen VARCHAR2(10),
  isenable    CHAR(1),
  create_time DATE not null,
  update_time DATE,
  create_user VARCHAR2(30),
  spscenename VARCHAR2(60)
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
comment on table FACE_THEME
  is '6.2主题表';
comment on column FACE_THEME.adaptscreen
  is 'screen-2k,screen-4k,screen-8k';
comment on column FACE_THEME.spscenename
  is '主题对应的场景名字';
alter table FACE_THEME
  add constraint PK_HIFACE_THEME primary key (THEMEID)
  using index 
  tablespace HIATMPTS_IDX
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
prompt Creating table FACE_THEME_CONFIG
prompt ================================
prompt
create table FACE_THEME_CONFIG
(
  themeid     VARCHAR2(32),
  componentid VARCHAR2(30),
  name        VARCHAR2(60),
  page        NUMBER,
  basefont    NUMBER,
  w           NUMBER,
  h           NUMBER,
  x           NUMBER,
  y           NUMBER,
  i           VARCHAR2(30),
  status      CHAR(1),
  creat_time  DATE,
  update_time DATE,
  create_user VARCHAR2(30),
  sceneid     VARCHAR2(32),
  id          VARCHAR2(32),
  border      CHAR(1) default 1,
  maxw        NUMBER,
  minw        NUMBER,
  minh        NUMBER,
  maxh        NUMBER
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
comment on table FACE_THEME_CONFIG
  is '6.2场景主题配置表';
comment on column FACE_THEME_CONFIG.w
  is '宽';
comment on column FACE_THEME_CONFIG.h
  is '高';
comment on column FACE_THEME_CONFIG.x
  is 'x轴';
comment on column FACE_THEME_CONFIG.y
  is 'y轴';
comment on column FACE_THEME_CONFIG.i
  is 'COMPONENTID';
comment on column FACE_THEME_CONFIG.status
  is '0:不生效 1';
comment on column FACE_THEME_CONFIG.border
  is '默认是否有边框 0:否 1 :是   ';
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_PK primary key (ID)
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
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_INDX unique (THEMEID, SCENEID, I, PAGE)
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
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_CHKCOMPID
  check ("COMPONENTID" IS NOT NULL);
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_CHKI
  check ("I" IS NOT NULL);
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_CHKID
  check ("ID" IS NOT NULL);
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_CHKNAME
  check ("NAME" IS NOT NULL);
alter table FACE_THEME_CONFIG
  add constraint THEME_CONFIG_CHKTHEMEID
  check ("THEMEID" IS NOT NULL);

prompt
prompt Creating table FACE_TOLLGATE
prompt ============================
prompt
create table FACE_TOLLGATE
(
  id             VARCHAR2(32),
  name           VARCHAR2(120),
  coordinates    VARCHAR2(120),
  pointcode      VARCHAR2(32),
  dadept         VARCHAR2(32),
  zhongdept      VARCHAR2(32),
  managementdept VARCHAR2(120),
  code           VARCHAR2(32),
  maxinflow      NUMBER,
  maxoutflow     NUMBER,
  status         VARCHAR2(2) default 1,
  invedio        VARCHAR2(120),
  outvedio       VARCHAR2(120),
  tollgate_state VARCHAR2(1) default 1
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
comment on table FACE_TOLLGATE
  is '收费站';
comment on column FACE_TOLLGATE.id
  is 'id';
comment on column FACE_TOLLGATE.name
  is '名称';
comment on column FACE_TOLLGATE.coordinates
  is '坐标';
comment on column FACE_TOLLGATE.pointcode
  is '点位编号';
comment on column FACE_TOLLGATE.dadept
  is '所属大队';
comment on column FACE_TOLLGATE.zhongdept
  is '所属中队';
comment on column FACE_TOLLGATE.managementdept
  is '所属管理单位';
comment on column FACE_TOLLGATE.code
  is '编号';
comment on column FACE_TOLLGATE.maxinflow
  is '进口（出城）流量最大值';
comment on column FACE_TOLLGATE.maxoutflow
  is '出口（进城）流量最大值';
comment on column FACE_TOLLGATE.status
  is '枚举3100';
comment on column FACE_TOLLGATE.invedio
  is '进口视频设备编号，逗号分隔';
comment on column FACE_TOLLGATE.outvedio
  is '出口视频设备编号，逗号分隔';
comment on column FACE_TOLLGATE.tollgate_state
  is '收费站状态 枚举62011';

prompt
prompt Creating table FACE_TOLLGATE_BERTHNUM
prompt =====================================
prompt
create table FACE_TOLLGATE_BERTHNUM
(
  id            VARCHAR2(32),
  code          VARCHAR2(32),
  inflow        NUMBER,
  outflow       NUMBER,
  totalflow     NUMBER,
  savetime      DATE,
  inflowavg     NUMBER,
  outflowavg    NUMBER,
  inflowetcavg  NUMBER,
  outflowetcavg NUMBER,
  inlane        NUMBER,
  outlane       NUMBER
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
comment on table FACE_TOLLGATE_BERTHNUM
  is '收费站实时流量表';
comment on column FACE_TOLLGATE_BERTHNUM.id
  is 'id';
comment on column FACE_TOLLGATE_BERTHNUM.code
  is '收费站编号';
comment on column FACE_TOLLGATE_BERTHNUM.inflow
  is '最近5分钟进口流量';
comment on column FACE_TOLLGATE_BERTHNUM.outflow
  is '最近5分钟出口流量';
comment on column FACE_TOLLGATE_BERTHNUM.savetime
  is '上传时间';
comment on column FACE_TOLLGATE_BERTHNUM.inflowavg
  is '进口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM.outflowavg
  is '出口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM.inflowetcavg
  is 'ETC进口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM.outflowetcavg
  is 'ETC出口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM.inlane
  is '进口车道数';
comment on column FACE_TOLLGATE_BERTHNUM.outlane
  is '出口车道数';

prompt
prompt Creating table FACE_TOLLGATE_BERTHNUM_HIS
prompt =========================================
prompt
create table FACE_TOLLGATE_BERTHNUM_HIS
(
  id            VARCHAR2(32),
  code          VARCHAR2(32),
  inflow        NUMBER,
  outflow       NUMBER,
  totalflow     NUMBER,
  savetime      DATE default sysdate,
  inflowavg     NUMBER,
  outflowavg    NUMBER,
  inflowetcavg  NUMBER,
  outflowetcavg NUMBER,
  inlane        NUMBER,
  outlane       NUMBER
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
comment on column FACE_TOLLGATE_BERTHNUM_HIS.inflow
  is '最近5分钟进口流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.outflow
  is '最近5分钟出口流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.inflowavg
  is '进口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.outflowavg
  is '出口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.inflowetcavg
  is 'ETC进口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.outflowetcavg
  is 'ETC出口车道平均流量';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.inlane
  is '进口车道数';
comment on column FACE_TOLLGATE_BERTHNUM_HIS.outlane
  is '出口车道数';

prompt
prompt Creating table FACE_TRAFFIC_INFO_FLYOVER
prompt ========================================
prompt
create table FACE_TRAFFIC_INFO_FLYOVER
(
  id            NVARCHAR2(32),
  flyover_id    NVARCHAR2(32),
  flyover_state NVARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_TRAFFIC_INFO_FLYOVER
  is '立交桥状态表';

prompt
prompt Creating table FACE_TRAFFIC_VOLUME
prompt ==================================
prompt
create table FACE_TRAFFIC_VOLUME
(
  hkdfkll NUMBER,
  gjkll   NUMBER,
  tldfkll NUMBER,
  dtkll   NUMBER,
  syfsl   NUMBER,
  tjrq    DATE not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_TRAFFIC_VOLUME
  is '青岛市综合交通日客运量数据';
comment on column FACE_TRAFFIC_VOLUME.hkdfkll
  is '航空到发客流量';
comment on column FACE_TRAFFIC_VOLUME.gjkll
  is '公交客流量';
comment on column FACE_TRAFFIC_VOLUME.tldfkll
  is '铁路到发客流量';
comment on column FACE_TRAFFIC_VOLUME.dtkll
  is '地铁客流量';
comment on column FACE_TRAFFIC_VOLUME.syfsl
  is '水运发送量';
comment on column FACE_TRAFFIC_VOLUME.tjrq
  is '查询日期';
alter table FACE_TRAFFIC_VOLUME
  add constraint TRAFFIC_VOLUME_PK primary key (TJRQ)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_UNIVERSAL_COMMAND
prompt =====================================
prompt
create table FACE_UNIVERSAL_COMMAND
(
  command_id      NVARCHAR2(32),
  command_content NVARCHAR2(500),
  post_type       NVARCHAR2(4),
  nlevel          NVARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_UNIVERSAL_COMMAND
  is '通用指令表';
comment on column FACE_UNIVERSAL_COMMAND.post_type
  is '枚举20000';
comment on column FACE_UNIVERSAL_COMMAND.nlevel
  is '部门级别';

prompt
prompt Creating table FACE_VIDEO_INSPECT
prompt =================================
prompt
create table FACE_VIDEO_INSPECT
(
  video_id     VARCHAR2(32),
  device_id    VARCHAR2(32),
  device_name  NVARCHAR2(32),
  inspect_type VARCHAR2(2) default 0,
  presetid     VARCHAR2(32),
  level_horn   VARCHAR2(32),
  pitch_horn   VARCHAR2(32),
  focus        VARCHAR2(32),
  maxos        VARCHAR2(32),
  height       VARCHAR2(32),
  maxlength    VARCHAR2(32),
  isauto       VARCHAR2(2),
  weather_type VARCHAR2(2),
  ordernum     INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_VIDEO_INSPECT.video_id
  is '主键ID';
comment on column FACE_VIDEO_INSPECT.device_id
  is '设备ID';
comment on column FACE_VIDEO_INSPECT.device_name
  is '设备名称';
comment on column FACE_VIDEO_INSPECT.inspect_type
  is '类型，0 主动 1被动';
comment on column FACE_VIDEO_INSPECT.presetid
  is '预置位id（equip_video_preset表）';
comment on column FACE_VIDEO_INSPECT.level_horn
  is '当前设备水平角度';
comment on column FACE_VIDEO_INSPECT.pitch_horn
  is '当前设备垂直角度';
comment on column FACE_VIDEO_INSPECT.focus
  is '当前设备焦距';
comment on column FACE_VIDEO_INSPECT.maxos
  is '设备焦距最大值';
comment on column FACE_VIDEO_INSPECT.height
  is '高点高度差';
comment on column FACE_VIDEO_INSPECT.maxlength
  is '设备最大可视半径距离';
comment on column FACE_VIDEO_INSPECT.isauto
  is '是否自动  0 自动 1手动';
comment on column FACE_VIDEO_INSPECT.weather_type
  is '天气类型';
comment on column FACE_VIDEO_INSPECT.ordernum
  is '排序字段';

prompt
prompt Creating table FACE_VMS_RELEASE
prompt ===============================
prompt
create table FACE_VMS_RELEASE
(
  vms_id       VARCHAR2(32),
  device_id    VARCHAR2(32),
  device_name  NVARCHAR2(32),
  type         CHAR(2),
  program_url  VARCHAR2(500),
  is_defalt    VARCHAR2(2),
  svg_id       VARCHAR2(32),
  weather_type VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_VMS_RELEASE.vms_id
  is '主键ID';
comment on column FACE_VMS_RELEASE.program_url
  is '节目编号';
comment on column FACE_VMS_RELEASE.is_defalt
  is '是否自动生成';
comment on column FACE_VMS_RELEASE.svg_id
  is 'svgid关联svgeditinfo表';
comment on column FACE_VMS_RELEASE.weather_type
  is '天气类型';
/*
prompt
prompt Creating table FACE_WEATHER
prompt ===========================
prompt
create table FACE_WEATHER
(
  id            VARCHAR2(32) not null,
  province      VARCHAR2(32),
  adcode        VARCHAR2(32),
  city          VARCHAR2(32),
  weather       VARCHAR2(32),
  temperature   VARCHAR2(32),
  winddirection VARCHAR2(32),
  windpower     VARCHAR2(32),
  humidity      VARCHAR2(32),
  reporttime    VARCHAR2(32),
  insertdate    DATE default SYSDATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column FACE_WEATHER.id
  is '主键（时间）';
comment on column FACE_WEATHER.province
  is '省份名称';
comment on column FACE_WEATHER.adcode
  is '城市编码';
comment on column FACE_WEATHER.city
  is '城市名称';
comment on column FACE_WEATHER.weather
  is '天气气象（汉字描述）';
comment on column FACE_WEATHER.temperature
  is '实时气温，单位：摄氏度';
comment on column FACE_WEATHER.winddirection
  is '风向描述';
comment on column FACE_WEATHER.windpower
  is '风力级别，单位：级';
comment on column FACE_WEATHER.humidity
  is '空气湿度';
comment on column FACE_WEATHER.reporttime
  is '预报发布时间';
comment on column FACE_WEATHER.insertdate
  is '数据入库时间';
alter table FACE_WEATHER
  add constraint FACE_WEATHER_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
*/



prompt
prompt Creating table FACE_WINDOW
prompt ==========================
prompt
create table FACE_WINDOW
(
  windowid    VARCHAR2(32) not null,
  windowname  NVARCHAR2(30),
  w           NUMBER,
  h           NUMBER,
  x           NUMBER,
  y           NUMBER,
  create_time DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_WINDOW
  is '弹窗表';
comment on column FACE_WINDOW.windowid
  is '弹窗id';
comment on column FACE_WINDOW.windowname
  is '弹窗name';
comment on column FACE_WINDOW.w
  is '宽';
comment on column FACE_WINDOW.h
  is '高';
comment on column FACE_WINDOW.x
  is 'X轴';
comment on column FACE_WINDOW.y
  is 'Y轴';
comment on column FACE_WINDOW.create_time
  is '创建时间';
alter table FACE_WINDOW
  add constraint WINDOW_PK primary key (WINDOWID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACE_WINDOW_COMPONENT
prompt ====================================
prompt
create table FACE_WINDOW_COMPONENT
(
  windowid    VARCHAR2(32),
  componentid VARCHAR2(30),
  name        VARCHAR2(60),
  basefont    NUMBER,
  w           NUMBER,
  h           NUMBER,
  x           NUMBER,
  y           NUMBER,
  status      CHAR(1),
  creat_time  DATE default sysdate,
  update_time DATE default sysdate,
  create_user VARCHAR2(30),
  i           VARCHAR2(32),
  border      CHAR(1) default 1,
  maxw        NUMBER,
  minw        NUMBER,
  minh        NUMBER,
  maxh        NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACE_WINDOW_COMPONENT
  is '6.2弹窗组件配置表';
comment on column FACE_WINDOW_COMPONENT.w
  is '宽';
comment on column FACE_WINDOW_COMPONENT.h
  is '高';
comment on column FACE_WINDOW_COMPONENT.x
  is 'x轴';
comment on column FACE_WINDOW_COMPONENT.y
  is 'y轴';
comment on column FACE_WINDOW_COMPONENT.status
  is '0:不生效 1生效';
comment on column FACE_WINDOW_COMPONENT.border
  is '默认是否有边框 0:否 1 :是   ';
alter table FACE_WINDOW_COMPONENT
  add constraint WINDOW_COMPONENT_PK primary key (I)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table FACE_WINDOW_COMPONENT
  add constraint WINDOW_COMPONENT_CHKCOMPID
  check ("COMPONENTID" IS NOT NULL);
alter table FACE_WINDOW_COMPONENT
  add constraint WINDOW_COMPONENT_CHKID
  check ("I" IS NOT NULL);
alter table FACE_WINDOW_COMPONENT
  add constraint WINDOW_COMPONENT_CHKNAME
  check ("NAME" IS NOT NULL);
alter table FACE_WINDOW_COMPONENT
  add constraint WINDOW_COMPONENT_CHKWINDOWID
  check ("WINDOWID" IS NOT NULL);

prompt
prompt Creating table FEEL_DAAS_ACCESS
prompt ===============================
prompt
create table FEEL_DAAS_ACCESS
(
  menuname NVARCHAR2(50) not null,
  todaynum NUMBER,
  compdate DATE not null
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
comment on table FEEL_DAAS_ACCESS
  is '数据接入';
comment on column FEEL_DAAS_ACCESS.menuname
  is '菜单名称';
comment on column FEEL_DAAS_ACCESS.todaynum
  is '今日总量';
comment on column FEEL_DAAS_ACCESS.compdate
  is '计算日期';
alter table FEEL_DAAS_ACCESS
  add constraint DASS_ACCESS_PK primary key (MENUNAME, COMPDATE)
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
prompt Creating table FEEL_DAAS_CENTRE_MENU
prompt ====================================
prompt
create table FEEL_DAAS_CENTRE_MENU
(
  menuid      VARCHAR2(50) not null,
  menuname    VARCHAR2(50),
  onclick     VARCHAR2(50),
  parmenuid   VARCHAR2(50),
  menulevel   VARCHAR2(2),
  menuorder   VARCHAR2(2) default '0',
  isactive    VARCHAR2(2) default '1',
  todaynum    NUMBER,
  allnum      NUMBER,
  compdate    VARCHAR2(50) default '2021-05-22' not null,
  cretime     DATE default sysdate,
  userid      VARCHAR2(10),
  menuexplain VARCHAR2(200),
  flag        VARCHAR2(1) default 0
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
comment on table FEEL_DAAS_CENTRE_MENU
  is '感知服务层菜单信息表';
comment on column FEEL_DAAS_CENTRE_MENU.menuid
  is '菜单ID';
comment on column FEEL_DAAS_CENTRE_MENU.menuname
  is '菜单名称';
comment on column FEEL_DAAS_CENTRE_MENU.onclick
  is '菜单点击响应';
comment on column FEEL_DAAS_CENTRE_MENU.parmenuid
  is '上级菜单ID';
comment on column FEEL_DAAS_CENTRE_MENU.menulevel
  is '菜单等级';
comment on column FEEL_DAAS_CENTRE_MENU.menuorder
  is '菜单顺序';
comment on column FEEL_DAAS_CENTRE_MENU.isactive
  is '是否启用,0否1是';
comment on column FEEL_DAAS_CENTRE_MENU.todaynum
  is '今日总量';
comment on column FEEL_DAAS_CENTRE_MENU.allnum
  is '所有总量';
comment on column FEEL_DAAS_CENTRE_MENU.compdate
  is '计算日期';
comment on column FEEL_DAAS_CENTRE_MENU.cretime
  is '创建时间';
comment on column FEEL_DAAS_CENTRE_MENU.userid
  is '用户id';
comment on column FEEL_DAAS_CENTRE_MENU.menuexplain
  is '菜单描述';
comment on column FEEL_DAAS_CENTRE_MENU.flag
  is '0-只在导图模式显示  1-导图模式和地图模式都显示';

prompt
prompt Creating table FEEL_DAAS_GOVERN
prompt ===============================
prompt
create table FEEL_DAAS_GOVERN
(
  govern_num NUMBER not null,
  repair_num NUMBER not null,
  compdate   DATE not null
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
comment on table FEEL_DAAS_GOVERN
  is '数据治理、修复';
comment on column FEEL_DAAS_GOVERN.govern_num
  is '今日治理条数';
comment on column FEEL_DAAS_GOVERN.repair_num
  is '今日修复条数';
comment on column FEEL_DAAS_GOVERN.compdate
  is '计算日期';
alter table FEEL_DAAS_GOVERN
  add constraint FEEL_DAAS_GOVERN_PK primary key (COMPDATE)
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
prompt Creating table FEEL_DAAS_GOVERN_TYPE
prompt ====================================
prompt
create table FEEL_DAAS_GOVERN_TYPE
(
  govern_type  NVARCHAR2(50) not null,
  govern_num   NUMBER not null,
  collect_time DATE not null
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
comment on table FEEL_DAAS_GOVERN_TYPE
  is '数据治理类型';
comment on column FEEL_DAAS_GOVERN_TYPE.govern_type
  is '数据修复类型';
comment on column FEEL_DAAS_GOVERN_TYPE.govern_num
  is '数据修复数量';
comment on column FEEL_DAAS_GOVERN_TYPE.collect_time
  is '统计时间';
alter table FEEL_DAAS_GOVERN_TYPE
  add constraint FEEL_DAAS_GOVERN_TYPE_PK primary key (GOVERN_TYPE, COLLECT_TIME)
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
prompt Creating table FEEL_DAAS_SHARE
prompt ==============================
prompt
create table FEEL_DAAS_SHARE
(
  menuid   VARCHAR2(50) not null,
  todaynum NUMBER,
  compdate DATE not null
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
comment on table FEEL_DAAS_SHARE
  is '感知服务层菜单信息表';
comment on column FEEL_DAAS_SHARE.menuid
  is '菜单ID';
comment on column FEEL_DAAS_SHARE.todaynum
  is '今日总量';
comment on column FEEL_DAAS_SHARE.compdate
  is '计算日期';
alter table FEEL_DAAS_SHARE
  add constraint FEEL_DASS_SHARE_PK primary key (MENUID, COMPDATE)
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
prompt Creating table FEEL_DAAS_SHARE_MENU
prompt ===================================
prompt
create table FEEL_DAAS_SHARE_MENU
(
  menuid      VARCHAR2(10) not null,
  menuname    VARCHAR2(50),
  onclick     VARCHAR2(50),
  parmenuid   VARCHAR2(10),
  menulevel   VARCHAR2(2) default '4',
  menuorder   VARCHAR2(2) default '0',
  isactive    VARCHAR2(2) default '1',
  todaynum    NUMBER,
  allnum      NUMBER,
  compdate    VARCHAR2(50) not null,
  cretime     DATE default sysdate,
  userid      VARCHAR2(10),
  menuexplain VARCHAR2(200)
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
comment on table FEEL_DAAS_SHARE_MENU
  is '感知服务层菜单信息表';
comment on column FEEL_DAAS_SHARE_MENU.menuid
  is '菜单ID';
comment on column FEEL_DAAS_SHARE_MENU.menuname
  is '菜单名称';
comment on column FEEL_DAAS_SHARE_MENU.onclick
  is '菜单点击响应';
comment on column FEEL_DAAS_SHARE_MENU.parmenuid
  is '上级菜单ID';
comment on column FEEL_DAAS_SHARE_MENU.menulevel
  is '菜单等级';
comment on column FEEL_DAAS_SHARE_MENU.menuorder
  is '菜单顺序';
comment on column FEEL_DAAS_SHARE_MENU.isactive
  is '是否启用,0否1是';
comment on column FEEL_DAAS_SHARE_MENU.todaynum
  is '今日总量';
comment on column FEEL_DAAS_SHARE_MENU.allnum
  is '所有总量';
comment on column FEEL_DAAS_SHARE_MENU.compdate
  is '计算日期';
comment on column FEEL_DAAS_SHARE_MENU.cretime
  is '创建时间';
comment on column FEEL_DAAS_SHARE_MENU.userid
  is '用户id';
comment on column FEEL_DAAS_SHARE_MENU.menuexplain
  is '菜单描述';
alter table FEEL_DAAS_SHARE_MENU
  add constraint FEEL_DASS_SHARE_MENU_KEY primary key (MENUID, COMPDATE)
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
prompt Creating table FEEL_DAAS_SOURCE_TYPE
prompt ====================================
prompt
create table FEEL_DAAS_SOURCE_TYPE
(
  device_type_name NVARCHAR2(50) not null,
  device_type_num  NUMBER not null,
  collect_time     DATE not null
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
comment on table FEEL_DAAS_SOURCE_TYPE
  is '问题数据感知源类型';
comment on column FEEL_DAAS_SOURCE_TYPE.device_type_name
  is '感知源类型';
comment on column FEEL_DAAS_SOURCE_TYPE.device_type_num
  is '感知源问题数据数量';
comment on column FEEL_DAAS_SOURCE_TYPE.collect_time
  is '日期';
alter table FEEL_DAAS_SOURCE_TYPE
  add constraint FEEL_DAAS_SOURCE_TYPE_PK primary key (DEVICE_TYPE_NAME, COLLECT_TIME)
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
prompt Creating table FEEL_DAAS_STORE
prompt ==============================
prompt
create table FEEL_DAAS_STORE
(
  menuid   VARCHAR2(50) not null,
  todaynum NUMBER,
  compdate DATE not null
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
comment on table FEEL_DAAS_STORE
  is '数据存储';
comment on column FEEL_DAAS_STORE.menuid
  is '菜单ID';
comment on column FEEL_DAAS_STORE.todaynum
  is '今日总量';
comment on column FEEL_DAAS_STORE.compdate
  is '计算日期';
alter table FEEL_DAAS_STORE
  add constraint FEEL_DASS_STORE_MENU_KEY1 primary key (MENUID, COMPDATE)
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
prompt Creating table FEEL_DAAS_STORE_MENU
prompt ===================================
prompt
create table FEEL_DAAS_STORE_MENU
(
  menuid       VARCHAR2(50) not null,
  menuname     VARCHAR2(50),
  onclick      VARCHAR2(50),
  parmenuid    VARCHAR2(50) default '0',
  menulevel    VARCHAR2(2) default '4',
  menuorder    VARCHAR2(2) default '0',
  menutype     VARCHAR2(10),
  isactive     VARCHAR2(2) default '1',
  menulocation VARCHAR2(100),
  subnum       NUMBER,
  todaynum     NUMBER,
  allnum       NUMBER,
  compdate     VARCHAR2(50) default '2021-05-19' not null,
  cretime      DATE default sysdate,
  userid       VARCHAR2(10),
  menuexplain  VARCHAR2(200)
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
comment on table FEEL_DAAS_STORE_MENU
  is '感知服务层菜单信息表';
comment on column FEEL_DAAS_STORE_MENU.menuid
  is '菜单ID';
comment on column FEEL_DAAS_STORE_MENU.menuname
  is '菜单名称';
comment on column FEEL_DAAS_STORE_MENU.onclick
  is '菜单点击响应';
comment on column FEEL_DAAS_STORE_MENU.parmenuid
  is '上级菜单ID';
comment on column FEEL_DAAS_STORE_MENU.menulevel
  is '菜单等级';
comment on column FEEL_DAAS_STORE_MENU.menuorder
  is '菜单顺序';
comment on column FEEL_DAAS_STORE_MENU.menutype
  is '菜单类型';
comment on column FEEL_DAAS_STORE_MENU.isactive
  is '是否启用,0否1是';
comment on column FEEL_DAAS_STORE_MENU.menulocation
  is '菜单位置';
comment on column FEEL_DAAS_STORE_MENU.subnum
  is '子菜单数量';
comment on column FEEL_DAAS_STORE_MENU.todaynum
  is '今日总量';
comment on column FEEL_DAAS_STORE_MENU.allnum
  is '所有总量';
comment on column FEEL_DAAS_STORE_MENU.compdate
  is '计算日期';
comment on column FEEL_DAAS_STORE_MENU.cretime
  is '创建时间';
comment on column FEEL_DAAS_STORE_MENU.userid
  is '用户id';
comment on column FEEL_DAAS_STORE_MENU.menuexplain
  is '菜单描述';
alter table FEEL_DAAS_STORE_MENU
  add constraint FEEL_DASS_STORE_MENU_KEY primary key (MENUID, COMPDATE)
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
prompt Creating table FEEL_DATA_STANDARD
prompt =================================
prompt
create table FEEL_DATA_STANDARD
(
  standard_id   VARCHAR2(32) default sys_guid(),
  standard_name NVARCHAR2(50),
  standard_num  NUMBER
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
comment on table FEEL_DATA_STANDARD
  is '数据标准数量';
comment on column FEEL_DATA_STANDARD.standard_name
  is '标准名称';
comment on column FEEL_DATA_STANDARD.standard_num
  is '标准数量';

prompt
prompt Creating table FEEL_LAAS_HOME
prompt =============================
prompt
create table FEEL_LAAS_HOME
(
  cloudserver_num  NUMBER,
  vcpu_num         NUMBER,
  memory_num       NUMBER,
  blockstorage_num NUMBER,
  cpu_use_rate     NUMBER,
  collect_date     DATE not null
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
comment on table FEEL_LAAS_HOME
  is '首页laas层数据';
comment on column FEEL_LAAS_HOME.cloudserver_num
  is '弹性云服务器数量';
comment on column FEEL_LAAS_HOME.vcpu_num
  is 'VCPU（核）数量';
comment on column FEEL_LAAS_HOME.memory_num
  is '内存（GB）大小';
comment on column FEEL_LAAS_HOME.blockstorage_num
  is '块存储（TB）大小';
comment on column FEEL_LAAS_HOME.cpu_use_rate
  is 'CPU使用率';
comment on column FEEL_LAAS_HOME.collect_date
  is '日期';
alter table FEEL_LAAS_HOME
  add constraint FEEL_LAAS_HOME_PK primary key (COLLECT_DATE)
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
prompt Creating table FEEL_PAAS_ALGORITHM_TOP
prompt ======================================
prompt
create table FEEL_PAAS_ALGORITHM_TOP
(
  algorithm_name NVARCHAR2(50) not null,
  call_num       NUMBER not null
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
comment on table FEEL_PAAS_ALGORITHM_TOP
  is '首页-paas层-热门算法模型';
comment on column FEEL_PAAS_ALGORITHM_TOP.algorithm_name
  is '算法名称';
comment on column FEEL_PAAS_ALGORITHM_TOP.call_num
  is '调取次数';
alter table FEEL_PAAS_ALGORITHM_TOP
  add constraint FEEL_PAAS_ALGORITHM_TOP_PK primary key (ALGORITHM_NAME)
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
prompt Creating table FEEL_PAAS_ALGORITHM_TYPE
prompt =======================================
prompt
create table FEEL_PAAS_ALGORITHM_TYPE
(
  algorithm_type_name NVARCHAR2(10) not null,
  algorithm_num       NUMBER not null
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
comment on table FEEL_PAAS_ALGORITHM_TYPE
  is '首页-paas层-算法类型分布';
comment on column FEEL_PAAS_ALGORITHM_TYPE.algorithm_type_name
  is '算法类型名称';
comment on column FEEL_PAAS_ALGORITHM_TYPE.algorithm_num
  is '对应算法数量';
alter table FEEL_PAAS_ALGORITHM_TYPE
  add constraint FEEL_PAAS_ALGORITHM_TYPE_PK primary key (ALGORITHM_TYPE_NAME)
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
prompt Creating table FEEL_PAAS_CENTRE_MENU
prompt ====================================
prompt
create table FEEL_PAAS_CENTRE_MENU
(
  menuid      VARCHAR2(50) not null,
  menuname    VARCHAR2(50),
  onclick     VARCHAR2(50),
  parmenuid   VARCHAR2(50),
  menulevel   VARCHAR2(2),
  menuorder   VARCHAR2(2) default '0',
  isactive    VARCHAR2(2) default '1',
  todaynum    NUMBER,
  allnum      NUMBER,
  compdate    VARCHAR2(50) default '2021-05-22' not null,
  cretime     DATE default sysdate,
  userid      VARCHAR2(10),
  menuexplain VARCHAR2(200)
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
comment on table FEEL_PAAS_CENTRE_MENU
  is '感知服务层菜单信息表';
comment on column FEEL_PAAS_CENTRE_MENU.menuid
  is '菜单ID';
comment on column FEEL_PAAS_CENTRE_MENU.menuname
  is '菜单名称';
comment on column FEEL_PAAS_CENTRE_MENU.onclick
  is '菜单点击响应';
comment on column FEEL_PAAS_CENTRE_MENU.parmenuid
  is '上级菜单ID';
comment on column FEEL_PAAS_CENTRE_MENU.menulevel
  is '菜单等级';
comment on column FEEL_PAAS_CENTRE_MENU.menuorder
  is '菜单顺序';
comment on column FEEL_PAAS_CENTRE_MENU.isactive
  is '是否启用,0否1是';
comment on column FEEL_PAAS_CENTRE_MENU.todaynum
  is '今日总量';
comment on column FEEL_PAAS_CENTRE_MENU.allnum
  is '所有总量';
comment on column FEEL_PAAS_CENTRE_MENU.compdate
  is '计算日期';
comment on column FEEL_PAAS_CENTRE_MENU.cretime
  is '创建时间';
comment on column FEEL_PAAS_CENTRE_MENU.userid
  is '用户id';
comment on column FEEL_PAAS_CENTRE_MENU.menuexplain
  is '菜单描述';
alter table FEEL_PAAS_CENTRE_MENU
  add constraint FEEL_PAAS_CENTRE_MENU_KEY primary key (MENUID, COMPDATE)
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
prompt Creating table FEEL_REFRESH_FREQUENCY
prompt =====================================
prompt
create table FEEL_REFRESH_FREQUENCY
(
  model_name      NVARCHAR2(30) not null,
  model_frequency NUMBER
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
comment on table FEEL_REFRESH_FREQUENCY
  is '感知一张图各模块刷新频率';
comment on column FEEL_REFRESH_FREQUENCY.model_name
  is '模块名称';
comment on column FEEL_REFRESH_FREQUENCY.model_frequency
  is '刷新频率，单位分钟';
alter table FEEL_REFRESH_FREQUENCY
  add constraint FEEL_REFRESH_FREQUENCY_PK primary key (MODEL_NAME)
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
prompt Creating table FEEL_SAAS_HOME
prompt =============================
prompt
create table FEEL_SAAS_HOME
(
  saas_id    VARCHAR2(32) default sys_guid() not null,
  saas_name  NVARCHAR2(50),
  saas_url   VARCHAR2(100),
  saas_level VARCHAR2(1)
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
comment on table FEEL_SAAS_HOME
  is '首页saas数据';
comment on column FEEL_SAAS_HOME.saas_id
  is '系统id';
comment on column FEEL_SAAS_HOME.saas_name
  is '系统名称';
comment on column FEEL_SAAS_HOME.saas_url
  is '跳转url';
comment on column FEEL_SAAS_HOME.saas_level
  is '系统级别（1-1张图，2-平台，3-子系统）';
alter table FEEL_SAAS_HOME
  add constraint FEEL_SAAS_HOME_PK primary key (SAAS_ID)
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
prompt Creating table FEEL_SAAS_ONCLICK
prompt ================================
prompt
create table FEEL_SAAS_ONCLICK
(
  onclick_url VARCHAR2(100)
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
comment on table FEEL_SAAS_ONCLICK
  is '首页saas点击链接';
comment on column FEEL_SAAS_ONCLICK.onclick_url
  is 'saas点击链接跳转的url';


/*
prompt
prompt Creating table ILLEGAL_CONFIG_USER
prompt ==================================
prompt
create table ILLEGAL_CONFIG_USER
(
  id               VARCHAR2(32),
  userid           VARCHAR2(10),
  dept             VARCHAR2(20),
  keycomponent     VARCHAR2(100),
  specialcomponent VARCHAR2(100),
  illegalcomponent VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ILLEGAL_CONFIG_USER.id
  is 'id';
comment on column ILLEGAL_CONFIG_USER.userid
  is '用户名';
comment on column ILLEGAL_CONFIG_USER.dept
  is '部门';
comment on column ILLEGAL_CONFIG_USER.keycomponent
  is '重点执法组件';
comment on column ILLEGAL_CONFIG_USER.specialcomponent
  is '专题分析组件';
comment on column ILLEGAL_CONFIG_USER.illegalcomponent
  is '重点违法类型组件';

prompt
prompt Creating table ILLEGAL_HIS_ACD_DAY
prompt ==================================
prompt
create table ILLEGAL_HIS_ACD_DAY
(
  id   VARCHAR2(50) not null,
  wfxw VARCHAR2(100),
  num  NUMBER,
  wfsj DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ILLEGAL_HIS_ACD_DAY.id
  is '主键';
comment on column ILLEGAL_HIS_ACD_DAY.wfxw
  is '违法小类';
comment on column ILLEGAL_HIS_ACD_DAY.num
  is '违法数量';
comment on column ILLEGAL_HIS_ACD_DAY.wfsj
  is '违法时间';

prompt
prompt Creating table ILLEGAL_HIS_ACD_HOUR
prompt ===================================
prompt
create table ILLEGAL_HIS_ACD_HOUR
(
  id      VARCHAR2(50) not null,
  wfxw    VARCHAR2(100),
  num     NUMBER,
  wfsj    DATE,
  dept    VARCHAR2(50),
  acdtype VARCHAR2(5)
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
comment on table ILLEGAL_HIS_ACD_HOUR
  is '执法驾驶舱 事故违法';
comment on column ILLEGAL_HIS_ACD_HOUR.id
  is '主键';
comment on column ILLEGAL_HIS_ACD_HOUR.wfxw
  is '违法小类';
comment on column ILLEGAL_HIS_ACD_HOUR.num
  is '违法数量';
comment on column ILLEGAL_HIS_ACD_HOUR.wfsj
  is '违法时间';
comment on column ILLEGAL_HIS_ACD_HOUR.dept
  is '部门';
comment on column ILLEGAL_HIS_ACD_HOUR.acdtype
  is '事故类型 1一般事故 2简易事故';
create index IDX_ACD_DEPT on ILLEGAL_HIS_ACD_HOUR (DEPT)
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
create index IDX_ACD_WFSJ on ILLEGAL_HIS_ACD_HOUR (WFSJ)
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
create index IDX_ACD_WFXW on ILLEGAL_HIS_ACD_HOUR (WFXW)
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
prompt Creating table ILLEGAL_HIS_CAR_HOUR
prompt ===================================
prompt
create table ILLEGAL_HIS_CAR_HOUR
(
  id          VARCHAR2(32) not null,
  illegaldate DATE,
  cartype     VARCHAR2(2),
  carnumber   NVARCHAR2(16),
  illegalnum  VARCHAR2(10),
  illegaltype VARCHAR2(10),
  illegalcode VARCHAR2(10),
  auditresult VARCHAR2(10),
  carowner    VARCHAR2(50),
  carcompany  VARCHAR2(100),
  dept        NVARCHAR2(20),
  carcolor    VARCHAR2(10),
  syxz        VARCHAR2(50)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_HIS_CAR_HOUR
  is '违法历史车辆统计表（1小时）';
comment on column ILLEGAL_HIS_CAR_HOUR.id
  is '数据库自动编号';
comment on column ILLEGAL_HIS_CAR_HOUR.illegaldate
  is '违法时间';
comment on column ILLEGAL_HIS_CAR_HOUR.cartype
  is '号牌种类 HPZL,  枚举：frm_code的dmlb=''1007''';
comment on column ILLEGAL_HIS_CAR_HOUR.carnumber
  is '号牌号码 HPHM';
comment on column ILLEGAL_HIS_CAR_HOUR.illegalnum
  is '违法数量';
comment on column ILLEGAL_HIS_CAR_HOUR.illegaltype
  is '违法方式 0非现场 1现场';
comment on column ILLEGAL_HIS_CAR_HOUR.illegalcode
  is '违法类型-小类  WFXW';
comment on column ILLEGAL_HIS_CAR_HOUR.auditresult
  is '审核结果 1通过 0未通过';
comment on column ILLEGAL_HIS_CAR_HOUR.carowner
  is '车辆所有人 JDCSYR';
comment on column ILLEGAL_HIS_CAR_HOUR.carcompany
  is '车辆所属公司 keycar_vehicle_base-COMPANYNAME';
comment on column ILLEGAL_HIS_CAR_HOUR.dept
  is '所属部门 CJJG 37开头';
comment on column ILLEGAL_HIS_CAR_HOUR.carcolor
  is '号牌颜色';
comment on column ILLEGAL_HIS_CAR_HOUR.syxz
  is '使用性质';
create index IDX_CAR_DATE on ILLEGAL_HIS_CAR_HOUR (ILLEGALDATE)
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
create index IDX_CAR_DEPT on ILLEGAL_HIS_CAR_HOUR (DEPT)
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
create index IDX_CAR_ILLEGALCODE on ILLEGAL_HIS_CAR_HOUR (ILLEGALCODE)
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
prompt Creating table ILLEGAL_HIS_EQUIP_HOUR
prompt =====================================
prompt
create table ILLEGAL_HIS_EQUIP_HOUR
(
  id                 VARCHAR2(32) not null,
  illegaldate        DATE,
  deviceid           VARCHAR2(18),
  illegalnum         VARCHAR2(10),
  illegaltype        VARCHAR2(10),
  illegalcode        VARCHAR2(10),
  auditresult        VARCHAR2(10),
  auditnum           VARCHAR2(10),
  scrapnum           VARCHAR2(10),
  illegalcross       VARCHAR2(12),
  illegaladdress     VARCHAR2(100),
  illegaladdresscode VARCHAR2(200),
  roadcode           VARCHAR2(12),
  illegalroadtype    VARCHAR2(10),
  flow               VARCHAR2(10),
  dept               VARCHAR2(20),
  sfgsgl             VARCHAR2(2),
  sfgsd              VARCHAR2(2),
  sfnc               VARCHAR2(2),
  pointid            NVARCHAR2(16),
  devicetype         VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_HIS_EQUIP_HOUR
  is '违法历史设备统计表（1小时）';
comment on column ILLEGAL_HIS_EQUIP_HOUR.id
  is '数据库自动编号';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegaldate
  is '违法时间  WFSJ';
comment on column ILLEGAL_HIS_EQUIP_HOUR.deviceid
  is '设备编号';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegalnum
  is '违法数量';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegaltype
  is '违法方式 0非现场 1现场';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegalcode
  is '违法类型-小类  WFXW';
comment on column ILLEGAL_HIS_EQUIP_HOUR.auditresult
  is '审核结果 1通过 0未通过';
comment on column ILLEGAL_HIS_EQUIP_HOUR.auditnum
  is '通过数';
comment on column ILLEGAL_HIS_EQUIP_HOUR.scrapnum
  is '废弃数 ';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegalcross
  is '违法路口代码 ';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegaladdress
  is '违法地址   WFDZ';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegaladdresscode
  is '违法地点代码';
comment on column ILLEGAL_HIS_EQUIP_HOUR.roadcode
  is '违法道路代码   WFDD';
comment on column ILLEGAL_HIS_EQUIP_HOUR.illegalroadtype
  is '道路类型 1国省道/2城市/3高速公路/4农村';
comment on column ILLEGAL_HIS_EQUIP_HOUR.flow
  is '流量 待定';
comment on column ILLEGAL_HIS_EQUIP_HOUR.dept
  is '设备所属部门 CJJG 37开头';
comment on column ILLEGAL_HIS_EQUIP_HOUR.sfgsgl
  is '是否高速公路 0是 1否';
comment on column ILLEGAL_HIS_EQUIP_HOUR.sfgsd
  is '是否国省道 0是 1否';
comment on column ILLEGAL_HIS_EQUIP_HOUR.sfnc
  is '是否农村 0是 1否';
comment on column ILLEGAL_HIS_EQUIP_HOUR.pointid
  is '点位编号 equipment_info表pointid';
comment on column ILLEGAL_HIS_EQUIP_HOUR.devicetype
  is '设备类型equipment_info表deviceType';
create index IDX_EQUIP_DATE on ILLEGAL_HIS_EQUIP_HOUR (ILLEGALDATE)
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
create index IDX_EQUIP_DEPT on ILLEGAL_HIS_EQUIP_HOUR (DEPT)
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
create index IDX_EQUIP_DEVICEID on ILLEGAL_HIS_EQUIP_HOUR (DEVICEID)
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
create index IDX_EQUIP_ILLEGALCODE on ILLEGAL_HIS_EQUIP_HOUR (ILLEGALCODE)
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
create index IDX_EQUIP_POINT on ILLEGAL_HIS_EQUIP_HOUR (POINTID)
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
create index IDX_EQUIP_ROADCODE on ILLEGAL_HIS_EQUIP_HOUR (ROADCODE)
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
prompt Creating table ILLEGAL_HIS_POLICE_HOUR
prompt ======================================
prompt
create table ILLEGAL_HIS_POLICE_HOUR
(
  id           VARCHAR2(32) not null,
  illegaldate  DATE,
  illegalnum   VARCHAR2(10),
  illegaltype  VARCHAR2(10),
  dept         VARCHAR2(10),
  policeid     VARCHAR2(20),
  illegalcode  VARCHAR2(10),
  illegalmoney VARCHAR2(10),
  auditresult  VARCHAR2(10),
  auditnum     VARCHAR2(10),
  scrapnum     VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_HIS_POLICE_HOUR
  is '违法历史警员统计表（1小时）';
comment on column ILLEGAL_HIS_POLICE_HOUR.id
  is '数据库自动编号';
comment on column ILLEGAL_HIS_POLICE_HOUR.illegaldate
  is '违法时间';
comment on column ILLEGAL_HIS_POLICE_HOUR.illegalnum
  is '违法数量';
comment on column ILLEGAL_HIS_POLICE_HOUR.illegaltype
  is '违法方式 0非现场 1现场';
comment on column ILLEGAL_HIS_POLICE_HOUR.dept
  is '部门  CJJG  37开头';
comment on column ILLEGAL_HIS_POLICE_HOUR.policeid
  is '执法人 ZQMJ执勤民警';
comment on column ILLEGAL_HIS_POLICE_HOUR.illegalcode
  is '违法类型-小类';
comment on column ILLEGAL_HIS_POLICE_HOUR.illegalmoney
  is '罚款金额 FKJE';
comment on column ILLEGAL_HIS_POLICE_HOUR.auditresult
  is '审核结果 1通过，0未通过';
comment on column ILLEGAL_HIS_POLICE_HOUR.auditnum
  is '通过数';
comment on column ILLEGAL_HIS_POLICE_HOUR.scrapnum
  is '废弃数';
create index IDX_POLICE_DATE on ILLEGAL_HIS_POLICE_HOUR (ILLEGALDATE)
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
create index IDX_POLICE_DEPT on ILLEGAL_HIS_POLICE_HOUR (DEPT)
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
prompt Creating table ILLEGAL_HIS_ROAD_HOUR
prompt ====================================
prompt
create table ILLEGAL_HIS_ROAD_HOUR
(
  id              VARCHAR2(32) not null,
  illegaldate     DATE,
  illegalnum      VARCHAR2(10),
  illegaltype     VARCHAR2(10),
  illegalcode     VARCHAR2(10),
  roadcode        VARCHAR2(12),
  illegalroadtype VARCHAR2(10),
  flow            VARCHAR2(10),
  dept            VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_HIS_ROAD_HOUR
  is '违法历史道路统计表（1小时）';
comment on column ILLEGAL_HIS_ROAD_HOUR.id
  is '数据库自动编号';
comment on column ILLEGAL_HIS_ROAD_HOUR.illegaldate
  is '违法时间  WFSJ';
comment on column ILLEGAL_HIS_ROAD_HOUR.illegalnum
  is '违法数量';
comment on column ILLEGAL_HIS_ROAD_HOUR.illegaltype
  is '违法方式 0非现场 1现场';
comment on column ILLEGAL_HIS_ROAD_HOUR.illegalcode
  is '违法类型-小类  WFXW';
comment on column ILLEGAL_HIS_ROAD_HOUR.roadcode
  is '违法道路代码   WFDD';
comment on column ILLEGAL_HIS_ROAD_HOUR.illegalroadtype
  is '道路类型 农村/国省道/城市/高速 ';
comment on column ILLEGAL_HIS_ROAD_HOUR.flow
  is '流量 ';
comment on column ILLEGAL_HIS_ROAD_HOUR.dept
  is '设备所属部门';

prompt
prompt Creating table ILLEGAL_HIS_TOTAL_5MIN
prompt =====================================
prompt
create table ILLEGAL_HIS_TOTAL_5MIN
(
  id              VARCHAR2(32) not null,
  illegaldate     DATE,
  illegalnum      VARCHAR2(10),
  illegaltype     VARCHAR2(10),
  illegalcode     VARCHAR2(10),
  illegalmoney    VARCHAR2(10),
  devicenum       VARCHAR2(10),
  snapnum         VARCHAR2(10),
  auditresult     VARCHAR2(10),
  scrapnum        VARCHAR2(10),
  auditnum        VARCHAR2(10),
  averageauditnum VARCHAR2(10),
  dept            VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_HIS_TOTAL_5MIN
  is '违法5分钟时段历史表';
comment on column ILLEGAL_HIS_TOTAL_5MIN.id
  is '数据库自动编号';
comment on column ILLEGAL_HIS_TOTAL_5MIN.illegaldate
  is '违法时间';
comment on column ILLEGAL_HIS_TOTAL_5MIN.illegalnum
  is '违法数量';
comment on column ILLEGAL_HIS_TOTAL_5MIN.illegaltype
  is '违法方式 0非现场 1现场';
comment on column ILLEGAL_HIS_TOTAL_5MIN.illegalcode
  is '违法类型-小类';
comment on column ILLEGAL_HIS_TOTAL_5MIN.illegalmoney
  is '罚款金额';
comment on column ILLEGAL_HIS_TOTAL_5MIN.devicenum
  is '设备数';
comment on column ILLEGAL_HIS_TOTAL_5MIN.snapnum
  is '抓拍量';
comment on column ILLEGAL_HIS_TOTAL_5MIN.auditresult
  is '审核结果';
comment on column ILLEGAL_HIS_TOTAL_5MIN.scrapnum
  is '废弃数';
comment on column ILLEGAL_HIS_TOTAL_5MIN.auditnum
  is '通过数';
comment on column ILLEGAL_HIS_TOTAL_5MIN.averageauditnum
  is '人均审核数';
comment on column ILLEGAL_HIS_TOTAL_5MIN.dept
  is '部门ID';

prompt
prompt Creating table ILLEGAL_TOTAL
prompt ============================
prompt
create table ILLEGAL_TOTAL
(
  id             VARCHAR2(32) not null,
  illegaldate    DATE,
  cartype        VARCHAR2(2),
  carnumber      NVARCHAR2(16),
  deviceid       VARCHAR2(18),
  illegaltype    VARCHAR2(10),
  auditresult    VARCHAR2(10),
  dept           VARCHAR2(20),
  policeid       VARCHAR2(20),
  illegalcode    VARCHAR2(10),
  illegalcross   VARCHAR2(12),
  illegaladdress VARCHAR2(100),
  illegalroad    VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64K
    minextents 1
    maxextents unlimited
  );
comment on table ILLEGAL_TOTAL
  is '违法基础数据(现场和非现场)';
comment on column ILLEGAL_TOTAL.id
  is '数据库自动编号';
comment on column ILLEGAL_TOTAL.illegaldate
  is '违法时间';
comment on column ILLEGAL_TOTAL.cartype
  is '号牌种类';
comment on column ILLEGAL_TOTAL.carnumber
  is '号牌号码';
comment on column ILLEGAL_TOTAL.deviceid
  is '设备编号';
comment on column ILLEGAL_TOTAL.illegaltype
  is '执法方式 0非现场 1现场';
comment on column ILLEGAL_TOTAL.auditresult
  is '审核结果 1通过，0未通过';
comment on column ILLEGAL_TOTAL.dept
  is '部门  CJJG  37开头';
comment on column ILLEGAL_TOTAL.policeid
  is '执法人 ZQMJ执勤民警';
comment on column ILLEGAL_TOTAL.illegalcode
  is '违法类型-小类';
comment on column ILLEGAL_TOTAL.illegalcross
  is '违法路口代码 ';
comment on column ILLEGAL_TOTAL.illegaladdress
  is '违法地址   WFDZ';
comment on column ILLEGAL_TOTAL.illegalroad
  is '违法道路代码 ';
create index IDX_TOTAL_DATE on ILLEGAL_TOTAL (ILLEGALDATE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_TOTAL_DEPT on ILLEGAL_TOTAL (DEPT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_TOTAL_DEVICEID on ILLEGAL_TOTAL (DEVICEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_TOTAL_ILLEGALCODE on ILLEGAL_TOTAL (ILLEGALCODE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_TOTAL_POLICEID on ILLEGAL_TOTAL (POLICEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
*/


prompt
prompt Creating table KEYCAR_BILL
prompt ==========================
prompt
create table KEYCAR_BILL
(
  carno                NVARCHAR2(10),
  carcolor             NVARCHAR2(10),
  roadtransportno      NVARCHAR2(40),
  transportcompanyname NVARCHAR2(100),
  licenseno            NVARCHAR2(20),
  transportcompanytel  NVARCHAR2(20),
  shippername          NVARCHAR2(200),
  shippertel           NVARCHAR2(20),
  startplace           NVARCHAR2(50),
  startdate            DATE,
  destination          NVARCHAR2(50),
  goodsname            NVARCHAR2(50),
  drivername           NVARCHAR2(30),
  drivertel            NVARCHAR2(20),
  drivercertificateno  NVARCHAR2(30),
  escortname           NVARCHAR2(30),
  escorttel            NVARCHAR2(20),
  escortcertificateno  NVARCHAR2(30),
  collectiondate       DATE,
  id                   NVARCHAR2(32) default sys_guid() not null,
  weight               NVARCHAR2(15)
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
comment on table KEYCAR_BILL
  is '电子运单信息';
comment on column KEYCAR_BILL.carcolor
  is '车牌颜色';
comment on column KEYCAR_BILL.roadtransportno
  is '道路运输证号';
comment on column KEYCAR_BILL.transportcompanyname
  is '运输企业名称';
comment on column KEYCAR_BILL.licenseno
  is '企业经营许可证号';
comment on column KEYCAR_BILL.transportcompanytel
  is '运输企业联系方式';
comment on column KEYCAR_BILL.shippername
  is '托运方名称';
comment on column KEYCAR_BILL.shippertel
  is '托运方电话';
comment on column KEYCAR_BILL.startplace
  is '起运地';
comment on column KEYCAR_BILL.startdate
  is '起运日期';
comment on column KEYCAR_BILL.destination
  is '目的地';
comment on column KEYCAR_BILL.goodsname
  is '危险货物运输名称';
comment on column KEYCAR_BILL.drivername
  is '驾驶员名称';
comment on column KEYCAR_BILL.drivertel
  is '驾驶员联系方式';
comment on column KEYCAR_BILL.drivercertificateno
  is '驾驶员从业资格证号';
comment on column KEYCAR_BILL.escortname
  is '押运员名称';
comment on column KEYCAR_BILL.escorttel
  is '押运员联系方式';
comment on column KEYCAR_BILL.escortcertificateno
  is '押运员从业资格证号';
comment on column KEYCAR_BILL.id
  is 'uuid';
comment on column KEYCAR_BILL.weight
  is '运输重量';
alter table KEYCAR_BILL
  add constraint KC_BILL_PK primary key (ID)
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
prompt Creating table KEYCAR_LOCTION_INQD_NEW
prompt ======================================
prompt
create table KEYCAR_LOCTION_INQD_NEW
(
  id             VARCHAR2(32) default sys_guid() not null,
  carno          NVARCHAR2(16) not null,
  collectiondate DATE,
  latitude       NUMBER,
  longitude      NUMBER,
  speed          NUMBER,
  insertdate     DATE
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
comment on column KEYCAR_LOCTION_INQD_NEW.id
  is 'id';
comment on column KEYCAR_LOCTION_INQD_NEW.carno
  is '号牌号码';
comment on column KEYCAR_LOCTION_INQD_NEW.collectiondate
  is '采集时间';
comment on column KEYCAR_LOCTION_INQD_NEW.latitude
  is '经度';
comment on column KEYCAR_LOCTION_INQD_NEW.longitude
  is '维度';
comment on column KEYCAR_LOCTION_INQD_NEW.speed
  is '速度';
comment on column KEYCAR_LOCTION_INQD_NEW.insertdate
  is '当前批次入库时间';
create index INDEX_KEYCAR_LOCTION_INQDCARNO on KEYCAR_LOCTION_INQD_NEW (CARNO)
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
create index INDX_KC_LOCTION_INQDNEW_INDATE on KEYCAR_LOCTION_INQD_NEW (INSERTDATE)
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
alter table KEYCAR_LOCTION_INQD_NEW
  add constraint PK_KEYCAR_LOCTION_INQD primary key (ID)
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
prompt Creating table KEYCAR_VEHICLE_BASE
prompt ==================================
prompt
create table KEYCAR_VEHICLE_BASE
(
  carno         NVARCHAR2(10),
  carcolor      NVARCHAR2(10),
  cartype       NVARCHAR2(50),
  carbrand      NVARCHAR2(50),
  transporttype NVARCHAR2(10),
  companyname   NVARCHAR2(100),
  updatedate    DATE,
  id            NVARCHAR2(32) default sys_guid() not null
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
comment on table KEYCAR_VEHICLE_BASE
  is '青岛籍车辆基础登记信息';
comment on column KEYCAR_VEHICLE_BASE.carcolor
  is '车牌颜色';
comment on column KEYCAR_VEHICLE_BASE.cartype
  is '车辆类型';
comment on column KEYCAR_VEHICLE_BASE.carbrand
  is '车辆型号';
comment on column KEYCAR_VEHICLE_BASE.transporttype
  is '运输类型';
comment on column KEYCAR_VEHICLE_BASE.companyname
  is '所属公司名称';
comment on column KEYCAR_VEHICLE_BASE.updatedate
  is '更新时间';
comment on column KEYCAR_VEHICLE_BASE.id
  is 'uuid';
alter table KEYCAR_VEHICLE_BASE
  add constraint VEHICLE_BASE_PK primary key (ID)
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
prompt Creating table KEYCAR_VEHICLE_BASE_INQD
prompt =======================================
prompt
create table KEYCAR_VEHICLE_BASE_INQD
(
  carno         NVARCHAR2(10),
  carcolor      NVARCHAR2(10),
  cartype       NVARCHAR2(50),
  carbrand      NVARCHAR2(50),
  transporttype NVARCHAR2(10),
  companyname   NVARCHAR2(100),
  intoqddate    DATE,
  id            NVARCHAR2(32) default sys_guid() not null
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
comment on table KEYCAR_VEHICLE_BASE_INQD
  is '当前处于青岛区域内车辆基础登记信息';
comment on column KEYCAR_VEHICLE_BASE_INQD.carcolor
  is '车牌颜色';
comment on column KEYCAR_VEHICLE_BASE_INQD.cartype
  is '车辆类型';
comment on column KEYCAR_VEHICLE_BASE_INQD.carbrand
  is '车辆型号';
comment on column KEYCAR_VEHICLE_BASE_INQD.transporttype
  is '运输类型';
comment on column KEYCAR_VEHICLE_BASE_INQD.companyname
  is '所属公司名称';
comment on column KEYCAR_VEHICLE_BASE_INQD.intoqddate
  is '非青岛籍车辆进入青岛的时间';
comment on column KEYCAR_VEHICLE_BASE_INQD.id
  is 'uuid';
alter table KEYCAR_VEHICLE_BASE_INQD
  add constraint KC_BASE_INQD_PK primary key (ID)
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
prompt Creating table KEYCAR_YJ
prompt ========================
prompt
create table KEYCAR_YJ
(
  carno     NVARCHAR2(10),
  warnname  NVARCHAR2(100),
  warndate  DATE,
  longitude NUMBER,
  latitude  NUMBER,
  warntype  CHAR(1),
  id        VARCHAR2(32) default sys_guid() not null
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
comment on table KEYCAR_YJ
  is '预警信息';
comment on column KEYCAR_YJ.warnname
  is '预警名称';
comment on column KEYCAR_YJ.warndate
  is '预警时间';
comment on column KEYCAR_YJ.longitude
  is '经度';
comment on column KEYCAR_YJ.latitude
  is '纬度';
comment on column KEYCAR_YJ.warntype
  is '类型：0主动预防预警 1：联网联控预警';
comment on column KEYCAR_YJ.id
  is 'uuid';
create index INDX_KC_YJ_DATE on KEYCAR_YJ (WARNDATE)
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
alter table KEYCAR_YJ
  add constraint KC_YJ_PK primary key (ID)
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
prompt Creating table MONITOR_SERVICE_AREA
prompt ===================================
prompt
create table MONITOR_SERVICE_AREA
(
  code          VARCHAR2(32),
  name          VARCHAR2(100),
  coordinates   VARCHAR2(100),
  direction     VARCHAR2(16),
  dldm          VARCHAR2(100),
  display       VARCHAR2(500),
  upservicearea VARCHAR2(32),
  updisplay     VARCHAR2(500),
  remark        VARCHAR2(500)
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
comment on table MONITOR_SERVICE_AREA
  is '???????';
comment on column MONITOR_SERVICE_AREA.code
  is '编号、主键';
comment on column MONITOR_SERVICE_AREA.name
  is '名称';
comment on column MONITOR_SERVICE_AREA.coordinates
  is '坐标';
comment on column MONITOR_SERVICE_AREA.direction
  is '方向（1：下行，0：上行）';
comment on column MONITOR_SERVICE_AREA.dldm
  is '所属道路（与vio_coderoad表的nid字段关联）';
comment on column MONITOR_SERVICE_AREA.display
  is '诱导屏id,多个用逗号隔开（默认10公里上游诱导屏）';
comment on column MONITOR_SERVICE_AREA.upservicearea
  is '上游服务区';
comment on column MONITOR_SERVICE_AREA.updisplay
  is '与上游之前的诱导屏id';
comment on column MONITOR_SERVICE_AREA.remark
  is '备注';

prompt
prompt Creating table PIC_POST_ROLE_RELATION
prompt =====================================
prompt
create table PIC_POST_ROLE_RELATION
(
  post_role_id NVARCHAR2(32),
  post_type    NVARCHAR2(1),
  role_id      NVARCHAR2(32)
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
comment on table PIC_POST_ROLE_RELATION
  is '岗位与角色的关系';

prompt
prompt Creating table PIC_SHORTCUT_COMMAND
prompt ===================================
prompt
create table PIC_SHORTCUT_COMMAND
(
  command_id      NVARCHAR2(32) not null,
  command_content NVARCHAR2(500),
  post_type       NVARCHAR2(4),
  create_time     DATE default sysdate,
  department_id   NVARCHAR2(12),
  command_state   NVARCHAR2(4),
  command_type    NVARCHAR2(4),
  measure_type    NVARCHAR2(4),
  user_id         NVARCHAR2(6)
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
comment on table PIC_SHORTCUT_COMMAND
  is '快捷指令表';
comment on column PIC_SHORTCUT_COMMAND.command_id
  is 'id';
comment on column PIC_SHORTCUT_COMMAND.command_content
  is '指令内容';
comment on column PIC_SHORTCUT_COMMAND.post_type
  is '岗位类型';
comment on column PIC_SHORTCUT_COMMAND.create_time
  is '插入时间';
comment on column PIC_SHORTCUT_COMMAND.department_id
  is '部门id';
comment on column PIC_SHORTCUT_COMMAND.command_state
  is '默认 -1  过程反馈 0 指令办结 1';
comment on column PIC_SHORTCUT_COMMAND.command_type
  is '指令类型0 指令 1 处置记录';
comment on column PIC_SHORTCUT_COMMAND.measure_type
  is '措施类型';
comment on column PIC_SHORTCUT_COMMAND.user_id
  is '登录账户id';
alter table PIC_SHORTCUT_COMMAND
  add constraint PK_COMMAND_ID primary key (COMMAND_ID)
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
prompt Creating table PIS_DIG_CONFIG
prompt =============================
prompt
create table PIS_DIG_CONFIG
(
  config_id     VARCHAR2(32) default sys_guid() not null,
  topic_name    NVARCHAR2(50) not null,
  model         VARCHAR2(1) not null,
  person_define VARCHAR2(50),
  dept_id       VARCHAR2(12),
  label_ids     VARCHAR2(100),
  source_ids    VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_DIG_CONFIG
  is '情报驾驶舱-情报挖掘配置表';
comment on column PIS_DIG_CONFIG.config_id
  is 'uuid';
comment on column PIS_DIG_CONFIG.topic_name
  is '主题名称';
comment on column PIS_DIG_CONFIG.model
  is '分析模式 (1-标签分析 2-人员分析)';
comment on column PIS_DIG_CONFIG.person_define
  is '人员分析定义,M天超过N条(M,N)';
comment on column PIS_DIG_CONFIG.dept_id
  is '部门id';
comment on column PIS_DIG_CONFIG.label_ids
  is '选中的标签id，英文逗号分隔';
comment on column PIS_DIG_CONFIG.source_ids
  is '选中的来源id，英文逗号分隔';
alter table PIS_DIG_CONFIG
  add constraint CONFIG_PK primary key (CONFIG_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_DIG_REPORTER
prompt ===============================
prompt
create table PIS_DIG_REPORTER
(
  case_id      VARCHAR2(32) not null,
  report_phone VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_DIG_REPORTER
  is '情报挖掘-上报人表';
comment on column PIS_DIG_REPORTER.case_id
  is '情报id';
comment on column PIS_DIG_REPORTER.report_phone
  is '上报人电话';
alter table PIS_DIG_REPORTER
  add constraint PIS_DIG_REPORTER_PK primary key (CASE_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_DIG_RULE
prompt ===========================
prompt
create table PIS_DIG_RULE
(
  rule_id    VARCHAR2(32) default sys_guid() not null,
  config_id  VARCHAR2(32) not null,
  display_no VARCHAR2(1),
  rule_type  VARCHAR2(1) not null,
  rule       VARCHAR2(100) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_DIG_RULE
  is '情报驾驶舱-情报挖掘配置-预警规则配置表';
comment on column PIS_DIG_RULE.rule_id
  is 'uuid';
comment on column PIS_DIG_RULE.config_id
  is 'pis_dig_config表id';
comment on column PIS_DIG_RULE.display_no
  is '页面展示顺序';
comment on column PIS_DIG_RULE.rule_type
  is '规则类型(1-连续变化 2-突变 3-绝对值)';
comment on column PIS_DIG_RULE.rule
  is '设置的规则,英文逗号分隔';
alter table PIS_DIG_RULE
  add constraint DIG_RULE_PK primary key (RULE_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_FAST_OPER_LOG
prompt ================================
prompt
create table PIS_FAST_OPER_LOG
(
  oper_id          VARCHAR2(32) not null,
  oper_code        VARCHAR2(10) not null,
  oper_target_type VARCHAR2(2) not null,
  oper_time        DATE not null,
  oper_account     VARCHAR2(10),
  oper_dept        VARCHAR2(12),
  group_id         VARCHAR2(32),
  state_id         VARCHAR2(32),
  oper_target_id   NVARCHAR2(2000) not null,
  oper_num         VARCHAR2(32),
  oper_content     CLOB,
  sender_post      NVARCHAR2(32),
  receive_post     NVARCHAR2(32),
  receiver         NVARCHAR2(32),
  receive_dept     NVARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 832K
    next 1M
    minextents 1
    maxextents unlimited
  );
comment on table PIS_FAST_OPER_LOG
  is '快警情处理日志表';
comment on column PIS_FAST_OPER_LOG.oper_id
  is '操作日志编号';
comment on column PIS_FAST_OPER_LOG.oper_code
  is '操作编码  60：警情接收；61：警情接收超时；62：指令下发；70：指令接收；71：指令接收超时；80：指令反馈；81：指令反馈超时；90：指令办结；91：指令办结超时；100：警情手动结案；101：指令办结自动结案；102：警情超时自动结案；110：处置记录；';
comment on column PIS_FAST_OPER_LOG.oper_target_type
  is '操作对象类型（1：部门；2：情报；3：情报组）';
comment on column PIS_FAST_OPER_LOG.oper_time
  is '操作时间';
comment on column PIS_FAST_OPER_LOG.oper_account
  is '操作人';
comment on column PIS_FAST_OPER_LOG.oper_dept
  is '操作部门';
comment on column PIS_FAST_OPER_LOG.group_id
  is '组编号';
comment on column PIS_FAST_OPER_LOG.state_id
  is '进度编号';
comment on column PIS_FAST_OPER_LOG.oper_target_id
  is '操作对象编号';
comment on column PIS_FAST_OPER_LOG.oper_num
  is '操作序号';
comment on column PIS_FAST_OPER_LOG.oper_content
  is '日志内容 ';
comment on column PIS_FAST_OPER_LOG.sender_post
  is '发送岗位';
comment on column PIS_FAST_OPER_LOG.receive_post
  is '接收岗位';
comment on column PIS_FAST_OPER_LOG.receiver
  is '接收人';
comment on column PIS_FAST_OPER_LOG.receive_dept
  is '接收部门';
create index PK_LOG_CODE on PIS_FAST_OPER_LOG (OPER_CODE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_LOG_TARGET on PIS_FAST_OPER_LOG (OPER_TARGET_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 167;
create index PK_LOG_TIME on PIS_FAST_OPER_LOG (OPER_TIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PIS_FAST_OPER_LOG
  add constraint PIS_FAST_OPER_LOG_PK primary key (OPER_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 192K
    next 1M
    minextents 1
    maxextents unlimited
  );

prompt
prompt Creating table PIS_IMPORT_RELATION
prompt ==================================
prompt
create table PIS_IMPORT_RELATION
(
  import_id  VARCHAR2(32) not null,
  type       VARCHAR2(2) not null,
  reason     VARCHAR2(4000),
  case_id    VARCHAR2(32) not null,
  merge_time DATE
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
comment on table PIS_IMPORT_RELATION
  is '重要警情标记表';
comment on column PIS_IMPORT_RELATION.import_id
  is '编号';
comment on column PIS_IMPORT_RELATION.type
  is '标记类型 6101';
comment on column PIS_IMPORT_RELATION.reason
  is '标记原因';
comment on column PIS_IMPORT_RELATION.case_id
  is '情报编号';
comment on column PIS_IMPORT_RELATION.merge_time
  is '入库时间';

prompt
prompt Creating table PIS_INFO_RECEIVE
prompt ===============================
prompt
create table PIS_INFO_RECEIVE
(
  receive_id                 NVARCHAR2(32),
  receive_deptid             NVARCHAR2(12),
  receive_post               NVARCHAR2(32),
  case_id                    NVARCHAR2(32),
  create_time                DATE,
  receive_user_id            NVARCHAR2(32),
  receive_time               DATE,
  receive_use_time           NVARCHAR2(32),
  receive_use_threshold_time NVARCHAR2(32)
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
comment on table PIS_INFO_RECEIVE
  is '警情接收表';
comment on column PIS_INFO_RECEIVE.receive_id
  is '接收id';
comment on column PIS_INFO_RECEIVE.receive_deptid
  is '接收部门';
comment on column PIS_INFO_RECEIVE.receive_post
  is '接收岗位';
comment on column PIS_INFO_RECEIVE.case_id
  is '警情id';
comment on column PIS_INFO_RECEIVE.create_time
  is '警情录入时间';
comment on column PIS_INFO_RECEIVE.receive_user_id
  is '接收人';
comment on column PIS_INFO_RECEIVE.receive_time
  is '接收时间';
comment on column PIS_INFO_RECEIVE.receive_use_time
  is '接收用时';
comment on column PIS_INFO_RECEIVE.receive_use_threshold_time
  is '接收阈值时间';

prompt
prompt Creating table PIS_ORDER
prompt ========================
prompt
create table PIS_ORDER
(
  order_id                    NVARCHAR2(32),
  case_id                     NVARCHAR2(32),
  sender_post                 NVARCHAR2(32),
  sender                      NVARCHAR2(32),
  receive_post                NVARCHAR2(32),
  receive_post_name           NVARCHAR2(32),
  receive_dept                NVARCHAR2(12),
  receiver                    NVARCHAR2(32),
  sign_time                   DATE,
  order_type                  NVARCHAR2(1),
  feedbacker                  NVARCHAR2(32),
  feedback_content            NVARCHAR2(500),
  feedback_time               DATE,
  create_time                 DATE,
  end_time                    DATE,
  ender                       NVARCHAR2(32),
  order_source                VARCHAR2(4),
  send_time                   DATE,
  end_content                 NVARCHAR2(500),
  order_state                 NVARCHAR2(2) default 1,
  sender_dept                 NVARCHAR2(12),
  sign_use_time               NVARCHAR2(10),
  sign_use_threshold_time     NVARCHAR2(10),
  feedback_use_time           NVARCHAR2(10),
  feedback_use_threshold_time NVARCHAR2(10),
  end_use_time                NVARCHAR2(10),
  end_use_threshold_time      NVARCHAR2(10),
  measure_id                  NVARCHAR2(32),
  measure_real                CLOB,
  urge_user_id                NVARCHAR2(10),
  urge_dept                   NVARCHAR2(12),
  urge_post                   NVARCHAR2(32),
  order_content               CLOB
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
comment on table PIS_ORDER
  is '指令表';
comment on column PIS_ORDER.order_id
  is '指令id';
comment on column PIS_ORDER.case_id
  is '事件id';
comment on column PIS_ORDER.sender_post
  is '发送岗位';
comment on column PIS_ORDER.sender
  is '发送人员';
comment on column PIS_ORDER.receive_post
  is '接收岗ID（角色id）';
comment on column PIS_ORDER.receive_post_name
  is '接收岗名称（角色名称）(无用)';
comment on column PIS_ORDER.receive_dept
  is '接收部门';
comment on column PIS_ORDER.receiver
  is '接收人';
comment on column PIS_ORDER.sign_time
  is '签收时间';
comment on column PIS_ORDER.order_type
  is '指令类型（1指令下发）（备用）';
comment on column PIS_ORDER.feedbacker
  is '反馈人';
comment on column PIS_ORDER.feedback_content
  is '反馈内容';
comment on column PIS_ORDER.feedback_time
  is '反馈时间';
comment on column PIS_ORDER.create_time
  is '创建时间';
comment on column PIS_ORDER.end_time
  is '办结时间';
comment on column PIS_ORDER.ender
  is '办结人';
comment on column PIS_ORDER.order_source
  is '指令来源(备用)';
comment on column PIS_ORDER.send_time
  is '发送时间';
comment on column PIS_ORDER.end_content
  is '办结内容';
comment on column PIS_ORDER.order_state
  is '指令状态 1待签收 2待完结   3已完结 4 待审批 5 通过  6 驳回';
comment on column PIS_ORDER.sender_dept
  is '发送部门id';
comment on column PIS_ORDER.sign_use_time
  is '签收用时（单位秒）';
comment on column PIS_ORDER.sign_use_threshold_time
  is '签收用时阈值（单位秒）';
comment on column PIS_ORDER.feedback_use_time
  is '反馈用时（单位秒）';
comment on column PIS_ORDER.feedback_use_threshold_time
  is '反馈用时阈值（单位秒）';
comment on column PIS_ORDER.end_use_time
  is '办结用时（单位秒）';
comment on column PIS_ORDER.end_use_threshold_time
  is '办结用时阈值（单位秒）';
comment on column PIS_ORDER.measure_id
  is '推荐措施id';
comment on column PIS_ORDER.measure_real
  is '执行的措施';
comment on column PIS_ORDER.urge_user_id
  is '催办人id';
comment on column PIS_ORDER.urge_dept
  is '催办人部门';
comment on column PIS_ORDER.urge_post
  is '催办岗位';

prompt
prompt Creating table PIS_ORDER_CIRCULATION
prompt ====================================
prompt
create table PIS_ORDER_CIRCULATION
(
  feedback_id         NVARCHAR2(32),
  order_id            NVARCHAR2(32),
  feedbacker          NVARCHAR2(8),
  feedback_post       NVARCHAR2(32),
  feedback_time       DATE,
  feedback_content    NVARCHAR2(1000),
  case_id             NVARCHAR2(32),
  feedback_order_type NVARCHAR2(2),
  create_time         DATE,
  feedbacker_dept_id  NVARCHAR2(12),
  vms_url             NVARCHAR2(200),
  vms_name            NVARCHAR2(1200)
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
comment on table PIS_ORDER_CIRCULATION
  is '指令流转表';
comment on column PIS_ORDER_CIRCULATION.feedback_id
  is '反馈id';
comment on column PIS_ORDER_CIRCULATION.order_id
  is '指令id';
comment on column PIS_ORDER_CIRCULATION.feedbacker
  is '反馈人';
comment on column PIS_ORDER_CIRCULATION.feedback_post
  is '反馈岗位';
comment on column PIS_ORDER_CIRCULATION.feedback_time
  is '反馈时间';
comment on column PIS_ORDER_CIRCULATION.feedback_content
  is '反馈内容';
comment on column PIS_ORDER_CIRCULATION.case_id
  is '警情id';
comment on column PIS_ORDER_CIRCULATION.feedback_order_type
  is '反馈的指令状态 1 签收   2 反馈     3  办结     4申请 5 驳回   6 通过 ';
comment on column PIS_ORDER_CIRCULATION.create_time
  is '创建时间';
comment on column PIS_ORDER_CIRCULATION.feedbacker_dept_id
  is '反馈人部门';
comment on column PIS_ORDER_CIRCULATION.vms_url
  is '诱导地址';
comment on column PIS_ORDER_CIRCULATION.vms_name
  is '诱导名称';

prompt
prompt Creating table PIS_POLICE_CASE_INFO
prompt ===================================
prompt
create table PIS_POLICE_CASE_INFO
(
  case_id      VARCHAR2(32) not null,
  isimport     VARCHAR2(2),
  status       VARCHAR2(2),
  time         DATE,
  coordinate   VARCHAR2(100),
  sectionid    VARCHAR2(20),
  sections     VARCHAR2(1000),
  type         VARCHAR2(10),
  source       VARCHAR2(10),
  locationname VARCHAR2(2000),
  area_id      VARCHAR2(6),
  dept_id      VARCHAR2(12),
  description  CLOB,
  is_order     VARCHAR2(2),
  group_id     VARCHAR2(100),
  merge_time   DATE,
  update_time  DATE,
  case_level   VARCHAR2(10),
  plan_id      VARCHAR2(20),
  case_content VARCHAR2(2000),
  feature      VARCHAR2(2),
  subtype      VARCHAR2(10),
  topic        CLOB,
  direction    VARCHAR2(4)
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
comment on table PIS_POLICE_CASE_INFO
  is '警情信息表';
comment on column PIS_POLICE_CASE_INFO.case_id
  is '警情编号';
comment on column PIS_POLICE_CASE_INFO.isimport
  is '是否重要警情（0-非重要；1-重要）';
comment on column PIS_POLICE_CASE_INFO.status
  is '警情状态（03-待签收；04-办理中；05-已办结）';
comment on column PIS_POLICE_CASE_INFO.time
  is '警情发生时间';
comment on column PIS_POLICE_CASE_INFO.coordinate
  is '警情发生位置坐标';
comment on column PIS_POLICE_CASE_INFO.sectionid
  is '警情位置最近路段';
comment on column PIS_POLICE_CASE_INFO.sections
  is '警情周边路段';
comment on column PIS_POLICE_CASE_INFO.type
  is '警情类型';
comment on column PIS_POLICE_CASE_INFO.source
  is '警情来源';
comment on column PIS_POLICE_CASE_INFO.locationname
  is '警情发生位置描述';
comment on column PIS_POLICE_CASE_INFO.area_id
  is '所属辖区';
comment on column PIS_POLICE_CASE_INFO.dept_id
  is '所属部门';
comment on column PIS_POLICE_CASE_INFO.description
  is '警情描述';
comment on column PIS_POLICE_CASE_INFO.is_order
  is '是否派警（0-未派警；1-已派警）';
comment on column PIS_POLICE_CASE_INFO.group_id
  is '情报组编号';
comment on column PIS_POLICE_CASE_INFO.merge_time
  is '入库时间';
comment on column PIS_POLICE_CASE_INFO.update_time
  is '更新时间';
comment on column PIS_POLICE_CASE_INFO.case_level
  is '警情级别';
comment on column PIS_POLICE_CASE_INFO.plan_id
  is '方案编号';
comment on column PIS_POLICE_CASE_INFO.case_content
  is '警情其他信息';
comment on column PIS_POLICE_CASE_INFO.feature
  is '情报性质（0-快情报；1-慢情报）';
comment on column PIS_POLICE_CASE_INFO.subtype
  is '警情子类型';
comment on column PIS_POLICE_CASE_INFO.topic
  is '警情主题';
comment on column PIS_POLICE_CASE_INFO.direction
  is '警情位置行驶方向';
create unique index PK_POLICECASE_ID on PIS_POLICE_CASE_INFO (CASE_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_POLICECASE_SOURCE on PIS_POLICE_CASE_INFO (SOURCE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_POLICECASE_STATUS on PIS_POLICE_CASE_INFO (STATUS)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_POLICECASE_SUBTYPE on PIS_POLICE_CASE_INFO (SUBTYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_POLICECASE_TIME on PIS_POLICE_CASE_INFO (TIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PK_POLICECASE_TYPE on PIS_POLICE_CASE_INFO (TYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_POLICE_INFO
prompt ==============================
prompt
create table PIS_POLICE_INFO
(
  id            VARCHAR2(32),
  police_id     VARCHAR2(32),
  device_id     VARCHAR2(32),
  police_name   NVARCHAR2(100),
  police_status VARCHAR2(2),
  handle_case   VARCHAR2(2),
  case_id       VARCHAR2(1000),
  coordinate    VARCHAR2(200),
  merge_time    DATE,
  section_id    VARCHAR2(100),
  dtrecordtime  DATE
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
comment on table PIS_POLICE_INFO
  is '实时警力信息表';
comment on column PIS_POLICE_INFO.id
  is '编号';
comment on column PIS_POLICE_INFO.police_id
  is '警号';
comment on column PIS_POLICE_INFO.device_id
  is '呼号';
comment on column PIS_POLICE_INFO.police_name
  is '警员姓名';
comment on column PIS_POLICE_INFO.police_status
  is '状态（0-休息；1-待命；2-执勤）';
comment on column PIS_POLICE_INFO.handle_case
  is '是否在处警';
comment on column PIS_POLICE_INFO.case_id
  is '警情编号';
comment on column PIS_POLICE_INFO.coordinate
  is '警情位置坐标';
comment on column PIS_POLICE_INFO.merge_time
  is '入库时间';
comment on column PIS_POLICE_INFO.section_id
  is '所在路段';
comment on column PIS_POLICE_INFO.dtrecordtime
  is '采集时间';

prompt
prompt Creating table PIS_SECTION_STATUS_COMPUTE
prompt =========================================
prompt
create table PIS_SECTION_STATUS_COMPUTE
(
  id          VARCHAR2(32) not null,
  section_id  VARCHAR2(8) not null,
  status      CHAR(1),
  traveltime  NUMBER(5),
  volume      NUMBER(4),
  speed       NUMBER(4,1),
  computetime DATE,
  receivetime DATE,
  indey       NUMBER(3,1)
)
partition by range (RECEIVETIME) interval (NUMTOYMINTERVAL(1, 'YEAR'))
(
  partition ROAD_SECTION_P1 values less than (TO_DATE(' 2022-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table PIS_SECTION_STATUS_COMPUTE
  is '高速路况历史表';
comment on column PIS_SECTION_STATUS_COMPUTE.id
  is '主键';
comment on column PIS_SECTION_STATUS_COMPUTE.section_id
  is '路段id';
comment on column PIS_SECTION_STATUS_COMPUTE.status
  is '路段拥堵状态';
comment on column PIS_SECTION_STATUS_COMPUTE.traveltime
  is '旅行时间';
comment on column PIS_SECTION_STATUS_COMPUTE.volume
  is '流量';
comment on column PIS_SECTION_STATUS_COMPUTE.speed
  is '速度';
comment on column PIS_SECTION_STATUS_COMPUTE.computetime
  is '路段状态计算时间';
comment on column PIS_SECTION_STATUS_COMPUTE.receivetime
  is '接收时间';
comment on column PIS_SECTION_STATUS_COMPUTE.indey
  is '交通指数';
create index IDX_PIS_SEC_ID on PIS_SECTION_STATUS_COMPUTE (STATUS, RECEIVETIME, MOD(TO_NUMBER(TO_CHAR(RECEIVETIME,'mi')),5), SECTION_ID)
  nologging  local;
create index IDX_PIS_SEC_INDEY on PIS_SECTION_STATUS_COMPUTE (RECEIVETIME, TO_CHAR(RECEIVETIME,'hh24:mi'), INDEY)
  nologging  local;
create index IDX_PIS_SEC_INDEY2 on PIS_SECTION_STATUS_COMPUTE (SECTION_ID, RECEIVETIME, TO_CHAR(RECEIVETIME,'hh24:mi'), INDEY)
  nologging  local;
create index IDX_PIS_SEC_STATUS on PIS_SECTION_STATUS_COMPUTE (STATUS, SECTION_ID, RECEIVETIME)
  nologging  local;
create index IDX_PIS_SSC_COMPUTETIME on PIS_SECTION_STATUS_COMPUTE (COMPUTETIME)
  nologging  local;
create index IDX_PIS_SSC_RECEIVETIME on PIS_SECTION_STATUS_COMPUTE (RECEIVETIME)
  nologging  local;
alter table PIS_SECTION_STATUS_COMPUTE
  add constraint PIS_SECTION_STATUS_HISTORY_ID primary key (ID)
  disable
  novalidate;

prompt
prompt Creating table PIS_SECTION_STATUS_TODAY
prompt =======================================
prompt
create table PIS_SECTION_STATUS_TODAY
(
  id          VARCHAR2(32) not null,
  section_id  VARCHAR2(8) not null,
  status      CHAR(1),
  traveltime  NUMBER(5),
  volume      NUMBER(4),
  speed       NUMBER(4,1),
  computetime DATE,
  receivetime DATE,
  indey       NUMBER(3,1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_SECTION_STATUS_TODAY
  is '高速路况今日表';
comment on column PIS_SECTION_STATUS_TODAY.id
  is '主键';
comment on column PIS_SECTION_STATUS_TODAY.section_id
  is '路段id';
comment on column PIS_SECTION_STATUS_TODAY.status
  is '路段拥堵状态';
comment on column PIS_SECTION_STATUS_TODAY.traveltime
  is '旅行时间';
comment on column PIS_SECTION_STATUS_TODAY.volume
  is '流量';
comment on column PIS_SECTION_STATUS_TODAY.speed
  is '速度';
comment on column PIS_SECTION_STATUS_TODAY.computetime
  is '路段状态计算时间';
comment on column PIS_SECTION_STATUS_TODAY.receivetime
  is '接收时间';
comment on column PIS_SECTION_STATUS_TODAY.indey
  is '交通指数';
create index IDX_PIS_SECTION on PIS_SECTION_STATUS_TODAY (SECTION_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PIS_SECTION_STATUS_TODAY
  add constraint PK_PIS_SECTION_STATUS_TODAY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_SECTION_WARN_THRESHOLD
prompt =========================================
prompt
create table PIS_SECTION_WARN_THRESHOLD
(
  section_id VARCHAR2(8) not null,
  speed      NUMBER(4,1) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PIS_SECTION_WARN_THRESHOLD
  is '高德路况路段预警阈值表';
comment on column PIS_SECTION_WARN_THRESHOLD.section_id
  is '路段编号';
comment on column PIS_SECTION_WARN_THRESHOLD.speed
  is '速度';
alter table PIS_SECTION_WARN_THRESHOLD
  add constraint PIS_SECTION_WARN_THRESHOLD_PK primary key (SECTION_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PIS_SENDPOSTS_CONFIG
prompt ===================================
prompt
create table PIS_SENDPOSTS_CONFIG
(
  nlevel     NVARCHAR2(1),
  post_type  NVARCHAR2(1),
  dept_type  NVARCHAR2(1),
  send_posts NVARCHAR2(2000)
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

prompt
prompt Creating table POLICE_BASE
prompt ==========================
prompt
create table POLICE_BASE
(
  uuid         CHAR(32) not null,
  policeid     VARCHAR2(32),
  policename   NVARCHAR2(32),
  depid        VARCHAR2(12),
  isxiejing    VARCHAR2(4) default 1,
  idcard       VARCHAR2(20),
  phone        VARCHAR2(15),
  duty         VARCHAR2(15),
  createtime   DATE,
  policestatus VARCHAR2(2),
  updatetime   DATE
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
comment on column POLICE_BASE.uuid
  is 'id';
comment on column POLICE_BASE.policeid
  is '警号';
comment on column POLICE_BASE.policename
  is '警员姓名';
comment on column POLICE_BASE.depid
  is '所属部门';
comment on column POLICE_BASE.idcard
  is '身份证号';
comment on column POLICE_BASE.phone
  is '联系方式';
comment on column POLICE_BASE.duty
  is '人员类别18001';
comment on column POLICE_BASE.createtime
  is '创建时间';
comment on column POLICE_BASE.policestatus
  is '枚举18003';
comment on column POLICE_BASE.updatetime
  is '更新时间';
create unique index POLICE_BASE_POLICEID on POLICE_BASE (POLICEID)
  tablespace HIATMPTS_IDX
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
prompt Creating table POLICE_CAR_ONLINE_INDEX
prompt ======================================
prompt
create table POLICE_CAR_ONLINE_INDEX
(
  id            VARCHAR2(32) default sys_guid() not null,
  type          VARCHAR2(2),
  deptid        VARCHAR2(20),
  num           NUMBER,
  allpolice     NUMBER,
  police_online NUMBER,
  allcar        NUMBER,
  car_online    NUMBER,
  collecttime   DATE
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
comment on table POLICE_CAR_ONLINE_INDEX
  is '警情路段数据统计';
comment on column POLICE_CAR_ONLINE_INDEX.id
  is '主键';
comment on column POLICE_CAR_ONLINE_INDEX.type
  is '数据类型 1警力统计 2警车统计';
comment on column POLICE_CAR_ONLINE_INDEX.deptid
  is '部门ID';
comment on column POLICE_CAR_ONLINE_INDEX.num
  is '数据量';
comment on column POLICE_CAR_ONLINE_INDEX.allpolice
  is '所有警力';
comment on column POLICE_CAR_ONLINE_INDEX.police_online
  is '在线警力';
comment on column POLICE_CAR_ONLINE_INDEX.allcar
  is '所有车辆';
comment on column POLICE_CAR_ONLINE_INDEX.car_online
  is '在线车辆';
comment on column POLICE_CAR_ONLINE_INDEX.collecttime
  is '采集时间';

prompt
prompt Creating table POLICE_EQUIP_BASE
prompt ================================
prompt
create table POLICE_EQUIP_BASE
(
  id           VARCHAR2(32),
  policeid     VARCHAR2(32),
  equip_type   VARCHAR2(4),
  equip_num    VARCHAR2(32),
  equip_name   VARCHAR2(100),
  equip_date   DATE,
  equip_desc   VARCHAR2(200),
  update_time  DATE,
  update_user  VARCHAR2(32),
  insert_time  DATE default sysdate,
  depid        VARCHAR2(32),
  equip_status VARCHAR2(2) default 1,
  equip_model  VARCHAR2(2),
  pda_num      VARCHAR2(11)
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
comment on column POLICE_EQUIP_BASE.policeid
  is '警员id';
comment on column POLICE_EQUIP_BASE.equip_type
  is '设备类型 枚举18002';
comment on column POLICE_EQUIP_BASE.equip_num
  is '设备编号';
comment on column POLICE_EQUIP_BASE.equip_name
  is '设备名称';
comment on column POLICE_EQUIP_BASE.equip_date
  is '领用日期';
comment on column POLICE_EQUIP_BASE.equip_desc
  is '备注';
comment on column POLICE_EQUIP_BASE.update_time
  is '更新时间';
comment on column POLICE_EQUIP_BASE.update_user
  is '更新用户';
comment on column POLICE_EQUIP_BASE.insert_time
  is '创建时间';
comment on column POLICE_EQUIP_BASE.depid
  is '所属部门';
comment on column POLICE_EQUIP_BASE.equip_status
  is '设备状态 枚举18007';
comment on column POLICE_EQUIP_BASE.equip_model
  is '设备型号 枚举1000+设备状态+value';
comment on column POLICE_EQUIP_BASE.pda_num
  is '警务通';

prompt
prompt Creating table SECTION_WARN_THRESHOLD
prompt =====================================
prompt
create table SECTION_WARN_THRESHOLD
(
  section_id VARCHAR2(8) not null,
  speed      NUMBER(4,1) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SECTION_WARN_THRESHOLD
  is '高德路况路段预警阈值表';
comment on column SECTION_WARN_THRESHOLD.section_id
  is '路段编号';
comment on column SECTION_WARN_THRESHOLD.speed
  is '速度';
alter table SECTION_WARN_THRESHOLD
  add constraint SECTION_WARN_THRESHOLD_PK primary key (SECTION_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_PRESET_COORDINATE
prompt ======================================
prompt
create table VIDEO_PRESET_COORDINATE
(
  id         VARCHAR2(32) not null,
  video_id   VARCHAR2(32),
  preset     VARCHAR2(6),
  dev_lat    VARCHAR2(32),
  dev_lon    VARCHAR2(32),
  dev_focus  VARCHAR2(32),
  focus      VARCHAR2(10),
  level_horn VARCHAR2(10),
  pitch_horn VARCHAR2(10),
  coordiante CLOB,
  count      NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIDEO_PRESET_COORDINATE.id
  is '主键';
comment on column VIDEO_PRESET_COORDINATE.video_id
  is '视频设备ID';
comment on column VIDEO_PRESET_COORDINATE.preset
  is '预置位编号';
comment on column VIDEO_PRESET_COORDINATE.dev_lat
  is '设备坐标';
comment on column VIDEO_PRESET_COORDINATE.dev_lon
  is '设备坐标';
comment on column VIDEO_PRESET_COORDINATE.dev_focus
  is '设备最大焦距';
comment on column VIDEO_PRESET_COORDINATE.focus
  is '当前焦距--计算';
comment on column VIDEO_PRESET_COORDINATE.level_horn
  is '水平偏转角--计算';
comment on column VIDEO_PRESET_COORDINATE.pitch_horn
  is '俯仰角--计算';
comment on column VIDEO_PRESET_COORDINATE.coordiante
  is '视域坐标范围';
comment on column VIDEO_PRESET_COORDINATE.count
  is '累计频率';

prompt
prompt Creating table WARN_BASE_INFO
prompt =============================
prompt
create table WARN_BASE_INFO
(
  uuid          VARCHAR2(32) default sys_guid() not null,
  base_info     VARCHAR2(20) not null,
  info_type     VARCHAR2(10) not null,
  base_type     VARCHAR2(20) not null,
  base_sub_type VARCHAR2(20),
  warn_flag     VARCHAR2(1)
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
comment on table WARN_BASE_INFO
  is '再驾基础信息表';
comment on column WARN_BASE_INFO.uuid
  is 'uuid';
comment on column WARN_BASE_INFO.base_info
  is '身份证号或者车牌号';
comment on column WARN_BASE_INFO.info_type
  is '情报子类型,0220失驾人员再驾,0221毒驾人员再驾,0222在逃人员再驾,0223逾期未报废再驾';
comment on column WARN_BASE_INFO.base_type
  is '信息类型01身份证，02车牌号';
comment on column WARN_BASE_INFO.base_sub_type
  is '号牌种类select * from frm_code t where t.xtlb = ''00'' and t.dmlb = ''1007'';
身份证明名称
select * from frm_code t where t.xtlb = ''00'' and t.dmlb = ''2019''; ';

prompt
prompt Creating table WARN_PASS_INFO
prompt =============================
prompt
create table WARN_PASS_INFO
(
  uuid          VARCHAR2(32) default sys_guid() not null,
  hphm          VARCHAR2(20) not null,
  hpzl          VARCHAR2(10) not null,
  info_content  VARCHAR2(3000) not null,
  info_type     VARCHAR2(10) not null,
  create_time   DATE not null,
  insert_time   DATE default sysdate,
  base_info     VARCHAR2(20),
  base_sub_type VARCHAR2(10),
  warn_type     VARCHAR2(10)
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
comment on table WARN_PASS_INFO
  is '失驾过车和预警数据';
comment on column WARN_PASS_INFO.uuid
  is 'uuid';
comment on column WARN_PASS_INFO.hphm
  is '号牌号码';
comment on column WARN_PASS_INFO.hpzl
  is '号牌种类';
comment on column WARN_PASS_INFO.info_content
  is '数据内容';
comment on column WARN_PASS_INFO.info_type
  is '数据类型01过车数据，02情报数据';
comment on column WARN_PASS_INFO.create_time
  is '创建时间';
comment on column WARN_PASS_INFO.insert_time
  is '入库时间';


spool off
