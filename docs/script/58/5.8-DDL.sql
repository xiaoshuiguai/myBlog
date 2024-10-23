------------------------------------------------------
-- Export file for user 10.16.3.179/HIATMPDB --
-- Created by linan3 on 2022/7/27, 13:57:15 ----------
------------------------------------------------------

set define off
spool 5.8.log

prompt
prompt Creating table ACD_DUTYSIMPLE
prompt =============================
prompt
create table ACD_DUTYSIMPLE
(
  jianyishiguid      VARCHAR2(32) not null,
  count              VARCHAR2(32),
  sgbh               VARCHAR2(32),
  xzqh               NVARCHAR2(2000),
  sgfssj             DATE,
  lh                 VARCHAR2(32),
  lm                 VARCHAR2(64),
  gls                NUMBER(4),
  ms                 NUMBER(3),
  sgdd               VARCHAR2(200),
  ssrs               NUMBER,
  zjccss             NUMBER,
  sgrdyy             VARCHAR2(32),
  tq                 VARCHAR2(4),
  dllx               VARCHAR2(2),
  glxzdj             VARCHAR2(1),
  xc                 VARCHAR2(1),
  sgxt               VARCHAR2(2),
  cljsg              VARCHAR2(1),
  dcsg               VARCHAR2(2),
  tjr                VARCHAR2(32),
  cclrsj             DATE,
  sszd               VARCHAR2(12),
  dah                VARCHAR2(50),
  glbm               VARCHAR2(12),
  dzzb               VARCHAR2(100),
  wsbh               VARCHAR2(30),
  sgss               VARCHAR2(2000),
  zrtjjg             VARCHAR2(2000),
  jar1               VARCHAR2(30),
  jar2               VARCHAR2(30),
  jbr                VARCHAR2(30),
  gxsj               DATE,
  jafs               VARCHAR2(1),
  tjfs               VARCHAR2(1),
  ryxx               VARCHAR2(2000),
  rylen              NUMBER,
  djbh               VARCHAR2(32),
  longtitude         VARCHAR2(32),
  latitude           VARCHAR2(32),
  ssxq               NVARCHAR2(32),
  czmj               NVARCHAR2(6),
  clzt               NVARCHAR2(6),
  chetouphotourl     NVARCHAR2(1000),
  cheweiphotourl     NVARCHAR2(1000),
  pengzhuangphotourl NVARCHAR2(1000),
  otherphotourl      NVARCHAR2(1000),
  rendingshuphotourl NVARCHAR2(1000),
  createtime         DATE default sysdate not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ACD_DUTYSIMPLE
  is '简易事故信息表';
comment on column ACD_DUTYSIMPLE.jianyishiguid
  is '简易事故id';
comment on column ACD_DUTYSIMPLE.count
  is '事故涉及车辆数';
comment on column ACD_DUTYSIMPLE.sgbh
  is '事故编号';
comment on column ACD_DUTYSIMPLE.xzqh
  is '行政区划';
comment on column ACD_DUTYSIMPLE.sgfssj
  is '事故发生时间';
comment on column ACD_DUTYSIMPLE.lh
  is '道路代码';
comment on column ACD_DUTYSIMPLE.lm
  is '路名';
comment on column ACD_DUTYSIMPLE.gls
  is '公里数';
comment on column ACD_DUTYSIMPLE.ms
  is '米数';
comment on column ACD_DUTYSIMPLE.sgdd
  is '事故地点';
comment on column ACD_DUTYSIMPLE.ssrs
  is '受伤人数';
comment on column ACD_DUTYSIMPLE.zjccss
  is '直接财产损失';
comment on column ACD_DUTYSIMPLE.sgrdyy
  is '事故认定原因';
comment on column ACD_DUTYSIMPLE.tq
  is '天气';
comment on column ACD_DUTYSIMPLE.dllx
  is '道路类型';
comment on column ACD_DUTYSIMPLE.glxzdj
  is '公路行政等级';
comment on column ACD_DUTYSIMPLE.xc
  is '现场';
comment on column ACD_DUTYSIMPLE.sgxt
  is '事故形态';
comment on column ACD_DUTYSIMPLE.cljsg
  is '车辆间事故';
comment on column ACD_DUTYSIMPLE.dcsg
  is '单车事故';
comment on column ACD_DUTYSIMPLE.tjr
  is '调解人';
comment on column ACD_DUTYSIMPLE.cclrsj
  is '初次录入时间';
comment on column ACD_DUTYSIMPLE.sszd
  is '所属中队';
comment on column ACD_DUTYSIMPLE.dah
  is '档案编号';
comment on column ACD_DUTYSIMPLE.glbm
  is '管理部门';
comment on column ACD_DUTYSIMPLE.dzzb
  is '电子坐标';
comment on column ACD_DUTYSIMPLE.wsbh
  is '文书编号';
comment on column ACD_DUTYSIMPLE.sgss
  is '事故事实';
comment on column ACD_DUTYSIMPLE.zrtjjg
  is '责任调节结果';
comment on column ACD_DUTYSIMPLE.jar1
  is '办案人1';
comment on column ACD_DUTYSIMPLE.jar2
  is '办案人2';
comment on column ACD_DUTYSIMPLE.jbr
  is '经办人';
comment on column ACD_DUTYSIMPLE.gxsj
  is '更新时间';
comment on column ACD_DUTYSIMPLE.jafs
  is '结案方式';
comment on column ACD_DUTYSIMPLE.tjfs
  is '调解方式';
comment on column ACD_DUTYSIMPLE.ryxx
  is '人员信息';
comment on column ACD_DUTYSIMPLE.rylen
  is '人员个数';
comment on column ACD_DUTYSIMPLE.djbh
  is '登记编号';
comment on column ACD_DUTYSIMPLE.longtitude
  is '经度（六合一无）';
comment on column ACD_DUTYSIMPLE.latitude
  is '纬度（六合一无）';
comment on column ACD_DUTYSIMPLE.ssxq
  is '所属辖区';
comment on column ACD_DUTYSIMPLE.czmj
  is '处置民警';
comment on column ACD_DUTYSIMPLE.clzt
  is '处理状态';
comment on column ACD_DUTYSIMPLE.chetouphotourl
  is '车头照片';
comment on column ACD_DUTYSIMPLE.cheweiphotourl
  is '车尾照片';
comment on column ACD_DUTYSIMPLE.pengzhuangphotourl
  is '碰撞部位照片';
comment on column ACD_DUTYSIMPLE.otherphotourl
  is '其他现场取证照片';
comment on column ACD_DUTYSIMPLE.rendingshuphotourl
  is '责任认定书url';
alter table ACD_DUTYSIMPLE
  add constraint ACD_DUTYSIMPLE_PRI primary key (JIANYISHIGUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ACD_DUTYSIMPLEHUMAN
prompt ==================================
prompt
create table ACD_DUTYSIMPLEHUMAN
(
  sgbh    VARCHAR2(32),
  xzqh    VARCHAR2(50),
  rybh    VARCHAR2(32),
  xm      VARCHAR2(32),
  xb      VARCHAR2(2),
  sfzh    VARCHAR2(20),
  nl      NUMBER(2),
  zhuzhai VARCHAR2(2000),
  dh      VARCHAR2(16),
  rylx    VARCHAR2(32),
  shcd    VARCHAR2(32),
  wfxw1   VARCHAR2(32),
  wfxw2   VARCHAR2(32),
  wfxw3   VARCHAR2(32),
  wftk1   VARCHAR2(32),
  wftk2   VARCHAR2(32),
  wftk3   VARCHAR2(32),
  zyysdw  VARCHAR2(50),
  jtfs    VARCHAR2(32),
  glxzqh  VARCHAR2(32),
  jszdabh VARCHAR2(32),
  jszzl   VARCHAR2(4),
  zjcx    VARCHAR2(4),
  cclzrq  DATE,
  jsrgxd  VARCHAR2(2000),
  fzjg    VARCHAR2(32),
  sgzr    VARCHAR2(50),
  hphm    VARCHAR2(10),
  hpzl    VARCHAR2(4),
  clfzjg  VARCHAR2(32),
  fdjh    VARCHAR2(50),
  clsbdh  VARCHAR2(50),
  jdcxh   VARCHAR2(50),
  clpp    VARCHAR2(32),
  clxh    VARCHAR2(32),
  clys    VARCHAR2(4),
  cllx    VARCHAR2(32),
  jdczt   VARCHAR2(32),
  syq     VARCHAR2(32),
  jdcsyr  VARCHAR2(32),
  clsyxz  VARCHAR2(32),
  bx      VARCHAR2(4),
  bxgs    VARCHAR2(32),
  bxpz    VARCHAR2(32),
  clzzwp  VARCHAR2(2000),
  clglxd  VARCHAR2(32),
  cjcxbj  VARCHAR2(32),
  jxw     VARCHAR2(4),
  id      VARCHAR2(32) not null,
  jyflag  VARCHAR2(2),
  xszt    VARCHAR2(50),
  pzbw    VARCHAR2(200),
  zrrd    VARCHAR2(200),
  sx      NUMBER(2),
  hpys    VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ACD_DUTYSIMPLEHUMAN
  is '简易事故涉事人员表';
comment on column ACD_DUTYSIMPLEHUMAN.sgbh
  is '事故编号';
comment on column ACD_DUTYSIMPLEHUMAN.xzqh
  is '行政区划';
comment on column ACD_DUTYSIMPLEHUMAN.rybh
  is '人员编号';
comment on column ACD_DUTYSIMPLEHUMAN.xm
  is '姓名';
comment on column ACD_DUTYSIMPLEHUMAN.xb
  is '性别';
comment on column ACD_DUTYSIMPLEHUMAN.sfzh
  is '身份证号';
comment on column ACD_DUTYSIMPLEHUMAN.nl
  is '年龄';
comment on column ACD_DUTYSIMPLEHUMAN.zhuzhai
  is '住址';
comment on column ACD_DUTYSIMPLEHUMAN.dh
  is '电话';
comment on column ACD_DUTYSIMPLEHUMAN.rylx
  is '人员分类';
comment on column ACD_DUTYSIMPLEHUMAN.shcd
  is '伤害程度';
comment on column ACD_DUTYSIMPLEHUMAN.wfxw1
  is '违法行为1';
comment on column ACD_DUTYSIMPLEHUMAN.wfxw2
  is '违法行为2';
comment on column ACD_DUTYSIMPLEHUMAN.wfxw3
  is '违法行为3';
comment on column ACD_DUTYSIMPLEHUMAN.wftk1
  is '违反条款内容1';
comment on column ACD_DUTYSIMPLEHUMAN.wftk2
  is '违反条款内容2';
comment on column ACD_DUTYSIMPLEHUMAN.wftk3
  is '违反条款内容3';
comment on column ACD_DUTYSIMPLEHUMAN.zyysdw
  is '专业运输单位';
comment on column ACD_DUTYSIMPLEHUMAN.jtfs
  is '运输方式';
comment on column ACD_DUTYSIMPLEHUMAN.glxzqh
  is '管理行政区划';
comment on column ACD_DUTYSIMPLEHUMAN.jszdabh
  is '驾驶证档案编号';
comment on column ACD_DUTYSIMPLEHUMAN.jszzl
  is '驾驶证种类';
comment on column ACD_DUTYSIMPLEHUMAN.zjcx
  is '准驾车型';
comment on column ACD_DUTYSIMPLEHUMAN.cclzrq
  is '初次领证日期';
comment on column ACD_DUTYSIMPLEHUMAN.jsrgxd
  is '驾驶人管辖地';
comment on column ACD_DUTYSIMPLEHUMAN.fzjg
  is '发证机关';
comment on column ACD_DUTYSIMPLEHUMAN.sgzr
  is '事故责任';
comment on column ACD_DUTYSIMPLEHUMAN.hphm
  is '号牌号码';
comment on column ACD_DUTYSIMPLEHUMAN.hpzl
  is '号牌种类';
comment on column ACD_DUTYSIMPLEHUMAN.clfzjg
  is '车辆发证机关';
comment on column ACD_DUTYSIMPLEHUMAN.fdjh
  is '发动机号';
comment on column ACD_DUTYSIMPLEHUMAN.clsbdh
  is '车辆识别代码';
comment on column ACD_DUTYSIMPLEHUMAN.jdcxh
  is '机动车序号';
comment on column ACD_DUTYSIMPLEHUMAN.clpp
  is '车辆品牌';
comment on column ACD_DUTYSIMPLEHUMAN.clxh
  is '车辆型号';
comment on column ACD_DUTYSIMPLEHUMAN.clys
  is '车辆颜色';
comment on column ACD_DUTYSIMPLEHUMAN.cllx
  is '车辆类型';
comment on column ACD_DUTYSIMPLEHUMAN.jdczt
  is '机动车状态';
comment on column ACD_DUTYSIMPLEHUMAN.syq
  is '所有权';
comment on column ACD_DUTYSIMPLEHUMAN.jdcsyr
  is '机动车所有人';
comment on column ACD_DUTYSIMPLEHUMAN.clsyxz
  is '车辆使用性质';
comment on column ACD_DUTYSIMPLEHUMAN.bx
  is '是否保险';
comment on column ACD_DUTYSIMPLEHUMAN.bxgs
  is '保险公司';
comment on column ACD_DUTYSIMPLEHUMAN.bxpz
  is '保险凭证号';
comment on column ACD_DUTYSIMPLEHUMAN.clzzwp
  is '车辆装载物品';
comment on column ACD_DUTYSIMPLEHUMAN.clglxd
  is '车辆管辖地';
comment on column ACD_DUTYSIMPLEHUMAN.cjcxbj
  is '车辆查询标记';
comment on column ACD_DUTYSIMPLEHUMAN.jxw
  is '校验位';
comment on column ACD_DUTYSIMPLEHUMAN.id
  is 'id';
comment on column ACD_DUTYSIMPLEHUMAN.jyflag
  is '甲乙方标识';
comment on column ACD_DUTYSIMPLEHUMAN.xszt
  is '车辆行驶状态';
comment on column ACD_DUTYSIMPLEHUMAN.pzbw
  is '碰撞部位';
comment on column ACD_DUTYSIMPLEHUMAN.zrrd
  is '责任认定';
comment on column ACD_DUTYSIMPLEHUMAN.sx
  is '录入序号顺序';
comment on column ACD_DUTYSIMPLEHUMAN.hpys
  is '号牌颜色';
alter table ACD_DUTYSIMPLEHUMAN
  add constraint ACD_MANPRI primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ACT_GE_PROPERTY
prompt ==============================
prompt
create table ACT_GE_PROPERTY
(
  name_  NVARCHAR2(64) not null,
  value_ NVARCHAR2(300),
  rev_   INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table ACT_GE_PROPERTY
  add primary key (NAME_)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ADVANCE_DIRECT_HISTORY
prompt =====================================
prompt
create table ADVANCE_DIRECT_HISTORY
(
  advance_id       VARCHAR2(32),
  scene_id         VARCHAR2(32),
  phases           VARCHAR2(1),
  operator_name    VARCHAR2(100),
  message_type     VARCHAR2(1),
  message_content  VARCHAR2(500),
  message_sendtime VARCHAR2(14),
  nid              VARCHAR2(32),
  advance_name     VARCHAR2(500),
  policeids        VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ADVANCE_DIRECT_HISTORY
  is '预案/方案指令记录表，参见《预案消息通信接口.pdf》';
comment on column ADVANCE_DIRECT_HISTORY.advance_id
  is '预案/方案id';
comment on column ADVANCE_DIRECT_HISTORY.scene_id
  is '场景id';
comment on column ADVANCE_DIRECT_HISTORY.phases
  is '阶段：1 启动 2 执行(中) 0 结束';
comment on column ADVANCE_DIRECT_HISTORY.operator_name
  is '操作员姓名';
comment on column ADVANCE_DIRECT_HISTORY.message_type
  is '岗位类型：1 视频岗 2 诱导 3 信号 4 指挥';
comment on column ADVANCE_DIRECT_HISTORY.message_content
  is '指令消息内容';
comment on column ADVANCE_DIRECT_HISTORY.message_sendtime
  is '发送时间(yyyymmddhh24miss)';
comment on column ADVANCE_DIRECT_HISTORY.nid
  is 'UUID';
comment on column ADVANCE_DIRECT_HISTORY.advance_name
  is '预案/方案名称';
comment on column ADVANCE_DIRECT_HISTORY.policeids
  is '指令推送警员集合';

prompt
prompt Creating table ADVANCE_POLICE_GROUP
prompt ===================================
prompt
create table ADVANCE_POLICE_GROUP
(
  planid   VARCHAR2(32) not null,
  policeid VARCHAR2(8) not null,
  groupid  NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ADVANCE_POLICE_GROUP.planid
  is '大型活动方案id';
comment on column ADVANCE_POLICE_GROUP.policeid
  is '警员id';
comment on column ADVANCE_POLICE_GROUP.groupid
  is '临时群组id';

prompt
prompt Creating table ADVANCE_SCENE_INFO
prompt =================================
prompt
create table ADVANCE_SCENE_INFO
(
  id               VARCHAR2(32) not null,
  foreignid        VARCHAR2(32),
  scenename        NVARCHAR2(40) not null,
  num              VARCHAR2(2) not null,
  videoconfig      CHAR(1) default 0 not null,
  vmsconfig        CHAR(1) default 0 not null,
  utcconfig        CHAR(1) default 0 not null,
  createtime       DATE,
  createuserid     VARCHAR2(6),
  createusername   NVARCHAR2(20),
  vmspubstatus     CHAR(1) default 0,
  starttime        DATE,
  accident         VARCHAR2(20),
  coordinate       VARCHAR2(4000),
  startconflag     CHAR(1),
  tigtype          CHAR(1),
  endtime          DATE,
  eventtype        VARCHAR2(20),
  eventlevel       CHAR(1),
  startflag        CHAR(1) default 0,
  videostatus      CHAR(1) default 0,
  fogstatus        CHAR(1) default 0,
  propagandastatus CHAR(1) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ADVANCE_SCENE_INFO
  is '场景信息表';
comment on column ADVANCE_SCENE_INFO.id
  is '主键UUID';
comment on column ADVANCE_SCENE_INFO.foreignid
  is '预案/方案id';
comment on column ADVANCE_SCENE_INFO.scenename
  is '场景名称';
comment on column ADVANCE_SCENE_INFO.num
  is '序号';
comment on column ADVANCE_SCENE_INFO.videoconfig
  is '视频配置状态';
comment on column ADVANCE_SCENE_INFO.vmsconfig
  is '诱导配置状态';
comment on column ADVANCE_SCENE_INFO.utcconfig
  is '信号配置状态';
comment on column ADVANCE_SCENE_INFO.createtime
  is '创建时间';
comment on column ADVANCE_SCENE_INFO.createuserid
  is '创建人ID';
comment on column ADVANCE_SCENE_INFO.createusername
  is '创建人姓名';
comment on column ADVANCE_SCENE_INFO.vmspubstatus
  is '诱导发布状态0：未执行 1:正在执行2：执行异常3：执行失败4：执行成功';
comment on column ADVANCE_SCENE_INFO.starttime
  is '启动时间,yyyy-mm-dd hh24:mi:ss';
comment on column ADVANCE_SCENE_INFO.accident
  is '事故种类,enumtype1119';
comment on column ADVANCE_SCENE_INFO.coordinate
  is '区域坐标';
comment on column ADVANCE_SCENE_INFO.startconflag
  is '启动条件标志:0-无;1-时';
comment on column ADVANCE_SCENE_INFO.tigtype
  is '触发条件:0人工执行1按时间2按事件';
comment on column ADVANCE_SCENE_INFO.endtime
  is '场景结束时间';
comment on column ADVANCE_SCENE_INFO.eventtype
  is '事件类型(与事件表类型对应)';
comment on column ADVANCE_SCENE_INFO.eventlevel
  is '事件级别:气象1234级，缓慢2拥堵3';
comment on column ADVANCE_SCENE_INFO.startflag
  is '启动提示:0否1是';
comment on column ADVANCE_SCENE_INFO.videostatus
  is '视频执行状态0：未执行 1:正在执行2：执行异常3：执行失败4：执行成功';
comment on column ADVANCE_SCENE_INFO.fogstatus
  is '雾区执行状态0：未执行 1:正在执行2：执行异常3：执行失败4：执行成功';
comment on column ADVANCE_SCENE_INFO.propagandastatus
  is '喊话执行状态0：未执行 1:正在执行2：执行异常3：执行失败4：执行成功';
alter table ADVANCE_SCENE_INFO
  add constraint ADVANCE_SCENE_INFO_PK_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ADVANCE_VIDEO_PLAN_INFO
prompt ======================================
prompt
create table ADVANCE_VIDEO_PLAN_INFO
(
  id         VARCHAR2(32) not null,
  foreignid  VARCHAR2(32) not null,
  planname   NVARCHAR2(30),
  deviceid   VARCHAR2(18),
  devicename NVARCHAR2(64),
  no         VARCHAR2(3),
  position   VARCHAR2(50),
  userid     VARCHAR2(6),
  username   NVARCHAR2(20),
  createtime DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ADVANCE_VIDEO_PLAN_INFO
  is '交通预案-视频方案表';
comment on column ADVANCE_VIDEO_PLAN_INFO.id
  is '主键UUID';
comment on column ADVANCE_VIDEO_PLAN_INFO.foreignid
  is '预案/方案ID';
comment on column ADVANCE_VIDEO_PLAN_INFO.planname
  is '方案名称';
comment on column ADVANCE_VIDEO_PLAN_INFO.deviceid
  is '视频ID';
comment on column ADVANCE_VIDEO_PLAN_INFO.devicename
  is '视频名称';
comment on column ADVANCE_VIDEO_PLAN_INFO.no
  is '序号';
comment on column ADVANCE_VIDEO_PLAN_INFO.position
  is '预置位编号(存放多个预置位编号)';
comment on column ADVANCE_VIDEO_PLAN_INFO.userid
  is '制作人ID';
comment on column ADVANCE_VIDEO_PLAN_INFO.username
  is '制作人姓名';
comment on column ADVANCE_VIDEO_PLAN_INFO.createtime
  is '创建时间';
create index AVIDEO_PLAN_FOREIGNID_NAME on ADVANCE_VIDEO_PLAN_INFO (FOREIGNID, PLANNAME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table ADVANCE_VIDEO_PLAN_INFO
  add constraint ADVANCE_VIDEO_PLAN_INFO_ID_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ADVANCE_VMS_PLAN
prompt ===============================
prompt
create table ADVANCE_VMS_PLAN
(
  id         VARCHAR2(32) not null,
  planname   NVARCHAR2(30),
  advanceid  VARCHAR2(32),
  deviceid   VARCHAR2(18),
  vmstype    VARCHAR2(2),
  vmsplanid  VARCHAR2(32),
  userid     VARCHAR2(6),
  username   NVARCHAR2(10),
  createtime DATE
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
comment on column ADVANCE_VMS_PLAN.id
  is '主键ID';
comment on column ADVANCE_VMS_PLAN.planname
  is '方案名称';
comment on column ADVANCE_VMS_PLAN.advanceid
  is '场景ID与advance_scene_info关联';
comment on column ADVANCE_VMS_PLAN.deviceid
  is '诱导设备ID';
comment on column ADVANCE_VMS_PLAN.vmstype
  is '诱导设备类型';
comment on column ADVANCE_VMS_PLAN.vmsplanid
  is '诱导发布计划ID，对应表VMS_PLAN中的主键ID';
comment on column ADVANCE_VMS_PLAN.userid
  is '制作人ID';
comment on column ADVANCE_VMS_PLAN.username
  is '制作人姓名(冗余)';
comment on column ADVANCE_VMS_PLAN.createtime
  is '创建时间';
create index ADVANCE_VMS_PLAN_ADVANCEID on ADVANCE_VMS_PLAN (ADVANCEID)
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
alter table ADVANCE_VMS_PLAN
  add constraint ADVANCE_VMS_PLAN_KEY primary key (ID)
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
prompt Creating table ALERTEVENT_CONFIG
prompt ================================
prompt
create table ALERTEVENT_CONFIG
(
  nid          NVARCHAR2(32) not null,
  userid       NVARCHAR2(10),
  eventsource  VARCHAR2(60),
  eventtype    VARCHAR2(60),
  secondscreen NUMBER,
  soundeffect  NUMBER,
  lighteffect  NUMBER,
  eventarea    VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ALERTEVENT_CONFIG
  is '自主警情配置';
comment on column ALERTEVENT_CONFIG.nid
  is '主键';
comment on column ALERTEVENT_CONFIG.userid
  is '用户id';
comment on column ALERTEVENT_CONFIG.eventsource
  is '事件来源';
comment on column ALERTEVENT_CONFIG.eventtype
  is '事件类型';
comment on column ALERTEVENT_CONFIG.secondscreen
  is '双屏开关，0-关，1-开';
comment on column ALERTEVENT_CONFIG.soundeffect
  is '声音开关，0-关，1-开';
comment on column ALERTEVENT_CONFIG.lighteffect
  is '光效开关，0-关，1-开';
comment on column ALERTEVENT_CONFIG.eventarea
  is '警情处理范围';
alter table ALERTEVENT_CONFIG
  add constraint PK_ALERTEVENT_CONFIG_NID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ALERTEVENT_DUTY
prompt ==============================
prompt
create table ALERTEVENT_DUTY
(
  nid    NVARCHAR2(32) not null,
  userid NVARCHAR2(10),
  btime  DATE,
  etime  DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ALERTEVENT_DUTY
  is '自主警情（上岗下岗）';
comment on column ALERTEVENT_DUTY.nid
  is '主键';
comment on column ALERTEVENT_DUTY.userid
  is '用户id';
comment on column ALERTEVENT_DUTY.btime
  is '上岗时间';
comment on column ALERTEVENT_DUTY.etime
  is '下岗时间';
alter table ALERTEVENT_DUTY
  add constraint PK_ALERTEVENT_DUTY_NID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ALERTEVENT_PARAM
prompt ===============================
prompt
create table ALERTEVENT_PARAM
(
  id                      CHAR(2) not null,
  detail                  NVARCHAR2(20) not null,
  traveltime_sgm_value    NUMBER(4,2) not null,
  traffic_sgm_value       NUMBER(4,2) not null,
  limit_size              NUMBER(4,2) not null,
  tmp_traffic_sgm_value   NUMBER(4,2) not null,
  traffic_down_speed1     NUMBER(4,2) not null,
  traffic_down_speed2     NUMBER(4,2) not null,
  traffic_down_speed3     NUMBER(4,2) not null,
  traffic_down_commcount1 NUMBER(4,2) not null,
  traffic_down_commcount2 NUMBER(4,2) not null,
  traffic_up_occupancy1   NUMBER(4,2) not null,
  traffic_up_occupancy2   NUMBER(4,2) not null,
  traveltime_time         NUMBER(4,2) not null,
  upate_time              DATE,
  update_user             CHAR(6),
  selected                CHAR(1),
  traveltime_limit        NUMBER(6,2),
  traveltime_time1        NUMBER(4,2),
  traveltime_limit1       NUMBER(6,2),
  traveltime_time2        NUMBER(4,2),
  traveltime_limit2       NUMBER(6,2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ALERTEVENT_PARAM.id
  is '级别编号，1-高，2-中，3-底';
comment on column ALERTEVENT_PARAM.detail
  is '界别描述';
comment on column ALERTEVENT_PARAM.traveltime_sgm_value
  is '旅行时间sigema 倍数';
comment on column ALERTEVENT_PARAM.traffic_sgm_value
  is '交通流sigema 倍数';
comment on column ALERTEVENT_PARAM.limit_size
  is '历史数据最少数量';
comment on column ALERTEVENT_PARAM.tmp_traffic_sgm_value
  is '历史数据过滤sigema';
comment on column ALERTEVENT_PARAM.traffic_down_speed1
  is '速度二次报警参数一';
comment on column ALERTEVENT_PARAM.traffic_down_speed2
  is '速度二次报警参数二';
comment on column ALERTEVENT_PARAM.traffic_down_speed3
  is '速度一次报警参数';
comment on column ALERTEVENT_PARAM.traffic_down_commcount1
  is '流量二次报警参数一';
comment on column ALERTEVENT_PARAM.traffic_down_commcount2
  is '流量二次报警参数二';
comment on column ALERTEVENT_PARAM.traffic_up_occupancy1
  is '占有率二次报警参数一';
comment on column ALERTEVENT_PARAM.traffic_up_occupancy2
  is '占有率二次报警参数二';
comment on column ALERTEVENT_PARAM.traveltime_time
  is '旅行时间报警参数1';
comment on column ALERTEVENT_PARAM.upate_time
  is '更新时间';
comment on column ALERTEVENT_PARAM.update_user
  is '更新用户';
comment on column ALERTEVENT_PARAM.selected
  is '是否使用当前参数，0-不使用，1-使用';
comment on column ALERTEVENT_PARAM.traveltime_limit
  is '旅行时间报警参数限制1';
comment on column ALERTEVENT_PARAM.traveltime_time1
  is '旅行时间报警参数2';
comment on column ALERTEVENT_PARAM.traveltime_limit1
  is '旅行时间报警参数限制2';
comment on column ALERTEVENT_PARAM.traveltime_time2
  is '旅行时间报警参数3';
comment on column ALERTEVENT_PARAM.traveltime_limit2
  is '旅行时间报警参数限制3';

prompt
prompt Creating table ANLYS_INTS_STATUS_DATA_15MI
prompt ==========================================
prompt
create table ANLYS_INTS_STATUS_DATA_15MI
(
  cintsid            VARCHAR2(8),
  napproachdirection VARCHAR2(2),
  nlaneno            VARCHAR2(2),
  volume             NUMBER(8),
  occupancy          NUMBER(5,4),
  speed              NUMBER(5,2),
  collectiontime     DATE
)
partition by range (COLLECTIONTIME) interval (NUMTODSINTERVAL(7,'DAY'))
(
  partition INTS_VOLUME_15MI_P1 values less than (TO_DATE(' 2017-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ANLYS_INSTSD_15MINS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table ANLYS_INTS_STATUS_DATA_15MI
  is '路口流量15分钟汇总表';
comment on column ANLYS_INTS_STATUS_DATA_15MI.cintsid
  is '路口编号';
comment on column ANLYS_INTS_STATUS_DATA_15MI.napproachdirection
  is '进口道方向';
comment on column ANLYS_INTS_STATUS_DATA_15MI.nlaneno
  is '车道号';
comment on column ANLYS_INTS_STATUS_DATA_15MI.volume
  is '流量';
comment on column ANLYS_INTS_STATUS_DATA_15MI.occupancy
  is '占有率';
comment on column ANLYS_INTS_STATUS_DATA_15MI.speed
  is '平均速度';
comment on column ANLYS_INTS_STATUS_DATA_15MI.collectiontime
  is '汇总时间';
create index IDX_SSD15MS on ANLYS_INTS_STATUS_DATA_15MI (COLLECTIONTIME)
  nologging  local;

prompt
prompt Creating table ANLYS_INTS_STATUS_DATA_30MI
prompt ==========================================
prompt
create table ANLYS_INTS_STATUS_DATA_30MI
(
  cintsid            VARCHAR2(8),
  napproachdirection VARCHAR2(2),
  nlaneno            VARCHAR2(2),
  volume             NUMBER(8),
  occupancy          NUMBER(5,4),
  speed              NUMBER(5,2),
  collectiontime     DATE
)
partition by range (COLLECTIONTIME) interval (NUMTOYMINTERVAL(1,'MONTH'))
(
  partition INTS_VOLUME_30MI_P1 values less than (TO_DATE(' 2017-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ANLYS_INSTSD_30MINS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table ANLYS_INTS_STATUS_DATA_30MI
  is '路口流量30分钟汇总表';
comment on column ANLYS_INTS_STATUS_DATA_30MI.cintsid
  is '路口编号';
comment on column ANLYS_INTS_STATUS_DATA_30MI.napproachdirection
  is '进口道方向';
comment on column ANLYS_INTS_STATUS_DATA_30MI.nlaneno
  is '车道号';
comment on column ANLYS_INTS_STATUS_DATA_30MI.volume
  is '流量';
comment on column ANLYS_INTS_STATUS_DATA_30MI.occupancy
  is '占有率';
comment on column ANLYS_INTS_STATUS_DATA_30MI.speed
  is '平均速度';
comment on column ANLYS_INTS_STATUS_DATA_30MI.collectiontime
  is '汇总时间';
create index IDX_SSD30MS on ANLYS_INTS_STATUS_DATA_30MI (COLLECTIONTIME)
  nologging  local;
create index IDX_SSD30MS2 on ANLYS_INTS_STATUS_DATA_30MI (CINTSID, TO_NUMBER(NLANENO), TO_CHAR(COLLECTIONTIME,'HH24:MI'), VOLUME, COLLECTIONTIME)
  nologging  local;

prompt
prompt Creating table ANLYS_INTS_STATUS_DATA_DAY
prompt =========================================
prompt
create table ANLYS_INTS_STATUS_DATA_DAY
(
  cintsid            VARCHAR2(8),
  napproachdirection VARCHAR2(2),
  nlaneno            VARCHAR2(2),
  volume             NUMBER(8),
  occupancy          NUMBER(5,4),
  speed              NUMBER(5,2),
  collectiontime     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ANLYS_INTS_STATUS_DATA_DAY
  is '路口流量天汇总表';
comment on column ANLYS_INTS_STATUS_DATA_DAY.cintsid
  is '路口编号';
comment on column ANLYS_INTS_STATUS_DATA_DAY.napproachdirection
  is '进口道方向';
comment on column ANLYS_INTS_STATUS_DATA_DAY.nlaneno
  is '车道号';
comment on column ANLYS_INTS_STATUS_DATA_DAY.volume
  is '流量';
comment on column ANLYS_INTS_STATUS_DATA_DAY.occupancy
  is '占有率';
comment on column ANLYS_INTS_STATUS_DATA_DAY.speed
  is '平均速度';
comment on column ANLYS_INTS_STATUS_DATA_DAY.collectiontime
  is '汇总时间';
create index IDX_INSTSD_TIME on ANLYS_INTS_STATUS_DATA_DAY (COLLECTIONTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ANLYS_INTS_STATUS_DATA_HOUR
prompt ==========================================
prompt
create table ANLYS_INTS_STATUS_DATA_HOUR
(
  cintsid            VARCHAR2(8),
  napproachdirection VARCHAR2(2),
  nlaneno            VARCHAR2(2),
  volume             NUMBER(8),
  occupancy          NUMBER(3,2),
  speed              NUMBER(6,2),
  collectiontime     DATE
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
comment on table ANLYS_INTS_STATUS_DATA_HOUR
  is '路口流量小时汇总表';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.cintsid
  is '路口编号';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.napproachdirection
  is '进口道方向';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.nlaneno
  is '车道号';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.volume
  is '流量';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.occupancy
  is '占有率';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.speed
  is '平均速度';
comment on column ANLYS_INTS_STATUS_DATA_HOUR.collectiontime
  is '汇总时间';
create index IDX_INTS_STATUS_DATA_HOUR on ANLYS_INTS_STATUS_DATA_HOUR (COLLECTIONTIME)
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
prompt Creating table ANLYS_MONITOR_POINT_INOUT
prompt ========================================
prompt
create table ANLYS_MONITOR_POINT_INOUT
(
  pointcode      NVARCHAR2(16) not null,
  pointname      NVARCHAR2(64),
  ninderictrion  NUMBER(2),
  noutderictrion NUMBER(2),
  remark         VARCHAR2(200)
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
comment on table ANLYS_MONITOR_POINT_INOUT
  is '进出城检测点位表';
comment on column ANLYS_MONITOR_POINT_INOUT.pointcode
  is '检测点编号';
comment on column ANLYS_MONITOR_POINT_INOUT.pointname
  is '检测点名称';
comment on column ANLYS_MONITOR_POINT_INOUT.ninderictrion
  is '进城方向';
comment on column ANLYS_MONITOR_POINT_INOUT.noutderictrion
  is '出城方向';
comment on column ANLYS_MONITOR_POINT_INOUT.remark
  is '备注';
alter table ANLYS_MONITOR_POINT_INOUT
  add constraint PK_ANLYS_MONITOR_POINT_INOUT primary key (POINTCODE)
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
prompt Creating table ANLYS_SG_DATA
prompt ============================
prompt
create table ANLYS_SG_DATA
(
  sgid                   VARCHAR2(64) not null,
  deathnum               NUMBER,
  injurenum              NUMBER,
  moneyloss              NUMBER,
  sgdate                 DATE,
  cartype                VARCHAR2(64),
  weather                VARCHAR2(64),
  sgtype                 VARCHAR2(64),
  xzqh                   VARCHAR2(64),
  xzqhone                VARCHAR2(64),
  missnum                NUMBER,
  roadid                 VARCHAR2(64),
  roadname               VARCHAR2(64),
  kilometres             VARCHAR2(64),
  metres                 VARCHAR2(64),
  sgcause                VARCHAR2(128),
  sgcausetype            VARCHAR2(64),
  illegalactivityone     VARCHAR2(128),
  illegalactivitytwo     VARCHAR2(128),
  illegalactivitythree   VARCHAR2(128),
  carnumber              VARCHAR2(64),
  vehicleowner           VARCHAR2(64),
  vehicletype            VARCHAR2(64),
  firstinsertdate        DATE,
  chargeperson           VARCHAR2(64),
  inverstigatorsfirst    VARCHAR2(64),
  inverstigatorstwo      VARCHAR2(64),
  managedepartment       VARCHAR2(64),
  casehandlingdepartment VARCHAR2(128)
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
comment on table ANLYS_SG_DATA
  is '交通事故态势研判数据对接表';
comment on column ANLYS_SG_DATA.sgid
  is '事故编号';
comment on column ANLYS_SG_DATA.deathnum
  is '死亡人数';
comment on column ANLYS_SG_DATA.injurenum
  is '受伤人数';
comment on column ANLYS_SG_DATA.moneyloss
  is '直接财产损失';
comment on column ANLYS_SG_DATA.sgdate
  is '事故发生时间';
comment on column ANLYS_SG_DATA.cartype
  is '号牌种类';
comment on column ANLYS_SG_DATA.weather
  is '天气';
comment on column ANLYS_SG_DATA.sgtype
  is '事故类型';
comment on column ANLYS_SG_DATA.xzqh
  is '行政区划';
comment on column ANLYS_SG_DATA.xzqhone
  is '行政区划1';
comment on column ANLYS_SG_DATA.missnum
  is '失踪人数';
comment on column ANLYS_SG_DATA.roadid
  is '路号';
comment on column ANLYS_SG_DATA.roadname
  is '路名';
comment on column ANLYS_SG_DATA.kilometres
  is '公里数';
comment on column ANLYS_SG_DATA.metres
  is '米数';
comment on column ANLYS_SG_DATA.sgcause
  is '事故认定原因';
comment on column ANLYS_SG_DATA.sgcausetype
  is '事故原因分类';
comment on column ANLYS_SG_DATA.illegalactivityone
  is '违法行为一';
comment on column ANLYS_SG_DATA.illegalactivitytwo
  is '违法行为二';
comment on column ANLYS_SG_DATA.illegalactivitythree
  is '违法行为三';
comment on column ANLYS_SG_DATA.carnumber
  is '号牌号码';
comment on column ANLYS_SG_DATA.vehicleowner
  is '机动车所有人';
comment on column ANLYS_SG_DATA.vehicletype
  is '车辆类型分类';
comment on column ANLYS_SG_DATA.firstinsertdate
  is '初次录入时间';
comment on column ANLYS_SG_DATA.chargeperson
  is '经办人';
comment on column ANLYS_SG_DATA.inverstigatorsfirst
  is '办案人1';
comment on column ANLYS_SG_DATA.inverstigatorstwo
  is '办案人2';
comment on column ANLYS_SG_DATA.managedepartment
  is '管理部门';
comment on column ANLYS_SG_DATA.casehandlingdepartment
  is '办案单位';

prompt
prompt Creating table ANLYS_SG_PLAN
prompt ============================
prompt
create table ANLYS_SG_PLAN
(
  id              VARCHAR2(32) not null,
  planname        NVARCHAR2(32),
  begindate       DATE,
  enddate         DATE,
  weather         VARCHAR2(4000),
  wfxw            VARCHAR2(4000),
  areatype        VARCHAR2(2),
  areacoordinates VARCHAR2(4000),
  distance        VARCHAR2(6),
  createtime      DATE
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
comment on table ANLYS_SG_PLAN
  is '交通事故态势研判数据对接表--（方案表）';
comment on column ANLYS_SG_PLAN.planname
  is '方案名称';
comment on column ANLYS_SG_PLAN.begindate
  is '开始日期';
comment on column ANLYS_SG_PLAN.enddate
  is '结束日期';
comment on column ANLYS_SG_PLAN.weather
  is '天气';
comment on column ANLYS_SG_PLAN.wfxw
  is '违法行为代码';
comment on column ANLYS_SG_PLAN.areatype
  is '区域类型 1点 2线 3面';
comment on column ANLYS_SG_PLAN.areacoordinates
  is '区域坐标';
comment on column ANLYS_SG_PLAN.distance
  is '线周边搜索时使用，缓冲半径，单位：米';
comment on column ANLYS_SG_PLAN.createtime
  is '创建时间';
alter table ANLYS_SG_PLAN
  add constraint KK_ID primary key (ID)
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
prompt Creating table AN_SECTION_STATUS_COMPUTE_AVG
prompt ============================================
prompt
create table AN_SECTION_STATUS_COMPUTE_AVG
(
  sectionid  NVARCHAR2(8),
  traveltime NUMBER(5),
  stdtime    DATE,
  stdmi      CHAR(5),
  stdweek    CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
create index INDEX_AN_SSC_SEECID_WEEK on AN_SECTION_STATUS_COMPUTE_AVG (SECTIONID, STDWEEK)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table AN_SECTION_STATUS_DATA_AVG1
prompt ==========================================
prompt
create table AN_SECTION_STATUS_DATA_AVG1
(
  sectionid NVARCHAR2(8),
  occupancy NUMBER(5,4),
  speed     NUMBER(5,2),
  commcount NUMBER(8),
  stdtime   DATE,
  stdmi     CHAR(5),
  stdweek   CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column AN_SECTION_STATUS_DATA_AVG1.sectionid
  is '路段ID';
comment on column AN_SECTION_STATUS_DATA_AVG1.occupancy
  is '占有率';
comment on column AN_SECTION_STATUS_DATA_AVG1.speed
  is '速度';
comment on column AN_SECTION_STATUS_DATA_AVG1.commcount
  is '流量';
comment on column AN_SECTION_STATUS_DATA_AVG1.stdtime
  is '时间 年-月-日 时:分:秒';
comment on column AN_SECTION_STATUS_DATA_AVG1.stdmi
  is '12:00';
comment on column AN_SECTION_STATUS_DATA_AVG1.stdweek
  is '1-7 周天到周六';
create index AN_SECTION_AVG_SECTIONID on AN_SECTION_STATUS_DATA_AVG1 (SECTIONID, STDWEEK)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table AREA_MAINTENANCE
prompt ===============================
prompt
create table AREA_MAINTENANCE
(
  id             VARCHAR2(32) not null,
  areaname       NVARCHAR2(100),
  areatype       VARCHAR2(2),
  description    NVARCHAR2(200),
  departmentcode VARCHAR2(12),
  maptype        NUMBER,
  maparea        VARCHAR2(4000),
  create_time    DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table AREA_MAINTENANCE
  is '图层维护';
comment on column AREA_MAINTENANCE.id
  is '主键';
comment on column AREA_MAINTENANCE.areaname
  is '图层名称';
comment on column AREA_MAINTENANCE.areatype
  is '图层类型（枚举1232）';
comment on column AREA_MAINTENANCE.description
  is '描述';
comment on column AREA_MAINTENANCE.departmentcode
  is '部门代码';
comment on column AREA_MAINTENANCE.maptype
  is '图层形态（1：点，2：线，3：圆，4：矩形，5：多边形）';
comment on column AREA_MAINTENANCE.maparea
  is '图层坐标';
comment on column AREA_MAINTENANCE.create_time
  is '创建时间';
alter table AREA_MAINTENANCE
  add constraint ID_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_CONFIG
prompt =================================
prompt
create table BLACK_ALERT_CONFIG
(
  owner        VARCHAR2(6),
  receivetype  VARCHAR2(100),
  receivescope VARCHAR2(2),
  administer   VARCHAR2(12),
  alerttype1   VARCHAR2(10),
  sound1       VARCHAR2(20),
  alerttype2   VARCHAR2(10),
  sound2       VARCHAR2(20),
  alerttype3   VARCHAR2(10),
  sound3       VARCHAR2(20),
  alerttype4   VARCHAR2(10),
  sound4       VARCHAR2(20),
  sound1length VARCHAR2(3),
  sound2length VARCHAR2(3),
  sound3length VARCHAR2(3),
  sound4length VARCHAR2(3)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_CONFIG.owner
  is '主键，所有人';
comment on column BLACK_ALERT_CONFIG.receivetype
  is '接收黑名单类型';
comment on column BLACK_ALERT_CONFIG.receivescope
  is '接收范围';
comment on column BLACK_ALERT_CONFIG.administer
  is '接收辖区';
comment on column BLACK_ALERT_CONFIG.alerttype1
  is '提示方式1';
comment on column BLACK_ALERT_CONFIG.sound1
  is '报警声音1';
comment on column BLACK_ALERT_CONFIG.alerttype2
  is '提示方式2';
comment on column BLACK_ALERT_CONFIG.sound2
  is '报警声音2';
comment on column BLACK_ALERT_CONFIG.alerttype3
  is '提示方式3';
comment on column BLACK_ALERT_CONFIG.sound3
  is '报警声音3';
comment on column BLACK_ALERT_CONFIG.alerttype4
  is '提示方式4';
comment on column BLACK_ALERT_CONFIG.sound4
  is '报警声音4';
comment on column BLACK_ALERT_CONFIG.sound2length
  is '报警声音2时长（秒）';
comment on column BLACK_ALERT_CONFIG.sound3length
  is '报警声音3时长（秒）';
comment on column BLACK_ALERT_CONFIG.sound4length
  is '报警声音4时长（秒）';

prompt
prompt Creating table BLACK_ALERT_CONFIG_TEMPLET
prompt =========================================
prompt
create table BLACK_ALERT_CONFIG_TEMPLET
(
  id           VARCHAR2(32) not null,
  templetname  NVARCHAR2(16),
  owner        VARCHAR2(6),
  receivetype  VARCHAR2(100),
  receivescope VARCHAR2(2),
  administer   VARCHAR2(12),
  updatedate   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_CONFIG_TEMPLET.templetname
  is '模板名称';
comment on column BLACK_ALERT_CONFIG_TEMPLET.owner
  is '主键，所有人';
comment on column BLACK_ALERT_CONFIG_TEMPLET.receivetype
  is '接收黑名单类型';
comment on column BLACK_ALERT_CONFIG_TEMPLET.receivescope
  is '接收范围';
comment on column BLACK_ALERT_CONFIG_TEMPLET.administer
  is '接收辖区';
comment on column BLACK_ALERT_CONFIG_TEMPLET.updatedate
  is '最后一次更新时间';
alter table BLACK_ALERT_CONFIG_TEMPLET
  add constraint BLACK_ALERT_CONFIG_TEMPLET_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_COUNT
prompt ================================
prompt
create table BLACK_ALERT_COUNT
(
  id           VARCHAR2(32) not null,
  hphm         NVARCHAR2(16),
  hpzl         VARCHAR2(2),
  alerttime    DATE,
  alertcount   NUMBER,
  controltype  VARCHAR2(2),
  departmentid NVARCHAR2(12),
  xsfx         VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_COUNT.hphm
  is '车牌号码';
comment on column BLACK_ALERT_COUNT.hpzl
  is '车牌类型';
comment on column BLACK_ALERT_COUNT.alerttime
  is '报警日期';
comment on column BLACK_ALERT_COUNT.alertcount
  is '报警总数';
comment on column BLACK_ALERT_COUNT.controltype
  is '布控类型';
comment on column BLACK_ALERT_COUNT.departmentid
  is '所属大队';
alter table BLACK_ALERT_COUNT
  add constraint BLACK_ALERT_COUNT_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_FEEDBACK
prompt ===================================
prompt
create table BLACK_ALERT_FEEDBACK
(
  id            VARCHAR2(32) not null,
  alertid       VARCHAR2(32) not null,
  fkr           VARCHAR2(8),
  fksj          DATE,
  fkxx          NVARCHAR2(200),
  cdepartmentid VARCHAR2(12),
  hphm          VARCHAR2(16),
  cllx          VARCHAR2(4),
  parkno        VARCHAR2(15),
  parkname      NVARCHAR2(120),
  deptshortname NVARCHAR2(50),
  stopflag      VARCHAR2(1),
  fkrname       NVARCHAR2(20),
  stopplace     NVARCHAR2(100),
  uploadtime    DATE,
  uploaduser    VARCHAR2(8),
  datatype      VARCHAR2(1) default 0,
  operate       VARCHAR2(20),
  issuedtype    VARCHAR2(1),
  coercivecode  NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_FEEDBACK.id
  is 'UUID';
comment on column BLACK_ALERT_FEEDBACK.alertid
  is '稽查报警表主键';
comment on column BLACK_ALERT_FEEDBACK.fkr
  is '查扣人';
comment on column BLACK_ALERT_FEEDBACK.fksj
  is '查扣时间';
comment on column BLACK_ALERT_FEEDBACK.fkxx
  is '反馈信息';
comment on column BLACK_ALERT_FEEDBACK.cdepartmentid
  is '部门编号';
comment on column BLACK_ALERT_FEEDBACK.hphm
  is '号牌号码';
comment on column BLACK_ALERT_FEEDBACK.cllx
  is '车辆类型';
comment on column BLACK_ALERT_FEEDBACK.parkno
  is '停车场编号';
comment on column BLACK_ALERT_FEEDBACK.parkname
  is '停车场名称';
comment on column BLACK_ALERT_FEEDBACK.deptshortname
  is '部门简称';
comment on column BLACK_ALERT_FEEDBACK.stopflag
  is '查扣状态';
comment on column BLACK_ALERT_FEEDBACK.fkrname
  is '查扣人姓名';
comment on column BLACK_ALERT_FEEDBACK.stopplace
  is '查扣地点';
comment on column BLACK_ALERT_FEEDBACK.uploadtime
  is '上传时间';
comment on column BLACK_ALERT_FEEDBACK.uploaduser
  is '上传人';
comment on column BLACK_ALERT_FEEDBACK.datatype
  is '0 稽查报警反馈，1 单警操作信息，2  前端操作反馈';
comment on column BLACK_ALERT_FEEDBACK.operate
  is '操作';
comment on column BLACK_ALERT_FEEDBACK.issuedtype
  is '稽查报警消息下发';
comment on column BLACK_ALERT_FEEDBACK.coercivecode
  is '强制凭证编号';
create index INDEX_BLACK_ALERT_FEEDBACK on BLACK_ALERT_FEEDBACK (HPHM, CLLX)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_ALERT_FEEDBACK
  add constraint PRI_BLACK_ALERT_FEEDBACK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_FRONT_CHANNEL
prompt ========================================
prompt
create table BLACK_ALERT_FRONT_CHANNEL
(
  id            VARCHAR2(32) not null,
  config_id     VARCHAR2(32) not null,
  alert_channel VARCHAR2(4),
  ip            VARCHAR2(32),
  port          VARCHAR2(8),
  derection     VARCHAR2(8),
  isselected    CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_FRONT_CHANNEL.id
  is 'uuid';
comment on column BLACK_ALERT_FRONT_CHANNEL.config_id
  is 'BLACK_ALERT_FRONT_CONFIG表的id';
comment on column BLACK_ALERT_FRONT_CHANNEL.alert_channel
  is '报警车道';
comment on column BLACK_ALERT_FRONT_CHANNEL.ip
  is '相机ip';
comment on column BLACK_ALERT_FRONT_CHANNEL.port
  is '端口';
comment on column BLACK_ALERT_FRONT_CHANNEL.derection
  is '方向1~进口 -1~出口';
comment on column BLACK_ALERT_FRONT_CHANNEL.isselected
  is '0-未勾选 1、其他-已勾选，未勾选的地址相当于未启用，查询时请注意此字段';
alter table BLACK_ALERT_FRONT_CHANNEL
  add constraint BLACK_ALERT_FRONT_CHANNEL primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_FRONT_CONFIG
prompt =======================================
prompt
create table BLACK_ALERT_FRONT_CONFIG
(
  id           VARCHAR2(32) not null,
  adapter_name NVARCHAR2(100),
  chanel_count NUMBER,
  alert_chanel VARCHAR2(80),
  owner        VARCHAR2(6),
  point_id     NVARCHAR2(16),
  area_id      NVARCHAR2(12),
  receive_type VARCHAR2(100),
  update_user  VARCHAR2(6),
  update_time  DATE,
  direction    VARCHAR2(20),
  disp_type    VARCHAR2(2) default 'bb',
  adapter_id   VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_FRONT_CONFIG.id
  is 'uuid';
comment on column BLACK_ALERT_FRONT_CONFIG.direction
  is '出口方向';
comment on column BLACK_ALERT_FRONT_CONFIG.disp_type
  is '显示类型bb-4*4 aa-4*2 99-自动';
comment on column BLACK_ALERT_FRONT_CONFIG.adapter_id
  is '收费站id';
alter table BLACK_ALERT_FRONT_CONFIG
  add constraint BLACK_ALERT_FRONT_CONFIG_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_INFO
prompt ===============================
prompt
create table BLACK_ALERT_INFO
(
  id           VARCHAR2(32) not null,
  hphm         NVARCHAR2(16) not null,
  hpzl         VARCHAR2(2) not null,
  bjdd         VARCHAR2(16),
  bjddmc       NVARCHAR2(64),
  bjsj         DATE not null,
  gcsj         DATE not null,
  hmdbh        VARCHAR2(32),
  mhbkbh       VARCHAR2(32),
  clzt         VARCHAR2(2),
  zjdz         NVARCHAR2(200),
  xsfx         VARCHAR2(2),
  clsd         NUMBER(3),
  fkr          NVARCHAR2(8),
  fksj         DATE,
  ljbz         VARCHAR2(2),
  fkxx         NVARCHAR2(200),
  tsyh         VARCHAR2(6),
  cjr          VARCHAR2(6),
  cjsj         DATE,
  cfqk         VARCHAR2(1),
  detectid     VARCHAR2(32),
  xywh         VARCHAR2(24),
  controllevel VARCHAR2(2),
  controltype  VARCHAR2(2),
  clanenumber  VARCHAR2(2),
  apptsyh      VARCHAR2(6),
  taskstate    VARCHAR2(20) default 0
)
partition by range (BJSJ) interval (NUMTODSINTERVAL(15,'DAY'))
(
  partition BLACK_ALERT_P1 values less than (TO_DATE(' 2018-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170601
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P121 values less than (TO_DATE(' 2018-04-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170602
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P244 values less than (TO_DATE(' 2018-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170601
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P282 values less than (TO_DATE(' 2018-05-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170602
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P442 values less than (TO_DATE(' 2018-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170601
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1149 values less than (TO_DATE(' 2018-06-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170602
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1250 values less than (TO_DATE(' 2018-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170601
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1348 values less than (TO_DATE(' 2018-07-16 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS_BLACK_20170602
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table BLACK_ALERT_INFO
  is '报警信息表';
comment on column BLACK_ALERT_INFO.id
  is 'UUID';
comment on column BLACK_ALERT_INFO.hphm
  is '号牌号码';
comment on column BLACK_ALERT_INFO.hpzl
  is '号牌种类';
comment on column BLACK_ALERT_INFO.bjdd
  is '报警地点编号';
comment on column BLACK_ALERT_INFO.bjddmc
  is '报警地点名称';
comment on column BLACK_ALERT_INFO.bjsj
  is '报警时间';
comment on column BLACK_ALERT_INFO.gcsj
  is '过车时间';
comment on column BLACK_ALERT_INFO.hmdbh
  is '黑名单编号';
comment on column BLACK_ALERT_INFO.mhbkbh
  is '模糊布控编号';
comment on column BLACK_ALERT_INFO.clzt
  is '报警处理状态';
comment on column BLACK_ALERT_INFO.zjdz
  is 'FTP路径';
comment on column BLACK_ALERT_INFO.xsfx
  is '行驶方向';
comment on column BLACK_ALERT_INFO.clsd
  is '车辆速度';
comment on column BLACK_ALERT_INFO.fkr
  is '反馈人';
comment on column BLACK_ALERT_INFO.fksj
  is '反馈时间';
comment on column BLACK_ALERT_INFO.ljbz
  is '处置结果';
comment on column BLACK_ALERT_INFO.fkxx
  is '反馈信息';
comment on column BLACK_ALERT_INFO.tsyh
  is '推送用户';
comment on column BLACK_ALERT_INFO.cjr
  is '处警人';
comment on column BLACK_ALERT_INFO.cjsj
  is '处警时间';
comment on column BLACK_ALERT_INFO.cfqk
  is '处置情况';
comment on column BLACK_ALERT_INFO.detectid
  is '关联的过车数据主键';
comment on column BLACK_ALERT_INFO.xywh
  is '车牌图片信息';
comment on column BLACK_ALERT_INFO.controllevel
  is '布控级别';
comment on column BLACK_ALERT_INFO.controltype
  is '布控类型';
comment on column BLACK_ALERT_INFO.clanenumber
  is '车道编号';
comment on column BLACK_ALERT_INFO.apptsyh
  is 'APP推送用户';
comment on column BLACK_ALERT_INFO.taskstate
  is '任务状态 0：拦截;1:忽略,2:前往拦截,3:拦截成功,4:拦截失败';
create index BLACK_ALERT_BJSJ on BLACK_ALERT_INFO (BJSJ, LJBZ)
  nologging  local;
create index BLACK_ALERT_FKSJ on BLACK_ALERT_INFO (BJSJ, NVL2(FKSJ,1,0))
  nologging  local;
create index BLACK_ALERT_HMDBH on BLACK_ALERT_INFO (BJSJ, HMDBH)
  nologging  local;
create index BLACK_ALERT_HPHM on BLACK_ALERT_INFO (HPHM)
  nologging  local;
alter table BLACK_ALERT_INFO
  add constraint BLACK_ALERT_INFO_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_MID_DATA
prompt ===================================
prompt
create table BLACK_ALERT_MID_DATA
(
  departmentid NUMBER not null,
  controltype  VARCHAR2(2) not null,
  producedate  DATE not null,
  alarmnum     NUMBER,
  treatmentnum NUMBER,
  interceptnum NUMBER,
  carnum       NUMBER
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
alter table BLACK_ALERT_MID_DATA
  add constraint BLACK_ALERT_MID_DATA_PRIMARY primary key (DEPARTMENTID, CONTROLTYPE, PRODUCEDATE)
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
prompt Creating table BLACK_ALERT_PARK
prompt ===============================
prompt
create table BLACK_ALERT_PARK
(
  id          VARCHAR2(32) not null,
  park_no     VARCHAR2(15),
  park_name   NVARCHAR2(100),
  department  VARCHAR2(12),
  del_flag    VARCHAR2(2),
  create_time DATE,
  create_user VARCHAR2(6),
  mod_time    DATE,
  mod_user    VARCHAR2(6)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_PARK.id
  is '主键';
comment on column BLACK_ALERT_PARK.park_no
  is '停车场编号';
comment on column BLACK_ALERT_PARK.park_name
  is '停车场名称';
comment on column BLACK_ALERT_PARK.department
  is '所属部门';
comment on column BLACK_ALERT_PARK.del_flag
  is '删除标识 0-未删除 1-已删除';
comment on column BLACK_ALERT_PARK.create_time
  is '创建时间';
comment on column BLACK_ALERT_PARK.create_user
  is '创建人';
comment on column BLACK_ALERT_PARK.mod_time
  is '修改时间';
comment on column BLACK_ALERT_PARK.mod_user
  is '修改人';
alter table BLACK_ALERT_PARK
  add constraint PRI_BLACK_ALERT_PARK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_ALERT_PARK
  add constraint UNI_BALCK_ALERT_PARK_NAME unique (PARK_NAME)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_ALERT_PARK
  add constraint UNI_BALCK_ALERT_PARK_NO unique (PARK_NO)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_POINT_COUNT
prompt ======================================
prompt
create table BLACK_ALERT_POINT_COUNT
(
  id          VARCHAR2(32) not null,
  hphm        NVARCHAR2(16),
  hpzl        VARCHAR2(2),
  alerttime   DATE,
  alertcount  NUMBER,
  controltype VARCHAR2(2),
  pointcode   NVARCHAR2(16),
  xsfx        VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_ALERT_POINT_COUNT
  add constraint BLACK_ALERT_POINT_COUNT_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_USER_INFO
prompt ====================================
prompt
create table BLACK_ALERT_USER_INFO
(
  id          VARCHAR2(32) not null,
  user_id     VARCHAR2(6) not null,
  bjjb        VARCHAR2(4) not null,
  monitortype VARCHAR2(4) not null,
  hphm        NVARCHAR2(16) not null,
  hpzl        VARCHAR2(2) not null,
  bjdd        VARCHAR2(16),
  bjddmc      NVARCHAR2(64),
  bjsj        DATE not null,
  gcsj        DATE not null,
  hmdbh       VARCHAR2(32),
  mhbkbh      VARCHAR2(32),
  clzt        VARCHAR2(2),
  zjdz        NVARCHAR2(200),
  xsfx        VARCHAR2(2),
  clsd        NUMBER(3),
  fkr         NVARCHAR2(8),
  fksj        DATE,
  ljbz        VARCHAR2(2),
  fkxx        NVARCHAR2(200),
  tsyh        VARCHAR2(6),
  cjr         VARCHAR2(6),
  cjsj        DATE,
  cfqk        VARCHAR2(1),
  detectid    VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_USER_INFO.bjjb
  is '报警级别';
comment on column BLACK_ALERT_USER_INFO.monitortype
  is '报警类型';
comment on column BLACK_ALERT_USER_INFO.hphm
  is '号牌号码';
comment on column BLACK_ALERT_USER_INFO.hpzl
  is '号牌种类';
comment on column BLACK_ALERT_USER_INFO.bjdd
  is '报警地点编号';
comment on column BLACK_ALERT_USER_INFO.bjddmc
  is '报警地点名称';
comment on column BLACK_ALERT_USER_INFO.bjsj
  is '报警时间';
comment on column BLACK_ALERT_USER_INFO.gcsj
  is '过车时间';
comment on column BLACK_ALERT_USER_INFO.zjdz
  is 'FTP路径';
comment on column BLACK_ALERT_USER_INFO.xsfx
  is '行驶方向';
comment on column BLACK_ALERT_USER_INFO.clsd
  is '车辆速度';
alter table BLACK_ALERT_USER_INFO
  add constraint BLACK_ALERT_USER_INFO_ID primary key (ID, USER_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_ALERT_WIGHT_CAR
prompt ====================================
prompt
create table BLACK_ALERT_WIGHT_CAR
(
  id         VARCHAR2(32) not null,
  car_number VARCHAR2(14) not null,
  car_type   VARCHAR2(4) not null,
  creat_user VARCHAR2(6),
  creat_time DATE,
  dsc        VARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_ALERT_WIGHT_CAR.id
  is '唯一标识';
comment on column BLACK_ALERT_WIGHT_CAR.car_number
  is '号牌号码';
comment on column BLACK_ALERT_WIGHT_CAR.car_type
  is '车辆类型';
comment on column BLACK_ALERT_WIGHT_CAR.creat_user
  is '创建人';
comment on column BLACK_ALERT_WIGHT_CAR.creat_time
  is '创建时间';
comment on column BLACK_ALERT_WIGHT_CAR.dsc
  is '描述';
create index IND_BLACK_ALERT_WIGHT_CAR_NUM on BLACK_ALERT_WIGHT_CAR (CAR_NUMBER, CAR_TYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_ALERT_WIGHT_CAR
  add constraint BLACK_ALERT_WIGHT_CAR_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_CONFIG_LEVEL_TEMPLET
prompt =========================================
prompt
create table BLACK_CONFIG_LEVEL_TEMPLET
(
  id           VARCHAR2(32) not null,
  templetid    VARCHAR2(32),
  controllevel VARCHAR2(2),
  alerttype    VARCHAR2(10),
  sound        VARCHAR2(20),
  soundlength  VARCHAR2(3)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_CONFIG_LEVEL_TEMPLET
  add constraint BLACK_CONFIG_LEVEL_TEMPLET_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_CONFIG_POINT
prompt =================================
prompt
create table BLACK_CONFIG_POINT
(
  owner   VARCHAR2(6) not null,
  pointid CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BLACK_CONFIG_POINT
  is '报警设置区域子表';
comment on column BLACK_CONFIG_POINT.owner
  is '主键，所有人';
comment on column BLACK_CONFIG_POINT.pointid
  is '区域内的点';
alter table BLACK_CONFIG_POINT
  add primary key (OWNER)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_CONFIG_POINT_DIRECTION
prompt ===========================================
prompt
create table BLACK_CONFIG_POINT_DIRECTION
(
  owner     VARCHAR2(6) not null,
  pointid   NVARCHAR2(16) not null,
  seldirect VARCHAR2(64)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_CONFIG_POINT_DIRECTION
  add constraint CONFIG_POINT_DIRECTION_PK primary key (OWNER, POINTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_CONFIG_POINT_TEMPLET
prompt =========================================
prompt
create table BLACK_CONFIG_POINT_TEMPLET
(
  templetid VARCHAR2(32) not null,
  pointid   CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BLACK_CONFIG_POINT_TEMPLET
  is '报警设置区域子表(模板)';
comment on column BLACK_CONFIG_POINT_TEMPLET.templetid
  is '主键';
comment on column BLACK_CONFIG_POINT_TEMPLET.pointid
  is '区域内的点';
alter table BLACK_CONFIG_POINT_TEMPLET
  add constraint BLACK_CONFIG_POINT_TEMPLET_PK primary key (TEMPLETID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_CONTROL_AUDIT
prompt ==================================
prompt
create table BLACK_CONTROL_AUDIT
(
  id               VARCHAR2(32) not null,
  controlid        VARCHAR2(32),
  hphm             NVARCHAR2(16),
  hpzl             VARCHAR2(4),
  controltype      VARCHAR2(2),
  controllevel     VARCHAR2(2),
  starttime        DATE,
  endtime          DATE,
  msg              NVARCHAR2(300),
  controlstarttime DATE,
  controlendtime   DATE,
  status           VARCHAR2(2),
  controlday       NUMBER,
  discovertime     DATE,
  audittime        DATE,
  audituser        VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_CONTROL_AUDIT.controlid
  is '关联ID';
comment on column BLACK_CONTROL_AUDIT.hphm
  is '号牌号码';
comment on column BLACK_CONTROL_AUDIT.hpzl
  is '号牌类型';
comment on column BLACK_CONTROL_AUDIT.controltype
  is '布控类型';
comment on column BLACK_CONTROL_AUDIT.controllevel
  is '布控等级';
comment on column BLACK_CONTROL_AUDIT.starttime
  is '有效期起';
comment on column BLACK_CONTROL_AUDIT.endtime
  is '有效期止';
comment on column BLACK_CONTROL_AUDIT.msg
  is '布控原因';
comment on column BLACK_CONTROL_AUDIT.controlstarttime
  is '证据时间起';
comment on column BLACK_CONTROL_AUDIT.controlendtime
  is '证据时间止';
comment on column BLACK_CONTROL_AUDIT.status
  is '状态 0 未布控，1 已布控';
comment on column BLACK_CONTROL_AUDIT.controlday
  is '布控天数';
comment on column BLACK_CONTROL_AUDIT.discovertime
  is '发现时间';
comment on column BLACK_CONTROL_AUDIT.audittime
  is '审核时间';
comment on column BLACK_CONTROL_AUDIT.audituser
  is '审核人员';
alter table BLACK_CONTROL_AUDIT
  add constraint BLACK_CONTROL_AUDIT_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_HIDDENDANGER_DRIVER
prompt ========================================
prompt
create table BLACK_HIDDENDANGER_DRIVER
(
  id           VARCHAR2(32) not null,
  name         NVARCHAR2(16),
  personno     VARCHAR2(18),
  type         VARCHAR2(8),
  discovertime DATE,
  audittime    DATE,
  audituser    VARCHAR2(10),
  status       VARCHAR2(2),
  auditdept    VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_HIDDENDANGER_DRIVER.status
  is '状态 0 未布控，1 已布控';
alter table BLACK_HIDDENDANGER_DRIVER
  add constraint BLACK_HIDDENDANGER_DRIVER_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_LIST_MANAGE
prompt ================================
prompt
create table BLACK_LIST_MANAGE
(
  id                VARCHAR2(32) not null,
  carno             NVARCHAR2(16) not null,
  cartype           VARCHAR2(4) not null,
  carbrand          VARCHAR2(4),
  carcolor          VARCHAR2(3),
  source            VARCHAR2(2) not null,
  controllevel      VARCHAR2(2) default 03 not null,
  controltype       VARCHAR2(2) not null,
  controlprop       VARCHAR2(2) not null,
  controlscope      VARCHAR2(12) default 1 not null,
  btime             DATE not null,
  etime             DATE not null,
  infostatus        VARCHAR2(2) default 10,
  alarmstatus       VARCHAR2(2) default 10,
  contact           VARCHAR2(150),
  telphone          VARCHAR2(150),
  pushphone         VARCHAR2(60),
  puship            VARCHAR2(16),
  pushuser          VARCHAR2(6),
  pushdptmt         VARCHAR2(12) default 10,
  charcpic1         NVARCHAR2(200),
  charcpic2         NVARCHAR2(200),
  charcpic3         NVARCHAR2(200),
  charcdesc         NVARCHAR2(300),
  matterdetail      NVARCHAR2(300),
  createuserid      VARCHAR2(6) not null,
  createtime        DATE not null,
  revokeuserid      VARCHAR2(6),
  revoketime        DATE,
  revokereason      NVARCHAR2(200),
  interceptflag     VARCHAR2(1) default 0,
  illegaltime       DATE,
  illegaladdress    VARCHAR2(192),
  illegaltype       VARCHAR2(2),
  abandontime       DATE,
  updatetime        DATE,
  annualexaminetime DATE,
  coercivecode      NVARCHAR2(20),
  penaltycode       VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BLACK_LIST_MANAGE
  is '黑名单表';
comment on column BLACK_LIST_MANAGE.id
  is '主键（无意义）';
comment on column BLACK_LIST_MANAGE.carno
  is '号牌号码 ';
comment on column BLACK_LIST_MANAGE.cartype
  is '号牌类型     参见枚举170';
comment on column BLACK_LIST_MANAGE.carbrand
  is '车辆品牌     参见枚举747';
comment on column BLACK_LIST_MANAGE.carcolor
  is '车身颜色';
comment on column BLACK_LIST_MANAGE.source
  is '信息来源  10:人工录入 20:下发库 30:盗抢库';
comment on column BLACK_LIST_MANAGE.controllevel
  is '布控级别  01:一级 02：二级 03 ：三级04：四级  默认';
comment on column BLACK_LIST_MANAGE.controltype
  is '布控类型 ';
comment on column BLACK_LIST_MANAGE.controlprop
  is '布控性质   10:公开  20:保密';
comment on column BLACK_LIST_MANAGE.controlscope
  is '布控范围   1:全市 其他使用部门编号';
comment on column BLACK_LIST_MANAGE.btime
  is '开始时间';
comment on column BLACK_LIST_MANAGE.etime
  is '结束时间';
comment on column BLACK_LIST_MANAGE.infostatus
  is '黑名单状态   10:已布控 20:已撤控';
comment on column BLACK_LIST_MANAGE.alarmstatus
  is '报警状态     10:未报警 20:已报警';
comment on column BLACK_LIST_MANAGE.contact
  is '联系人';
comment on column BLACK_LIST_MANAGE.telphone
  is '联系电话';
comment on column BLACK_LIST_MANAGE.pushphone
  is '推送手机        (手机号码逗号隔开，最多5个手机号码)';
comment on column BLACK_LIST_MANAGE.puship
  is '推送IP';
comment on column BLACK_LIST_MANAGE.pushuser
  is '推送至用户    (备用列)';
comment on column BLACK_LIST_MANAGE.pushdptmt
  is '推送至部门    (10表示全部，其他则12位编码)';
comment on column BLACK_LIST_MANAGE.charcpic1
  is '特征图片1';
comment on column BLACK_LIST_MANAGE.charcpic2
  is '特征图片2';
comment on column BLACK_LIST_MANAGE.charcpic3
  is '特征图片3';
comment on column BLACK_LIST_MANAGE.charcdesc
  is '特征描述';
comment on column BLACK_LIST_MANAGE.matterdetail
  is '案情描述';
comment on column BLACK_LIST_MANAGE.createuserid
  is '录入人ID';
comment on column BLACK_LIST_MANAGE.createtime
  is '录入时间';
comment on column BLACK_LIST_MANAGE.revokeuserid
  is '撤控人ID';
comment on column BLACK_LIST_MANAGE.revoketime
  is '撤控时间';
comment on column BLACK_LIST_MANAGE.revokereason
  is '撤控原因';
comment on column BLACK_LIST_MANAGE.interceptflag
  is '0:未拦截 1:成功拦截';
comment on column BLACK_LIST_MANAGE.illegaltime
  is '违法时间';
comment on column BLACK_LIST_MANAGE.illegaladdress
  is '违法地点';
comment on column BLACK_LIST_MANAGE.illegaltype
  is '违法类型';
comment on column BLACK_LIST_MANAGE.abandontime
  is '报废车报废时间';
comment on column BLACK_LIST_MANAGE.updatetime
  is '更新时间';
comment on column BLACK_LIST_MANAGE.annualexaminetime
  is '年检时间';
comment on column BLACK_LIST_MANAGE.coercivecode
  is '强制措施凭证编号';
comment on column BLACK_LIST_MANAGE.penaltycode
  is '处罚决定书编号';
create index BLACK_LIST_INDEX_CARNO on BLACK_LIST_MANAGE (CARNO, CONTROLTYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index CONTROLTYPE_CONTROLLEVEL on BLACK_LIST_MANAGE (CONTROLTYPE, CONTROLLEVEL)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index CREATETIME on BLACK_LIST_MANAGE (CREATETIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INFO_ALARM on BLACK_LIST_MANAGE (INFOSTATUS, ALARMSTATUS)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_LIST_MANAGE
  add constraint PK_BLACK_LIST_INFO primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_LIST_MANAGE_RECORD
prompt =======================================
prompt
create table BLACK_LIST_MANAGE_RECORD
(
  uuid         NUMBER not null,
  changetype   VARCHAR2(1) not null,
  id           VARCHAR2(32),
  carno        NVARCHAR2(16),
  cartype      VARCHAR2(4),
  controltype  VARCHAR2(2),
  controllevel VARCHAR2(2),
  puship       VARCHAR2(16),
  pushdptmt    VARCHAR2(12),
  pushuser     VARCHAR2(6),
  pushphone    VARCHAR2(60),
  contact      VARCHAR2(150),
  matterdetail NVARCHAR2(300),
  charcpic1    NVARCHAR2(200),
  charcpic2    NVARCHAR2(200),
  charcpic3    NVARCHAR2(200),
  alarmstatus  VARCHAR2(2),
  infostatus   VARCHAR2(2),
  btime        DATE,
  etime        DATE,
  changetime   DATE,
  controlscope VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_LIST_MANAGE_RECORD
  add constraint PK_BLACK_LIST_MANAGE_RECORD primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_LIST_MAPPING
prompt =================================
prompt
create table BLACK_LIST_MAPPING
(
  id                VARCHAR2(32) not null,
  carno             NVARCHAR2(16) not null,
  cartype           VARCHAR2(2) not null,
  carbrand          VARCHAR2(4),
  carcolor          VARCHAR2(3),
  source            VARCHAR2(2) not null,
  controllevel      VARCHAR2(2) default 03 not null,
  controltype       VARCHAR2(2) not null,
  controlprop       VARCHAR2(2) not null,
  controlscope      VARCHAR2(12) default 1 not null,
  btime             DATE not null,
  etime             DATE not null,
  infostatus        VARCHAR2(2) default 10,
  alarmstatus       VARCHAR2(2) default 10,
  contact           VARCHAR2(50),
  telphone          VARCHAR2(50),
  pushphone         VARCHAR2(60),
  puship            VARCHAR2(16),
  pushuser          VARCHAR2(6),
  pushdptmt         VARCHAR2(12) default 1,
  charcpic1         NVARCHAR2(200),
  charcpic2         NVARCHAR2(200),
  charcpic3         NVARCHAR2(200),
  charcdesc         NVARCHAR2(300),
  matterdetail      NVARCHAR2(300),
  createuserid      VARCHAR2(6) not null,
  createtime        DATE not null,
  revokeuserid      VARCHAR2(6),
  revoketime        DATE,
  revokereason      NVARCHAR2(200),
  interceptflag     VARCHAR2(1) default 0,
  illegaltime       DATE,
  illegaladdress    VARCHAR2(100),
  illegaltype       VARCHAR2(2),
  abandontime       DATE,
  updatetime        DATE,
  annualexaminetime DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BLACK_LIST_MAPPING
  is '黑名单表';
comment on column BLACK_LIST_MAPPING.id
  is '主键';
comment on column BLACK_LIST_MAPPING.carno
  is '号牌号码';
comment on column BLACK_LIST_MAPPING.cartype
  is '号牌种类    参加枚举170';
comment on column BLACK_LIST_MAPPING.carbrand
  is '车辆品牌    参加枚举747';
comment on column BLACK_LIST_MAPPING.carcolor
  is '车身颜色';
comment on column BLACK_LIST_MAPPING.source
  is '信息来源  10:人工录入 20:下发库 30:盗抢库';
comment on column BLACK_LIST_MAPPING.controllevel
  is '布控级别  01:一级 02：二级 03 ：三级04：四级  默认';
comment on column BLACK_LIST_MAPPING.controltype
  is '布控类型';
comment on column BLACK_LIST_MAPPING.controlprop
  is '布控性质   10:公开  20:保密';
comment on column BLACK_LIST_MAPPING.controlscope
  is '布控范围   1:全市 其他使用部门编号';
comment on column BLACK_LIST_MAPPING.btime
  is '开始时间';
comment on column BLACK_LIST_MAPPING.etime
  is '结束时间';
comment on column BLACK_LIST_MAPPING.infostatus
  is '黑名单状态   10:已布控 20:已撤控';
comment on column BLACK_LIST_MAPPING.alarmstatus
  is '报警状态     10:未报警 20:已报警';
comment on column BLACK_LIST_MAPPING.contact
  is '联系人';
comment on column BLACK_LIST_MAPPING.telphone
  is '联系电话';
comment on column BLACK_LIST_MAPPING.pushphone
  is '推送手机      (手机号码逗号隔开，最多5个手机号码)';
comment on column BLACK_LIST_MAPPING.puship
  is '推送IP';
comment on column BLACK_LIST_MAPPING.pushuser
  is '推送至用户    (备用列)';
comment on column BLACK_LIST_MAPPING.pushdptmt
  is '推送至部门    (1表示全部，其他则12位编码)';
comment on column BLACK_LIST_MAPPING.charcpic1
  is '特征图片1';
comment on column BLACK_LIST_MAPPING.charcpic2
  is '特征图片2';
comment on column BLACK_LIST_MAPPING.charcpic3
  is '特征图片3';
comment on column BLACK_LIST_MAPPING.charcdesc
  is '特征描述';
comment on column BLACK_LIST_MAPPING.matterdetail
  is '案情描述';
comment on column BLACK_LIST_MAPPING.createuserid
  is '录入人ID';
comment on column BLACK_LIST_MAPPING.createtime
  is '录入时间';
comment on column BLACK_LIST_MAPPING.revokeuserid
  is '撤控人ID';
comment on column BLACK_LIST_MAPPING.revoketime
  is '撤控时间';
comment on column BLACK_LIST_MAPPING.revokereason
  is '撤控原因';
comment on column BLACK_LIST_MAPPING.interceptflag
  is '0:未拦截 1:成功拦截';
comment on column BLACK_LIST_MAPPING.illegaltime
  is '违法时间';
comment on column BLACK_LIST_MAPPING.illegaladdress
  is '违法地点';
comment on column BLACK_LIST_MAPPING.illegaltype
  is '违法类型';
comment on column BLACK_LIST_MAPPING.abandontime
  is '报废车报废时间';
comment on column BLACK_LIST_MAPPING.updatetime
  is '更新时间';
comment on column BLACK_LIST_MAPPING.annualexaminetime
  is '年检时间';
create index BLACK_LIST_MAPPING_INDEX_CARNO on BLACK_LIST_MAPPING (CARNO, CONTROLTYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BLACK_LIST_MAPPING
  add constraint PK_BLACK_LIST_MAPPING primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_LOW_ANALYSIS_DATA
prompt ======================================
prompt
create table BLACK_LOW_ANALYSIS_DATA
(
  id          VARCHAR2(32) not null,
  bjdd        VARCHAR2(16) not null,
  productdate DATE not null,
  hour        NUMBER not null,
  alarmtype01 NUMBER,
  alarmtype02 NUMBER,
  alarmtype03 NUMBER,
  alarmtype04 NUMBER,
  alarmtype05 NUMBER,
  alarmtype06 NUMBER,
  alarmtype07 NUMBER,
  alarmtype08 NUMBER,
  alarmtype09 NUMBER,
  alarmtype10 NUMBER,
  alarmtype11 NUMBER,
  alarmtype12 NUMBER,
  alarmtype13 NUMBER,
  alarmtype14 NUMBER,
  alarmtype15 NUMBER,
  alarmtype16 NUMBER,
  alarmtype17 NUMBER,
  alarmtype18 NUMBER,
  alarmtype19 NUMBER,
  alarmtype20 NUMBER,
  alarmtype21 NUMBER,
  alarmtype22 NUMBER,
  alarmtype23 NUMBER,
  alarmtype24 NUMBER,
  alarmtype25 NUMBER,
  alarmtype26 NUMBER,
  alarmtype27 NUMBER,
  alarmtype28 NUMBER,
  alarmtype29 NUMBER,
  alarmtype30 NUMBER,
  channel     VARCHAR2(2),
  xsfx        VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_LOW_ANALYSIS_DATA
  add constraint BLACK_LOW_ANALYSIS_DATA_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_LOW_ANALYSIS_MID_DATA
prompt ==========================================
prompt
create table BLACK_LOW_ANALYSIS_MID_DATA
(
  bjdd        VARCHAR2(16) not null,
  productdate DATE not null,
  sgty        NUMBER,
  tpc         NUMBER,
  jpc         NUMBER,
  yqwnj       NUMBER,
  bfc         NUMBER,
  wfwcl       NUMBER,
  dcwfwcl     NUMBER,
  xsaj        NUMBER,
  zdzaaj      NUMBER,
  wffzxyjtgj  NUMBER,
  bdq         NUMBER,
  zactgk      NUMBER,
  hbbfc       NUMBER,
  whpcl       NUMBER,
  gswfwfj     NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_LOW_ANALYSIS_MID_DATA.bjdd
  is '报警地点编号';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.productdate
  is '生产日期';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.sgty
  is '事故逃逸车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.tpc
  is '套牌车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.jpc
  is '假牌车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.yqwnj
  is '逾期未年检车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.bfc
  is '报废车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.wfwcl
  is '违法未处理车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.dcwfwcl
  is '多次违法未处理车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.xsaj
  is '刑事案件报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.zdzaaj
  is '重大治安事件报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.wffzxyjtgj
  is '违法犯罪嫌疑交通工具报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.bdq
  is '被盗抢车辆报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.zactgk
  is '治安常态管控报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.hbbfc
  is '黄标报废车报警数';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.whpcl
  is '危化品车辆';
comment on column BLACK_LOW_ANALYSIS_MID_DATA.gswfwfj
  is '高速违法未分拣';
alter table BLACK_LOW_ANALYSIS_MID_DATA
  add constraint PK_LOW_ANALYSIS_MID_DATA_ primary key (BJDD, PRODUCTDATE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_POINT_DIRECTION_TEMPLET
prompt ============================================
prompt
create table BLACK_POINT_DIRECTION_TEMPLET
(
  templetid VARCHAR2(32),
  pointid   NVARCHAR2(16),
  seldirect VARCHAR2(64),
  id        VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table BLACK_POINT_DIRECTION_TEMPLET
  add constraint POINT_DIRECTION_TEMPLET_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_SEARCHPIC_FEATURE
prompt ======================================
prompt
create table BLACK_SEARCHPIC_FEATURE
(
  id          VARCHAR2(32) not null,
  taskid      VARCHAR2(32),
  picturepath VARCHAR2(400),
  orderno     LONG
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_SEARCHPIC_FEATURE.id
  is 'id';
comment on column BLACK_SEARCHPIC_FEATURE.taskid
  is '任务ID';
comment on column BLACK_SEARCHPIC_FEATURE.picturepath
  is '图片地址';
comment on column BLACK_SEARCHPIC_FEATURE.orderno
  is '排序';
alter table BLACK_SEARCHPIC_FEATURE
  add constraint BLACK_SEARCHPIC_FEATURE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_SEARCHPIC_RESULT
prompt =====================================
prompt
create table BLACK_SEARCHPIC_RESULT
(
  id              VARCHAR2(32) not null,
  carno           NVARCHAR2(16),
  cartype         VARCHAR2(4),
  pointcode       NVARCHAR2(16),
  dcollectiondate DATE,
  cpicpath        VARCHAR2(400),
  taskid          VARCHAR2(32),
  similarity      NUMBER(4,2),
  carcolor        VARCHAR2(4),
  carbrand        VARCHAR2(4),
  subbrand        VARCHAR2(4),
  yearmodel       VARCHAR2(4),
  vehicletype     VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_SEARCHPIC_RESULT.carno
  is '号牌号码';
comment on column BLACK_SEARCHPIC_RESULT.cartype
  is '号牌类型';
comment on column BLACK_SEARCHPIC_RESULT.pointcode
  is '点位编号';
comment on column BLACK_SEARCHPIC_RESULT.dcollectiondate
  is '采集时间';
comment on column BLACK_SEARCHPIC_RESULT.cpicpath
  is '图片路径';
comment on column BLACK_SEARCHPIC_RESULT.taskid
  is '所属任务ID';
comment on column BLACK_SEARCHPIC_RESULT.similarity
  is '相似度';
comment on column BLACK_SEARCHPIC_RESULT.carcolor
  is '车身颜色';
comment on column BLACK_SEARCHPIC_RESULT.carbrand
  is '品牌';
comment on column BLACK_SEARCHPIC_RESULT.subbrand
  is '子品牌';
comment on column BLACK_SEARCHPIC_RESULT.yearmodel
  is '年款';
comment on column BLACK_SEARCHPIC_RESULT.vehicletype
  is '车辆类型';
alter table BLACK_SEARCHPIC_RESULT
  add constraint BLACK_SEARCHPIC_RESULT_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BLACK_SEARCHPIC_TASK
prompt ===================================
prompt
create table BLACK_SEARCHPIC_TASK
(
  id                 VARCHAR2(32) not null,
  taskname           NVARCHAR2(50),
  tasktype           VARCHAR2(20),
  relatedcases       NVARCHAR2(100),
  tasknote           NVARCHAR2(500),
  createdate         DATE,
  createuser         VARCHAR2(6),
  taskstatus         VARCHAR2(20),
  points             CLOB,
  starttime          DATE,
  endtime            DATE,
  carno              NVARCHAR2(16),
  cartype            VARCHAR2(4),
  carcolor           VARCHAR2(4),
  carbrand           VARCHAR2(4),
  subbrand           VARCHAR2(4),
  yearmodel          VARCHAR2(4),
  uploadpic          VARCHAR2(400),
  vehicletype        VARCHAR2(20),
  taskprogress       VARCHAR2(20),
  featurevector      VARCHAR2(400),
  featurevector1     VARCHAR2(400),
  fearturecoordinate VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column BLACK_SEARCHPIC_TASK.id
  is 'ID';
comment on column BLACK_SEARCHPIC_TASK.taskname
  is '任务名称';
comment on column BLACK_SEARCHPIC_TASK.tasktype
  is '任务类型 枚举1170';
comment on column BLACK_SEARCHPIC_TASK.relatedcases
  is '相关案件';
comment on column BLACK_SEARCHPIC_TASK.tasknote
  is '备注';
comment on column BLACK_SEARCHPIC_TASK.createdate
  is '创建时间';
comment on column BLACK_SEARCHPIC_TASK.createuser
  is '创建任务';
comment on column BLACK_SEARCHPIC_TASK.taskstatus
  is '任务状态 枚举1171';
comment on column BLACK_SEARCHPIC_TASK.points
  is '监控点位';
comment on column BLACK_SEARCHPIC_TASK.starttime
  is '开始时间';
comment on column BLACK_SEARCHPIC_TASK.endtime
  is '结束时间';
comment on column BLACK_SEARCHPIC_TASK.carno
  is '号牌号码';
comment on column BLACK_SEARCHPIC_TASK.cartype
  is '号牌类型';
comment on column BLACK_SEARCHPIC_TASK.carcolor
  is '车身颜色';
comment on column BLACK_SEARCHPIC_TASK.carbrand
  is '车辆品牌';
comment on column BLACK_SEARCHPIC_TASK.subbrand
  is '车辆子品牌';
comment on column BLACK_SEARCHPIC_TASK.yearmodel
  is '年款';
comment on column BLACK_SEARCHPIC_TASK.uploadpic
  is '检索图片';
comment on column BLACK_SEARCHPIC_TASK.vehicletype
  is '车辆类型';
comment on column BLACK_SEARCHPIC_TASK.taskprogress
  is '任务进度';
comment on column BLACK_SEARCHPIC_TASK.featurevector
  is '特征向量';
comment on column BLACK_SEARCHPIC_TASK.featurevector1
  is '特征向量(针对特征图片)';
comment on column BLACK_SEARCHPIC_TASK.fearturecoordinate
  is '特征坐标(X:Y:H:W)';
alter table BLACK_SEARCHPIC_TASK
  add constraint BLACK_SEARCHPIC_TASK_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BURST_EVENT
prompt ==========================
prompt
create table BURST_EVENT
(
  eventid           VARCHAR2(32) not null,
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
  maxtrans 255
  storage
  (
    initial 16K
    next 8K
    minextents 1
    maxextents unlimited
  );
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
  is '警情一级来源 0  人工确认，1  自主检测，2  信息服务';
comment on column BURST_EVENT.reportuserid
  is '报警人id';
comment on column BURST_EVENT.reportusername
  is '报警人姓名';
comment on column BURST_EVENT.phonenum
  is '报警人联系电话';
comment on column BURST_EVENT.reportertype
  is '报警人类型 0  执法民警，1  普通民警，3  群众';
comment on column BURST_EVENT.reportusersex
  is '报警人性别（0：男；1：女；2：未知）';
comment on column BURST_EVENT.receiverid
  is '接警人id';
comment on column BURST_EVENT.receivername
  is '接警人姓名';
comment on column BURST_EVENT.receiverphone
  is '接警人联系电话';
comment on column BURST_EVENT.receivertype
  is '接警人类型 0  执法民警，1  普通民警，3  群众';
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
comment on column BURST_EVENT.description
  is '事件描述';
comment on column BURST_EVENT.thirdsyscode
  is '第三方编号';
comment on column BURST_EVENT.upgradereason
  is '升级原因';
create index TIMECX on BURST_EVENT (EVENTTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BURST_EVENT
  add constraint BURST_EVENT_PRIMARY primary key (EVENTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table BURST_EVENT_PRE
prompt ==============================
prompt
create table BURST_EVENT_PRE
(
  eventid        VARCHAR2(32) not null,
  eventname      NVARCHAR2(30),
  detectorid     NVARCHAR2(18),
  location       NVARCHAR2(64),
  locationid     NVARCHAR2(16),
  eventtime      DATE,
  eventtypeid    NVARCHAR2(4),
  imageurl       NVARCHAR2(128),
  status         NUMBER default 0 not null,
  processtime    DATE,
  processperson  NVARCHAR2(20),
  processnotes   NVARCHAR2(256),
  description    NVARCHAR2(256),
  isevent        VARCHAR2(2) default 0,
  auditor        VARCHAR2(20),
  audittime      DATE,
  eventsource    VARCHAR2(4) not null,
  datauploadtime DATE,
  datasavetime   DATE default sysdate,
  eventlevel     NVARCHAR2(1) default '1',
  departmentid   NVARCHAR2(20),
  areaid         VARCHAR2(6),
  endtime        DATE,
  roadid         VARCHAR2(20),
  roadname       NVARCHAR2(256),
  factory        NVARCHAR2(4),
  concretetypeid NVARCHAR2(4),
  videourl       NVARCHAR2(130),
  longitude      VARCHAR2(20),
  latitude       VARCHAR2(20),
  cartype        VARCHAR2(2),
  carnumber      VARCHAR2(16),
  recordline     CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table BURST_EVENT_PRE
  is '事件报警';
comment on column BURST_EVENT_PRE.eventid
  is '事件ID';
comment on column BURST_EVENT_PRE.eventname
  is '事件名称';
comment on column BURST_EVENT_PRE.detectorid
  is '检测点ID';
comment on column BURST_EVENT_PRE.location
  is '事件地点';
comment on column BURST_EVENT_PRE.locationid
  is '事件地点ID';
comment on column BURST_EVENT_PRE.eventtime
  is '事件时间';
comment on column BURST_EVENT_PRE.eventtypeid
  is '事件类型ID:01-违章停车 02-行人违章 03-逆向行驶 04-交通拥堵 05-车辆遗洒 06-烟雾报警 07-火焰报警 08-超速行驶 09-低速行驶 10-违章变线 11-撞车';
comment on column BURST_EVENT_PRE.imageurl
  is '抓拍图片URL';
comment on column BURST_EVENT_PRE.status
  is '状态：1已确认，0待确认';
comment on column BURST_EVENT_PRE.processtime
  is '处理时间';
comment on column BURST_EVENT_PRE.processperson
  is '事件处理人';
comment on column BURST_EVENT_PRE.processnotes
  is '处理说明';
comment on column BURST_EVENT_PRE.description
  is '事件描述';
comment on column BURST_EVENT_PRE.isevent
  is '是否有效事件 (0:无效 1:有效不派警 2:有效已派警)';
comment on column BURST_EVENT_PRE.auditor
  is '审核人';
comment on column BURST_EVENT_PRE.audittime
  is '审核时间';
comment on column BURST_EVENT_PRE.eventsource
  is '事件来源';
comment on column BURST_EVENT_PRE.areaid
  is '行政辖区';
comment on column BURST_EVENT_PRE.endtime
  is '结束时间参照信息服务采集接口';
comment on column BURST_EVENT_PRE.roadid
  is '路段编号';
comment on column BURST_EVENT_PRE.roadname
  is '路段名称';
comment on column BURST_EVENT_PRE.factory
  is '生产厂商';
comment on column BURST_EVENT_PRE.longitude
  is '经度';
comment on column BURST_EVENT_PRE.latitude
  is '纬度';
comment on column BURST_EVENT_PRE.cartype
  is '号牌类型';
comment on column BURST_EVENT_PRE.carnumber
  is '号牌号码';
comment on column BURST_EVENT_PRE.recordline
  is '备案路线';
create index IDX_BURST_EVENT_PRE_U1 on BURST_EVENT_PRE (EVENTTIME, EVENTTYPEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table BURST_EVENT_PRE
  add constraint BURST_EVENT_PRE_PRIMARY primary key (EVENTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table CJDB_SJ
prompt ======================
prompt
create table CJDB_SJ
(
  xzqh   VARCHAR2(6),
  jjdbh  VARCHAR2(20),
  cjdbh  VARCHAR2(30) not null,
  cjdwbm NUMBER(12),
  cjyxm  VARCHAR2(18),
  cjsj   DATE,
  cjlyh  VARCHAR2(14),
  cjyj   VARCHAR2(800),
  cjdwdm NUMBER(12),
  sjdwdm NUMBER(12),
  sjyxm  VARCHAR2(8),
  pdjssj DATE,
  scbz   NUMBER(1) default 0,
  hcbz   NUMBER(1) default 0,
  cjdzt  NUMBER(2),
  sjgxsj DATE,
  zdpjsj DATE,
  sth    VARCHAR2(50),
  jch    VARCHAR2(50),
  dcsj   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CJDB_SJ
  is '处警单表';
comment on column CJDB_SJ.xzqh
  is '行政区划';
comment on column CJDB_SJ.jjdbh
  is '接警单编号';
comment on column CJDB_SJ.cjdbh
  is '处警单编号';
comment on column CJDB_SJ.cjdwbm
  is '处警单位编码';
comment on column CJDB_SJ.cjyxm
  is '处警员姓名';
comment on column CJDB_SJ.cjsj
  is '处警时间';
comment on column CJDB_SJ.cjlyh
  is '处警录音号';
comment on column CJDB_SJ.cjyj
  is '处警意见';
comment on column CJDB_SJ.cjdwdm
  is '出警单位代码';
comment on column CJDB_SJ.sjdwdm
  is '受警单位代码';
comment on column CJDB_SJ.sjyxm
  is '受警员姓名';
comment on column CJDB_SJ.pdjssj
  is '派单接收时间';
comment on column CJDB_SJ.scbz
  is '上传标志';
comment on column CJDB_SJ.hcbz
  is '回传标志';
comment on column CJDB_SJ.cjdzt
  is '处警单状态';
comment on column CJDB_SJ.sjgxsj
  is '数据更新时间';
comment on column CJDB_SJ.zdpjsj
  is '支队派警时间';
comment on column CJDB_SJ.sth
  is '手台号';
comment on column CJDB_SJ.jch
  is '警车号';
comment on column CJDB_SJ.dcsj
  is '到场时间';
create unique index IDX_CJDB_SJ1 on CJDB_SJ (JJDBH, CJDBH)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_CJDB_SJ2 on CJDB_SJ (CJSJ, CJDWDM, CJDZT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_CJDB_SJ_HCBZ on CJDB_SJ (HCBZ)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table CJDB_SJ
  add constraint PK_CJDB_SJ primary key (CJDBH)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table CLIENT_LOGINFAIL_HISTORY
prompt =======================================
prompt
create table CLIENT_LOGINFAIL_HISTORY
(
  clientip    VARCHAR2(16) not null,
  dateflag    VARCHAR2(10) not null,
  last_update DATE,
  create_time DATE,
  fail_count  NUMBER
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
comment on table CLIENT_LOGINFAIL_HISTORY
  is '终端登录密码输错次数统计';
comment on column CLIENT_LOGINFAIL_HISTORY.clientip
  is 'IP';
comment on column CLIENT_LOGINFAIL_HISTORY.dateflag
  is '日期标志';
comment on column CLIENT_LOGINFAIL_HISTORY.last_update
  is '最后更新时间';
comment on column CLIENT_LOGINFAIL_HISTORY.create_time
  is '创建时间';
comment on column CLIENT_LOGINFAIL_HISTORY.fail_count
  is '密码输错次数';
alter table CLIENT_LOGINFAIL_HISTORY
  add primary key (CLIENTIP, DATEFLAG)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table COMMON_POSITION_PRESET
prompt =====================================
prompt
create table COMMON_POSITION_PRESET
(
  id           VARCHAR2(32) not null,
  line_id      VARCHAR2(32) not null,
  deviceid     VARCHAR2(32) not null,
  pre_id       NVARCHAR2(18) not null,
  pre_name     NVARCHAR2(64) not null,
  playing_time VARCHAR2(3) not null,
  sort_number  VARCHAR2(10) not null,
  create_user  NVARCHAR2(20) not null,
  create_time  DATE default SYSDATE,
  delete_flag  CHAR(1) default '0'
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table COMM_DESCRIPTION
prompt ===============================
prompt
create table COMM_DESCRIPTION
(
  nid       NVARCHAR2(32) not null,
  enumvalue NUMBER,
  cdescribe NVARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table COMM_DESCRIPTION
  is '常用警情描述';
alter table COMM_DESCRIPTION
  add constraint DESC_PK_1 primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table CONSTRUCTION
prompt ===========================
prompt
create table CONSTRUCTION
(
  projectname        NVARCHAR2(32) not null,
  location           NVARCHAR2(32),
  starttime          DATE,
  endtime            DATE,
  constructor        NVARCHAR2(32),
  contactperson      NVARCHAR2(16),
  contactmode        NVARCHAR2(32),
  description        NVARCHAR2(256),
  status             NUMBER default 0 not null,
  sectionid          NVARCHAR2(20),
  influencedsections VARCHAR2(4000),
  longitude          NVARCHAR2(10),
  latitude           NVARCHAR2(10),
  effectarea         NVARCHAR2(1000),
  type               NVARCHAR2(2),
  direction          NVARCHAR2(20),
  exit               NVARCHAR2(20),
  enter              NVARCHAR2(20),
  constructdept      NVARCHAR2(100),
  specificmeasures   NVARCHAR2(500),
  constructname      NVARCHAR2(100),
  id                 VARCHAR2(32) not null
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
comment on column CONSTRUCTION.projectname
  is '项目名称';
comment on column CONSTRUCTION.location
  is '项目位置';
comment on column CONSTRUCTION.starttime
  is '开始时间';
comment on column CONSTRUCTION.endtime
  is '结束时间';
comment on column CONSTRUCTION.constructor
  is '施工单位';
comment on column CONSTRUCTION.contactperson
  is '联系人';
comment on column CONSTRUCTION.contactmode
  is '联系方式';
comment on column CONSTRUCTION.description
  is '项目简要说明';
comment on column CONSTRUCTION.status
  is '状态:  0 - 未完成, 1 - 已完成';
comment on column CONSTRUCTION.sectionid
  is '项目所在路段ID';
comment on column CONSTRUCTION.influencedsections
  is '受影响路段ID, 路段ID之间以逗号分隔';
comment on column CONSTRUCTION.longitude
  is '位置经度';
comment on column CONSTRUCTION.latitude
  is '位置纬度';
comment on column CONSTRUCTION.effectarea
  is '影响区域';
comment on column CONSTRUCTION.type
  is '管制类型 (枚举值：16002)';
comment on column CONSTRUCTION.direction
  is '方向  (枚举值：16004)  ';
comment on column CONSTRUCTION.exit
  is '出口  (枚举值：16006)  ';
comment on column CONSTRUCTION.enter
  is '进口  (枚举值：16005)';
comment on column CONSTRUCTION.constructdept
  is '管制单位';
comment on column CONSTRUCTION.specificmeasures
  is '具体措施';
comment on column CONSTRUCTION.constructname
  is '管制名称';
comment on column CONSTRUCTION.id
  is 'uuid';
alter table CONSTRUCTION
  add constraint CONSTRUCTION_PRIMARY primary key (ID)
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
prompt Creating table CONTROL_TYPE_PARAM
prompt =================================
prompt
create table CONTROL_TYPE_PARAM
(
  controltypeno       VARCHAR2(20) not null,
  allowdelete         CHAR(1) default 0,
  operationid         VARCHAR2(32),
  parentcontroltypeno VARCHAR2(20),
  areaid              CHAR(6)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column CONTROL_TYPE_PARAM.controltypeno
  is '布控类型编号';
comment on column CONTROL_TYPE_PARAM.allowdelete
  is '是否允许删除，0不允许，1允许';
comment on column CONTROL_TYPE_PARAM.operationid
  is '操作ID';
comment on column CONTROL_TYPE_PARAM.parentcontroltypeno
  is '布控类型父ID';
comment on column CONTROL_TYPE_PARAM.areaid
  is '区域ID，部门前6位';
alter table CONTROL_TYPE_PARAM
  add constraint CONTROL_TYPE_PARAM primary key (CONTROLTYPENO)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table CUSTOMED_AREA_INFO
prompt =================================
prompt
create table CUSTOMED_AREA_INFO
(
  id           VARCHAR2(32) not null,
  areatype     VARCHAR2(2) not null,
  areaname     NVARCHAR2(20) not null,
  description  NVARCHAR2(300),
  departmentid VARCHAR2(12) not null,
  createuser   VARCHAR2(6) not null,
  createtime   DATE not null,
  arealocation VARCHAR2(3000) not null,
  deleteflag   CHAR(1) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column CUSTOMED_AREA_INFO.id
  is '主键
';
comment on column CUSTOMED_AREA_INFO.areatype
  is '枚举，区域类型
';
comment on column CUSTOMED_AREA_INFO.areaname
  is '自定义区域名称
';
comment on column CUSTOMED_AREA_INFO.description
  is '该区域描述
';
comment on column CUSTOMED_AREA_INFO.departmentid
  is '制作人所属部门id
';
comment on column CUSTOMED_AREA_INFO.createuser
  is '创建人';
comment on column CUSTOMED_AREA_INFO.createtime
  is '创建时间';
comment on column CUSTOMED_AREA_INFO.arealocation
  is '区域地理位置
';
comment on column CUSTOMED_AREA_INFO.deleteflag
  is '删除标志  1有效，0删除
默认1';
alter table CUSTOMED_AREA_INFO
  add constraint ID3 primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table CUSTOMED_CONFIG_INFO
prompt ===================================
prompt
create table CUSTOMED_CONFIG_INFO
(
  id    VARCHAR2(32) not null,
  video VARCHAR2(3000),
  road  VARCHAR2(3000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table CUSTOMED_CONFIG_INFO
  is '态势监控--专题区域--配置视频和路段信息';
comment on column CUSTOMED_CONFIG_INFO.id
  is '专题区域外键';
comment on column CUSTOMED_CONFIG_INFO.video
  is '配置的视频信息，逗号分隔';
comment on column CUSTOMED_CONFIG_INFO.road
  is '配置的路段信息，逗号分隔';
alter table CUSTOMED_CONFIG_INFO
  add constraint CUSTOMED_CONFIG_INFO_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DEPARTMENT
prompt =========================
prompt
create table DEPARTMENT
(
  cdepartmentid    NVARCHAR2(12) not null,
  cdepartmentcode  NCHAR(12) not null,
  parentdepartment NVARCHAR2(12) not null,
  cdepartmentname  NVARCHAR2(50) not null,
  nlevel           NCHAR(1) not null,
  awardedagencies  NVARCHAR2(10),
  cprincipal       NVARCHAR2(20),
  ctelephone       NVARCHAR2(40),
  cdescription     NVARCHAR2(255),
  departmentflag   NCHAR(1),
  deptshortname    NVARCHAR2(50),
  innerdeptflag    CHAR(1),
  dataauthority    CHAR(1),
  equipdeptflag    CHAR(1),
  haibodeptid      VARCHAR2(100),
  workaddress      NVARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DEPARTMENT
  is '部门信息表';
comment on column DEPARTMENT.cdepartmentid
  is '部门ID';
comment on column DEPARTMENT.cdepartmentcode
  is '部门代码';
comment on column DEPARTMENT.parentdepartment
  is '上级部门';
comment on column DEPARTMENT.cdepartmentname
  is '部门名称';
comment on column DEPARTMENT.nlevel
  is '级别(1-总队，2-支队，3-大队，4-中队)';
comment on column DEPARTMENT.awardedagencies
  is '管辖区域';
comment on column DEPARTMENT.cprincipal
  is '负责人';
comment on column DEPARTMENT.ctelephone
  is '电话';
comment on column DEPARTMENT.cdescription
  is '描述';
comment on column DEPARTMENT.departmentflag
  is '部门类别（1-业务部门 0-行政单位）';
comment on column DEPARTMENT.deptshortname
  is '部门简称';
comment on column DEPARTMENT.innerdeptflag
  is '1,内部部门；0,非内部部门';
comment on column DEPARTMENT.dataauthority
  is '0,本部门权限； 1,上级部门权限； 2,全局权限';
comment on column DEPARTMENT.equipdeptflag
  is '0,是；1,否';
comment on column DEPARTMENT.haibodeptid
  is '海博WebService部门ID';
comment on column DEPARTMENT.workaddress
  is '办公地点';
create index IDX_PARENTDEPTID on DEPARTMENT (PARENTDEPARTMENT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DEPARTMENT
  add constraint DEPARTMENT_PK primary key (CDEPARTMENTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DEPARTMENT_AREA_GEOMETRY
prompt =======================================
prompt
create table DEPARTMENT_AREA_GEOMETRY
(
  cdepartmentid VARCHAR2(32),
  geometry      MDSYS.SDO_GEOMETRY,
  points        VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table DETECT_SPEED_DATA
prompt ================================
prompt
create table DETECT_SPEED_DATA
(
  nid                 VARCHAR2(32) not null,
  clicensetype        VARCHAR2(2),
  ccarnumber          VARCHAR2(16),
  dcollectiondate     DATE not null,
  caddresscode        VARCHAR2(12),
  ccollectionaddress  VARCHAR2(200),
  ccollectionagencies VARCHAR2(12),
  cdatasource         VARCHAR2(2),
  csnaptype           CHAR(1),
  cdevicecode         VARCHAR2(18),
  clanenumber         VARCHAR2(2),
  nvehiclespeed       NUMBER(3) not null,
  cpic1path           VARCHAR2(400) not null,
  cpic2path           VARCHAR2(400),
  cpic3path           VARCHAR2(400),
  nderictrion         NUMBER(2),
  carcolor            NVARCHAR2(4),
  carbrand            NVARCHAR2(4),
  chiscarnumber       VARCHAR2(16),
  targettype          VARCHAR2(4),
  xywh                VARCHAR2(400),
  datauploadtime      DATE,
  datasavetime        DATE default sysdate,
  mqtime              DATE,
  platecolor          VARCHAR2(2),
  vehicletype         VARCHAR2(3),
  carno               VARCHAR2(16),
  subbrand            NVARCHAR2(3),
  yearmodel           NVARCHAR2(2),
  mainsunvisor        CHAR(1),
  vicesunvisor        CHAR(1),
  mainsafebelt        CHAR(1),
  vicesafebelt        CHAR(1),
  phonecall           CHAR(1),
  dangervehicle       CHAR(1),
  oricarno            VARCHAR2(16),
  oriplatecolor       VARCHAR2(2),
  oriclicensetype     VARCHAR2(2),
  oricarcolor         CHAR(1),
  orivehicletype      VARCHAR2(3),
  oricarbrand         NVARCHAR2(3),
  orisubbrand         NVARCHAR2(3),
  oriyearmodel        NVARCHAR2(2),
  orimainsunvisor     CHAR(1),
  orivicesunvisor     CHAR(1),
  orinalmainsafebelt  CHAR(1),
  orivicesafebelt     CHAR(1),
  oriphonecall        CHAR(1),
  oridangervehicle    CHAR(1),
  exceptionmsg        VARCHAR2(100),
  isrecognize         CHAR(1),
  reupload            CHAR(1)
)
partition by range (DCOLLECTIONDATE) interval (NUMTODSINTERVAL(1,'DAY'))
(
  partition DSD_P1 values less than (TO_DATE(' 2016-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace DETECTTS_01
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P81 values less than (TO_DATE(' 2016-06-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P82 values less than (TO_DATE(' 2016-06-11 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P83 values less than (TO_DATE(' 2016-06-23 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P84 values less than (TO_DATE(' 2016-06-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P85 values less than (TO_DATE(' 2016-06-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P86 values less than (TO_DATE(' 2016-06-29 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P668 values less than (TO_DATE(' 2017-03-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P778 values less than (TO_DATE(' 2017-05-05 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P779 values less than (TO_DATE(' 2017-05-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P780 values less than (TO_DATE(' 2017-05-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1349 values less than (TO_DATE(' 2017-10-25 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1388 values less than (TO_DATE(' 2017-10-26 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1428 values less than (TO_DATE(' 2017-10-27 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1466 values less than (TO_DATE(' 2017-10-28 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1492 values less than (TO_DATE(' 2017-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1527 values less than (TO_DATE(' 2017-11-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1530 values less than (TO_DATE(' 2017-11-08 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1668 values less than (TO_DATE(' 2018-01-31 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1669 values less than (TO_DATE(' 2018-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1673 values less than (TO_DATE(' 2018-02-02 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P22 values less than (TO_DATE(' 2018-02-09 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P21 values less than (TO_DATE(' 2018-02-10 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table DETECT_SPEED_DATA
  is '过车数据表';
comment on column DETECT_SPEED_DATA.nid
  is '数据库自动编号';
comment on column DETECT_SPEED_DATA.clicensetype
  is '号牌种类';
comment on column DETECT_SPEED_DATA.ccarnumber
  is '号牌号码';
comment on column DETECT_SPEED_DATA.dcollectiondate
  is '采集时间';
comment on column DETECT_SPEED_DATA.caddresscode
  is '采集地点编号';
comment on column DETECT_SPEED_DATA.ccollectionaddress
  is '采集地点名称';
comment on column DETECT_SPEED_DATA.ccollectionagencies
  is '采集机关编号';
comment on column DETECT_SPEED_DATA.cdatasource
  is '数据来源';
comment on column DETECT_SPEED_DATA.csnaptype
  is '抓拍类型';
comment on column DETECT_SPEED_DATA.cdevicecode
  is '设备编号';
comment on column DETECT_SPEED_DATA.clanenumber
  is '车道编号';
comment on column DETECT_SPEED_DATA.nvehiclespeed
  is '车辆速度';
comment on column DETECT_SPEED_DATA.cpic1path
  is '图片1路径';
comment on column DETECT_SPEED_DATA.cpic2path
  is '图片2路径';
comment on column DETECT_SPEED_DATA.cpic3path
  is '图片3路径';
comment on column DETECT_SPEED_DATA.nderictrion
  is '方向编号';
comment on column DETECT_SPEED_DATA.carcolor
  is '车身颜色';
comment on column DETECT_SPEED_DATA.carbrand
  is '车标';
comment on column DETECT_SPEED_DATA.targettype
  is '目标类型 01-机动车，02-非机动车，03-行人';
comment on column DETECT_SPEED_DATA.xywh
  is '号牌特征图片信息';
comment on column DETECT_SPEED_DATA.datauploadtime
  is '数据上传时间';
comment on column DETECT_SPEED_DATA.mqtime
  is 'MQ时间';
comment on column DETECT_SPEED_DATA.platecolor
  is '号牌颜色';
comment on column DETECT_SPEED_DATA.vehicletype
  is '车辆类型';
comment on column DETECT_SPEED_DATA.carno
  is '原始号牌号码';
comment on column DETECT_SPEED_DATA.subbrand
  is '车辆子品牌';
comment on column DETECT_SPEED_DATA.yearmodel
  is '车辆年款';
comment on column DETECT_SPEED_DATA.mainsunvisor
  is '主驾遮阳板 0-未识别，1-打开，2-关闭';
comment on column DETECT_SPEED_DATA.vicesunvisor
  is '副驾遮阳板
0-未识别，1-打开，2-关闭';
comment on column DETECT_SPEED_DATA.mainsafebelt
  is '主驾安全带 0-未识别，1-系，2-未系';
comment on column DETECT_SPEED_DATA.vicesafebelt
  is '副驾安全带 0-未识别，1-系，2-未系';
comment on column DETECT_SPEED_DATA.phonecall
  is '主驾打电话 0-未识别，1-打，2-未打';
comment on column DETECT_SPEED_DATA.dangervehicle
  is '危险品车   0-否，1-是';
comment on column DETECT_SPEED_DATA.oricarno
  is '一次识别-号牌号码';
comment on column DETECT_SPEED_DATA.oriplatecolor
  is '一次识别-号牌颜色';
comment on column DETECT_SPEED_DATA.oriclicensetype
  is '一次识别-号牌种类';
comment on column DETECT_SPEED_DATA.oricarcolor
  is '一次识别-车身颜色';
comment on column DETECT_SPEED_DATA.orivehicletype
  is '一次识别-车辆类型';
comment on column DETECT_SPEED_DATA.oricarbrand
  is '一次识别-车辆品牌';
comment on column DETECT_SPEED_DATA.orisubbrand
  is '一次识别-车辆子品牌';
comment on column DETECT_SPEED_DATA.oriyearmodel
  is '一次识别-车辆年款';
comment on column DETECT_SPEED_DATA.orimainsunvisor
  is '一次识别-主驾遮阳板(0-未识别，1-打开，2-关闭)';
comment on column DETECT_SPEED_DATA.orivicesunvisor
  is '一次识别-副驾遮阳板(0-未识别，1-打开，2-关闭)';
comment on column DETECT_SPEED_DATA.orinalmainsafebelt
  is '一次识别-主驾安全带(0-未识别，1-系，2-未系)';
comment on column DETECT_SPEED_DATA.orivicesafebelt
  is '一次识别-副驾安全带(0-未识别，1-系，2-未系)';
comment on column DETECT_SPEED_DATA.oriphonecall
  is '一次识别-主驾打电话(0-未识别，1-打，2-未打)';
comment on column DETECT_SPEED_DATA.oridangervehicle
  is '一次识别-危险品车（0-否，1-是）';
comment on column DETECT_SPEED_DATA.exceptionmsg
  is '异常信息';
comment on column DETECT_SPEED_DATA.isrecognize
  is '二次识别标志位  0-未进行二次识别，1-已进行二次识别';
comment on column DETECT_SPEED_DATA.reupload
  is '是否重传 0-非重传数据，1-重传数据';
create index IDX_CARNUM_DATA_ADDRESS on DETECT_SPEED_DATA (CCARNUMBER, DCOLLECTIONDATE, CADDRESSCODE)
  nologging  local;
create index IDX_CARNUM_TYPE_DATA_ADDRESS on DETECT_SPEED_DATA (CCARNUMBER, CLICENSETYPE, DCOLLECTIONDATE, CADDRESSCODE)
  nologging  local;
create index IDX_DATE_ADDRESS on DETECT_SPEED_DATA (DCOLLECTIONDATE, CADDRESSCODE)
  nologging  local;
create unique index PK_DETECT_SPEED_DATA on DETECT_SPEED_DATA (NID, DCOLLECTIONDATE)
  nologging  local;

prompt
prompt Creating table DEVICE_CONCRETETYPE_INFO
prompt =======================================
prompt
create table DEVICE_CONCRETETYPE_INFO
(
  id           VARCHAR2(32) not null,
  deviceid     NVARCHAR2(18) not null,
  concretetype VARCHAR2(8)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DEVICE_CONCRETETYPE_INFO.id
  is 'id';
comment on column DEVICE_CONCRETETYPE_INFO.deviceid
  is '设备id';
comment on column DEVICE_CONCRETETYPE_INFO.concretetype
  is '类型id';
alter table DEVICE_CONCRETETYPE_INFO
  add constraint PRI_DCID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DEVICE_SECTION
prompt =============================
prompt
create table DEVICE_SECTION
(
  id        NVARCHAR2(18) not null,
  deviceid  NVARCHAR2(18),
  sectionid NVARCHAR2(8)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DEVICE_SECTION.id
  is 'id';
comment on column DEVICE_SECTION.deviceid
  is '设备编号';
comment on column DEVICE_SECTION.sectionid
  is '路段编号';
alter table DEVICE_SECTION
  add constraint DEVICE_SECTION_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DIGROAD
prompt ======================
prompt
create table DIGROAD
(
  nid                  NVARCHAR2(32) not null,
  projectname          NVARCHAR2(100),
  begindate            DATE,
  enddate              DATE,
  digdept              NVARCHAR2(100),
  respman_phone        VARCHAR2(15),
  respman              NVARCHAR2(50),
  chairman             NVARCHAR2(50),
  principal            NVARCHAR2(50),
  telephone            VARCHAR2(15),
  isdiversion          CHAR(1),
  diversionplan        NVARCHAR2(512),
  digroaddesc          NVARCHAR2(512),
  requestdept          NVARCHAR2(100),
  requestpersonid      CHAR(32),
  requestdesc          NVARCHAR2(512),
  requestdate          DATE,
  digtype              CHAR(1),
  imagepath            NVARCHAR2(255),
  csubdepartmentid     NVARCHAR2(64),
  cdepartmentid        NVARCHAR2(64),
  digperiod            CHAR(1),
  sidewalk_length      NUMBER(10,2),
  sidewalk_width       NUMBER(10,2),
  sidewalk_area        NUMBER(16,2),
  carway_length        NUMBER(10,2),
  carway_width         NUMBER(10,2),
  carway_area          NUMBER(16,2),
  digperiod_starttime  VARCHAR2(10),
  digperiod_endtime    VARCHAR2(10),
  longitude            NUMBER(13,6),
  latitude             NUMBER(13,6),
  facility_desc        NVARCHAR2(512),
  position_files       VARCHAR2(255),
  diversion_files      VARCHAR2(255),
  digroad_info         NVARCHAR2(100),
  taskid               VARCHAR2(50),
  digtype_desc         NVARCHAR2(255),
  nodeid               VARCHAR2(32),
  nodename             VARCHAR2(100),
  task_status          VARCHAR2(2) default 0,
  isinner              VARCHAR2(2),
  areatype             CHAR(1) default 1,
  startpoint           VARCHAR2(50),
  endpoint             VARCHAR2(50),
  installdirection     CHAR(1) default 0,
  lanenum              VARCHAR2(100),
  coordinate_type      VARCHAR2(1) default 2,
  longitudeandlatitude VARCHAR2(512),
  isdelay              VARCHAR2(1),
  requestcode          VARCHAR2(11),
  sectionid            VARCHAR2(50),
  startaddress         VARCHAR2(100),
  endaddress           VARCHAR2(100)
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
comment on table DIGROAD
  is '占掘路';
comment on column DIGROAD.nid
  is 'UUID';
comment on column DIGROAD.projectname
  is '工程名称  (天津启用)';
comment on column DIGROAD.begindate
  is '工程开始时间   (天津启用)';
comment on column DIGROAD.enddate
  is '工程结束时间   (天津启用)';
comment on column DIGROAD.digdept
  is '施工单位   (天津启用)';
comment on column DIGROAD.respman_phone
  is '经办人联系方式   (天津启用)';
comment on column DIGROAD.respman
  is '经办人   (天津启用)';
comment on column DIGROAD.chairman
  is '法人代表';
comment on column DIGROAD.principal
  is '责任人';
comment on column DIGROAD.telephone
  is '责任人联系方式';
comment on column DIGROAD.isdiversion
  is '是否调流   (天津启用,是否审核  枚举14001)';
comment on column DIGROAD.diversionplan
  is '调流方案';
comment on column DIGROAD.digroaddesc
  is '工程描述  (天津启用)';
comment on column DIGROAD.requestdept
  is '申请单位';
comment on column DIGROAD.requestpersonid
  is '申请人';
comment on column DIGROAD.requestdesc
  is '申请理由';
comment on column DIGROAD.requestdate
  is '申请日期     (天津启用,系统录入时间)';
comment on column DIGROAD.digtype
  is '施工形式  0半封闭  1全封闭';
comment on column DIGROAD.imagepath
  is '图片路径';
comment on column DIGROAD.csubdepartmentid
  is '分管中队';
comment on column DIGROAD.cdepartmentid
  is '分管大队  (天津启用)';
comment on column DIGROAD.digperiod
  is '施工时段 1全天  2夜间  3白天';
comment on column DIGROAD.sidewalk_length
  is '占用人行道长';
comment on column DIGROAD.sidewalk_width
  is '占用人行道宽';
comment on column DIGROAD.sidewalk_area
  is '占用人行道面积';
comment on column DIGROAD.carway_length
  is '占用车行道长';
comment on column DIGROAD.carway_width
  is '占用车行道宽';
comment on column DIGROAD.carway_area
  is '占用车行道面积';
comment on column DIGROAD.digperiod_starttime
  is '占用时间段开始时间';
comment on column DIGROAD.digperiod_endtime
  is '占用时间段结束时间';
comment on column DIGROAD.longitude
  is '经度';
comment on column DIGROAD.latitude
  is '纬度 ';
comment on column DIGROAD.facility_desc
  is '设施变动信息';
comment on column DIGROAD.position_files
  is '位置图';
comment on column DIGROAD.diversion_files
  is '调流图';
comment on column DIGROAD.digroad_info
  is '占用 道路名   (天津启用)';
comment on column DIGROAD.taskid
  is '工作流任务编号   (天津启用,局批号)';
comment on column DIGROAD.digtype_desc
  is '施工形式描述(占用 道路信息)：占用道路东侧，距西侧3米';
comment on column DIGROAD.nodeid
  is '待执行结点编号';
comment on column DIGROAD.nodename
  is '待执行结点名称';
comment on column DIGROAD.task_status
  is '任务状态   1已结束  0进行中   (天津启用, 枚举14002)';
comment on column DIGROAD.isinner
  is '是否内网申请,1是';
comment on column DIGROAD.areatype
  is '1：市区，2：高速';
comment on column DIGROAD.startpoint
  is '开始桩号 ';
comment on column DIGROAD.endpoint
  is '结束桩号';
comment on column DIGROAD.installdirection
  is '方向（0：上行，1：下行）';
comment on column DIGROAD.lanenum
  is '占用车道1-5';
comment on column DIGROAD.longitudeandlatitude
  is '(天津启用,  地图坐标集合)';
comment on column DIGROAD.isdelay
  is '是否超期  (天津启用  0否  1是)';
comment on column DIGROAD.requestcode
  is '申请编号  打印时生成';
comment on column DIGROAD.startaddress
  is ' (天津新增,  施工路段起点)';
comment on column DIGROAD.endaddress
  is ' (天津新增,  施工路段终点)';
alter table DIGROAD
  add constraint DIGROAD_PK primary key (NID)
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
prompt Creating table DISTRICT
prompt =======================
prompt
create table DISTRICT
(
  id            VARCHAR2(32) not null,
  dept_id       VARCHAR2(12),
  district_code VARCHAR2(20),
  district_name VARCHAR2(100),
  coordinate    CLOB,
  remark        NVARCHAR2(100),
  short_name    VARCHAR2(100),
  color         VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DISTRICT
  is '辖区表';
comment on column DISTRICT.id
  is 'UUID';
comment on column DISTRICT.dept_id
  is '部门表ID';
comment on column DISTRICT.district_code
  is '辖区编号(来自市局PGIS服务)';
comment on column DISTRICT.district_name
  is '辖区名称(来自市局PGIS服务)';
comment on column DISTRICT.coordinate
  is '辖区坐标(来自市局PGIS服务)';
comment on column DISTRICT.remark
  is '备注';
comment on column DISTRICT.short_name
  is '辖区简称(平台自定义辖区名称)';
comment on column DISTRICT.color
  is '地图显示辖区颜色(枚举值)';
create index IDX_DISTRICT_DEPT_ID on DISTRICT (DEPT_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table DISTRICT
  add constraint PRI_DISTRICT primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DM_ASSESS_RESULT
prompt ===============================
prompt
create table DM_ASSESS_RESULT
(
  resultid   VARCHAR2(32) not null,
  symbol     VARCHAR2(32),
  symboltype VARCHAR2(2),
  recordtime DATE,
  group_type VARCHAR2(2),
  scope_type VARCHAR2(2),
  business   VARCHAR2(6)
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
comment on table DM_ASSESS_RESULT
  is '考核结果记录表';
comment on column DM_ASSESS_RESULT.resultid
  is '考核结果唯一标识';
comment on column DM_ASSESS_RESULT.symbol
  is '考核对象';
comment on column DM_ASSESS_RESULT.symboltype
  is '考核对象类型 3大队；4中队；5个人(待作废，SCOPE_TYPE字段代替)';
comment on column DM_ASSESS_RESULT.recordtime
  is '考核记录时间 格式yyyy-mm-dd 00:00:01';
comment on column DM_ASSESS_RESULT.group_type
  is '分组类型 枚举 DUTY_GROUP_TYPE';
comment on column DM_ASSESS_RESULT.scope_type
  is '范围类型 枚举DUTY_SCOPE_TYPE';
comment on column DM_ASSESS_RESULT.business
  is '业务类型 枚举DUTY_BUSINESS_TYPE';
create index IDX_BSG on DM_ASSESS_RESULT (BUSINESS, SCOPE_TYPE, GROUP_TYPE)
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
create index IDX_RECORD on DM_ASSESS_RESULT (RECORDTIME)
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
alter table DM_ASSESS_RESULT
  add constraint PK_ASSESS_ID primary key (RESULTID)
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
prompt Creating table DM_ASSESS_RESULT_HEAP
prompt ====================================
prompt
create table DM_ASSESS_RESULT_HEAP
(
  resultid   VARCHAR2(32) not null,
  symbol     VARCHAR2(32),
  recordtime DATE,
  group_type VARCHAR2(2),
  scope_type VARCHAR2(2),
  business   VARCHAR2(2)
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
comment on table DM_ASSESS_RESULT_HEAP
  is '考核结果-月累计得分记录表';
comment on column DM_ASSESS_RESULT_HEAP.resultid
  is '考核结果唯一标识';
comment on column DM_ASSESS_RESULT_HEAP.symbol
  is '考核对象';
comment on column DM_ASSESS_RESULT_HEAP.recordtime
  is '考核记录时间 格式yyyy-mm-dd 00:00:01';
comment on column DM_ASSESS_RESULT_HEAP.group_type
  is '分组类型 枚举 DUTY_GROUP_TYPE';
comment on column DM_ASSESS_RESULT_HEAP.scope_type
  is '范围类型 枚举DUTY_SCOPE_TYPE';
comment on column DM_ASSESS_RESULT_HEAP.business
  is '业务类型 枚举DUTY_BUSINESS_TYPE';
alter table DM_ASSESS_RESULT_HEAP
  add constraint PK_ASSESS_DAY_ID primary key (RESULTID)
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
prompt Creating table DM_ASSESS_RESULT_HISTORY
prompt =======================================
prompt
create table DM_ASSESS_RESULT_HISTORY
(
  resultid          VARCHAR2(32) not null,
  symbol            VARCHAR2(32),
  symboltype        VARCHAR2(2),
  recordtime        DATE,
  city_rank         VARCHAR2(4),
  big_rank          VARCHAR2(4),
  zho_rank          VARCHAR2(4),
  police_star_level VARCHAR2(2),
  group_type        VARCHAR2(2),
  scope_type        VARCHAR2(2),
  business          VARCHAR2(6),
  savetime          DATE
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
comment on column DM_ASSESS_RESULT_HISTORY.symbol
  is '考核对象ID';
comment on column DM_ASSESS_RESULT_HISTORY.symboltype
  is '考核对象类型 3大队；4中队；5个人(待作废，SCOPE_TYPE字段代替)';
comment on column DM_ASSESS_RESULT_HISTORY.recordtime
  is '考核月份的起始日期';
comment on column DM_ASSESS_RESULT_HISTORY.city_rank
  is '全市排名';
comment on column DM_ASSESS_RESULT_HISTORY.big_rank
  is '大队排名';
comment on column DM_ASSESS_RESULT_HISTORY.zho_rank
  is '中队排名';
comment on column DM_ASSESS_RESULT_HISTORY.police_star_level
  is '警员星级 枚举DUTY_POLICE_STAR_LEVEL';
comment on column DM_ASSESS_RESULT_HISTORY.group_type
  is '分组类型 枚举 DUTY_GROUP_TYPE';
comment on column DM_ASSESS_RESULT_HISTORY.scope_type
  is '范围类型 枚举DUTY_SCOPE_TYPE';
comment on column DM_ASSESS_RESULT_HISTORY.business
  is '业务类型 枚举DUTY_BUSINESS_TYPE';
comment on column DM_ASSESS_RESULT_HISTORY.savetime
  is '入库时间';
create index IDX_SYMBOL on DM_ASSESS_RESULT_HISTORY (SYMBOL)
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
alter table DM_ASSESS_RESULT_HISTORY
  add constraint PK_RESULT_HISTORY primary key (RESULTID)
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
prompt Creating table DM_ASSESS_RESULT_SCORE
prompt =====================================
prompt
create table DM_ASSESS_RESULT_SCORE
(
  uuid     VARCHAR2(32) default sys_guid() not null,
  resultid VARCHAR2(32) not null,
  indexid  VARCHAR2(32) not null,
  score    VARCHAR2(20)
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
comment on table DM_ASSESS_RESULT_SCORE
  is '考核结果分数表';
comment on column DM_ASSESS_RESULT_SCORE.uuid
  is '主键UUID';
comment on column DM_ASSESS_RESULT_SCORE.resultid
  is '考核结果唯一标识';
comment on column DM_ASSESS_RESULT_SCORE.indexid
  is '指标ID';
comment on column DM_ASSESS_RESULT_SCORE.score
  is '得分';
alter table DM_ASSESS_RESULT_SCORE
  add constraint PK_SCORE_ID primary key (UUID)
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
prompt Creating table DM_ASSESS_RESULT_SCORE_HEAP
prompt ==========================================
prompt
create table DM_ASSESS_RESULT_SCORE_HEAP
(
  uuid     VARCHAR2(32) not null,
  resultid VARCHAR2(32) not null,
  indexid  VARCHAR2(32) not null,
  score    VARCHAR2(10)
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
comment on table DM_ASSESS_RESULT_SCORE_HEAP
  is '考核结果-月累计分数表';
comment on column DM_ASSESS_RESULT_SCORE_HEAP.uuid
  is '主键UUID';
comment on column DM_ASSESS_RESULT_SCORE_HEAP.resultid
  is '考核结果唯一标识';
comment on column DM_ASSESS_RESULT_SCORE_HEAP.indexid
  is '指标ID';
comment on column DM_ASSESS_RESULT_SCORE_HEAP.score
  is '考核对象类型 3大队；4中队；5个人';
alter table DM_ASSESS_RESULT_SCORE_HEAP
  add constraint PK_SCORE_DAY_ID primary key (UUID)
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
prompt Creating table DM_ASSESS_RESULT_SCORE_HISTORY
prompt =============================================
prompt
create table DM_ASSESS_RESULT_SCORE_HISTORY
(
  uuid     VARCHAR2(32) not null,
  resultid VARCHAR2(32) not null,
  indexid  VARCHAR2(32) not null,
  score    VARCHAR2(20)
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
comment on column DM_ASSESS_RESULT_SCORE_HISTORY.score
  is '分数，小数点后15位小数';
create index PK_RESULTID on DM_ASSESS_RESULT_SCORE_HISTORY (RESULTID)
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
prompt Creating table DM_CHECK_APPEAL
prompt ==============================
prompt
create table DM_CHECK_APPEAL
(
  id                          VARCHAR2(32) not null,
  dm_comprehensive_monitor_id VARCHAR2(32),
  status                      CHAR(1) default 0,
  pic_url                     VARCHAR2(4000),
  reason                      NVARCHAR2(1000),
  create_time                 DATE,
  update_time                 DATE
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
comment on table DM_CHECK_APPEAL
  is '考核申诉表';
comment on column DM_CHECK_APPEAL.id
  is '主键';
comment on column DM_CHECK_APPEAL.dm_comprehensive_monitor_id
  is '综合监控表主键';
comment on column DM_CHECK_APPEAL.status
  is '申诉状态 0未审核； 1大队待审核；2支队待审核；3审核驳回；4审核通过';
comment on column DM_CHECK_APPEAL.pic_url
  is '图片路径，多个路径用#号隔开';
comment on column DM_CHECK_APPEAL.reason
  is '申诉原因';
comment on column DM_CHECK_APPEAL.create_time
  is '创建时间';
comment on column DM_CHECK_APPEAL.update_time
  is '更新时间';
alter table DM_CHECK_APPEAL
  add constraint PRI_APPEAL_ID primary key (ID)
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
prompt Creating table DM_CHECK_DATE_AGAIN
prompt ==================================
prompt
create table DM_CHECK_DATE_AGAIN
(
  id         VARCHAR2(32) not null,
  check_date VARCHAR2(32),
  del_flag   VARCHAR2(2)
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
comment on table DM_CHECK_DATE_AGAIN
  is '考核重新计算日期表';
comment on column DM_CHECK_DATE_AGAIN.id
  is '主键';
comment on column DM_CHECK_DATE_AGAIN.check_date
  is '重新计算考核的日期yyyy-mm-dd';
comment on column DM_CHECK_DATE_AGAIN.del_flag
  is '删除标志位 1是；0否';

prompt
prompt Creating table DM_CHECK_MANAGE
prompt ==============================
prompt
create table DM_CHECK_MANAGE
(
  id            VARCHAR2(32) default sys_guid() not null,
  symbol        VARCHAR2(32),
  scope_type    VARCHAR2(2),
  business_type VARCHAR2(6),
  group_type    VARCHAR2(2)
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
comment on table DM_CHECK_MANAGE
  is '考核对象管理表';
comment on column DM_CHECK_MANAGE.symbol
  is '考核对象ID（部门编号或警员ID）';
comment on column DM_CHECK_MANAGE.scope_type
  is '范围类型 枚举DUTY_SCOPE_TYPE';
comment on column DM_CHECK_MANAGE.business_type
  is '业务类型 枚举DUTY_BUSINESS_TYPE';
comment on column DM_CHECK_MANAGE.group_type
  is '分组类型 枚举 DUTY_GROUP_TYPE';
alter table DM_CHECK_MANAGE
  add constraint PK_DM_CHECK_MANAGE primary key (ID)
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
prompt Creating table DM_COMPREHENSIVE_MONITOR
prompt =======================================
prompt
create table DM_COMPREHENSIVE_MONITOR
(
  id           VARCHAR2(32) default sys_guid() not null,
  deploy_id    VARCHAR2(32),
  input_person VARCHAR2(20),
  input_time   DATE,
  input_ip     VARCHAR2(100),
  input_type   VARCHAR2(2),
  policeid     VARCHAR2(10),
  police_uuid  VARCHAR2(32),
  data_type    VARCHAR2(10),
  begin_time   DATE,
  end_time     DATE,
  duration     VARCHAR2(10),
  remark       VARCHAR2(300),
  status       VARCHAR2(2),
  score        VARCHAR2(4),
  updater      VARCHAR2(15),
  update_time  DATE,
  delete_flag  VARCHAR2(2) default 0,
  update_ip    VARCHAR2(100),
  service_type VARCHAR2(2)
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
comment on table DM_COMPREHENSIVE_MONITOR
  is '综合监控表';
comment on column DM_COMPREHENSIVE_MONITOR.id
  is '主键';
comment on column DM_COMPREHENSIVE_MONITOR.deploy_id
  is '排班ID';
comment on column DM_COMPREHENSIVE_MONITOR.input_person
  is '录入人';
comment on column DM_COMPREHENSIVE_MONITOR.input_time
  is '录入时间/报备时间';
comment on column DM_COMPREHENSIVE_MONITOR.input_ip
  is '录入IP';
comment on column DM_COMPREHENSIVE_MONITOR.input_type
  is '录入方式 1人工；2适配器录入';
comment on column DM_COMPREHENSIVE_MONITOR.policeid
  is '警员ID';
comment on column DM_COMPREHENSIVE_MONITOR.police_uuid
  is '警员主键';
comment on column DM_COMPREHENSIVE_MONITOR.data_type
  is '数据类型 1执勤状态（迟到、早退、脱岗、旷工等）2指令执行 3路面抽查 4综合计分 5报备6驻留';
comment on column DM_COMPREHENSIVE_MONITOR.begin_time
  is '开始时间';
comment on column DM_COMPREHENSIVE_MONITOR.end_time
  is '结束时间';
comment on column DM_COMPREHENSIVE_MONITOR.duration
  is '持续时长 单位：秒';
comment on column DM_COMPREHENSIVE_MONITOR.remark
  is '备注';
comment on column DM_COMPREHENSIVE_MONITOR.status
  is '1迟到 2早退 3脱岗 4旷工 5离线 6指令不执行 7指令执行不力 8综合加分 9综合扣分 10上岗报备 11撤岗报备 12驻留超时';
comment on column DM_COMPREHENSIVE_MONITOR.score
  is '综合计分数';
comment on column DM_COMPREHENSIVE_MONITOR.updater
  is '修改人';
comment on column DM_COMPREHENSIVE_MONITOR.update_time
  is '修改时间';
comment on column DM_COMPREHENSIVE_MONITOR.delete_flag
  is '删除标识 0否1是';
comment on column DM_COMPREHENSIVE_MONITOR.update_ip
  is '修改人IP';
comment on column DM_COMPREHENSIVE_MONITOR.service_type
  is '勤务类型';
create index DM_COMPREHENSIVE_DEPLOY_PK on DM_COMPREHENSIVE_MONITOR (DEPLOY_ID)
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
create index DM_COMPREHENSIVE_MONITOR_DELPK on DM_COMPREHENSIVE_MONITOR (DELETE_FLAG)
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
create index IDX_DP on DM_COMPREHENSIVE_MONITOR (POLICE_UUID, DEPLOY_ID)
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
create index IDX_POLICEUUID on DM_COMPREHENSIVE_MONITOR (POLICE_UUID)
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
alter table DM_COMPREHENSIVE_MONITOR
  add constraint DM_COMPREHENSIVE_MONITOR_PK primary key (ID)
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
prompt Creating table DM_COMPREHENSIVE_MONITOR_DAY
prompt ===========================================
prompt
create table DM_COMPREHENSIVE_MONITOR_DAY
(
  id           VARCHAR2(32) default sys_guid() not null,
  deploy_id    VARCHAR2(32),
  input_person VARCHAR2(20),
  input_time   DATE,
  input_ip     VARCHAR2(100),
  input_type   VARCHAR2(2),
  policeid     VARCHAR2(10),
  police_uuid  VARCHAR2(32),
  data_type    VARCHAR2(10),
  begin_time   DATE,
  end_time     DATE,
  duration     VARCHAR2(10),
  remark       VARCHAR2(300),
  status       VARCHAR2(2),
  score        VARCHAR2(4),
  updater      VARCHAR2(15),
  update_time  DATE,
  delete_flag  VARCHAR2(2) default 0,
  update_ip    VARCHAR2(100),
  service_type VARCHAR2(2)
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
comment on table DM_COMPREHENSIVE_MONITOR_DAY
  is '每日实时综合监控表';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.id
  is '主键';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.deploy_id
  is '排班ID';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.input_person
  is '录入人';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.input_time
  is '录入时间/报备时间';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.input_ip
  is '录入IP';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.input_type
  is '录入方式 1人工；2适配器录入';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.policeid
  is '警员ID';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.police_uuid
  is '警员主键';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.data_type
  is '数据类型 1执勤状态（迟到、早退、脱岗、旷工等）2指令执行 3路面抽查 4综合计分 5报备6驻留';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.begin_time
  is '开始时间';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.end_time
  is '结束时间';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.duration
  is '持续时长 单位：秒';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.remark
  is '备注';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.status
  is '1迟到 2早退 3脱岗 4旷工 5离线 6指令不执行 7指令执行不力 8综合加分 9综合扣分 10上岗报备 11撤岗报备 12驻留超时';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.score
  is '综合计分数';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.updater
  is '修改人';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.update_time
  is '修改时间';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.delete_flag
  is '删除标识 0否1是';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.update_ip
  is '修改人IP';
comment on column DM_COMPREHENSIVE_MONITOR_DAY.service_type
  is '勤务类型';
alter table DM_COMPREHENSIVE_MONITOR_DAY
  add constraint DM_MONITOR_DAY_PK primary key (ID)
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
prompt Creating table DM_DEPLOY
prompt ========================
prompt
create table DM_DEPLOY
(
  id           VARCHAR2(32) default sys_guid() not null,
  position_id  VARCHAR2(32),
  begin_time   DATE,
  end_time     DATE,
  sub_status   VARCHAR2(2),
  sub_type     VARCHAR2(3),
  creator      VARCHAR2(10),
  creator_time DATE,
  updater      VARCHAR2(10),
  update_time  DATE,
  del_flag     VARCHAR2(2) default 0,
  continuity   VARCHAR2(2) default 1
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
comment on table DM_DEPLOY
  is '岗位排班表';
comment on column DM_DEPLOY.id
  is '主键';
comment on column DM_DEPLOY.position_id
  is '岗位主键';
comment on column DM_DEPLOY.begin_time
  is '上岗时间 YYYY-MM-DD HH:MM:SS';
comment on column DM_DEPLOY.end_time
  is '撤岗时间 YYYY-MM-DD HH:MM:SS';
comment on column DM_DEPLOY.sub_status
  is '岗位提交状态 0 中队待提交；1大队待审核；2支队待审核；3审核通过，待安排警力；4审核通过，已安排警力';
comment on column DM_DEPLOY.sub_type
  is '岗位提交类型 0手动提交；1自动提交（000-111，个位表示中队；十位表示大队；百位表示支队）';
comment on column DM_DEPLOY.creator
  is '创建人';
comment on column DM_DEPLOY.creator_time
  is '创建时间';
comment on column DM_DEPLOY.updater
  is '更新人';
comment on column DM_DEPLOY.update_time
  is '更新时间';
comment on column DM_DEPLOY.del_flag
  is '删除标识 0未删除；1删除';
comment on column DM_DEPLOY.continuity
  is '岗位班次连续标识 0连续 1非连续';
create index PK_DM_DEPLOY_DELPK on DM_DEPLOY (DEL_FLAG)
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
create index PK_DM_DEPLOY_POSITIONID on DM_DEPLOY (POSITION_ID)
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
create index PK_END_TIME on DM_DEPLOY (END_TIME)
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
alter table DM_DEPLOY
  add constraint PK_DM_DEPLOY primary key (ID)
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
prompt Creating table DM_DEPLOY_CYCLE
prompt ==============================
prompt
create table DM_DEPLOY_CYCLE
(
  id            VARCHAR2(32) not null,
  cycle_type    VARCHAR2(2),
  copydate      VARCHAR2(50),
  holiday_avoid VARCHAR2(2),
  is_effective  VARCHAR2(2),
  recordtime    DATE,
  is_closed     CHAR(1) default 0,
  deptid        VARCHAR2(12)
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
comment on column DM_DEPLOY_CYCLE.id
  is '主键';
comment on column DM_DEPLOY_CYCLE.cycle_type
  is '循环方式 1周循环；2日循环';
comment on column DM_DEPLOY_CYCLE.copydate
  is '数据被复制日期（年-月-日或1,2,3...，表示周一、周二）';
comment on column DM_DEPLOY_CYCLE.holiday_avoid
  is '是否规避节假日 1是；0否';
comment on column DM_DEPLOY_CYCLE.is_effective
  is '是否生效 1是；0否';
comment on column DM_DEPLOY_CYCLE.recordtime
  is '记录时间';
comment on column DM_DEPLOY_CYCLE.is_closed
  is '是否关闭，1是，0否';
comment on column DM_DEPLOY_CYCLE.deptid
  is '所属部门';

prompt
prompt Creating table DM_DEPLOY_HOLIDAY
prompt ================================
prompt
create table DM_DEPLOY_HOLIDAY
(
  id           VARCHAR2(32) default sys_guid() not null,
  position_id  VARCHAR2(32),
  begin_time   DATE,
  end_time     DATE,
  sub_status   VARCHAR2(2),
  sub_type     VARCHAR2(3),
  creator      VARCHAR2(10),
  creator_time DATE,
  updater      VARCHAR2(10),
  update_time  DATE,
  del_flag     VARCHAR2(2) default 0,
  continuity   VARCHAR2(2) default 1
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
comment on table DM_DEPLOY_HOLIDAY
  is '岗位假日排班表';
comment on column DM_DEPLOY_HOLIDAY.id
  is '主键';
comment on column DM_DEPLOY_HOLIDAY.position_id
  is '岗位主键';
comment on column DM_DEPLOY_HOLIDAY.begin_time
  is '上岗时间 YYYY-MM-DD HH:MM:SS';
comment on column DM_DEPLOY_HOLIDAY.end_time
  is '撤岗时间 YYYY-MM-DD HH:MM:SS';
comment on column DM_DEPLOY_HOLIDAY.sub_status
  is '岗位提交状态 0 中队待提交；1大队待审核；2支队待审核；3审核通过，待安排警力；4审核通过，已安排警力';
comment on column DM_DEPLOY_HOLIDAY.sub_type
  is '岗位提交类型 0手动提交；1自动提交（000-111，个位表示中队；十位表示大队；百位表示支队）';
comment on column DM_DEPLOY_HOLIDAY.creator
  is '创建人';
comment on column DM_DEPLOY_HOLIDAY.creator_time
  is '创建时间';
comment on column DM_DEPLOY_HOLIDAY.updater
  is '更新人';
comment on column DM_DEPLOY_HOLIDAY.update_time
  is '更新时间';
comment on column DM_DEPLOY_HOLIDAY.del_flag
  is '删除标识 0未删除；1删除';
comment on column DM_DEPLOY_HOLIDAY.continuity
  is '岗位班次连续标识 0连续 1非连续';
create index PK_DM_DEPLOY_H_DELPK on DM_DEPLOY_HOLIDAY (DEL_FLAG)
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
create index PK_DM_DEPLOY_H_POSITIONID on DM_DEPLOY_HOLIDAY (POSITION_ID)
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
alter table DM_DEPLOY_HOLIDAY
  add constraint PK_DM_DEPLOY_HOLIDAY primary key (ID)
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
prompt Creating table DM_DEPLOY_POLICE
prompt ===============================
prompt
create table DM_DEPLOY_POLICE
(
  id               VARCHAR2(32) default sys_guid() not null,
  deploy_id        VARCHAR2(32),
  tool_id          VARCHAR2(32),
  police_id        VARCHAR2(32),
  duty_status      VARCHAR2(2) default 0,
  work_status      VARCHAR2(2) default 0,
  duty_ratio       VARCHAR2(5) default 0,
  creator          VARCHAR2(10),
  creator_time     DATE,
  updater          VARCHAR2(10),
  update_time      DATE,
  del_flag         VARCHAR2(2) default 0,
  police_uuid      VARCHAR2(32),
  absent_status    VARCHAR2(2) default 0,
  mileage          VARCHAR2(10) default 0,
  patrol_duration  VARCHAR2(10) default 0,
  on_duty_duration VARCHAR2(10) default 0,
  on_duty_mileage  VARCHAR2(20) default 0,
  gps_total        VARCHAR2(10) default 0
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
comment on table DM_DEPLOY_POLICE
  is '警力安排表';
comment on column DM_DEPLOY_POLICE.id
  is '主键';
comment on column DM_DEPLOY_POLICE.deploy_id
  is '岗位排班主键';
comment on column DM_DEPLOY_POLICE.tool_id
  is '交通工具主键';
comment on column DM_DEPLOY_POLICE.police_id
  is '警员表主键';
comment on column DM_DEPLOY_POLICE.duty_status
  is '在岗情况 0离线；1在岗；4旷工（中途离开且GPS点位数不达标）';
comment on column DM_DEPLOY_POLICE.work_status
  is '迟到早退情况 0正常；1迟到；2早退；3既迟到又早退';
comment on column DM_DEPLOY_POLICE.duty_ratio
  is '在岗率 小数制，保留3位，例0.001';
comment on column DM_DEPLOY_POLICE.creator
  is '创建人';
comment on column DM_DEPLOY_POLICE.creator_time
  is '创建时间';
comment on column DM_DEPLOY_POLICE.updater
  is '更新人';
comment on column DM_DEPLOY_POLICE.update_time
  is '更新时间';
comment on column DM_DEPLOY_POLICE.del_flag
  is '删除标识 0未删除；1已删除';
comment on column DM_DEPLOY_POLICE.police_uuid
  is '警员表数据主键';
comment on column DM_DEPLOY_POLICE.absent_status
  is '是否旷工 0否；1是';
comment on column DM_DEPLOY_POLICE.mileage
  is '该班次巡逻里程（有GPS就算），单位：千米';
comment on column DM_DEPLOY_POLICE.patrol_duration
  is '该班次巡逻时长（有GPS就算），单位：小时';
comment on column DM_DEPLOY_POLICE.on_duty_duration
  is '在岗时长，单位：分钟';
comment on column DM_DEPLOY_POLICE.on_duty_mileage
  is '在岗巡逻里程，单位：米';
comment on column DM_DEPLOY_POLICE.gps_total
  is '该班次GPS总量';
create index PK_DM_DEPLOY_POLICE_DEL on DM_DEPLOY_POLICE (DEL_FLAG)
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
create index PK_DM_DEPLOY_POLICE_ID on DM_DEPLOY_POLICE (DEPLOY_ID)
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
alter table DM_DEPLOY_POLICE
  add constraint PK_DM_DEPLOY_POLICE primary key (ID)
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
prompt Creating table DM_DEPLOY_POLICE_DURATION
prompt ========================================
prompt
create table DM_DEPLOY_POLICE_DURATION
(
  id               VARCHAR2(32) default sys_guid() not null,
  deploy_police_id VARCHAR2(32),
  should_duration  VARCHAR2(7) default 0,
  real_duration    VARCHAR2(7) default 0,
  arrive_time      VARCHAR2(7),
  leave_time       VARCHAR2(7),
  off_duration     VARCHAR2(7) default 0,
  absent_duratioin VARCHAR2(7) default 0,
  recordtime       DATE
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
comment on table DM_DEPLOY_POLICE_DURATION
  is '警力执勤信息表';
comment on column DM_DEPLOY_POLICE_DURATION.id
  is '主键';
comment on column DM_DEPLOY_POLICE_DURATION.deploy_police_id
  is '警力安排表主键';
comment on column DM_DEPLOY_POLICE_DURATION.should_duration
  is '应到时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.real_duration
  is '实到时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.arrive_time
  is '到岗时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.leave_time
  is '撤岗时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.off_duration
  is '脱岗时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.absent_duratioin
  is '旷工时长,单位：分钟';
comment on column DM_DEPLOY_POLICE_DURATION.recordtime
  is '录入时间';
alter table DM_DEPLOY_POLICE_DURATION
  add constraint DDPD_ID primary key (ID)
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
prompt Creating table DM_DEPLOY_SELECT
prompt ===============================
prompt
create table DM_DEPLOY_SELECT
(
  id          VARCHAR2(32) not null,
  cycle_id    VARCHAR2(32),
  select_date VARCHAR2(32)
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
comment on column DM_DEPLOY_SELECT.cycle_id
  is 'dm_deploy_cycle数据主键';

prompt
prompt Creating table DM_DURATION
prompt ==========================
prompt
create table DM_DURATION
(
  id        VARCHAR2(32) not null,
  symbol_id VARCHAR2(32),
  dura_type VARCHAR2(2),
  duration  VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DM_DURATION
  is '执勤时长限制表';
comment on column DM_DURATION.id
  is '主键';
comment on column DM_DURATION.symbol_id
  is '单一岗位或岗位类型主键';
comment on column DM_DURATION.dura_type
  is '时长类型 1最短；2最长';
comment on column DM_DURATION.duration
  is '时长限制 单位：分钟';
alter table DM_DURATION
  add constraint PK_DM_DURATION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DM_DUTY_TIME
prompt ===========================
prompt
create table DM_DUTY_TIME
(
  id          VARCHAR2(32) default sys_guid() not null,
  relation_id VARCHAR2(32),
  begin_time  VARCHAR2(20),
  end_time    VARCHAR2(20),
  type        VARCHAR2(2)
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
comment on table DM_DUTY_TIME
  is '勤务或重点时段管理表';
comment on column DM_DUTY_TIME.id
  is '主键';
comment on column DM_DUTY_TIME.relation_id
  is '岗位或岗位类型主键';
comment on column DM_DUTY_TIME.begin_time
  is '开始时间 HH:MM';
comment on column DM_DUTY_TIME.end_time
  is '结束时间 HH:MM';
comment on column DM_DUTY_TIME.type
  is '时间类型 1勤务时段；2重点时段';
alter table DM_DUTY_TIME
  add constraint PK_DM_DUTY_TIME primary key (ID)
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
prompt Creating table DM_GPS_MONITOR
prompt =============================
prompt
create table DM_GPS_MONITOR
(
  id                VARCHAR2(32) default sys_guid() not null,
  police_id         VARCHAR2(6),
  third_system_code VARCHAR2(32),
  deploy_id         VARCHAR2(32) not null,
  monitor_time      DATE,
  status            VARCHAR2(2),
  coor              VARCHAR2(1000),
  deploy_deptid     VARCHAR2(12),
  police_uuid       VARCHAR2(32) default 0 not null
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
comment on table DM_GPS_MONITOR
  is 'GPS状态监视表';
comment on column DM_GPS_MONITOR.id
  is '32位UUID';
comment on column DM_GPS_MONITOR.police_id
  is '警员表ID';
comment on column DM_GPS_MONITOR.third_system_code
  is '第三方设备编号';
comment on column DM_GPS_MONITOR.deploy_id
  is '排班表ID';
comment on column DM_GPS_MONITOR.monitor_time
  is '监测时间';
comment on column DM_GPS_MONITOR.status
  is ' 0 离线; 1 在线且在岗; 2 在线但不在岗';
comment on column DM_GPS_MONITOR.coor
  is '坐标(经、纬度)';
comment on column DM_GPS_MONITOR.deploy_deptid
  is '执勤岗位所属部门';
comment on column DM_GPS_MONITOR.police_uuid
  is '警员表uuid';
create index IDX_DM_GPS_MONITOR_DE_PO on DM_GPS_MONITOR (DEPLOY_ID, POLICE_UUID)
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
create index IDX_DM_GPS_MONITOR_TIME on DM_GPS_MONITOR (MONITOR_TIME)
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
alter table DM_GPS_MONITOR
  add constraint PRI_DM_GPS_MONITOR primary key (ID)
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
prompt Creating table DM_GRADE_DUTY
prompt ============================
prompt
create table DM_GRADE_DUTY
(
  id          VARCHAR2(32) not null,
  deptid      VARCHAR2(32),
  duty_level  VARCHAR2(2) default 3,
  duty_type   VARCHAR2(2) default 2,
  total_ratio VARCHAR2(5) default 0,
  begin_time  DATE,
  end_time    DATE,
  creator     VARCHAR2(10),
  create_time DATE,
  updater     VARCHAR2(10),
  update_time DATE,
  del_flag    VARCHAR2(2) default 0,
  big_deptid  VARCHAR2(32),
  status      CHAR(1) default '0'
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
comment on table DM_GRADE_DUTY
  is '等级勤务管理表';
comment on column DM_GRADE_DUTY.id
  is '主键';
comment on column DM_GRADE_DUTY.deptid
  is '中队部门ID';
comment on column DM_GRADE_DUTY.duty_level
  is '勤务等级 3级；2级；1级';
comment on column DM_GRADE_DUTY.duty_type
  is '勤务等级类型 3大队勤务等级；4中队勤务等级 参考枚举DUTY_GRADE_TYPE';
comment on column DM_GRADE_DUTY.total_ratio
  is '总上勤比例要求';
comment on column DM_GRADE_DUTY.begin_time
  is '勤务启动日期 yyyy-mm-dd hh24:mi:ss';
comment on column DM_GRADE_DUTY.end_time
  is '勤务结束日期 yyyy-mm-dd hh24:mi:ss';
comment on column DM_GRADE_DUTY.creator
  is '创建人';
comment on column DM_GRADE_DUTY.create_time
  is '创建时间 yyyy-mm-dd hh24:mi:ss';
comment on column DM_GRADE_DUTY.updater
  is '更新人';
comment on column DM_GRADE_DUTY.update_time
  is '更新时间 yyyy-mm-dd hh24:mi:ss';
comment on column DM_GRADE_DUTY.del_flag
  is '删除标识 0未删除；1删除';
comment on column DM_GRADE_DUTY.big_deptid
  is '大队部门ID';
comment on column DM_GRADE_DUTY.status
  is '0未审核；1审核通过';
alter table DM_GRADE_DUTY
  add constraint PK_DM_GRADE_DUTY primary key (ID)
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
prompt Creating table DM_GRADE_DUTY_RATIO
prompt ==================================
prompt
create table DM_GRADE_DUTY_RATIO
(
  id            VARCHAR2(32) not null,
  grade_duty_id VARCHAR2(32),
  police_type   VARCHAR2(2),
  duty_ratio    VARCHAR2(8) default 0
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
comment on table DM_GRADE_DUTY_RATIO
  is '等级勤务警种上勤比例表';
comment on column DM_GRADE_DUTY_RATIO.id
  is '主键';
comment on column DM_GRADE_DUTY_RATIO.grade_duty_id
  is '等级勤务表主键';
comment on column DM_GRADE_DUTY_RATIO.police_type
  is '警员类型';
comment on column DM_GRADE_DUTY_RATIO.duty_ratio
  is '上勤比率';
alter table DM_GRADE_DUTY_RATIO
  add constraint PK_DM_GRADE_DUTY_RATIO primary key (ID)
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
prompt Creating table DM_IMPORTANT_POSITION
prompt ====================================
prompt
create table DM_IMPORTANT_POSITION
(
  id            VARCHAR2(32) not null,
  grade_duty_id VARCHAR2(32),
  position_id   VARCHAR2(32)
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
comment on table DM_IMPORTANT_POSITION
  is '等级勤务重点岗位';
comment on column DM_IMPORTANT_POSITION.id
  is '主键';
comment on column DM_IMPORTANT_POSITION.grade_duty_id
  is '等级勤务表主键';
comment on column DM_IMPORTANT_POSITION.position_id
  is '岗位主键';
create index IDX_GRADE_DUTY_ID on DM_IMPORTANT_POSITION (GRADE_DUTY_ID)
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
alter table DM_IMPORTANT_POSITION
  add constraint PK_DM_IMPORT_POSITION primary key (ID)
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
prompt Creating table DM_INDEXTREE_CONFIG
prompt ==================================
prompt
create table DM_INDEXTREE_CONFIG
(
  id            VARCHAR2(32) not null,
  index_id      VARCHAR2(32) not null,
  parent_id     VARCHAR2(32) not null,
  group_type    VARCHAR2(2),
  scope_type    VARCHAR2(2),
  business_type VARCHAR2(6),
  service_type  VARCHAR2(2),
  node_order    VARCHAR2(2),
  node_level    VARCHAR2(2)
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
comment on table DM_INDEXTREE_CONFIG
  is '考核指标数结构配置';
comment on column DM_INDEXTREE_CONFIG.id
  is '指标树主键';
comment on column DM_INDEXTREE_CONFIG.index_id
  is '指标变量ID';
comment on column DM_INDEXTREE_CONFIG.parent_id
  is '上级指标树ID';
comment on column DM_INDEXTREE_CONFIG.group_type
  is '所属分组类型';
comment on column DM_INDEXTREE_CONFIG.scope_type
  is '所属范围类型';
comment on column DM_INDEXTREE_CONFIG.business_type
  is '所属业务类型';
comment on column DM_INDEXTREE_CONFIG.service_type
  is '勤务类型';
comment on column DM_INDEXTREE_CONFIG.node_order
  is '树节点序号,用于规范表头显示位置';
comment on column DM_INDEXTREE_CONFIG.node_level
  is '节点层级 顶层1；二层2；三层3....';
create index NODE_LEVEL_PK on DM_INDEXTREE_CONFIG (NODE_LEVEL)
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
alter table DM_INDEXTREE_CONFIG
  add constraint PK_CONFIG_ID primary key (ID)
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
prompt Creating table DM_INDEX_CALCULATE
prompt =================================
prompt
create table DM_INDEX_CALCULATE
(
  id                VARCHAR2(32) not null,
  index_tree_id     VARCHAR2(32),
  calculate_formula VARCHAR2(2048)
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
comment on table DM_INDEX_CALCULATE
  is '节点下级指标组合计算表';
comment on column DM_INDEX_CALCULATE.id
  is '主键';
comment on column DM_INDEX_CALCULATE.index_tree_id
  is '指标树ID';
comment on column DM_INDEX_CALCULATE.calculate_formula
  is '下级指标组成计算公式';
alter table DM_INDEX_CALCULATE
  add constraint PK_DM_INDEX_CALCULATE_ID primary key (ID)
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
prompt Creating table DM_INDEX_STRATEGY
prompt ================================
prompt
create table DM_INDEX_STRATEGY
(
  id              VARCHAR2(32) not null,
  index_tree_id   VARCHAR2(32),
  strategy_id     VARCHAR2(32),
  calculate_order VARCHAR2(2)
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
comment on table DM_INDEX_STRATEGY
  is '节点策略配置表';
comment on column DM_INDEX_STRATEGY.id
  is '主键';
comment on column DM_INDEX_STRATEGY.index_tree_id
  is '树节点主键';
comment on column DM_INDEX_STRATEGY.strategy_id
  is '策略主键';
comment on column DM_INDEX_STRATEGY.calculate_order
  is '规则计算顺序';
create index INDEX_TREE_ID_IDX on DM_INDEX_STRATEGY (INDEX_TREE_ID)
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
alter table DM_INDEX_STRATEGY
  add constraint PK_DM_STRATEGY_CONFIG_ID primary key (ID)
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
prompt Creating table DM_INDEX_STRATEGY_CONFIG
prompt =======================================
prompt
create table DM_INDEX_STRATEGY_CONFIG
(
  id                 VARCHAR2(32) not null,
  index_strategy_id  VARCHAR2(32),
  strategy_id        VARCHAR2(32),
  calculate_formula  VARCHAR2(250),
  sort_type          VARCHAR2(2),
  sort_value_type    VARCHAR2(2),
  divi_type          VARCHAR2(2),
  max_value          VARCHAR2(5) default 0,
  min_value          VARCHAR2(5) default 0,
  max_interval_value VARCHAR2(5),
  min_interval_value VARCHAR2(5),
  strategy_flag      VARCHAR2(50),
  sort_score         VARCHAR2(3)
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
comment on table DM_INDEX_STRATEGY_CONFIG
  is '节点策略计算公式配置表';
comment on column DM_INDEX_STRATEGY_CONFIG.id
  is '主键';
comment on column DM_INDEX_STRATEGY_CONFIG.index_strategy_id
  is '节点策略配置表主键';
comment on column DM_INDEX_STRATEGY_CONFIG.strategy_id
  is '策略表主键';
comment on column DM_INDEX_STRATEGY_CONFIG.calculate_formula
  is '策略计算公式';
comment on column DM_INDEX_STRATEGY_CONFIG.sort_type
  is '排序规则 1升序；2降序';
comment on column DM_INDEX_STRATEGY_CONFIG.sort_value_type
  is '排序值类型 1排序最小值；2排序最大值';
comment on column DM_INDEX_STRATEGY_CONFIG.divi_type
  is '排序值除数类型 1除数；2被除数';
comment on column DM_INDEX_STRATEGY_CONFIG.max_value
  is '策略计算结果值上限';
comment on column DM_INDEX_STRATEGY_CONFIG.min_value
  is '策略计算结果值下限';
comment on column DM_INDEX_STRATEGY_CONFIG.max_interval_value
  is '区间大值';
comment on column DM_INDEX_STRATEGY_CONFIG.min_interval_value
  is '区间小值';
comment on column DM_INDEX_STRATEGY_CONFIG.strategy_flag
  is '策略唯一标识';
comment on column DM_INDEX_STRATEGY_CONFIG.sort_score
  is '排序策略的满分值';
create index INDEX_STRATEGY_ID_IDX on DM_INDEX_STRATEGY_CONFIG (INDEX_STRATEGY_ID)
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
alter table DM_INDEX_STRATEGY_CONFIG
  add constraint PK_DM_INDEX_STRATEGY_CONFIG primary key (ID)
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
prompt Creating table DM_INDEX_VARIABLE
prompt ================================
prompt
create table DM_INDEX_VARIABLE
(
  id             VARCHAR2(32) not null,
  index_name     NVARCHAR2(32),
  index_desc     NVARCHAR2(256),
  is_base_flag   VARCHAR2(2) default 0,
  is_show_flag   VARCHAR2(2) default 0,
  service_type   VARCHAR2(2),
  index_type     VARCHAR2(2) default 0,
  index_impl     VARCHAR2(50),
  details_impl   VARCHAR2(50),
  calculate_type VARCHAR2(2) default 0,
  level_type     VARCHAR2(2),
  delete_flag    VARCHAR2(2) default 0,
  index_mark     VARCHAR2(200)
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
comment on table DM_INDEX_VARIABLE
  is '指标变量维护表';
comment on column DM_INDEX_VARIABLE.id
  is '主键';
comment on column DM_INDEX_VARIABLE.index_name
  is '指标名称';
comment on column DM_INDEX_VARIABLE.index_desc
  is '指标描述';
comment on column DM_INDEX_VARIABLE.is_base_flag
  is '指标类型 参考枚举DUTY_INDEX_TYPE';
comment on column DM_INDEX_VARIABLE.is_show_flag
  is '是否展示在考核查询界面 1是0否';
comment on column DM_INDEX_VARIABLE.service_type
  is '指标勤务类型';
comment on column DM_INDEX_VARIABLE.index_type
  is '节点类型 0非指标节点；1基础指标节点；2考核指标节点';
comment on column DM_INDEX_VARIABLE.index_impl
  is '指标具体实现方式';
comment on column DM_INDEX_VARIABLE.details_impl
  is '指标详情具体实现方式（类名@方法名）';
comment on column DM_INDEX_VARIABLE.calculate_type
  is '是否单日计算 1是0否';
comment on column DM_INDEX_VARIABLE.level_type
  is '指标所属层级 1代表分组（市区、高速等）；2代表范围（大队、中队、等）；3代表业务（行政、业务、一线民警等）';
comment on column DM_INDEX_VARIABLE.delete_flag
  is '删除标识 1是0否';
comment on column DM_INDEX_VARIABLE.index_mark
  is '指标唯一标识，用于前后端形成指标关联关系，规则是unicode编码(去掉\u)';
alter table DM_INDEX_VARIABLE
  add constraint PK_DM_INDEX_VARIABLE_ID primary key (ID)
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
prompt Creating table DM_INFO_RECORD
prompt =============================
prompt
create table DM_INFO_RECORD
(
  id           VARCHAR2(32) not null,
  police_uuid  VARCHAR2(32),
  deploy_id    VARCHAR2(32),
  rebuild_date DATE,
  is_handler   VARCHAR2(2),
  type         VARCHAR2(2),
  recordtime   DATE
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
comment on table DM_INFO_RECORD
  is '信息记录表';
comment on column DM_INFO_RECORD.id
  is '主键';
comment on column DM_INFO_RECORD.police_uuid
  is '警员UUID';
comment on column DM_INFO_RECORD.deploy_id
  is '排班主键';
comment on column DM_INFO_RECORD.rebuild_date
  is 'GPS重建日期';
comment on column DM_INFO_RECORD.is_handler
  is '是否已处理 1是；0否';
comment on column DM_INFO_RECORD.type
  is '数据类型(根据业务自行定义) 1 GPS重建信息记录';
comment on column DM_INFO_RECORD.recordtime
  is '数据记录时间';
alter table DM_INFO_RECORD
  add constraint PK_INFO_ID primary key (ID)
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
prompt Creating table DM_INTERSECTION
prompt ==============================
prompt
create table DM_INTERSECTION
(
  id                VARCHAR2(32) not null,
  position_id       VARCHAR2(32),
  intersection_code VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DM_INTERSECTION
  is '路口岗位信息表';
comment on column DM_INTERSECTION.id
  is '主键';
comment on column DM_INTERSECTION.position_id
  is '岗位信息表主键';
comment on column DM_INTERSECTION.intersection_code
  is '路口代码';
alter table DM_INTERSECTION
  add constraint PK_DM_INTERSECTION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DM_LEAVE
prompt =======================
prompt
create table DM_LEAVE
(
  id              VARCHAR2(32) not null,
  police_uuid     VARCHAR2(32),
  police_id       VARCHAR2(10),
  begin_date      DATE,
  end_date        DATE,
  input_person    VARCHAR2(20),
  input_time      DATE,
  auditor         VARCHAR2(20),
  audite_time     DATE,
  status          VARCHAR2(2),
  instruction     VARCHAR2(300),
  type            VARCHAR2(2),
  del_flag        VARCHAR2(2),
  resumption_date DATE,
  absent_days     VARCHAR2(4)
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
comment on table DM_LEAVE
  is '警力请销假表';
comment on column DM_LEAVE.id
  is '主键';
comment on column DM_LEAVE.police_uuid
  is '警员主键';
comment on column DM_LEAVE.police_id
  is '警员ID';
comment on column DM_LEAVE.begin_date
  is '请假开始日期';
comment on column DM_LEAVE.end_date
  is '请假结束日期';
comment on column DM_LEAVE.input_person
  is '录入人';
comment on column DM_LEAVE.input_time
  is '录入时间';
comment on column DM_LEAVE.auditor
  is '审核人';
comment on column DM_LEAVE.audite_time
  is '审核时间';
comment on column DM_LEAVE.status
  is '审核状态 0待提交；1待审核；2审核通过；3审核驳回；4已销假';
comment on column DM_LEAVE.instruction
  is '请假说明';
comment on column DM_LEAVE.type
  is '请假类型 枚举DUTY_LEAVE_TYPE';
comment on column DM_LEAVE.del_flag
  is '删除标识 0否；1已删除';
alter table DM_LEAVE
  add constraint PK_DM_LEAVE primary key (ID)
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
prompt Creating table DM_MONITOR
prompt =========================
prompt
create table DM_MONITOR
(
  id                VARCHAR2(32) default sys_guid() not null,
  deploy_id         VARCHAR2(32),
  monitor_person_id VARCHAR2(10),
  monitor_time      DATE,
  ip                VARCHAR2(100),
  police_uuid       VARCHAR2(32),
  status            VARCHAR2(10)
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
comment on table DM_MONITOR
  is '综合监控表';
comment on column DM_MONITOR.id
  is '数据主键';
comment on column DM_MONITOR.deploy_id
  is '岗位部署(DM_DEPLOY数据主键)id';
comment on column DM_MONITOR.monitor_person_id
  is '监督人id';
comment on column DM_MONITOR.monitor_time
  is '监督时间';
comment on column DM_MONITOR.ip
  is '监督人ip';
comment on column DM_MONITOR.police_uuid
  is '警员Police数据主键';
comment on column DM_MONITOR.status
  is ' 3脱岗 4离线 5旷工 与DM_COMPREHENSIVE_MONITOR表一致';
create index DM_MONIOTR_DEPLOY_PK on DM_MONITOR (DEPLOY_ID, POLICE_UUID)
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
alter table DM_MONITOR
  add constraint DM_MONIOTR_PK primary key (ID)
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
prompt Creating table DM_PARAM_DEFINE
prompt ==============================
prompt
create table DM_PARAM_DEFINE
(
  id                VARCHAR2(32) default sys_guid() not null,
  param_define_code VARCHAR2(100),
  param_value       VARCHAR2(100),
  description       VARCHAR2(300)
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
comment on table DM_PARAM_DEFINE
  is '参数管理定义表';
comment on column DM_PARAM_DEFINE.id
  is '主键';
comment on column DM_PARAM_DEFINE.param_define_code
  is '参数定义代码';
comment on column DM_PARAM_DEFINE.param_value
  is '参数值';
comment on column DM_PARAM_DEFINE.description
  is '描述';
alter table DM_PARAM_DEFINE
  add constraint PK_DM_PARAM_DEFINE primary key (ID)
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
prompt Creating table DM_PARAM_VALUE
prompt =============================
prompt
create table DM_PARAM_VALUE
(
  id              VARCHAR2(32) default sys_guid() not null,
  param_define_id VARCHAR2(100),
  param_type_code VARCHAR2(100),
  param_value     VARCHAR2(100),
  description     VARCHAR2(500)
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
comment on table DM_PARAM_VALUE
  is '参数管理设置表';
comment on column DM_PARAM_VALUE.id
  is '主键';
comment on column DM_PARAM_VALUE.param_define_id
  is '参数定义主键';
comment on column DM_PARAM_VALUE.param_type_code
  is '参数定义码';
comment on column DM_PARAM_VALUE.param_value
  is '参数值';
comment on column DM_PARAM_VALUE.description
  is '描述';
alter table DM_PARAM_VALUE
  add constraint PK_DM_PARAM_VALUE primary key (ID)
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
prompt Creating table DM_POLICE_ASSIGN
prompt ===============================
prompt
create table DM_POLICE_ASSIGN
(
  id              VARCHAR2(32) not null,
  from_big_deptid VARCHAR2(12),
  to_big_deptid   VARCHAR2(12),
  police_uuid     VARCHAR2(32),
  police_id       VARCHAR2(10),
  begin_date      DATE,
  end_date        DATE,
  creator         VARCHAR2(10),
  create_time     DATE,
  updater         VARCHAR2(10),
  update_time     DATE,
  del_flag        VARCHAR2(2) default 0,
  from_mid_deptid VARCHAR2(12),
  to_mid_deptid   VARCHAR2(12)
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
comment on table DM_POLICE_ASSIGN
  is '警力派发';
comment on column DM_POLICE_ASSIGN.id
  is '主键';
comment on column DM_POLICE_ASSIGN.from_big_deptid
  is '所属部门 大队';
comment on column DM_POLICE_ASSIGN.to_big_deptid
  is '派发至部门 大队';
comment on column DM_POLICE_ASSIGN.police_uuid
  is '警员表主键';
comment on column DM_POLICE_ASSIGN.police_id
  is '警员ID';
comment on column DM_POLICE_ASSIGN.begin_date
  is '派发开始日期';
comment on column DM_POLICE_ASSIGN.end_date
  is '派发结束日期';
comment on column DM_POLICE_ASSIGN.creator
  is '创建人';
comment on column DM_POLICE_ASSIGN.create_time
  is '创建时间';
comment on column DM_POLICE_ASSIGN.updater
  is '更新人';
comment on column DM_POLICE_ASSIGN.update_time
  is '更新时间';
comment on column DM_POLICE_ASSIGN.del_flag
  is '删除标识 0未删除；1删除';
comment on column DM_POLICE_ASSIGN.from_mid_deptid
  is '所属部门 中队';
comment on column DM_POLICE_ASSIGN.to_mid_deptid
  is '派发至部门 中队';
alter table DM_POLICE_ASSIGN
  add constraint PK_PRI_ID primary key (ID)
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
prompt Creating table DM_POLICE_CAR_MANAGE
prompt ===================================
prompt
create table DM_POLICE_CAR_MANAGE
(
  id             VARCHAR2(32) default sys_guid() not null,
  big_deptid     VARCHAR2(12),
  deptid         VARCHAR2(12),
  car_num        VARCHAR2(15),
  car_brand      VARCHAR2(50),
  car_type       VARCHAR2(2),
  car_model      VARCHAR2(3),
  zhi_deptid     VARCHAR2(12),
  car_person_num VARCHAR2(3) default 0
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
comment on table DM_POLICE_CAR_MANAGE
  is '警员车辆管理表';
comment on column DM_POLICE_CAR_MANAGE.id
  is '主键';
comment on column DM_POLICE_CAR_MANAGE.big_deptid
  is '大队部门';
comment on column DM_POLICE_CAR_MANAGE.deptid
  is '中队部门';
comment on column DM_POLICE_CAR_MANAGE.car_num
  is '车牌号';
comment on column DM_POLICE_CAR_MANAGE.car_brand
  is '品牌 枚举 DUTY_CAR_BRAND';
comment on column DM_POLICE_CAR_MANAGE.car_type
  is '车辆分类 枚举 DUTY_CAR_TYPE';
comment on column DM_POLICE_CAR_MANAGE.car_model
  is '车辆类型 枚举 DUTY_CAR_MODEL';
comment on column DM_POLICE_CAR_MANAGE.car_person_num
  is '车辆最大荷载量';
alter table DM_POLICE_CAR_MANAGE
  add constraint PK_DM_POLICE_CAR_MANAGE primary key (ID)
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
prompt Creating table DM_POLICE_CASE
prompt =============================
prompt
create table DM_POLICE_CASE
(
  id                 VARCHAR2(32) default sys_guid() not null,
  receive_police     VARCHAR2(32),
  handler_police     VARCHAR2(32),
  out_police         VARCHAR2(32),
  accident_time      DATE,
  receive_time       DATE,
  handler_time       DATE,
  out_time           DATE,
  arrive_time        DATE,
  finish_time        DATE,
  duration           VARCHAR2(5),
  case_type          VARCHAR2(2),
  case_level         VARCHAR2(2),
  case_status        VARCHAR2(2),
  case_address       VARCHAR2(300),
  injured_num        VARCHAR2(3),
  death_num          VARCHAR2(3),
  remark             NVARCHAR2(500),
  accident_car_one   VARCHAR2(20),
  accident_car_two   VARCHAR2(20),
  accident_car_three VARCHAR2(20),
  accident_car_four  VARCHAR2(20),
  accident_car_five  VARCHAR2(20),
  case_name          VARCHAR2(100),
  address_desc       NVARCHAR2(500),
  district_id        VARCHAR2(12),
  case_id            VARCHAR2(40)
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
comment on table DM_POLICE_CASE
  is '警情考核接入表';
comment on column DM_POLICE_CASE.id
  is '主键';
comment on column DM_POLICE_CASE.receive_police
  is '接警人UUID';
comment on column DM_POLICE_CASE.handler_police
  is '处警人UUID';
comment on column DM_POLICE_CASE.out_police
  is '出警人UUID';
comment on column DM_POLICE_CASE.accident_time
  is '事故发生时间';
comment on column DM_POLICE_CASE.receive_time
  is '接警时间';
comment on column DM_POLICE_CASE.handler_time
  is '处警时间';
comment on column DM_POLICE_CASE.out_time
  is '出警时间';
comment on column DM_POLICE_CASE.arrive_time
  is '到现场时间';
comment on column DM_POLICE_CASE.finish_time
  is '处置完成时间';
comment on column DM_POLICE_CASE.duration
  is '处置时长';
comment on column DM_POLICE_CASE.case_type
  is '警情类型（01交通拥堵、03交通事故）枚举1110';
comment on column DM_POLICE_CASE.case_level
  is '交通事故等级';
comment on column DM_POLICE_CASE.case_status
  is '当前警情处置状态（1未处理、5处理中、7处理完成）枚举15003';
comment on column DM_POLICE_CASE.case_address
  is '警情发生地';
comment on column DM_POLICE_CASE.injured_num
  is '受伤人数';
comment on column DM_POLICE_CASE.death_num
  is '死亡人数';
comment on column DM_POLICE_CASE.remark
  is '警情描述';
comment on column DM_POLICE_CASE.accident_car_one
  is '肇事车辆1';
comment on column DM_POLICE_CASE.accident_car_two
  is '肇事车辆2';
comment on column DM_POLICE_CASE.accident_car_three
  is '肇事车辆3（备用）';
comment on column DM_POLICE_CASE.accident_car_four
  is '肇事车辆4（备用）';
comment on column DM_POLICE_CASE.accident_car_five
  is '肇事车辆5（备用）';
comment on column DM_POLICE_CASE.case_name
  is '警情事故名称';
comment on column DM_POLICE_CASE.address_desc
  is '事故地点描述';
comment on column DM_POLICE_CASE.district_id
  is '所属大队辖区';
comment on column DM_POLICE_CASE.case_id
  is '警情ID';
alter table DM_POLICE_CASE
  add constraint PK_DM_POLICE_CASE primary key (ID)
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
prompt Creating table DM_POLICE_CASE_SYN
prompt =================================
prompt
create table DM_POLICE_CASE_SYN
(
  id          VARCHAR2(32) default sys_guid() not null,
  case_id     VARCHAR2(40) not null,
  police_uuid VARCHAR2(32) not null,
  status      VARCHAR2(4),
  record_time DATE
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
comment on table DM_POLICE_CASE_SYN
  is '实时警情接入表';
comment on column DM_POLICE_CASE_SYN.id
  is '主键';
comment on column DM_POLICE_CASE_SYN.case_id
  is '警情表主键';
comment on column DM_POLICE_CASE_SYN.police_uuid
  is '出警人UUID';
comment on column DM_POLICE_CASE_SYN.status
  is '警情处理状态（枚举15005，1已签收，2已到现场；7已办结）';
comment on column DM_POLICE_CASE_SYN.record_time
  is '时间';
alter table DM_POLICE_CASE_SYN
  add constraint DM_POLICE_CASE_SYN_ID primary key (ID)
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
prompt Creating table DM_POSITION
prompt ==========================
prompt
create table DM_POSITION
(
  id                   VARCHAR2(32) default sys_guid() not null,
  position_common_id   VARCHAR2(32),
  zhi_deptid           VARCHAR2(12),
  deptid               VARCHAR2(12),
  middeptid            VARCHAR2(12),
  position_name        VARCHAR2(150),
  position_charactor   VARCHAR2(2),
  position_type        VARCHAR2(2),
  position_level       VARCHAR2(2),
  position_audit_level VARCHAR2(2) default 3,
  coordinate           CLOB,
  duty_type            VARCHAR2(20),
  creator              VARCHAR2(10),
  create_time          DATE default sysdate,
  updater              VARCHAR2(10),
  update_time          DATE,
  maxdutytime          VARCHAR2(10) default 1440,
  mindutytime          VARCHAR2(10) default 0,
  service_type         VARCHAR2(2),
  dressing_type        VARCHAR2(10),
  equipment_type       VARCHAR2(10),
  del_flag             VARCHAR2(2) default 0
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
comment on table DM_POSITION
  is '岗位信息管理表';
comment on column DM_POSITION.id
  is '主键';
comment on column DM_POSITION.position_common_id
  is '岗位统一标识位';
comment on column DM_POSITION.zhi_deptid
  is '支队部门ID';
comment on column DM_POSITION.deptid
  is '大队部门ID';
comment on column DM_POSITION.middeptid
  is '中队部门ID';
comment on column DM_POSITION.position_name
  is '岗位名称';
comment on column DM_POSITION.position_charactor
  is '岗位特征 枚举 DUTY_POSITION_CHARACTER';
comment on column DM_POSITION.position_type
  is '岗位类型 枚举 DUTY_POSITION_TYPE';
comment on column DM_POSITION.position_level
  is '岗位级别 枚举 DUTY_POSITION_LEVEL';
comment on column DM_POSITION.position_audit_level
  is '审核级别 枚举DUTY_AUDIT_PASS_LEVEL';
comment on column DM_POSITION.coordinate
  is '坐标';
comment on column DM_POSITION.duty_type
  is '执勤方式';
comment on column DM_POSITION.creator
  is '创建人';
comment on column DM_POSITION.create_time
  is '创建时间';
comment on column DM_POSITION.updater
  is '更新人';
comment on column DM_POSITION.update_time
  is '更新时间';
comment on column DM_POSITION.maxdutytime
  is '岗位最大执勤时长限制(单位:分钟)';
comment on column DM_POSITION.mindutytime
  is '岗位最小执勤时长限制(单位:分钟)';
comment on column DM_POSITION.service_type
  is '勤务类型';
comment on column DM_POSITION.dressing_type
  is '武装着装';
comment on column DM_POSITION.equipment_type
  is '装备报备';
comment on column DM_POSITION.del_flag
  is '删除标识 0未删除；1删除';
create index PK_DM_POSITION_DEL on DM_POSITION (DEL_FLAG)
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
alter table DM_POSITION
  add constraint PK_DM_POSITION primary key (ID)
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
prompt Creating table DM_POSITION_CAR
prompt ==============================
prompt
create table DM_POSITION_CAR
(
  id          VARCHAR2(32) default sys_guid() not null,
  relation_id VARCHAR2(32),
  postcar_id  VARCHAR2(32)
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
comment on table DM_POSITION_CAR
  is '岗位信息关联车辆表';
comment on column DM_POSITION_CAR.id
  is '数据主键';
comment on column DM_POSITION_CAR.relation_id
  is '岗位信息主键dm_position';
comment on column DM_POSITION_CAR.postcar_id
  is '岗位车辆管理数据主键dm_police_car_manage';
alter table DM_POSITION_CAR
  add constraint DM_POST_CAR_PK primary key (ID)
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
prompt Creating table DM_POSITION_PERSON
prompt =================================
prompt
create table DM_POSITION_PERSON
(
  id             VARCHAR2(32) default sys_guid() not null,
  relation_id    VARCHAR2(32),
  personnel_type VARCHAR2(2),
  personnel_num  INTEGER
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
comment on table DM_POSITION_PERSON
  is '岗位人员数目配置管理表';
comment on column DM_POSITION_PERSON.id
  is '主键';
comment on column DM_POSITION_PERSON.relation_id
  is '岗位信息主键';
comment on column DM_POSITION_PERSON.personnel_type
  is '人员类型';
comment on column DM_POSITION_PERSON.personnel_num
  is '人员数目';
alter table DM_POSITION_PERSON
  add constraint PK_DM_POSITION_PERSON primary key (ID)
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
prompt Creating table DM_POSITION_RESPONSIBLE
prompt ======================================
prompt
create table DM_POSITION_RESPONSIBLE
(
  id          VARCHAR2(32) default sys_guid() not null,
  relation_id VARCHAR2(32),
  police_id   VARCHAR2(32)
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
comment on table DM_POSITION_RESPONSIBLE
  is '岗位负责人管理表';
comment on column DM_POSITION_RESPONSIBLE.id
  is '主键';
comment on column DM_POSITION_RESPONSIBLE.relation_id
  is '岗位信息主键';
comment on column DM_POSITION_RESPONSIBLE.police_id
  is '警员ID';
alter table DM_POSITION_RESPONSIBLE
  add constraint PK_DM_POSITION_RESPONSIBLE primary key (ID)
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
prompt Creating table DM_PUSH_RECORD
prompt =============================
prompt
create table DM_PUSH_RECORD
(
  id               VARCHAR2(32) not null,
  push_police_uuid VARCHAR2(8),
  push_type        VARCHAR2(2),
  business_type    VARCHAR2(2),
  push_time        DATE
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
comment on table DM_PUSH_RECORD
  is '勤务消息推送记录表';
comment on column DM_PUSH_RECORD.id
  is '主键';
comment on column DM_PUSH_RECORD.push_police_uuid
  is '推送对象';
comment on column DM_PUSH_RECORD.push_type
  is '推送方式 0 MQ；1 警务通；2 手机短信';
comment on column DM_PUSH_RECORD.business_type
  is '业务类型（根据业务类型自行添加） 1执勤小结';
comment on column DM_PUSH_RECORD.push_time
  is '推送时间';
alter table DM_PUSH_RECORD
  add constraint PK_PUSH_ID primary key (ID)
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
prompt Creating table DM_REMIND_MANAGE
prompt ===============================
prompt
create table DM_REMIND_MANAGE
(
  id          VARCHAR2(32) not null,
  remind_type VARCHAR2(2),
  police_uuid VARCHAR2(32),
  qeuip_type  VARCHAR2(10),
  remark      VARCHAR2(200)
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
comment on table DM_REMIND_MANAGE
  is '勤务消息通知设置';
comment on column DM_REMIND_MANAGE.id
  is '主键';
comment on column DM_REMIND_MANAGE.remind_type
  is '业务通知类型，枚举DUTY_PUSH_BUSINESS_TYPE';
comment on column DM_REMIND_MANAGE.police_uuid
  is '警员ID';
comment on column DM_REMIND_MANAGE.qeuip_type
  is '通知设备类型，枚举DUTY_PUSH_EQUIP_TYPE';
comment on column DM_REMIND_MANAGE.remark
  is '备注说明';
alter table DM_REMIND_MANAGE
  add constraint PK_DM_REMIND_MANAGE primary key (ID)
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
prompt Creating table DM_ROAD
prompt ======================
prompt
create table DM_ROAD
(
  id          VARCHAR2(32) not null,
  position_id VARCHAR2(32),
  road_code   VARCHAR2(32),
  road_length VARCHAR2(5) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DM_ROAD
  is '路段岗位信息表';
comment on column DM_ROAD.id
  is '主键';
comment on column DM_ROAD.position_id
  is '岗位信息主键';
comment on column DM_ROAD.road_code
  is '路段代码';
comment on column DM_ROAD.road_length
  is '路段长度';
alter table DM_ROAD
  add constraint PK_DM_ROAD primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DM_SD_GRID
prompt =========================
prompt
create table DM_SD_GRID
(
  id          VARCHAR2(32) not null,
  deptid      VARCHAR2(20),
  coordinate  CLOB,
  create_time DATE,
  interval    VARCHAR2(100),
  geometry    MDSYS.SDO_GEOMETRY
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
comment on table DM_SD_GRID
  is '辖区网格化信息';
comment on column DM_SD_GRID.id
  is '数据主键id';
comment on column DM_SD_GRID.deptid
  is '部门id';
comment on column DM_SD_GRID.coordinate
  is '网格坐标';
comment on column DM_SD_GRID.create_time
  is '创建时间';
comment on column DM_SD_GRID.interval
  is '网格间隔米数';
create index PK_SD_GRID_INTERVAL on DM_SD_GRID (INTERVAL)
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
alter table DM_SD_GRID
  add constraint PK_SD_GRID primary key (ID)
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
prompt Creating table DM_SD_POLICECASE_RELATION
prompt ========================================
prompt
create table DM_SD_POLICECASE_RELATION
(
  grid_id       VARCHAR2(32) not null,
  case_id       VARCHAR2(32) not null,
  analysis_date VARCHAR2(20)
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
comment on table DM_SD_POLICECASE_RELATION
  is '科学布岗问题区域警情关联关系';
comment on column DM_SD_POLICECASE_RELATION.grid_id
  is '科学布岗网格数据主键';
comment on column DM_SD_POLICECASE_RELATION.case_id
  is '警情数据主键';
comment on column DM_SD_POLICECASE_RELATION.analysis_date
  is '分析时间';

prompt
prompt Creating table DM_STRATEGY
prompt ==========================
prompt
create table DM_STRATEGY
(
  id            VARCHAR2(32) not null,
  strategy_name NVARCHAR2(50),
  strategy_desc NVARCHAR2(255),
  strategy_flag VARCHAR2(50)
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
comment on table DM_STRATEGY
  is '规则配置表';
comment on column DM_STRATEGY.id
  is '规则唯一标识';
comment on column DM_STRATEGY.strategy_name
  is '规则名称';
comment on column DM_STRATEGY.strategy_desc
  is '规则实现类描述';
comment on column DM_STRATEGY.strategy_flag
  is '策略唯一标识，采用规则中文名的unicode编码（去掉\u）';
alter table DM_STRATEGY
  add constraint PK_DM_STRATEGY_ID primary key (ID)
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
prompt Creating table DM_SYS_DUTY
prompt ==========================
prompt
create table DM_SYS_DUTY
(
  id                VARCHAR2(32) not null,
  position_id       VARCHAR2(32),
  sys_resource_code VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DM_SYS_DUTY
  is '系统值守岗信息';
comment on column DM_SYS_DUTY.id
  is '主键';
comment on column DM_SYS_DUTY.position_id
  is '岗位信息主键';
comment on column DM_SYS_DUTY.sys_resource_code
  is '系统资源点位代码';
alter table DM_SYS_DUTY
  add constraint PK_DM_SYS_DUTY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DM_TOOL
prompt ======================
prompt
create table DM_TOOL
(
  id          VARCHAR2(32) default sys_guid() not null,
  relation_id VARCHAR2(32),
  tool_mode   VARCHAR2(2),
  tool_type   VARCHAR2(2)
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
comment on table DM_TOOL
  is '装备报备信息';
comment on column DM_TOOL.id
  is '主键';
comment on column DM_TOOL.relation_id
  is '岗位信息主键';
comment on column DM_TOOL.tool_mode
  is '其他装备方式 1装备报备 2 武装着装';
comment on column DM_TOOL.tool_type
  is '装备种类（枪支、弹药、武装、非武装，制服、便衣等）';
alter table DM_TOOL
  add constraint PK_DM_TOOL primary key (ID)
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
prompt Creating table DTPMS_EXPERTSYSTEM_UTCACTIONS
prompt ============================================
prompt
create table DTPMS_EXPERTSYSTEM_UTCACTIONS
(
  id        VARCHAR2(32) not null,
  location  VARCHAR2(8),
  direction VARCHAR2(8),
  color     VARCHAR2(8),
  actions   VARCHAR2(8),
  seconds   VARCHAR2(8),
  actionid  VARCHAR2(32) not null,
  periods   VARCHAR2(8)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table DTPMS_EXPERTSYSTEM_UTCACTIONS
  add constraint UTCACTIONS_PRIMARY_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DTPMS_POLICE_CASE
prompt ================================
prompt
create table DTPMS_POLICE_CASE
(
  id                VARCHAR2(32) not null,
  case_time         DATE,
  source            VARCHAR2(8),
  child_source      VARCHAR2(8),
  report_user       VARCHAR2(32),
  report_dept       VARCHAR2(32),
  report_phone      VARCHAR2(32),
  case_name         VARCHAR2(2100),
  case_type         VARCHAR2(8),
  case_child_type   VARCHAR2(8),
  nlevel            VARCHAR2(8),
  department        VARCHAR2(32),
  case_place        VARCHAR2(200),
  case_point        VARCHAR2(32),
  case_desc         VARCHAR2(4000),
  traffic_desc      VARCHAR2(2000),
  case_status       VARCHAR2(4),
  flow_status       VARCHAR2(4),
  remark            VARCHAR2(2000),
  injured_people    NUMBER,
  die_people        NUMBER,
  leader_type       VARCHAR2(8),
  schedule          VARCHAR2(4),
  schedule_user     VARCHAR2(32),
  create_user       VARCHAR2(32),
  create_time       DATE,
  update_user       VARCHAR2(32),
  update_time       DATE,
  police_status     VARCHAR2(4),
  police_direct     VARCHAR2(1),
  congestion_cause  VARCHAR2(1000),
  case_identityid   VARCHAR2(100) default '',
  geometry          MDSYS.SDO_GEOMETRY,
  sectionid         NVARCHAR2(8),
  case_child_status VARCHAR2(4),
  picurls           NVARCHAR2(2000)
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
comment on table DTPMS_POLICE_CASE
  is '警情信息表-5.0';
comment on column DTPMS_POLICE_CASE.id
  is 'UUID';
comment on column DTPMS_POLICE_CASE.case_time
  is '报警时间';
comment on column DTPMS_POLICE_CASE.source
  is '警情一级来源 枚举1400';
comment on column DTPMS_POLICE_CASE.child_source
  is '警情二级来源 枚举';
comment on column DTPMS_POLICE_CASE.report_user
  is '报警人 内部使用userid';
comment on column DTPMS_POLICE_CASE.report_dept
  is '报警人所属部门 内部部门id，非内部为空';
comment on column DTPMS_POLICE_CASE.report_phone
  is '联系电话';
comment on column DTPMS_POLICE_CASE.case_name
  is '警情名称';
comment on column DTPMS_POLICE_CASE.case_type
  is '警情一级类别 枚举1420';
comment on column DTPMS_POLICE_CASE.case_child_type
  is '警情二级类别 枚举';
comment on column DTPMS_POLICE_CASE.nlevel
  is '警情级别 枚举1440';
comment on column DTPMS_POLICE_CASE.department
  is '所属单位 部门ID';
comment on column DTPMS_POLICE_CASE.case_place
  is '警情发生地点';
comment on column DTPMS_POLICE_CASE.case_point
  is '坐标定位';
comment on column DTPMS_POLICE_CASE.case_desc
  is '警情描述';
comment on column DTPMS_POLICE_CASE.traffic_desc
  is '影响交通描述';
comment on column DTPMS_POLICE_CASE.case_status
  is '处理状态 0未处理、1处理中、2处理完毕';
comment on column DTPMS_POLICE_CASE.flow_status
  is '下发状态 0待下发、1待签收、2退回、3已签收';
comment on column DTPMS_POLICE_CASE.remark
  is '备注';
comment on column DTPMS_POLICE_CASE.injured_people
  is '受伤人数';
comment on column DTPMS_POLICE_CASE.die_people
  is '死亡人数';
comment on column DTPMS_POLICE_CASE.leader_type
  is '领导交办指示类型';
comment on column DTPMS_POLICE_CASE.schedule
  is '调度状态  0为调度1调度中';
comment on column DTPMS_POLICE_CASE.schedule_user
  is '调度人';
comment on column DTPMS_POLICE_CASE.create_user
  is '创建用户';
comment on column DTPMS_POLICE_CASE.create_time
  is '创建时间';
comment on column DTPMS_POLICE_CASE.update_user
  is '最后更新用户';
comment on column DTPMS_POLICE_CASE.update_time
  is '最后更新时间';
comment on column DTPMS_POLICE_CASE.police_status
  is '派警状态  0未派警1已派警';
comment on column DTPMS_POLICE_CASE.sectionid
  is '警情所在路段编号，对应路段表sectionid';
comment on column DTPMS_POLICE_CASE.picurls
  is '警情图片路径，多个逗号分隔';
alter table DTPMS_POLICE_CASE
  add constraint PK_DPC primary key (ID)
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
prompt Creating table DVS_CARNUM_ONWAY
prompt ===============================
prompt
create table DVS_CARNUM_ONWAY
(
  allcarnum     NUMBER(10),
  foreigncarnum NUMBER(10),
  servicecarnum NUMBER(10),
  computedate   DATE,
  insertdate    DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DVS_CARNUM_ONWAY.allcarnum
  is '在途车辆数';
comment on column DVS_CARNUM_ONWAY.foreigncarnum
  is '外地车数';
comment on column DVS_CARNUM_ONWAY.servicecarnum
  is '出租车数';
comment on column DVS_CARNUM_ONWAY.computedate
  is '计算时间';
comment on column DVS_CARNUM_ONWAY.insertdate
  is '入库时间';

prompt
prompt Creating table DVS_GS_CARNUM_ONWAY
prompt ==================================
prompt
create table DVS_GS_CARNUM_ONWAY
(
  allcarnum     NUMBER(10),
  foreigncarnum NUMBER(10),
  bigcarnum     NUMBER(10),
  computedate   DATE,
  insertdate    DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DVS_GS_CARNUM_ONWAY.allcarnum
  is '在途车辆数';
comment on column DVS_GS_CARNUM_ONWAY.foreigncarnum
  is '外地车数';
comment on column DVS_GS_CARNUM_ONWAY.bigcarnum
  is '大型车数';
comment on column DVS_GS_CARNUM_ONWAY.computedate
  is '计算时间';
comment on column DVS_GS_CARNUM_ONWAY.insertdate
  is '入库时间';

prompt
prompt Creating table DVS_INDEX_CONFIG
prompt ===============================
prompt
create table DVS_INDEX_CONFIG
(
  element_id     VARCHAR2(32) not null,
  element_name   VARCHAR2(100),
  element_type   VARCHAR2(1) not null,
  element_config VARCHAR2(4000) not null,
  update_time    DATE,
  carousel       VARCHAR2(2),
  element_model  VARCHAR2(20),
  element_owner  VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DVS_INDEX_CONFIG.element_id
  is '元素唯一编号';
comment on column DVS_INDEX_CONFIG.element_name
  is '元素名称';
comment on column DVS_INDEX_CONFIG.element_type
  is '元素类型 1-排版元素，3-地图控制版元素';
comment on column DVS_INDEX_CONFIG.element_config
  is '元素页面配置json对象';
comment on column DVS_INDEX_CONFIG.update_time
  is '最新更新时间';
comment on column DVS_INDEX_CONFIG.carousel
  is '分屏序号，排版元素独有，从0开始';
comment on column DVS_INDEX_CONFIG.element_model
  is '元素属于的模式 0-市区模式 1-高速模式';
comment on column DVS_INDEX_CONFIG.element_owner
  is '元素拥有者ID';
alter table DVS_INDEX_CONFIG
  add constraint DVS_INDEX_CONFIG_ID primary key (ELEMENT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DVS_INOUTCITY_FLOW
prompt =================================
prompt
create table DVS_INOUTCITY_FLOW
(
  inoutflag      CHAR(1) not null,
  allcarnum      NUMBER(10) not null,
  foreigncarnum  NUMBER(10) not null,
  forbigcarnum   NUMBER(10) not null,
  forothercarnum NUMBER(10) not null,
  bigcarnum      NUMBER(10) not null,
  bigloccarnum   NUMBER(10) not null,
  bigforcarnum   NUMBER(10) not null,
  computedate    DATE not null,
  insertdate     DATE default sysdate not null
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
comment on table DVS_INOUTCITY_FLOW
  is '市区可视化看板进出城车流';
comment on column DVS_INOUTCITY_FLOW.inoutflag
  is '进出城标志，0-进城，1-出城';
comment on column DVS_INOUTCITY_FLOW.allcarnum
  is '车辆总数';
comment on column DVS_INOUTCITY_FLOW.foreigncarnum
  is '外地车总数';
comment on column DVS_INOUTCITY_FLOW.forbigcarnum
  is '外地车中的大型车总数';
comment on column DVS_INOUTCITY_FLOW.forothercarnum
  is '外地车中的其他车型总数';
comment on column DVS_INOUTCITY_FLOW.bigcarnum
  is '大型车总数';
comment on column DVS_INOUTCITY_FLOW.bigloccarnum
  is '大型车中的本地车总数';
comment on column DVS_INOUTCITY_FLOW.bigforcarnum
  is '大型车中的外地车总数';
comment on column DVS_INOUTCITY_FLOW.computedate
  is '计算时间';
comment on column DVS_INOUTCITY_FLOW.insertdate
  is '入库时间';

prompt
prompt Creating table DVS_INOUTGS_FLOW
prompt ===============================
prompt
create table DVS_INOUTGS_FLOW
(
  innum       NUMBER(10),
  outnum      NUMBER(10),
  computedate DATE,
  insertdate  DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table DVS_INOUTGS_FLOW
  is '进出高速流量统计表';
comment on column DVS_INOUTGS_FLOW.innum
  is '进高速流量';
comment on column DVS_INOUTGS_FLOW.outnum
  is '出高速流量';
comment on column DVS_INOUTGS_FLOW.computedate
  is '计算时间';
comment on column DVS_INOUTGS_FLOW.insertdate
  is '入库时间';
create index IDX_COMPUTEDATE on DVS_INOUTGS_FLOW (COMPUTEDATE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table DVS_MAP
prompt ======================
prompt
create table DVS_MAP
(
  id   NVARCHAR2(50),
  name NVARCHAR2(50),
  flag VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DVS_MAP.id
  is '地图开关id';
comment on column DVS_MAP.name
  is '地图开关名称';
comment on column DVS_MAP.flag
  is '0--市区 1--高速';

prompt
prompt Creating table DVS_THEME
prompt ========================
prompt
create table DVS_THEME
(
  themeid     NVARCHAR2(50) not null,
  title       NVARCHAR2(100) not null,
  height      NUMBER not null,
  flag        VARCHAR2(1) not null,
  implication NVARCHAR2(500),
  district    VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column DVS_THEME.themeid
  is '主题ID';
comment on column DVS_THEME.title
  is '主题名称';
comment on column DVS_THEME.height
  is '主题页面高度';
comment on column DVS_THEME.flag
  is '展示主题  0-半宽 1-全宽';
comment on column DVS_THEME.implication
  is '主题含义';
comment on column DVS_THEME.district
  is '区域标识 0-市区 1-高速 无-同时适用';
alter table DVS_THEME
  add constraint THEMEID primary key (THEMEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EMERGENCY_RESOURCES_MANAGE
prompt =========================================
prompt
create table EMERGENCY_RESOURCES_MANAGE
(
  id                VARCHAR2(32) not null,
  department_name   NVARCHAR2(100),
  resource_type     VARCHAR2(2),
  department_level  VARCHAR2(2),
  linkman           NVARCHAR2(40),
  telephone         VARCHAR2(13),
  address           NVARCHAR2(200),
  equip_status      NVARCHAR2(1000),
  longandlatitude   VARCHAR2(50),
  createuserid      VARCHAR2(32),
  createdate        DATE,
  edituserid        VARCHAR2(6),
  editdate          DATE,
  create_department VARCHAR2(12)
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
comment on column EMERGENCY_RESOURCES_MANAGE.id
  is '编号';
comment on column EMERGENCY_RESOURCES_MANAGE.department_name
  is '单位名称';
comment on column EMERGENCY_RESOURCES_MANAGE.resource_type
  is '单位分类(枚举1320)';
comment on column EMERGENCY_RESOURCES_MANAGE.department_level
  is '单位级别(枚举1321）';
comment on column EMERGENCY_RESOURCES_MANAGE.linkman
  is '联系人';
comment on column EMERGENCY_RESOURCES_MANAGE.telephone
  is '联系电话';
comment on column EMERGENCY_RESOURCES_MANAGE.address
  is '单位地址';
comment on column EMERGENCY_RESOURCES_MANAGE.equip_status
  is '装备情况';
comment on column EMERGENCY_RESOURCES_MANAGE.longandlatitude
  is '经纬度';
comment on column EMERGENCY_RESOURCES_MANAGE.createuserid
  is '创建人';
comment on column EMERGENCY_RESOURCES_MANAGE.createdate
  is '创建时间';
comment on column EMERGENCY_RESOURCES_MANAGE.edituserid
  is '更新人';
comment on column EMERGENCY_RESOURCES_MANAGE.editdate
  is '更新时间';
comment on column EMERGENCY_RESOURCES_MANAGE.create_department
  is '创建部门';
alter table EMERGENCY_RESOURCES_MANAGE
  add constraint RESOURCES_MANAGE_ID_PK primary key (ID)
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
prompt Creating table ENUM_DEFINE
prompt ==========================
prompt
create table ENUM_DEFINE
(
  enumtypeid   INTEGER not null,
  enumname     NVARCHAR2(200),
  enumdescribe NVARCHAR2(500),
  doflag       CHAR(1)
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
comment on column ENUM_DEFINE.enumtypeid
  is '枚举类型号，>1的整数';
comment on column ENUM_DEFINE.enumname
  is '枚举名称';
comment on column ENUM_DEFINE.enumdescribe
  is '枚举描述';
comment on column ENUM_DEFINE.doflag
  is '标志位';
alter table ENUM_DEFINE
  add constraint ENUM_DEFINE_PK primary key (ENUMTYPEID)
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
prompt Creating table ENUM_TYPE
prompt ========================
prompt
create table ENUM_TYPE
(
  enumtypeid INTEGER not null,
  enumvalue  VARCHAR2(20) not null,
  enumname   NVARCHAR2(2000) not null,
  isdefault  INTEGER default 0,
  dispindex  INTEGER default 0,
  valid      INTEGER
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
comment on column ENUM_TYPE.enumtypeid
  is '枚举类型号，>1的整数';
comment on column ENUM_TYPE.enumvalue
  is '枚举成员常量，>=0的整数';
comment on column ENUM_TYPE.enumname
  is '枚举成员名称';
comment on column ENUM_TYPE.isdefault
  is '是否缺省值';
comment on column ENUM_TYPE.dispindex
  is '显示顺序';
alter table ENUM_TYPE
  add constraint ENUM_TYPE_PK primary key (ENUMTYPEID, ENUMVALUE)
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
prompt Creating table EQUIPMENT_INFO
prompt =============================
prompt
create table EQUIPMENT_INFO
(
  deviceid               NVARCHAR2(18) not null,
  devicecode             NVARCHAR2(8) not null,
  devicename             NVARCHAR2(64),
  devicetype             NVARCHAR2(2) not null,
  deviceip               NVARCHAR2(20),
  lanenum                NVARCHAR2(2),
  provider               NVARCHAR2(32),
  devicemodel            NVARCHAR2(32),
  providedate            DATE,
  departmentid           NVARCHAR2(12) not null,
  pointid                NVARCHAR2(16),
  matrixcode             NVARCHAR2(16),
  channelcode            NVARCHAR2(16),
  thirdsyscode           NVARCHAR2(22),
  remark                 NVARCHAR2(64),
  image                  BLOB,
  ctrlflag               NVARCHAR2(1),
  dvruser                NVARCHAR2(20),
  dvrpwd                 NVARCHAR2(50),
  dvrport                INTEGER,
  channelcount           INTEGER,
  illegaladdrid          NVARCHAR2(12),
  logicchannel           INTEGER,
  belongto               NVARCHAR2(18),
  spell                  NVARCHAR2(20),
  direction              NVARCHAR2(3),
  csnaptype              CHAR(1),
  playtype               CHAR(1),
  passfunc               NVARCHAR2(1),
  epfunc                 NVARCHAR2(1),
  osfunc                 NVARCHAR2(1),
  vediofunc              NVARCHAR2(1),
  gpsfunc                NVARCHAR2(1),
  inducefunc             NVARCHAR2(1),
  signalfunc             NVARCHAR2(1),
  flowfunc               NVARCHAR2(1),
  eventfunc              NVARCHAR2(1),
  gpscarno               VARCHAR2(20),
  gpsradiono             VARCHAR2(20),
  vmstype                CHAR(1),
  vmssize                VARCHAR2(20),
  gpstype                VARCHAR2(4),
  vmsstatus              CHAR(1),
  ifuse                  CHAR(1),
  belongtoproj           VARCHAR2(100),
  zoneid                 VARCHAR2(1),
  reclocation            VARCHAR2(1),
  camaraname             VARCHAR2(250),
  vrmurl                 VARCHAR2(30),
  rectype                VARCHAR2(5),
  patroltype             VARCHAR2(2),
  districttype           VARCHAR2(2),
  districtname           VARCHAR2(50),
  patroldistrict         VARCHAR2(255),
  desprition             NVARCHAR2(800),
  triggertype            VARCHAR2(2),
  imagelevel             VARCHAR2(2),
  electype               VARCHAR2(2),
  electposition          VARCHAR2(255),
  communicationtype      VARCHAR2(2),
  id                     VARCHAR2(32),
  passthreshold          INTEGER,
  illegalthreshold       INTEGER,
  developer              VARCHAR2(2),
  area                   VARCHAR2(8),
  hikvisionmatrixcode    VARCHAR2(8),
  devicestate            VARCHAR2(2),
  updateoperator         VARCHAR2(26),
  updatetime             DATE default sysdate,
  service_level          VARCHAR2(10),
  urgent_level           VARCHAR2(2),
  ismark                 VARCHAR2(2),
  checktype              VARCHAR2(2),
  relationvideoid        VARCHAR2(32),
  videotype              VARCHAR2(2),
  volumntype             VARCHAR2(2),
  nationalequipid        VARCHAR2(32),
  startlan               VARCHAR2(2),
  minlevel               NUMBER,
  image1path             VARCHAR2(100),
  image2path             VARCHAR2(100),
  sectionid              VARCHAR2(18),
  service_provider       VARCHAR2(16),
  ipcip                  VARCHAR2(50),
  filepath               VARCHAR2(200),
  build_status           VARCHAR2(2),
  imagevideo             VARCHAR2(100),
  devicefrom             VARCHAR2(2),
  coiltype               VARCHAR2(2),
  excepthreshold         NUMBER(8),
  belongarea             VARCHAR2(50),
  usedepart              VARCHAR2(50),
  maintaindepart         VARCHAR2(50),
  signaltype             VARCHAR2(50),
  pixel                  VARCHAR2(50),
  videocodetype          VARCHAR2(50),
  cloudmirrorcontrol     VARCHAR2(50),
  defaultcode            VARCHAR2(100),
  dvrviewuser            NVARCHAR2(20),
  dvrviewpwd             NVARCHAR2(20),
  relationgpsid          NVARCHAR2(50),
  installaddress         NVARCHAR2(100),
  upvmsroad              NVARCHAR2(50),
  downvmsroad            NVARCHAR2(50),
  upcount                INTEGER,
  downcount              INTEGER,
  hpixex                 VARCHAR2(12),
  vpixex                 VARCHAR2(12),
  meteorologytype        VARCHAR2(1),
  mobilecameratype       VARCHAR2(1),
  islimited              VARCHAR2(1),
  childtype              VARCHAR2(2),
  brand                  VARCHAR2(20),
  istoll                 VARCHAR2(1),
  pubmodel               VARCHAR2(1),
  isspeed                VARCHAR2(1),
  cfstatus               VARCHAR2(1) default 0,
  build_provider         VARCHAR2(16),
  befordate              DATE,
  enddate                DATE,
  passthresholddetail    VARCHAR2(250),
  illegalthresholddetail VARCHAR2(250),
  exceptthresholddetail  VARCHAR2(250),
  joinstatus             VARCHAR2(2),
  mileoil                NVARCHAR2(32),
  departmentiddd         NVARCHAR2(12),
  cmstype                VARCHAR2(20),
  xxlb                   VARCHAR2(20)
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
comment on column EQUIPMENT_INFO.deviceid
  is '设备编号（12位部门编号+2位设备类型+4设备号）';
comment on column EQUIPMENT_INFO.devicecode
  is '设备号，4位数字字符';
comment on column EQUIPMENT_INFO.devicename
  is '设备名称';
comment on column EQUIPMENT_INFO.devicetype
  is '设备类型（对应枚举 111）';
comment on column EQUIPMENT_INFO.deviceip
  is '设备ip';
comment on column EQUIPMENT_INFO.lanenum
  is '车道数量 ';
comment on column EQUIPMENT_INFO.provider
  is '设备提供商 （对应枚举 902）';
comment on column EQUIPMENT_INFO.devicemodel
  is '设备型号';
comment on column EQUIPMENT_INFO.providedate
  is '安装日期';
comment on column EQUIPMENT_INFO.departmentid
  is '所属部门编号（对应部门表cdepartmentid）';
comment on column EQUIPMENT_INFO.pointid
  is '安装点编号（对应安装点表的pointcode）';
comment on column EQUIPMENT_INFO.matrixcode
  is '矩阵编号';
comment on column EQUIPMENT_INFO.channelcode
  is '通道号';
comment on column EQUIPMENT_INFO.thirdsyscode
  is '第三方编号';
comment on column EQUIPMENT_INFO.remark
  is '备注信息';
comment on column EQUIPMENT_INFO.image
  is '图片';
comment on column EQUIPMENT_INFO.ctrlflag
  is '视频设备是否可控';
comment on column EQUIPMENT_INFO.dvruser
  is 'DVR用户名';
comment on column EQUIPMENT_INFO.dvrpwd
  is 'DVR密码';
comment on column EQUIPMENT_INFO.dvrport
  is 'DVR端口号';
comment on column EQUIPMENT_INFO.channelcount
  is '通道数量';
comment on column EQUIPMENT_INFO.illegaladdrid
  is '违法地点编号';
comment on column EQUIPMENT_INFO.logicchannel
  is '视频逻辑编号';
comment on column EQUIPMENT_INFO.belongto
  is '所属设备编号';
comment on column EQUIPMENT_INFO.spell
  is '拼音简写';
comment on column EQUIPMENT_INFO.direction
  is '方向  枚举149';
comment on column EQUIPMENT_INFO.csnaptype
  is '抓拍类型(0 无 1 图片 2 视频) 枚举148';
comment on column EQUIPMENT_INFO.playtype
  is '播放方式 1:硬盘录像机播放 2:流媒体播放';
comment on column EQUIPMENT_INFO.passfunc
  is '卡口过车功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.epfunc
  is '违法抓拍功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.osfunc
  is '超速抓拍功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.vediofunc
  is '视频功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.gpsfunc
  is 'GPS功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.inducefunc
  is '诱导功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.signalfunc
  is '信号功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.flowfunc
  is '流量功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.eventfunc
  is '事件功能项(1:有  0:无)';
comment on column EQUIPMENT_INFO.gpscarno
  is 'GPS车牌号码';
comment on column EQUIPMENT_INFO.gpsradiono
  is 'GPS呼号';
comment on column EQUIPMENT_INFO.vmstype
  is '诱导屏类型 枚举186';
comment on column EQUIPMENT_INFO.vmssize
  is '诱导屏尺寸';
comment on column EQUIPMENT_INFO.gpstype
  is 'GPS类型 枚举734';
comment on column EQUIPMENT_INFO.vmsstatus
  is '1-开启；2-关闭';
comment on column EQUIPMENT_INFO.belongtoproj
  is '所属项目（对应项目表project_id）';
comment on column EQUIPMENT_INFO.zoneid
  is '网域ID（海康视频历史查询/回放需要的参数  20130424）';
comment on column EQUIPMENT_INFO.reclocation
  is '（海康视频历史查询/回放需要的参数  20130424）';
comment on column EQUIPMENT_INFO.camaraname
  is '（海康视频历史查询/回放需要的参数  20130424）';
comment on column EQUIPMENT_INFO.vrmurl
  is '（海康视频历史查询/回放需要的参数  20130424）';
comment on column EQUIPMENT_INFO.rectype
  is '（海康视频历史查询/回放需要的参数  20130424）';
comment on column EQUIPMENT_INFO.patroltype
  is '4.0新增列，无备注';
comment on column EQUIPMENT_INFO.districttype
  is '4.0新增列，无备注';
comment on column EQUIPMENT_INFO.districtname
  is '4.0新增列，无备注';
comment on column EQUIPMENT_INFO.patroldistrict
  is '4.0新增列，无备注';
comment on column EQUIPMENT_INFO.desprition
  is '4.0新增列 ，设备描述';
comment on column EQUIPMENT_INFO.triggertype
  is '4.0新增列，设备触发方式 包括线圈、视频等';
comment on column EQUIPMENT_INFO.imagelevel
  is '图像类型-- 高清、标清';
comment on column EQUIPMENT_INFO.electype
  is '取电方式-市电、太阳能 枚举819';
comment on column EQUIPMENT_INFO.electposition
  is '取电位置';
comment on column EQUIPMENT_INFO.communicationtype
  is '通讯方式 无线、光纤';
comment on column EQUIPMENT_INFO.id
  is 'id';
comment on column EQUIPMENT_INFO.passthreshold
  is '过车阈值    大于此值为正常，小于此值为报警';
comment on column EQUIPMENT_INFO.illegalthreshold
  is '违法阈值    大于此值为正常，小于此值为报警';
comment on column EQUIPMENT_INFO.developer
  is '建设单位(对应枚举：1025)';
comment on column EQUIPMENT_INFO.area
  is '所在市区（对应枚举：1026）';
comment on column EQUIPMENT_INFO.hikvisionmatrixcode
  is '矩阵编号（海康）';
comment on column EQUIPMENT_INFO.devicestate
  is '设备状态:(枚举100)1正常2停用3拆除4故障5部分故障6申请中7驳回';
comment on column EQUIPMENT_INFO.updateoperator
  is '修改人';
comment on column EQUIPMENT_INFO.updatetime
  is '更新时间(暂用做‘检测时间’，每次检测设备均更新此时间)';
comment on column EQUIPMENT_INFO.service_level
  is '服务级别（对应服务级别表equip_service_level的级别名name）';
comment on column EQUIPMENT_INFO.urgent_level
  is '紧急程度（1，紧急 0，一般）枚举82';
comment on column EQUIPMENT_INFO.ismark
  is '是否标定 (1，标定  0，未标定)';
comment on column EQUIPMENT_INFO.checktype
  is '检测类型  01:自动检测 02:手动上报 (枚举表：74)';
comment on column EQUIPMENT_INFO.relationvideoid
  is '关联视频编号';
comment on column EQUIPMENT_INFO.videotype
  is '视频子类型';
comment on column EQUIPMENT_INFO.volumntype
  is '流量子类型';
comment on column EQUIPMENT_INFO.nationalequipid
  is '全国六合一系统设备编号';
comment on column EQUIPMENT_INFO.startlan
  is '起始车道号 枚举 151';
comment on column EQUIPMENT_INFO.minlevel
  is '设备地图最小显示级别';
comment on column EQUIPMENT_INFO.image1path
  is '图片1路径';
comment on column EQUIPMENT_INFO.image2path
  is '图片2路径';
comment on column EQUIPMENT_INFO.sectionid
  is '路段编号';
comment on column EQUIPMENT_INFO.service_provider
  is '维护商(对应维护商表equip_service_provider的维护商编号service_provider_id)';
comment on column EQUIPMENT_INFO.ipcip
  is '工控机IP';
comment on column EQUIPMENT_INFO.filepath
  is '图片保存路径';
comment on column EQUIPMENT_INFO.build_status
  is '建设状态 1:建设中2试运行3启用（枚举值：2019）';
comment on column EQUIPMENT_INFO.imagevideo
  is '抓拍视频图片路径';
comment on column EQUIPMENT_INFO.devicefrom
  is '设备来源（对应枚举 2016）';
comment on column EQUIPMENT_INFO.excepthreshold
  is '异常阈值，流量异常检测用';
comment on column EQUIPMENT_INFO.belongarea
  is '所属辖区';
comment on column EQUIPMENT_INFO.usedepart
  is '使用单位';
comment on column EQUIPMENT_INFO.maintaindepart
  is '维护单位';
comment on column EQUIPMENT_INFO.dvrviewuser
  is 'DVR查看权限 用户名';
comment on column EQUIPMENT_INFO.dvrviewpwd
  is 'DVR查看权限 用户密码';
comment on column EQUIPMENT_INFO.upvmsroad
  is '上行诱导路段（雾区智能诱导）--------';
comment on column EQUIPMENT_INFO.downvmsroad
  is '下行诱导路段（雾区智能诱导）--------';
comment on column EQUIPMENT_INFO.upcount
  is '上行边缘标数量（雾区智能诱导）--------';
comment on column EQUIPMENT_INFO.downcount
  is '下行边缘标数量（雾区智能诱导）--------';
comment on column EQUIPMENT_INFO.hpixex
  is '模块解析度宽（水平解析度）-----';
comment on column EQUIPMENT_INFO.vpixex
  is '模块解析度高（垂直解析度）-----';
comment on column EQUIPMENT_INFO.meteorologytype
  is '气象设备类型';
comment on column EQUIPMENT_INFO.mobilecameratype
  is '移动抓拍类型';
comment on column EQUIPMENT_INFO.islimited
  is '是否发限速消息（1：发，0：不发）';
comment on column EQUIPMENT_INFO.childtype
  is '子类型(以后新增设备所有子类型使用该字段  喊话子类型：4013) ';
comment on column EQUIPMENT_INFO.brand
  is '品牌BRAND';
comment on column EQUIPMENT_INFO.istoll
  is '1是0否';
comment on column EQUIPMENT_INFO.pubmodel
  is '1手动2自动';
comment on column EQUIPMENT_INFO.isspeed
  is '卡口是否具备测速功能,0:不具备，1具备';
comment on column EQUIPMENT_INFO.cfstatus
  is '处罚状态';
comment on column EQUIPMENT_INFO.build_provider
  is '承建商id(维护商表)';
comment on column EQUIPMENT_INFO.befordate
  is '在保开始时间';
comment on column EQUIPMENT_INFO.enddate
  is '在保结束时间';
comment on column EQUIPMENT_INFO.passthresholddetail
  is '具体时间段过车阀值';
comment on column EQUIPMENT_INFO.illegalthresholddetail
  is '具体时间段违法阀值';
comment on column EQUIPMENT_INFO.exceptthresholddetail
  is '具体时间段异常阀值';
comment on column EQUIPMENT_INFO.joinstatus
  is '接入状态（对应枚举2009）';
comment on column EQUIPMENT_INFO.mileoil
  is '百公里油耗';
comment on column EQUIPMENT_INFO.departmentiddd
  is '所属中队';
comment on column EQUIPMENT_INFO.cmstype
  is '视频2.1接口添加平台类型，海康为14，晟磐（320平台）为8';
comment on column EQUIPMENT_INFO.xxlb
  is '限行類別';
create index IDX_DEVICESTATE_EI on EQUIPMENT_INFO (DEVICESTATE)
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
create index IDX_EQUIPMENT_NAME on EQUIPMENT_INFO (DEVICENAME)
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
create index IDX_EQUIPMENT_POINTID on EQUIPMENT_INFO (POINTID)
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
create index PK_EI_DEVICETYPE on EQUIPMENT_INFO (DEVICETYPE)
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
alter table EQUIPMENT_INFO
  add constraint PK_EQUIPMENT_INFO primary key (DEVICEID)
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
prompt Creating table EQUIPMENT_INFO_STATE_HISTORY
prompt ===========================================
prompt
create table EQUIPMENT_INFO_STATE_HISTORY
(
  deviceid       NVARCHAR2(18),
  devicestate    VARCHAR2(2),
  updatetime     DATE,
  cdescription   NVARCHAR2(1000),
  id             VARCHAR2(32) not null,
  devicetype     VARCHAR2(2),
  deviceorserver NVARCHAR2(2),
  maintainid     NVARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIPMENT_INFO_STATE_HISTORY.deviceid
  is '设备ID';
comment on column EQUIPMENT_INFO_STATE_HISTORY.devicestate
  is '设备状态';
comment on column EQUIPMENT_INFO_STATE_HISTORY.updatetime
  is '状态改变时间';
comment on column EQUIPMENT_INFO_STATE_HISTORY.cdescription
  is '状态描述';
comment on column EQUIPMENT_INFO_STATE_HISTORY.id
  is '记录ID，自增，无实际意义';
comment on column EQUIPMENT_INFO_STATE_HISTORY.devicetype
  is '设备类型';
comment on column EQUIPMENT_INFO_STATE_HISTORY.deviceorserver
  is '服务还是设备';
comment on column EQUIPMENT_INFO_STATE_HISTORY.maintainid
  is '关联的维修单ID';
alter table EQUIPMENT_INFO_STATE_HISTORY
  add constraint EQUIP_STATE_ID primary key (ID)
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
prompt Creating table EQUIPMENT_STATE
prompt ==============================
prompt
create table EQUIPMENT_STATE
(
  deviceid               NVARCHAR2(30) not null,
  devicetype             NVARCHAR2(4),
  lanenum                VARCHAR2(2),
  lastuploadtime         DATE,
  delay_time             NUMBER(8),
  devicestate            INTEGER not null,
  cdescription           NVARCHAR2(256),
  illegallastuploadtime  DATE,
  check_time             DATE default sysdate,
  pointid                NVARCHAR2(30),
  direction              VARCHAR2(2),
  passthreshold          NUMBER(8) default 0,
  illegalthreshold       NUMBER(8) default 0,
  nid                    VARCHAR2(32) not null,
  excepthreshold         INTEGER default 0,
  passthresholddetail    VARCHAR2(250),
  illegalthresholddetail VARCHAR2(250),
  exceptthresholddetail  VARCHAR2(250)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIPMENT_STATE
  is '设备状态表';
comment on column EQUIPMENT_STATE.deviceid
  is '设备ID';
comment on column EQUIPMENT_STATE.devicetype
  is '子系统类型';
comment on column EQUIPMENT_STATE.lanenum
  is '车道号';
comment on column EQUIPMENT_STATE.lastuploadtime
  is '状态上传时间';
comment on column EQUIPMENT_STATE.delay_time
  is '延时时间(秒数)';
comment on column EQUIPMENT_STATE.devicestate
  is '设备状态';
comment on column EQUIPMENT_STATE.cdescription
  is '描述';
comment on column EQUIPMENT_STATE.illegallastuploadtime
  is '设备违法最后上传时间';
comment on column EQUIPMENT_STATE.check_time
  is '检测时间';
comment on column EQUIPMENT_STATE.pointid
  is '安装地点';
comment on column EQUIPMENT_STATE.direction
  is '方向';
comment on column EQUIPMENT_STATE.nid
  is 'id';
comment on column EQUIPMENT_STATE.excepthreshold
  is '异常数据阈值';
comment on column EQUIPMENT_STATE.passthresholddetail
  is '具体时间段过车阀值';
comment on column EQUIPMENT_STATE.illegalthresholddetail
  is '具体时间段违法阀值';
comment on column EQUIPMENT_STATE.exceptthresholddetail
  is '具体时间段异常阀值';
alter table EQUIPMENT_STATE
  add constraint EQUIPMENT_STATE_PK primary key (NID)
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
prompt Creating table EQUIP_CALIBRATION_INFO
prompt =====================================
prompt
create table EQUIP_CALIBRATION_INFO
(
  eci_id                     VARCHAR2(32) not null,
  deviceid                   VARCHAR2(32),
  calibration_warn_date      DATE,
  calibration_date           DATE,
  calibration_person         VARCHAR2(50),
  calibration_person_phone   VARCHAR2(64),
  calibration_info           VARCHAR2(500),
  calibration_image_path     VARCHAR2(200),
  next_calibration_date      DATE,
  next_calibration_warn_date DATE,
  next_calibration_warn_info VARCHAR2(500),
  operator                   VARCHAR2(18),
  operator_date              DATE,
  islast                     NUMBER(1),
  valid_dep                  NUMBER(2),
  enable_date                DATE,
  calibration_valid_no       VARCHAR2(100),
  valid_date                 DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_CALIBRATION_INFO.eci_id
  is '主键';
comment on column EQUIP_CALIBRATION_INFO.deviceid
  is '设备编号';
comment on column EQUIP_CALIBRATION_INFO.calibration_warn_date
  is '本次有效期止';
comment on column EQUIP_CALIBRATION_INFO.calibration_date
  is '启用日期';
comment on column EQUIP_CALIBRATION_INFO.calibration_person
  is '标定处理人';
comment on column EQUIP_CALIBRATION_INFO.calibration_person_phone
  is '标定处理人联系方式';
comment on column EQUIP_CALIBRATION_INFO.calibration_info
  is '标定描述';
comment on column EQUIP_CALIBRATION_INFO.calibration_image_path
  is '标定图片路径';
comment on column EQUIP_CALIBRATION_INFO.next_calibration_date
  is '有效期止';
comment on column EQUIP_CALIBRATION_INFO.next_calibration_warn_date
  is '预标定提醒日期';
comment on column EQUIP_CALIBRATION_INFO.next_calibration_warn_info
  is '提醒信息';
comment on column EQUIP_CALIBRATION_INFO.operator
  is '操作人';
comment on column EQUIP_CALIBRATION_INFO.operator_date
  is '操作时间';
comment on column EQUIP_CALIBRATION_INFO.islast
  is '是否为最新标定(1,最近一次，0，历史记录)';
comment on column EQUIP_CALIBRATION_INFO.valid_dep
  is '设备标定检验部门（枚举值：96）';
comment on column EQUIP_CALIBRATION_INFO.enable_date
  is '启用日期';
comment on column EQUIP_CALIBRATION_INFO.calibration_valid_no
  is '标定证书标号';
comment on column EQUIP_CALIBRATION_INFO.valid_date
  is '验证日期';
alter table EQUIP_CALIBRATION_INFO
  add constraint EQUIP_CALIBRATION_INFO_PK primary key (ECI_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_CALIBRATION_WARN_PERSON
prompt ============================================
prompt
create table EQUIP_CALIBRATION_WARN_PERSON
(
  id                VARCHAR2(32) not null,
  eci_id            VARCHAR2(32) not null,
  warn_person_id    VARCHAR2(32) not null,
  warn_person_name  VARCHAR2(61),
  warn_person_phone VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_CALIBRATION_WARN_PERSON.id
  is '主键';
comment on column EQUIP_CALIBRATION_WARN_PERSON.eci_id
  is '标定ID';
comment on column EQUIP_CALIBRATION_WARN_PERSON.warn_person_id
  is '提醒人ID';
comment on column EQUIP_CALIBRATION_WARN_PERSON.warn_person_name
  is '提醒人姓名';
comment on column EQUIP_CALIBRATION_WARN_PERSON.warn_person_phone
  is '提醒人手机号码';
alter table EQUIP_CALIBRATION_WARN_PERSON
  add constraint EQUIP_CALIBRATION_WARN_P_PK primary key (ID)
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
prompt Creating table EQUIP_FAULT_INFO
prompt ===============================
prompt
create table EQUIP_FAULT_INFO
(
  msgid          VARCHAR2(50) not null,
  policeid       VARCHAR2(6),
  deviceid       VARCHAR2(50),
  faultmessageid VARCHAR2(50),
  reporttime     DATE,
  feedbacktime   DATE,
  feedbackcode   VARCHAR2(2),
  feedbackdsc    VARCHAR2(50)
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
comment on column EQUIP_FAULT_INFO.msgid
  is '上报消息ID';
comment on column EQUIP_FAULT_INFO.policeid
  is '警员id';
comment on column EQUIP_FAULT_INFO.deviceid
  is '设备id';
comment on column EQUIP_FAULT_INFO.faultmessageid
  is '上报故障描述id';
comment on column EQUIP_FAULT_INFO.reporttime
  is '上报时间';
comment on column EQUIP_FAULT_INFO.feedbacktime
  is '反馈时间';
comment on column EQUIP_FAULT_INFO.feedbackcode
  is '反馈代码';
comment on column EQUIP_FAULT_INFO.feedbackdsc
  is '具体描述';
create index IDX_FEEDBACK_TIME on EQUIP_FAULT_INFO (FEEDBACKTIME)
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
prompt Creating table EQUIP_FAULT_PHENOMENON
prompt =====================================
prompt
create table EQUIP_FAULT_PHENOMENON
(
  id                 VARCHAR2(32) not null,
  code               VARCHAR2(16),
  equip_service_flag VARCHAR2(2),
  device_type        VARCHAR2(2),
  fault_first_code   VARCHAR2(4),
  fault_first_name   VARCHAR2(100),
  fault_second_code  VARCHAR2(4),
  fault_second_name  VARCHAR2(100),
  fault_third_code   VARCHAR2(4),
  fault_third_name   VARCHAR2(100),
  editable           VARCHAR2(4) default 1,
  phenomenon_desc    NVARCHAR2(100),
  creator            NVARCHAR2(20),
  create_time        DATE default sysdate,
  updater            NVARCHAR2(20),
  update_time        DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_FAULT_PHENOMENON.id
  is 'ID';
comment on column EQUIP_FAULT_PHENOMENON.code
  is '9位现象代码';
comment on column EQUIP_FAULT_PHENOMENON.equip_service_flag
  is '设备服务标记  1设备  2服务';
comment on column EQUIP_FAULT_PHENOMENON.device_type
  is '设备类型';
comment on column EQUIP_FAULT_PHENOMENON.fault_first_code
  is '一级故障ID（故障编号)';
comment on column EQUIP_FAULT_PHENOMENON.fault_first_name
  is '一级故障名称';
comment on column EQUIP_FAULT_PHENOMENON.fault_second_code
  is '二级故障ID';
comment on column EQUIP_FAULT_PHENOMENON.fault_second_name
  is '二级故障名称';
comment on column EQUIP_FAULT_PHENOMENON.fault_third_code
  is '三级故障ID';
comment on column EQUIP_FAULT_PHENOMENON.fault_third_name
  is '三级故障名称';
comment on column EQUIP_FAULT_PHENOMENON.editable
  is '系统参数(1可更改,0或空不可更改)';
comment on column EQUIP_FAULT_PHENOMENON.phenomenon_desc
  is '故障现象详细描述';
comment on column EQUIP_FAULT_PHENOMENON.creator
  is '创建者';
comment on column EQUIP_FAULT_PHENOMENON.create_time
  is '创建时间';
comment on column EQUIP_FAULT_PHENOMENON.updater
  is '更新者';
comment on column EQUIP_FAULT_PHENOMENON.update_time
  is '更新时间';
alter table EQUIP_FAULT_PHENOMENON
  add constraint EQUIP_FAULT_PHENOMENON_PK primary key (ID)
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
prompt Creating table EQUIP_FAULT_REASON
prompt =================================
prompt
create table EQUIP_FAULT_REASON
(
  id                 VARCHAR2(32) not null,
  code               VARCHAR2(16),
  equip_service_flag VARCHAR2(2),
  device_type        VARCHAR2(2),
  fault_first_code   VARCHAR2(4),
  fault_first_name   VARCHAR2(100),
  fault_second_code  VARCHAR2(4),
  fault_second_name  VARCHAR2(100),
  fault_third_code   VARCHAR2(4),
  fault_third_name   VARCHAR2(100),
  editable           VARCHAR2(4) default 1,
  reason_desc        NVARCHAR2(100),
  fault_type         VARCHAR2(8),
  reason_type        VARCHAR2(8),
  creator            NVARCHAR2(20),
  create_time        DATE default sysdate,
  updater            NVARCHAR2(20),
  update_time        DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_FAULT_REASON.id
  is 'ID';
comment on column EQUIP_FAULT_REASON.code
  is '9位故障原因编码';
comment on column EQUIP_FAULT_REASON.equip_service_flag
  is '设备服务标记  1设备  2服务';
comment on column EQUIP_FAULT_REASON.device_type
  is '设备类型';
comment on column EQUIP_FAULT_REASON.fault_first_code
  is '一级故障ID（故障编号)';
comment on column EQUIP_FAULT_REASON.fault_first_name
  is '一级故障名称';
comment on column EQUIP_FAULT_REASON.fault_second_code
  is '二级故障ID';
comment on column EQUIP_FAULT_REASON.fault_second_name
  is '二级故障名称';
comment on column EQUIP_FAULT_REASON.fault_third_code
  is '三级故障ID';
comment on column EQUIP_FAULT_REASON.fault_third_name
  is '三级故障名称';
comment on column EQUIP_FAULT_REASON.editable
  is '系统参数(1可更改,0或空不可更改)';
comment on column EQUIP_FAULT_REASON.reason_desc
  is '故障现象详细描述';
comment on column EQUIP_FAULT_REASON.fault_type
  is '关联-故障类型(暂13种)(质推部定义)（枚举：211';
comment on column EQUIP_FAULT_REASON.reason_type
  is '关联-故障因素分类(暂6种)(质推部定义)(枚举:216';
comment on column EQUIP_FAULT_REASON.creator
  is '创建者';
comment on column EQUIP_FAULT_REASON.create_time
  is '创建时间';
comment on column EQUIP_FAULT_REASON.updater
  is '更新者';
comment on column EQUIP_FAULT_REASON.update_time
  is '更新时间';
alter table EQUIP_FAULT_REASON
  add constraint EQUIP_FAULT_REASON_PK primary key (ID)
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
prompt Creating table EQUIP_INSPECTION_CONFIG
prompt ======================================
prompt
create table EQUIP_INSPECTION_CONFIG
(
  id             NUMBER(18) not null,
  configid       VARCHAR2(32) not null,
  projectid      VARCHAR2(20),
  devicetype     NVARCHAR2(2),
  start_date     DATE,
  data_count_min NUMBER(3),
  cycle          NUMBER(3),
  state          VARCHAR2(2),
  next_date      DATE,
  remark         VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_INSPECTION_CONFIG
  is '设备巡检规则配置表';
comment on column EQUIP_INSPECTION_CONFIG.id
  is '主键';
comment on column EQUIP_INSPECTION_CONFIG.configid
  is '规则编号';
comment on column EQUIP_INSPECTION_CONFIG.projectid
  is '所属项目编号';
comment on column EQUIP_INSPECTION_CONFIG.devicetype
  is '设备类型编号
';
comment on column EQUIP_INSPECTION_CONFIG.start_date
  is '开始日期
';
comment on column EQUIP_INSPECTION_CONFIG.data_count_min
  is '最小巡检数据量
';
comment on column EQUIP_INSPECTION_CONFIG.cycle
  is '巡检周期（天）
';
comment on column EQUIP_INSPECTION_CONFIG.state
  is '状态（0:未生成任务 1：已生成任务）
';
comment on column EQUIP_INSPECTION_CONFIG.next_date
  is '下次生成任务日期
';
comment on column EQUIP_INSPECTION_CONFIG.remark
  is '备注
';
alter table EQUIP_INSPECTION_CONFIG
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_INSPECTION_DATA
prompt ====================================
prompt
create table EQUIP_INSPECTION_DATA
(
  id                   NUMBER(18) not null,
  taskid               VARCHAR2(32),
  inspection_record_id NUMBER(18),
  devicetype           NVARCHAR2(2),
  devicetype_name      VARCHAR2(30),
  deviceid             VARCHAR2(30),
  devicename           VARCHAR2(200),
  data_type            VARCHAR2(32),
  business_data_id     VARCHAR2(32),
  inspection_result    VARCHAR2(20),
  inspection_people    VARCHAR2(20),
  inspection_time      DATE,
  error_type           VARCHAR2(2),
  description          VARCHAR2(400)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_INSPECTION_DATA
  is '设备巡检数据表';
comment on column EQUIP_INSPECTION_DATA.id
  is '主键ID
';
comment on column EQUIP_INSPECTION_DATA.taskid
  is '巡检任务编号
';
comment on column EQUIP_INSPECTION_DATA.inspection_record_id
  is '巡检记录表ID
';
comment on column EQUIP_INSPECTION_DATA.devicetype
  is '设备类型编号
';
comment on column EQUIP_INSPECTION_DATA.devicetype_name
  is '设备类型名称
';
comment on column EQUIP_INSPECTION_DATA.deviceid
  is '设备编码
';
comment on column EQUIP_INSPECTION_DATA.devicename
  is '设备名称
';
comment on column EQUIP_INSPECTION_DATA.data_type
  is '数据类型（1:过车，2:违法，3:流量）
';
comment on column EQUIP_INSPECTION_DATA.business_data_id
  is '业务数据ID（过车违法流量 数据Id）
';
comment on column EQUIP_INSPECTION_DATA.inspection_result
  is '巡检结果
';
comment on column EQUIP_INSPECTION_DATA.inspection_people
  is '巡检人
';
comment on column EQUIP_INSPECTION_DATA.inspection_time
  is '巡检时间
';
comment on column EQUIP_INSPECTION_DATA.error_type
  is '错误类型(枚举值88)
';
comment on column EQUIP_INSPECTION_DATA.description
  is '描述
';
alter table EQUIP_INSPECTION_DATA
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_INSPECTION_RECORD
prompt ======================================
prompt
create table EQUIP_INSPECTION_RECORD
(
  id                       NUMBER(18) not null,
  taskid                   VARCHAR2(32),
  devicetype               NVARCHAR2(2),
  devicetype_name          VARCHAR2(64),
  deviceid                 VARCHAR2(30) not null,
  devicename               VARCHAR2(200),
  inspection_type          VARCHAR2(20) not null,
  inspection_state         VARCHAR2(32),
  inspection_result        VARCHAR2(20),
  inspection_record_count  NUMBER(30) default 0,
  inspection_time          DATE,
  inspection_man           VARCHAR2(20),
  inspection_success_count NUMBER(30) default 0,
  description              VARCHAR2(1500),
  inspection_pass_count    NUMBER(30),
  inspection_check_count   NUMBER(30)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_INSPECTION_RECORD
  is '设备巡检记录表';
comment on column EQUIP_INSPECTION_RECORD.id
  is '主键ID';
comment on column EQUIP_INSPECTION_RECORD.taskid
  is '巡检任务编号';
comment on column EQUIP_INSPECTION_RECORD.devicetype
  is '设备类型编号';
comment on column EQUIP_INSPECTION_RECORD.devicetype_name
  is '设备类型名称';
comment on column EQUIP_INSPECTION_RECORD.deviceid
  is '设备编码';
comment on column EQUIP_INSPECTION_RECORD.devicename
  is '设备名称';
comment on column EQUIP_INSPECTION_RECORD.inspection_type
  is '巡检类型(1:过车，2:违法，3.视频)';
comment on column EQUIP_INSPECTION_RECORD.inspection_state
  is '巡检状态(0未巡检1巡检中2巡检结束)';
comment on column EQUIP_INSPECTION_RECORD.inspection_result
  is '巡检结果';
comment on column EQUIP_INSPECTION_RECORD.inspection_record_count
  is '巡检记录条数/外场设备巡检数';
comment on column EQUIP_INSPECTION_RECORD.inspection_time
  is '巡检时间';
comment on column EQUIP_INSPECTION_RECORD.inspection_man
  is '巡检人';
comment on column EQUIP_INSPECTION_RECORD.inspection_success_count
  is '成功的条数/外场设备巡检正常设备数';
comment on column EQUIP_INSPECTION_RECORD.description
  is '描述';
comment on column EQUIP_INSPECTION_RECORD.inspection_pass_count
  is '实际过车数';
comment on column EQUIP_INSPECTION_RECORD.inspection_check_count
  is '过车检测数';
alter table EQUIP_INSPECTION_RECORD
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
prompt Creating table EQUIP_INSPECTION_TASK
prompt ====================================
prompt
create table EQUIP_INSPECTION_TASK
(
  id                    NUMBER(18) not null,
  taskid                VARCHAR2(32) not null,
  configid              VARCHAR2(32),
  taskname              VARCHAR2(100),
  projectid             VARCHAR2(20),
  devicetype            VARCHAR2(2),
  data_count_min        NUMBER(10),
  start_date            DATE,
  end_date              DATE,
  cycle                 NUMBER(3),
  device_count          NUMBER(10),
  tasktype              VARCHAR2(2),
  inspection_count      NUMBER(10),
  day_count             NUMBER(10),
  fault_count           NUMBER(10),
  accuracy_rate         NUMBER(5,2) default 0.0,
  unfault_accuracy_rate NUMBER(5,2) default 0.0,
  task_status           VARCHAR2(2) default 0,
  task_endtime          DATE,
  task_desc             VARCHAR2(500),
  device_source         VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_INSPECTION_TASK.id
  is 'ID主键';
comment on column EQUIP_INSPECTION_TASK.taskid
  is '巡检任务编号';
comment on column EQUIP_INSPECTION_TASK.configid
  is '规则编号';
comment on column EQUIP_INSPECTION_TASK.taskname
  is '巡检任务名称';
comment on column EQUIP_INSPECTION_TASK.projectid
  is '所属项目编号';
comment on column EQUIP_INSPECTION_TASK.devicetype
  is '设备类型编号';
comment on column EQUIP_INSPECTION_TASK.data_count_min
  is '最小巡检数据量';
comment on column EQUIP_INSPECTION_TASK.start_date
  is '开始日期';
comment on column EQUIP_INSPECTION_TASK.end_date
  is '结束日期';
comment on column EQUIP_INSPECTION_TASK.cycle
  is '巡检周期（天）';
comment on column EQUIP_INSPECTION_TASK.device_count
  is '设备总数';
comment on column EQUIP_INSPECTION_TASK.tasktype
  is '任务类型（0: 自动生成 1：手动生成）';
comment on column EQUIP_INSPECTION_TASK.inspection_count
  is '已巡检设备数';
comment on column EQUIP_INSPECTION_TASK.day_count
  is '当日巡检数';
comment on column EQUIP_INSPECTION_TASK.fault_count
  is '故障设备数';
comment on column EQUIP_INSPECTION_TASK.accuracy_rate
  is '完成率';
comment on column EQUIP_INSPECTION_TASK.unfault_accuracy_rate
  is '除故障设备完成率';
comment on column EQUIP_INSPECTION_TASK.task_status
  is '任务状态(1.完成 0.未完成)';
comment on column EQUIP_INSPECTION_TASK.task_endtime
  is '任务完成时间';
comment on column EQUIP_INSPECTION_TASK.task_desc
  is '任务描述';
comment on column EQUIP_INSPECTION_TASK.device_source
  is '设备来源（平台内设备1，平台外设备2）';
alter table EQUIP_INSPECTION_TASK
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
prompt Creating table EQUIP_LINK
prompt =========================
prompt
create table EQUIP_LINK
(
  nid                VARCHAR2(32) not null,
  deviceid           VARCHAR2(18),
  parent_link_id     VARCHAR2(18),
  link_flag          VARCHAR2(1),
  exception_flag     VARCHAR2(1) default 0,
  parent_level       VARCHAR2(3),
  equip_service_flag VARCHAR2(2) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_LINK.nid
  is 'UUID唯一标识';
comment on column EQUIP_LINK.deviceid
  is '设备id(包括中心服务)';
comment on column EQUIP_LINK.parent_link_id
  is '父节点id';
comment on column EQUIP_LINK.link_flag
  is '链路标识，0网路链路，1数据链路';
comment on column EQUIP_LINK.exception_flag
  is '节点异常标识，0正常1异常';
comment on column EQUIP_LINK.parent_level
  is '父节点级别';
comment on column EQUIP_LINK.equip_service_flag
  is '设备服务标记，1：前端设备 2：系统服务（枚举表：85）';
alter table EQUIP_LINK
  add constraint EQUIP_LINK_PK primary key (NID)
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
prompt Creating table EQUIP_MAINTAIN
prompt =============================
prompt
create table EQUIP_MAINTAIN
(
  cid                 VARCHAR2(32) not null,
  cequipid            VARCHAR2(32),
  cequiptype          VARCHAR2(4),
  cpointid            VARCHAR2(18),
  cprojectid          VARCHAR2(20),
  cbugdetail          NVARCHAR2(1000),
  dplanrepairtime     DATE,
  drealrepairtime     DATE,
  nrealrepaircost     NUMBER(10,2),
  nworkhour           NUMBER(8,2),
  creportman          NVARCHAR2(32),
  creportmantelephone VARCHAR2(16),
  cremark             NVARCHAR2(50),
  deleteflag          VARCHAR2(2),
  fault_cause         VARCHAR2(500),
  fault_solution      VARCHAR2(500),
  dispatchtime        DATE,
  crepairid           VARCHAR2(32),
  maintainid          VARCHAR2(32),
  fault_from          VARCHAR2(2) default 0,
  result_status       VARCHAR2(2),
  dispatchid          VARCHAR2(32),
  merge_cid           VARCHAR2(32),
  maintain_status     VARCHAR2(2),
  feedback_status     VARCHAR2(2) default 0,
  creator             NVARCHAR2(32),
  service_level       VARCHAR2(4),
  fault_type          VARCHAR2(32),
  faulttime           DATE default sysdate,
  crepairman_phone    VARCHAR2(16),
  equip_service_flag  VARCHAR2(2) default 1,
  third_party_flag    VARCHAR2(2) default 0,
  cprojectname        VARCHAR2(200),
  beforeimagepath     VARCHAR2(100),
  afterimagepath      VARCHAR2(100),
  overdue_type        VARCHAR2(2),
  overdue_cause       VARCHAR2(500),
  devicename          VARCHAR2(256),
  feedback_info       VARCHAR2(500),
  update_time         DATE default sysdate,
  fault_reason        VARCHAR2(32),
  solution_type       VARCHAR2(32),
  part_id             VARCHAR2(32),
  maintain_type       VARCHAR2(32),
  overdue_reason      VARCHAR2(32),
  arrival_time        DATE,
  reason_type         VARCHAR2(32),
  fault_phenomenon    VARCHAR2(1000)
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
comment on table EQUIP_MAINTAIN
  is '设备故障维修单管理表';
comment on column EQUIP_MAINTAIN.cid
  is 'uuid';
comment on column EQUIP_MAINTAIN.cequipid
  is '设备ID';
comment on column EQUIP_MAINTAIN.cequiptype
  is '设备类型（枚举代码111）';
comment on column EQUIP_MAINTAIN.cpointid
  is '设备安装点信息';
comment on column EQUIP_MAINTAIN.cprojectid
  is '所属项目（枚举代码890）';
comment on column EQUIP_MAINTAIN.cbugdetail
  is '故障现象描述(故障描述)';
comment on column EQUIP_MAINTAIN.dplanrepairtime
  is '维修计划完成时间';
comment on column EQUIP_MAINTAIN.drealrepairtime
  is '维修实际完成时间';
comment on column EQUIP_MAINTAIN.nrealrepaircost
  is '维修实际费用';
comment on column EQUIP_MAINTAIN.nworkhour
  is '维修工时';
comment on column EQUIP_MAINTAIN.creportman
  is '故障报告人,或者是检测适配器名称';
comment on column EQUIP_MAINTAIN.creportmantelephone
  is '故障报告人联系方式';
comment on column EQUIP_MAINTAIN.cremark
  is '备注';
comment on column EQUIP_MAINTAIN.deleteflag
  is '删除标记 0:未删除 1:已删除';
comment on column EQUIP_MAINTAIN.fault_cause
  is '故障原因详述';
comment on column EQUIP_MAINTAIN.fault_solution
  is '解决方案描述';
comment on column EQUIP_MAINTAIN.dispatchtime
  is '派工时间';
comment on column EQUIP_MAINTAIN.crepairid
  is '维修人';
comment on column EQUIP_MAINTAIN.maintainid
  is '维修单编号（要能够区分，如格式“AU20131217150421001801”“故障来源+时间+设备号+设备类型”（AU:自动，HA:手动））
';
comment on column EQUIP_MAINTAIN.fault_from
  is '故障来源 01:自动检测 02:手动上报
 (枚举表：74)';
comment on column EQUIP_MAINTAIN.result_status
  is '处理结果 1已解决2误报3停用4拆除5已合并6自动修复7已删除 (枚举表：76)';
comment on column EQUIP_MAINTAIN.dispatchid
  is '派工单号';
comment on column EQUIP_MAINTAIN.merge_cid
  is '合并维修单遍号
';
comment on column EQUIP_MAINTAIN.maintain_status
  is '维修状态 0:未处理、1:维修中、2:完成(枚举表：75)';
comment on column EQUIP_MAINTAIN.feedback_status
  is '反馈表示字段 0:无需反馈，1:待反馈，2:已反馈
（枚举表：78）';
comment on column EQUIP_MAINTAIN.creator
  is '创建者ID，或者是报障适配器';
comment on column EQUIP_MAINTAIN.service_level
  is '服务级别，P0、P1、P2、P3、P4
（表：EQUIP_SERVICE_LEVEL
）';
comment on column EQUIP_MAINTAIN.fault_type
  is '故障类型(暂13种)(质推部定义)（枚举：211';
comment on column EQUIP_MAINTAIN.faulttime
  is '故障时间
';
comment on column EQUIP_MAINTAIN.crepairman_phone
  is '维修人联系方式';
comment on column EQUIP_MAINTAIN.equip_service_flag
  is '设备服务标记，1：前端设备 2：系统服务（枚举表：85）';
comment on column EQUIP_MAINTAIN.third_party_flag
  is '是否第三方 0:非第三方 1：第三方
';
comment on column EQUIP_MAINTAIN.cprojectname
  is '所属项目名称';
comment on column EQUIP_MAINTAIN.beforeimagepath
  is '维修前图片';
comment on column EQUIP_MAINTAIN.afterimagepath
  is '维修后图片';
comment on column EQUIP_MAINTAIN.overdue_type
  is '逾期因素 （枚举：89） 1：海信因素，2：分包商因素
';
comment on column EQUIP_MAINTAIN.overdue_cause
  is '逾期原因
';
comment on column EQUIP_MAINTAIN.devicename
  is '设备名称，合并维修单显示合并后的故障名称';
comment on column EQUIP_MAINTAIN.feedback_info
  is '反馈信息';
comment on column EQUIP_MAINTAIN.update_time
  is '维修单更新时间';
comment on column EQUIP_MAINTAIN.fault_reason
  is '故障原因(维修完成原因分析) 表EQUIP_FAULT_REASON';
comment on column EQUIP_MAINTAIN.solution_type
  is '解决方案（枚举：212';
comment on column EQUIP_MAINTAIN.part_id
  is '部件（枚举：213';
comment on column EQUIP_MAINTAIN.maintain_type
  is '维修方式（枚举：214';
comment on column EQUIP_MAINTAIN.overdue_reason
  is '逾期原因分类（枚举：215';
comment on column EQUIP_MAINTAIN.arrival_time
  is '到场时间';
comment on column EQUIP_MAINTAIN.reason_type
  is '故障因素分类 (暂6种)(质推部定义)(枚举:216';
comment on column EQUIP_MAINTAIN.fault_phenomenon
  is '故障现象(故障上报协议)(并列多个用半角逗号,分割) 表EQUIP_FAULT_PHENOMENON';
create index EQUIP_MAINTAIN_IDX1 on EQUIP_MAINTAIN (FAULTTIME, CEQUIPTYPE)
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
create index EQUIP_MAINTAIN_IDX2 on EQUIP_MAINTAIN (DPLANREPAIRTIME)
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
create index IDX_EQUIP_DEVICETYPE on EQUIP_MAINTAIN (CEQUIPTYPE)
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
create bitmap index IDX_MAINTAIN_RESULTSTATUS on EQUIP_MAINTAIN (RESULT_STATUS, 0, MAINTAIN_STATUS, THIRD_PARTY_FLAG, CEQUIPID)
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
alter table EQUIP_MAINTAIN
  add constraint EQUIP_MAINTAIN_PK primary key (CID)
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
prompt Creating table EQUIP_MAINTAIN_KNOWLEDGE_LIB
prompt ===========================================
prompt
create table EQUIP_MAINTAIN_KNOWLEDGE_LIB
(
  id                 VARCHAR2(32) not null,
  devicetype         VARCHAR2(2),
  equip_service_flag VARCHAR2(2),
  knowledge_desc     NVARCHAR2(500),
  order_id           NUMBER(5),
  ktype              VARCHAR2(2),
  fault_id           VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.devicetype
  is '设备或服务类型';
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.equip_service_flag
  is '1:设备  2：服务';
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.knowledge_desc
  is '故障描述';
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.order_id
  is '排序';
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.ktype
  is '1:故障描述 2:故障原因 3:解决办法 4:逾期原因';
comment on column EQUIP_MAINTAIN_KNOWLEDGE_LIB.fault_id
  is '故障编号';
alter table EQUIP_MAINTAIN_KNOWLEDGE_LIB
  add constraint EQUIP_MAINTAIN_KL_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_MAINTAIN_PARTS
prompt ===================================
prompt
create table EQUIP_MAINTAIN_PARTS
(
  id             VARCHAR2(32) not null,
  maintain_id    VARCHAR2(32),
  device_id      VARCHAR2(32),
  device_part_id VARCHAR2(32),
  part_num       VARCHAR2(32),
  maintain_type  VARCHAR2(32),
  remark         NVARCHAR2(200),
  update_time    DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_MAINTAIN_PARTS
  is '维修详细部件及维修方式等信息';
comment on column EQUIP_MAINTAIN_PARTS.id
  is '唯一ID';
comment on column EQUIP_MAINTAIN_PARTS.maintain_id
  is '维修单ID';
comment on column EQUIP_MAINTAIN_PARTS.device_id
  is '实际维修设备ID';
comment on column EQUIP_MAINTAIN_PARTS.device_part_id
  is '维修设备部件ID';
comment on column EQUIP_MAINTAIN_PARTS.part_num
  is '维修部件数量';
comment on column EQUIP_MAINTAIN_PARTS.maintain_type
  is '维修方式编号';
comment on column EQUIP_MAINTAIN_PARTS.remark
  is '备注信息';
comment on column EQUIP_MAINTAIN_PARTS.update_time
  is '更新时间';
alter table EQUIP_MAINTAIN_PARTS
  add constraint EQUIP_MAINTAIN_PARTS_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_MAINTAIN_TRACKING_INFO
prompt ===========================================
prompt
create table EQUIP_MAINTAIN_TRACKING_INFO
(
  track_id           VARCHAR2(8) not null,
  maintain_id        VARCHAR2(32) not null,
  track_info         VARCHAR2(1500),
  track_time         DATE,
  track_man          VARCHAR2(60),
  track_mantelephone VARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_MAINTAIN_TRACKING_INFO.track_id
  is 'PK';
comment on column EQUIP_MAINTAIN_TRACKING_INFO.maintain_id
  is '维修编号';
comment on column EQUIP_MAINTAIN_TRACKING_INFO.track_info
  is '跟进信息';
comment on column EQUIP_MAINTAIN_TRACKING_INFO.track_time
  is '跟进时间';
comment on column EQUIP_MAINTAIN_TRACKING_INFO.track_man
  is '跟进人';
comment on column EQUIP_MAINTAIN_TRACKING_INFO.track_mantelephone
  is '跟进人联系方式';
alter table EQUIP_MAINTAIN_TRACKING_INFO
  add constraint EQUIP_MAINTAIN_INFO_PK primary key (TRACK_ID)
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
prompt Creating table EQUIP_MARK
prompt =========================
prompt
create table EQUIP_MARK
(
  pkid            VARCHAR2(36) not null,
  devicecode      VARCHAR2(25) not null,
  approvestate    VARCHAR2(2) not null,
  approvedescribe VARCHAR2(1200),
  approvetime     DATE,
  auditor         VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_MARK
  is '设备备案';
comment on column EQUIP_MARK.pkid
  is '主键';
comment on column EQUIP_MARK.devicecode
  is '设备编号';
comment on column EQUIP_MARK.approvestate
  is '审批状态（1 通过 0驳回）';
comment on column EQUIP_MARK.approvedescribe
  is '审批描述';
comment on column EQUIP_MARK.approvetime
  is '审批时间';
comment on column EQUIP_MARK.auditor
  is '审批人';
alter table EQUIP_MARK
  add constraint EQUIP_MARK_PK primary key (PKID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_OPERATE_LOG
prompt ================================
prompt
create table EQUIP_OPERATE_LOG
(
  id                     VARCHAR2(32) not null,
  deviceid               NVARCHAR2(18) not null,
  operatereason          NVARCHAR2(100),
  operatedate            DATE,
  storeposition          NVARCHAR2(100),
  stroemanuserid         CHAR(9),
  stroemanusername       NVARCHAR2(32),
  stroemanphone          VARCHAR2(15),
  manualrevelation       CHAR(1),
  revelationprecondition NVARCHAR2(100),
  reparieduration        INTEGER default 0,
  repariecost            INTEGER default 0,
  remark                 NVARCHAR2(500),
  operatelog             NVARCHAR2(2000),
  equipstate             CHAR(1),
  serverorequip          VARCHAR2(2) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_OPERATE_LOG.id
  is '数据ID';
comment on column EQUIP_OPERATE_LOG.deviceid
  is '设备ID';
comment on column EQUIP_OPERATE_LOG.operatereason
  is '操作原因（可以使报废原因、停用原因等等）';
comment on column EQUIP_OPERATE_LOG.operatedate
  is '操作时间（报废时间，停用时间等等）';
comment on column EQUIP_OPERATE_LOG.storeposition
  is '报废或停用设备的保管位置';
comment on column EQUIP_OPERATE_LOG.stroemanuserid
  is '负责人userid（对应operator表nuserid）';
comment on column EQUIP_OPERATE_LOG.stroemanusername
  is '负责人name';
comment on column EQUIP_OPERATE_LOG.stroemanphone
  is '负责人电话';
comment on column EQUIP_OPERATE_LOG.manualrevelation
  is '是否可以随时启用（1 - 是，0 - 否）';
comment on column EQUIP_OPERATE_LOG.revelationprecondition
  is '启用/恢复前提条件';
comment on column EQUIP_OPERATE_LOG.reparieduration
  is '计划维修时长';
comment on column EQUIP_OPERATE_LOG.repariecost
  is '计划维修成本（元）';
comment on column EQUIP_OPERATE_LOG.remark
  is '备注';
comment on column EQUIP_OPERATE_LOG.operatelog
  is '每次操作状态改变的记录';
comment on column EQUIP_OPERATE_LOG.equipstate
  is '设备状态，对应枚举值1211（0-启用；1-停用；2-正常；3-故障；8-带病；9-拆除；5嫌疑）';
comment on column EQUIP_OPERATE_LOG.serverorequip
  is '设备服务标记 对应枚举85 1：前端设备 2：系统服务';

prompt
prompt Creating table EQUIP_SERVICE_LEVEL
prompt ==================================
prompt
create table EQUIP_SERVICE_LEVEL
(
  id             NUMBER not null,
  name           VARCHAR2(3),
  responsetime   VARCHAR2(6),
  getplacetime   VARCHAR2(6),
  finishtime     VARCHAR2(6),
  description    VARCHAR2(1024),
  sms_alert_flag VARCHAR2(2) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_SERVICE_LEVEL.sms_alert_flag
  is '是否需要短信预警  1：是      0：否';
alter table EQUIP_SERVICE_LEVEL
  add constraint PK_EQUIP_SERVICE_LEVEL_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_SERVICE_PROVIDER
prompt =====================================
prompt
create table EQUIP_SERVICE_PROVIDER
(
  service_provider_id   VARCHAR2(16) not null,
  service_provider_name VARCHAR2(60) not null,
  begin_time            DATE,
  end_time              DATE,
  service_main_area     VARCHAR2(200),
  leader_person         VARCHAR2(64),
  leader_person_phone   VARCHAR2(32),
  leader_person_address VARCHAR2(128)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_SERVICE_PROVIDER
  is '维护商管理表';
comment on column EQUIP_SERVICE_PROVIDER.service_provider_id
  is '设备维护商id';
comment on column EQUIP_SERVICE_PROVIDER.service_provider_name
  is '设备维护商名称';
comment on column EQUIP_SERVICE_PROVIDER.begin_time
  is '维护开始时间';
comment on column EQUIP_SERVICE_PROVIDER.end_time
  is '维护结束时间';
comment on column EQUIP_SERVICE_PROVIDER.service_main_area
  is '主要维护区域';
comment on column EQUIP_SERVICE_PROVIDER.leader_person
  is '负责人';
comment on column EQUIP_SERVICE_PROVIDER.leader_person_phone
  is '负责人联系方式';
comment on column EQUIP_SERVICE_PROVIDER.leader_person_address
  is '负责人联系地址';
alter table EQUIP_SERVICE_PROVIDER
  add constraint SERVICE_PROVIDER_ID primary key (SERVICE_PROVIDER_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_SERVICE_PROVIDER_SMS
prompt =========================================
prompt
create table EQUIP_SERVICE_PROVIDER_SMS
(
  id                  VARCHAR2(32) not null,
  service_provider_id VARCHAR2(16) not null,
  connection_name     VARCHAR2(60) not null,
  connection_phone    VARCHAR2(32),
  isacceptsms         VARCHAR2(1),
  operator_id         VARCHAR2(16),
  isacceptdispatch    VARCHAR2(1) default 1,
  is_useful           VARCHAR2(1) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EQUIP_SERVICE_PROVIDER_SMS
  is '维护厂商短信配置表';
comment on column EQUIP_SERVICE_PROVIDER_SMS.id
  is 'id';
comment on column EQUIP_SERVICE_PROVIDER_SMS.service_provider_id
  is '设备维护商id';
comment on column EQUIP_SERVICE_PROVIDER_SMS.connection_name
  is '联系人姓名';
comment on column EQUIP_SERVICE_PROVIDER_SMS.connection_phone
  is '联系人电话';
comment on column EQUIP_SERVICE_PROVIDER_SMS.isacceptsms
  is '1接收短信0不接收短信';
comment on column EQUIP_SERVICE_PROVIDER_SMS.operator_id
  is '用户表id';
comment on column EQUIP_SERVICE_PROVIDER_SMS.isacceptdispatch
  is '1接收派工，0不接受派工';
comment on column EQUIP_SERVICE_PROVIDER_SMS.is_useful
  is '1有用  0作废';
alter table EQUIP_SERVICE_PROVIDER_SMS
  add constraint SPID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_UTC_PLAN
prompt =============================
prompt
create table EQUIP_UTC_PLAN
(
  deviceid NVARCHAR2(18) not null,
  planid   NVARCHAR2(4) not null,
  planname NVARCHAR2(64),
  describe NVARCHAR2(500),
  isuse    VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_UTC_PLAN.deviceid
  is '设备编号(信号机)';
comment on column EQUIP_UTC_PLAN.planid
  is '方案编号';
comment on column EQUIP_UTC_PLAN.planname
  is '方案名称';
comment on column EQUIP_UTC_PLAN.describe
  is '方案描述';
comment on column EQUIP_UTC_PLAN.isuse
  is '是否在用(0:未在用， 1:在用)';
alter table EQUIP_UTC_PLAN
  add constraint EQUIP_UTC_PLAN_PK primary key (DEVICEID, PLANID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_UTC_VIDEO
prompt ==============================
prompt
create table EQUIP_UTC_VIDEO
(
  id        VARCHAR2(32) not null,
  utcid     NVARCHAR2(18) not null,
  videoid   NVARCHAR2(18) not null,
  presetid  NVARCHAR2(18),
  direction VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_UTC_VIDEO.utcid
  is '信号设备编号';
comment on column EQUIP_UTC_VIDEO.videoid
  is '视频设备编号';
comment on column EQUIP_UTC_VIDEO.presetid
  is '预置位编号';
comment on column EQUIP_UTC_VIDEO.direction
  is '监控进口方向(144)';
alter table EQUIP_UTC_VIDEO
  add constraint EQUIP_UTC_VIDEO_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table EQUIP_VIDEO_PRESET
prompt =================================
prompt
create table EQUIP_VIDEO_PRESET
(
  deviceid     NVARCHAR2(18) not null,
  presetid     NVARCHAR2(18) not null,
  presetname   NVARCHAR2(64),
  describe     NVARCHAR2(500),
  presettype   NVARCHAR2(2),
  isselect     NVARCHAR2(1),
  presethighid VARCHAR2(18)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EQUIP_VIDEO_PRESET.deviceid
  is '设备编号(视频)';
comment on column EQUIP_VIDEO_PRESET.presetid
  is '预置位编号';
comment on column EQUIP_VIDEO_PRESET.presetname
  is '预置位名称';
comment on column EQUIP_VIDEO_PRESET.describe
  is '预置位描述';
comment on column EQUIP_VIDEO_PRESET.presettype
  is '预置位类型（枚举163）';
comment on column EQUIP_VIDEO_PRESET.isselect
  is '预案级别';
comment on column EQUIP_VIDEO_PRESET.presethighid
  is '高速预制位关联id';

prompt
prompt Creating table EXCEPTION_OFFER
prompt ==============================
prompt
create table EXCEPTION_OFFER
(
  offerid       VARCHAR2(32) not null,
  offername     VARCHAR2(400),
  exceptioncode NVARCHAR2(16),
  exceptionmsg  VARCHAR2(400) not null,
  reuploadflag  VARCHAR2(2) not null,
  exceptexcuse  VARCHAR2(400)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table EXCEPTION_OFFER
  is '数据异常建议表';
comment on column EXCEPTION_OFFER.offerid
  is '建议id';
comment on column EXCEPTION_OFFER.offername
  is '建议内容';
comment on column EXCEPTION_OFFER.exceptioncode
  is '异常代码';
comment on column EXCEPTION_OFFER.exceptionmsg
  is '异常信息';
comment on column EXCEPTION_OFFER.reuploadflag
  is '重传标志';
comment on column EXCEPTION_OFFER.exceptexcuse
  is '原因分析';

prompt
prompt Creating table EXPERT_HISTORY
prompt =============================
prompt
create table EXPERT_HISTORY
(
  uuid           VARCHAR2(32) not null,
  caseid         VARCHAR2(32) not null,
  history_record VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column EXPERT_HISTORY.uuid
  is '唯一id';
comment on column EXPERT_HISTORY.caseid
  is '警情唯一标识';
comment on column EXPERT_HISTORY.history_record
  is '专家处置记录';

prompt
prompt Creating table FACI_GEOMETRY
prompt ============================
prompt
create table FACI_GEOMETRY
(
  faci_id   VARCHAR2(32) not null,
  coordtype VARCHAR2(2),
  geometry  MDSYS.SDO_GEOMETRY not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table FACI_GEOMETRY
  add primary key (FACI_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACI_INFO
prompt ========================
prompt
create table FACI_INFO
(
  id               VARCHAR2(32) not null,
  code             VARCHAR2(20),
  name             NVARCHAR2(50),
  typecode1        VARCHAR2(10),
  product          VARCHAR2(10),
  productdate      DATE,
  unit             NUMBER(10,2),
  productcode      VARCHAR2(20),
  barcode          VARCHAR2(50),
  spec             NVARCHAR2(50),
  state            VARCHAR2(10),
  delflag          VARCHAR2(1) default 0,
  createid         VARCHAR2(20),
  createtime       DATE,
  updateid         VARCHAR2(20),
  updatetime       DATE,
  remark           NVARCHAR2(512),
  typecode2        VARCHAR2(10),
  typecode3        VARCHAR2(10),
  stockincode      VARCHAR2(20),
  stockoutcode     VARCHAR2(20),
  yncross          VARCHAR2(4),
  roadid1          VARCHAR2(32),
  roadid2          VARCHAR2(32),
  coordinates      VARCHAR2(1000),
  coordtype        VARCHAR2(2),
  imageurl1        VARCHAR2(200),
  imageurl2        VARCHAR2(200),
  imageurl3        VARCHAR2(200),
  imageurl4        VARCHAR2(200),
  direction        VARCHAR2(12),
  inorout          VARCHAR2(2),
  hllength         VARCHAR2(12),
  areaid           VARCHAR2(12),
  dadept           VARCHAR2(16),
  zhongdept        VARCHAR2(16),
  auditor          VARCHAR2(64),
  audit_time       DATE,
  audit_suggestion NVARCHAR2(512),
  status           VARCHAR2(2),
  installaddress   VARCHAR2(50),
  installdirection CHAR(1),
  crosstype        VARCHAR2(2),
  lightnum         NVARCHAR2(150),
  sectionid        VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACI_INFO
  is '设施信息表';
comment on column FACI_INFO.id
  is '数据主键，在表中唯一即可';
comment on column FACI_INFO.code
  is '--设施编号';
comment on column FACI_INFO.name
  is '设施名称';
comment on column FACI_INFO.typecode1
  is '一级分类（对应设施分类配置表的有效的一级分类code）';
comment on column FACI_INFO.product
  is '--生产厂家';
comment on column FACI_INFO.productdate
  is '--生产日期';
comment on column FACI_INFO.unit
  is '--单价（元）';
comment on column FACI_INFO.productcode
  is '--生产批次（定单号）';
comment on column FACI_INFO.barcode
  is '--条形码';
comment on column FACI_INFO.spec
  is '--规格';
comment on column FACI_INFO.state
  is '--0：在库 1：出库';
comment on column FACI_INFO.delflag
  is '--删除标志位0代表未删除；1代表已删除';
comment on column FACI_INFO.createid
  is '--创建者';
comment on column FACI_INFO.createtime
  is '--创建时间';
comment on column FACI_INFO.updateid
  is '更新者';
comment on column FACI_INFO.updatetime
  is '更新时间';
comment on column FACI_INFO.remark
  is '备注信息';
comment on column FACI_INFO.typecode2
  is '二级分类（对应设施分类配置表的有效的二级分类code）';
comment on column FACI_INFO.typecode3
  is '三级分类（对应设施分类配置表的有效的三级分类code）';
comment on column FACI_INFO.stockincode
  is '入库单编号';
comment on column FACI_INFO.stockoutcode
  is '出库单编号';
comment on column FACI_INFO.yncross
  is '是否路口（1：是；0：否）';
comment on column FACI_INFO.roadid1
  is '道路名称（对应道路表nid）';
comment on column FACI_INFO.roadid2
  is '叉路名称（对应道路表nid）';
comment on column FACI_INFO.coordinates
  is '坐标值（通常由平台地图选取设置）';
comment on column FACI_INFO.coordtype
  is '坐标类型（通过平台选取坐标值时确定）';
comment on column FACI_INFO.imageurl1
  is '图片路径1（有效的图片FTP路径）';
comment on column FACI_INFO.imageurl2
  is '图片路径2（有效的图片FTP路径）';
comment on column FACI_INFO.imageurl3
  is '图片路径3（有效的图片FTP路径）';
comment on column FACI_INFO.imageurl4
  is '图片路径4（有效的图片FTP路径）';
comment on column FACI_INFO.dadept
  is '所属大队（对应部门表的cdepartmentid）';
comment on column FACI_INFO.zhongdept
  is '所属中队（对应部门表的cdepartmentid）';
comment on column FACI_INFO.auditor
  is '审核人';
comment on column FACI_INFO.audit_time
  is '审核时间';
comment on column FACI_INFO.audit_suggestion
  is '审核意见';
comment on column FACI_INFO.status
  is '状态(对应枚举 3100：1 正常 2 申请中 9 驳回)';
comment on column FACI_INFO.crosstype
  is '7006';
comment on column FACI_INFO.sectionid
  is '关联路段id';
create index IDX_FACI_TYPECODE2 on FACI_INFO (TYPECODE2)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_FACI_TYPECODE3 on FACI_INFO (TYPECODE3)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table FACI_INFO
  add constraint PK_FACI_INFO_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACI_ONEWAYTRAFFIC
prompt =================================
prompt
create table FACI_ONEWAYTRAFFIC
(
  id            VARCHAR2(32) not null,
  serial        NVARCHAR2(20),
  name          NVARCHAR2(50),
  direction     VARCHAR2(10),
  sectionid     NVARCHAR2(8),
  dept          VARCHAR2(12),
  limitecontent VARCHAR2(100),
  length        NUMBER,
  delflag       VARCHAR2(1),
  createid      VARCHAR2(20),
  createtime    DATE,
  updateid      VARCHAR2(20),
  updatetime    DATE,
  coordinates   VARCHAR2(1000),
  remark        NVARCHAR2(512),
  constructfac  NVARCHAR2(50),
  constructdate DATE,
  imgpath1      VARCHAR2(100),
  imgpath2      VARCHAR2(100),
  imgpath3      VARCHAR2(100),
  limittype     VARCHAR2(4)
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
comment on table FACI_ONEWAYTRAFFIC
  is '设施管理_单行线';
comment on column FACI_ONEWAYTRAFFIC.id
  is '主键UUID';
comment on column FACI_ONEWAYTRAFFIC.serial
  is '编号';
comment on column FACI_ONEWAYTRAFFIC.name
  is '名称';
comment on column FACI_ONEWAYTRAFFIC.direction
  is '方向';
comment on column FACI_ONEWAYTRAFFIC.sectionid
  is '路段ID';
comment on column FACI_ONEWAYTRAFFIC.dept
  is '所属辖区';
comment on column FACI_ONEWAYTRAFFIC.limitecontent
  is '限制内容';
comment on column FACI_ONEWAYTRAFFIC.length
  is '长度';
comment on column FACI_ONEWAYTRAFFIC.delflag
  is '删除标志';
comment on column FACI_ONEWAYTRAFFIC.createid
  is '创建人ID';
comment on column FACI_ONEWAYTRAFFIC.createtime
  is '创建时间';
comment on column FACI_ONEWAYTRAFFIC.updateid
  is '更新人ID';
comment on column FACI_ONEWAYTRAFFIC.updatetime
  is '更新时间';
comment on column FACI_ONEWAYTRAFFIC.coordinates
  is '经纬度';
comment on column FACI_ONEWAYTRAFFIC.remark
  is '备注';
comment on column FACI_ONEWAYTRAFFIC.constructfac
  is '施工厂家';
comment on column FACI_ONEWAYTRAFFIC.constructdate
  is '施工日期';
comment on column FACI_ONEWAYTRAFFIC.imgpath1
  is '图片FTP存储路径1';
comment on column FACI_ONEWAYTRAFFIC.imgpath2
  is '图片FTP存储路径2';
comment on column FACI_ONEWAYTRAFFIC.imgpath3
  is '图片FTP存储路径3';
comment on column FACI_ONEWAYTRAFFIC.limittype
  is '限制类型';
alter table FACI_ONEWAYTRAFFIC
  add constraint FACI_ONEWAYTRAFFIC_ID primary key (ID)
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
prompt Creating table FACI_PROJECT
prompt ===========================
prompt
create table FACI_PROJECT
(
  project_id            VARCHAR2(20) not null,
  project_name          VARCHAR2(200),
  start_time            DATE,
  end_time              DATE,
  department_id         VARCHAR2(20),
  description           NVARCHAR2(100),
  build_unit            VARCHAR2(100),
  undertake_unit        VARCHAR2(100),
  check_accept_time     DATE,
  police_point_num      NUMBER,
  police_num            NUMBER,
  pass_point_num        NUMBER,
  pass_num              NUMBER,
  overspeed_point_num   NUMBER,
  overspeed_num         NUMBER,
  microwave_point_num   NUMBER,
  microwave_num         NUMBER,
  coil_point_num        NUMBER,
  coil_num              NUMBER,
  meteorology_point_num NUMBER,
  meteorology_num       NUMBER,
  auditor               VARCHAR2(64),
  audit_time            DATE,
  audit_suggestion      NVARCHAR2(512),
  status                VARCHAR2(2),
  servicetime           VARCHAR2(100),
  workdays              VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACI_PROJECT
  is '项目基础信息表';
comment on column FACI_PROJECT.project_id
  is '项目编号';
comment on column FACI_PROJECT.project_name
  is '项目名称';
comment on column FACI_PROJECT.start_time
  is '开始时间';
comment on column FACI_PROJECT.end_time
  is '结束时间';
comment on column FACI_PROJECT.department_id
  is '部门编号';
comment on column FACI_PROJECT.description
  is '项目描述/备注';
comment on column FACI_PROJECT.build_unit
  is '建设单位';
comment on column FACI_PROJECT.undertake_unit
  is '承建单位';
comment on column FACI_PROJECT.check_accept_time
  is '验收时间';
comment on column FACI_PROJECT.police_point_num
  is '拟建电警点位数';
comment on column FACI_PROJECT.police_num
  is '拟建电警设备数';
comment on column FACI_PROJECT.pass_point_num
  is '拟建卡口点位数';
comment on column FACI_PROJECT.pass_num
  is '拟建卡口设备数';
comment on column FACI_PROJECT.overspeed_point_num
  is '拟建超速检测点位数';
comment on column FACI_PROJECT.overspeed_num
  is '拟建超速检测设备数';
comment on column FACI_PROJECT.microwave_point_num
  is '拟建微波点位数';
comment on column FACI_PROJECT.microwave_num
  is '拟建微波设备数';
comment on column FACI_PROJECT.coil_point_num
  is '拟建线圈点位数';
comment on column FACI_PROJECT.coil_num
  is '拟建线圈设备数';
comment on column FACI_PROJECT.meteorology_point_num
  is '拟建气象检测点位数';
comment on column FACI_PROJECT.meteorology_num
  is '拟建气象设备数';
comment on column FACI_PROJECT.auditor
  is '审核人';
comment on column FACI_PROJECT.audit_time
  is '审核时间';
comment on column FACI_PROJECT.audit_suggestion
  is '审核意见';
comment on column FACI_PROJECT.status
  is '状态(3100,1正常2申请中9驳回)';
comment on column FACI_PROJECT.servicetime
  is '服务时限';
comment on column FACI_PROJECT.workdays
  is '工作周期';
alter table FACI_PROJECT
  add constraint PRI_FACI_PROJECT primary key (PROJECT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACI_SORT
prompt ========================
prompt
create table FACI_SORT
(
  code    VARCHAR2(20),
  name    VARCHAR2(100),
  pcode   VARCHAR2(10),
  grade   VARCHAR2(10),
  id      VARCHAR2(32) not null,
  delflag CHAR(1) default 0,
  picurl  NVARCHAR2(200),
  geotype CHAR(1),
  unit    VARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACI_SORT
  is '设施分类表';
comment on column FACI_SORT.code
  is '类型编号';
comment on column FACI_SORT.name
  is '类型名称';
comment on column FACI_SORT.pcode
  is '上级类型编号';
comment on column FACI_SORT.grade
  is '类型级别';
comment on column FACI_SORT.id
  is '主键id';
comment on column FACI_SORT.delflag
  is '删除标志 0：未删除 1：已删除';
comment on column FACI_SORT.picurl
  is '图片路径';
comment on column FACI_SORT.geotype
  is '地理形态(枚举1029)：1-点 2-线 3-面  注：只有二级分类填写地理形态';
comment on column FACI_SORT.unit
  is '单位 对应枚举：1031';
alter table FACI_SORT
  add constraint PK_FACI_SORT_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACI_SPEC
prompt ========================
prompt
create table FACI_SPEC
(
  id        VARCHAR2(32) not null,
  sortcode  VARCHAR2(20),
  specvalue VARCHAR2(150),
  speccode  VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACI_SPEC
  is '设施规格';
comment on column FACI_SPEC.id
  is '主键';
comment on column FACI_SPEC.sortcode
  is '类型编号';
comment on column FACI_SPEC.specvalue
  is '规格值';
comment on column FACI_SPEC.speccode
  is '规格编号';
alter table FACI_SPEC
  add constraint PK_FACI_SPEC_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FACI_VEHICLEPARK
prompt ===============================
prompt
create table FACI_VEHICLEPARK
(
  uuid            VARCHAR2(32) not null,
  registerid      VARCHAR2(9),
  name            VARCHAR2(150),
  type            VARCHAR2(2),
  parkmode        VARCHAR2(2),
  dept            NVARCHAR2(12),
  sectionid       VARCHAR2(16),
  area            NUMBER,
  berthcount      NUMBER,
  managedept      VARCHAR2(300),
  relativeman     VARCHAR2(60),
  phoneno         VARCHAR2(50),
  coordinates     VARCHAR2(50),
  delflag         VARCHAR2(1) not null,
  createid        VARCHAR2(20) not null,
  createtime      DATE not null,
  updateid        VARCHAR2(20) not null,
  updatetime      DATE not null,
  serial          NVARCHAR2(20),
  yncross         VARCHAR2(4),
  roadid1         VARCHAR2(64),
  roadid2         VARCHAR2(64),
  imgpath1        VARCHAR2(100),
  imgpath2        VARCHAR2(100),
  imgpath3        VARCHAR2(100),
  realaddress     VARCHAR2(150),
  relativeman1    VARCHAR2(60),
  phoneno1        VARCHAR2(50),
  relationvideoid VARCHAR2(32),
  defaultcode     VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FACI_VEHICLEPARK
  is '设施管理_机动车停车场';
comment on column FACI_VEHICLEPARK.uuid
  is '主键（uuid）';
comment on column FACI_VEHICLEPARK.registerid
  is '登记证编号';
comment on column FACI_VEHICLEPARK.name
  is '停车场名称';
comment on column FACI_VEHICLEPARK.type
  is '停车场类型';
comment on column FACI_VEHICLEPARK.parkmode
  is '停放形式';
comment on column FACI_VEHICLEPARK.dept
  is '所属辖区';
comment on column FACI_VEHICLEPARK.sectionid
  is '路段ID';
comment on column FACI_VEHICLEPARK.area
  is '面积';
comment on column FACI_VEHICLEPARK.berthcount
  is '泊位数';
comment on column FACI_VEHICLEPARK.managedept
  is '经营单位';
comment on column FACI_VEHICLEPARK.relativeman
  is '联系人';
comment on column FACI_VEHICLEPARK.phoneno
  is '联系方式';
comment on column FACI_VEHICLEPARK.coordinates
  is '经纬度';
comment on column FACI_VEHICLEPARK.delflag
  is '删除标志';
comment on column FACI_VEHICLEPARK.createid
  is '创建id';
comment on column FACI_VEHICLEPARK.createtime
  is '创建时间';
comment on column FACI_VEHICLEPARK.updateid
  is '更新用户id';
comment on column FACI_VEHICLEPARK.updatetime
  is '更新时间';
comment on column FACI_VEHICLEPARK.serial
  is '停车场编号';
comment on column FACI_VEHICLEPARK.yncross
  is '是否路口';
comment on column FACI_VEHICLEPARK.roadid1
  is '道路ID1';
comment on column FACI_VEHICLEPARK.roadid2
  is '道路ID2';
comment on column FACI_VEHICLEPARK.imgpath1
  is '图片FTP存储路径1';
comment on column FACI_VEHICLEPARK.imgpath2
  is '图片FTP存储路径2';
comment on column FACI_VEHICLEPARK.imgpath3
  is '图片FTP存储路径3';
comment on column FACI_VEHICLEPARK.realaddress
  is '具体地址';
comment on column FACI_VEHICLEPARK.relativeman1
  is '联系人2';
comment on column FACI_VEHICLEPARK.phoneno1
  is '电话2';
comment on column FACI_VEHICLEPARK.relationvideoid
  is '视频设备id';
comment on column FACI_VEHICLEPARK.defaultcode
  is '预置位';
alter table FACI_VEHICLEPARK
  add constraint FACI_VEHICLEPARK_ID primary key (UUID)
  disable
  novalidate;

prompt
prompt Creating table FAKENOCARS_INFO
prompt ==============================
prompt
create table FAKENOCARS_INFO
(
  id          VARCHAR2(32) not null,
  carno       VARCHAR2(16) not null,
  notype      VARCHAR2(6) not null,
  finddate    DATE,
  findaddress VARCHAR2(128),
  faketype    VARCHAR2(4),
  fakestatus  VARCHAR2(4),
  shr         CHAR(6),
  shrmc       NVARCHAR2(20),
  shyj        NVARCHAR2(255),
  shrbm       VARCHAR2(12),
  shrbmmc     VARCHAR2(50),
  jar         CHAR(6),
  jarmc       VARCHAR2(20),
  jaryj       NVARCHAR2(255),
  jarbm       VARCHAR2(11),
  jarbmmc     VARCHAR2(50),
  remark      VARCHAR2(256),
  checkpeople CHAR(6),
  shdate      DATE,
  carbrand    VARCHAR2(4),
  carmodel    VARCHAR2(4),
  color       VARCHAR2(4),
  carlevel    VARCHAR2(4),
  learnmess   VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table FAKENOCARS_PROOF
prompt ===============================
prompt
create table FAKENOCARS_PROOF
(
  id          VARCHAR2(32) not null,
  carno       VARCHAR2(16) not null,
  notype      VARCHAR2(2) not null,
  finddate    DATE,
  findaddress VARCHAR2(128),
  zjtp        VARCHAR2(200),
  fakeid      VARCHAR2(32),
  zjtp2       VARCHAR2(200),
  mainbrand   VARCHAR2(3),
  subbrand    VARCHAR2(3),
  proofdesc   NVARCHAR2(200),
  inserttime  DATE,
  ori_flag    VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
create index FAKENOCARS_PROOF_FAKEID on FAKENOCARS_PROOF (FAKEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FKDB_SJ
prompt ======================
prompt
create table FKDB_SJ
(
  xzqh      VARCHAR2(6),
  jjdbh     VARCHAR2(20),
  cjdbh     VARCHAR2(30),
  fkdbh     VARCHAR2(30) not null,
  fksj      DATE,
  fklyh     VARCHAR2(14),
  txfkdwdm  NUMBER(12),
  fkrxm     VARCHAR2(18),
  zhzxjsrxm VARCHAR2(8),
  fkdwdm    NUMBER(12),
  cjrxm     VARCHAR2(24),
  sjcjsj    DATE,
  ddxcsj    DATE,
  ajlbbh    NUMBER(2),
  ajlxbh    NUMBER(6),
  ajxlbh    NUMBER(6),
  cjqk      VARCHAR2(800),
  cdcls     NUMBER(2),
  cdrs      NUMBER(3),
  fkzj      NUMBER(1),
  gbbz      NUMBER(1),
  gbjjdbh   VARCHAR2(20),
  scbz      NUMBER(1) default 0,
  hcbz      NUMBER(1) default 0,
  fkdzt     NUMBER(2),
  sjgxsj    DATE,
  ddczsj    DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table FKDB_SJ
  is '反馈单表';
comment on column FKDB_SJ.xzqh
  is '行政区划';
comment on column FKDB_SJ.jjdbh
  is '接警单编号';
comment on column FKDB_SJ.cjdbh
  is '处警单编号';
comment on column FKDB_SJ.fkdbh
  is '反馈单编号';
comment on column FKDB_SJ.fksj
  is '反馈时间';
comment on column FKDB_SJ.fklyh
  is '反馈录音号';
comment on column FKDB_SJ.txfkdwdm
  is '填写反馈单位代码';
comment on column FKDB_SJ.fkrxm
  is '反馈人姓名';
comment on column FKDB_SJ.zhzxjsrxm
  is '指挥中心接收人姓名';
comment on column FKDB_SJ.fkdwdm
  is '反馈单位代码';
comment on column FKDB_SJ.cjrxm
  is '出警人姓名';
comment on column FKDB_SJ.sjcjsj
  is '实际出警时间';
comment on column FKDB_SJ.ddxcsj
  is '到达现场时间';
comment on column FKDB_SJ.ajlbbh
  is '案件类别编号';
comment on column FKDB_SJ.ajlxbh
  is '案件类型编号';
comment on column FKDB_SJ.ajxlbh
  is '案件细类编号';
comment on column FKDB_SJ.cjqk
  is '出警情况';
comment on column FKDB_SJ.cdcls
  is '出动车辆数';
comment on column FKDB_SJ.cdrs
  is '出动人数';
comment on column FKDB_SJ.fkzj
  is '反馈终结';
comment on column FKDB_SJ.gbbz
  is '归并标志';
comment on column FKDB_SJ.gbjjdbh
  is '归并接警单编号';
comment on column FKDB_SJ.scbz
  is '上传标志';
comment on column FKDB_SJ.hcbz
  is '回传标志';
comment on column FKDB_SJ.fkdzt
  is '反馈单状态';
comment on column FKDB_SJ.sjgxsj
  is '数据更新时间';
comment on column FKDB_SJ.ddczsj
  is '大队处置时间';
create index IDX_FKDB_SJ1 on FKDB_SJ (JJDBH, CJDBH)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_FKDB_SJ2 on FKDB_SJ (FKSJ, FKDWDM)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_FKDB_SJ3 on FKDB_SJ (CJDBH, FKDBH, JJDBH)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_FKDB_SJ6 on FKDB_SJ (JJDBH, CJDBH, FKDZT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_FKDB_SJ_HCBZ on FKDB_SJ (HCBZ)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table FKDB_SJ
  add constraint PK_FKDB_SJ primary key (FKDBH)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table FXYP_CROSS_DEVICE_INFO
prompt =====================================
prompt
create table FXYP_CROSS_DEVICE_INFO
(
  lkdm     VARCHAR2(32) not null,
  dldm     NVARCHAR2(5) not null,
  jkd      VARCHAR2(40) not null,
  redevice VARCHAR2(18) not null
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
comment on table FXYP_CROSS_DEVICE_INFO
  is '路口与设备关联表';
comment on column FXYP_CROSS_DEVICE_INFO.lkdm
  is '路口代码';
comment on column FXYP_CROSS_DEVICE_INFO.dldm
  is '道路代码';
comment on column FXYP_CROSS_DEVICE_INFO.jkd
  is '进口道方向，以“,”分割，枚举值(2003)';
comment on column FXYP_CROSS_DEVICE_INFO.redevice
  is '与路段关联的设备，不可为空';

prompt
prompt Creating table FXYP_FLOATCAR_ANALYSIS_RESULT
prompt ============================================
prompt
create table FXYP_FLOATCAR_ANALYSIS_RESULT
(
  nid       VARCHAR2(32) not null,
  carnumber VARCHAR2(16) not null,
  sectionid NVARCHAR2(8) not null,
  dldm      VARCHAR2(5),
  starttime DATE not null,
  endtime   DATE not null,
  velocity  NUMBER(11,2),
  stoptime  NUMBER(11,2),
  stoptimes INTEGER
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
comment on table FXYP_FLOATCAR_ANALYSIS_RESULT
  is '浮动车分析结果表';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.nid
  is '32位随机码';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.carnumber
  is '浮动车号牌号码';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.sectionid
  is '路段代码';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.dldm
  is '道路代码';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.starttime
  is '开始时间';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.endtime
  is '结束时间';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.velocity
  is '行驶速度，单位为km/h';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.stoptime
  is '停车时间';
comment on column FXYP_FLOATCAR_ANALYSIS_RESULT.stoptimes
  is '停车次数';

prompt
prompt Creating table FXYP_FLOAT_CAR_STATUS
prompt ====================================
prompt
create table FXYP_FLOAT_CAR_STATUS
(
  sectionid   NVARCHAR2(20) not null,
  avspeed     NUMBER(11,2) not null,
  avtime      NUMBER(11,2) not null,
  stoptime    NUMBER(11,2) not null,
  stoptimes   INTEGER not null,
  computedate DATE not null,
  insertdate  DATE not null
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
comment on table FXYP_FLOAT_CAR_STATUS
  is '浮动车计算结果表';
comment on column FXYP_FLOAT_CAR_STATUS.sectionid
  is '路段编号';
comment on column FXYP_FLOAT_CAR_STATUS.avspeed
  is '平均速度，单位为km/h';
comment on column FXYP_FLOAT_CAR_STATUS.avtime
  is '平均旅行时间，单位为s';
comment on column FXYP_FLOAT_CAR_STATUS.stoptime
  is '停车时间，单位为s';
comment on column FXYP_FLOAT_CAR_STATUS.stoptimes
  is '停车次数';
comment on column FXYP_FLOAT_CAR_STATUS.computedate
  is '计算时段开始时间,间隔1h';
comment on column FXYP_FLOAT_CAR_STATUS.insertdate
  is '实际入库时间';

prompt
prompt Creating table FXYP_HRV_CONCERN
prompt ===============================
prompt
create table FXYP_HRV_CONCERN
(
  concernid   VARCHAR2(32) not null,
  concernname VARCHAR2(100) not null,
  concerntype CHAR(1) not null,
  creator     VARCHAR2(50) not null,
  createtime  DATE not null,
  updater     VARCHAR2(50),
  updatetime  DATE,
  strcoords   CLOB,
  description VARCHAR2(300),
  areaids     VARCHAR2(1000) not null
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
comment on table FXYP_HRV_CONCERN
  is '道路关联表';
comment on column FXYP_HRV_CONCERN.concernid
  is '关注点（重点道路、重点区域、商圈）ID';
comment on column FXYP_HRV_CONCERN.concernname
  is '关注点名称';
comment on column FXYP_HRV_CONCERN.concerntype
  is '关注点类型 1道路；2区域；3商圈；4.路口';
comment on column FXYP_HRV_CONCERN.creator
  is '创建人';
comment on column FXYP_HRV_CONCERN.createtime
  is '创建时间';
comment on column FXYP_HRV_CONCERN.updater
  is '更新人';
comment on column FXYP_HRV_CONCERN.updatetime
  is '更新时间';
comment on column FXYP_HRV_CONCERN.strcoords
  is '关注点图形坐标集';
comment on column FXYP_HRV_CONCERN.description
  is '备注';

prompt
prompt Creating table FXYP_HRV_CONCERN_ROAD_RELATION
prompt =============================================
prompt
create table FXYP_HRV_CONCERN_ROAD_RELATION
(
  concernid VARCHAR2(32) not null,
  roadid    NVARCHAR2(8) not null,
  strcoords CLOB
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
comment on table FXYP_HRV_CONCERN_ROAD_RELATION
  is '关注点与道路关联表';
comment on column FXYP_HRV_CONCERN_ROAD_RELATION.concernid
  is '关注点ID';
comment on column FXYP_HRV_CONCERN_ROAD_RELATION.roadid
  is '路口ID';
comment on column FXYP_HRV_CONCERN_ROAD_RELATION.strcoords
  is '路段坐标集合';

prompt
prompt Creating table FXYP_PROGRAM_MANAGE_INFO
prompt =======================================
prompt
create table FXYP_PROGRAM_MANAGE_INFO
(
  lkdm      VARCHAR2(32) not null,
  dldm      NVARCHAR2(5) not null,
  pmdate    DATE not null,
  owner     NVARCHAR2(20) not null,
  pmcontent NVARCHAR2(200)
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
comment on table FXYP_PROGRAM_MANAGE_INFO
  is '组织管理信息表';
comment on column FXYP_PROGRAM_MANAGE_INFO.lkdm
  is '路口代码';
comment on column FXYP_PROGRAM_MANAGE_INFO.dldm
  is '道路代码';
comment on column FXYP_PROGRAM_MANAGE_INFO.pmdate
  is '实施开始日期';
comment on column FXYP_PROGRAM_MANAGE_INFO.owner
  is '实施人';
comment on column FXYP_PROGRAM_MANAGE_INFO.pmcontent
  is '实施内容';

prompt
prompt Creating table FXYP_SECTION_DEVICE_INFO
prompt =======================================
prompt
create table FXYP_SECTION_DEVICE_INFO
(
  sectionid   NVARCHAR2(8) not null,
  dldm        NVARCHAR2(5) not null,
  resectionid NVARCHAR2(8) not null,
  redldm      NVARCHAR2(5) not null,
  lanes       INTEGER not null,
  redevice    VARCHAR2(18) not null
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
comment on table FXYP_SECTION_DEVICE_INFO
  is '路段与设备关联表';
comment on column FXYP_SECTION_DEVICE_INFO.sectionid
  is '路段代码';
comment on column FXYP_SECTION_DEVICE_INFO.dldm
  is '道路代码';
comment on column FXYP_SECTION_DEVICE_INFO.resectionid
  is '关联路段代码';
comment on column FXYP_SECTION_DEVICE_INFO.redldm
  is '关联路段所在道路，防止两个路段不在同一条道路';
comment on column FXYP_SECTION_DEVICE_INFO.redevice
  is '与路段关联的设备，不可为空';

prompt
prompt Creating table GAODE_POI_POINT
prompt ==============================
prompt
create table GAODE_POI_POINT
(
  pid       VARCHAR2(35),
  poi_id    VARCHAR2(35),
  name      VARCHAR2(1500),
  address   VARCHAR2(1500),
  phone     VARCHAR2(500),
  display_x VARCHAR2(20),
  display_y VARCHAR2(20),
  area      VARCHAR2(50),
  type      VARCHAR2(1500),
  geometry  MDSYS.SDO_GEOMETRY,
  dept      VARCHAR2(20)
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
comment on column GAODE_POI_POINT.pid
  is 'id';
comment on column GAODE_POI_POINT.name
  is 'poi名称';
comment on column GAODE_POI_POINT.address
  is 'poi地址';
comment on column GAODE_POI_POINT.phone
  is '电话';
comment on column GAODE_POI_POINT.display_x
  is '经度';
comment on column GAODE_POI_POINT.display_y
  is '纬度';
comment on column GAODE_POI_POINT.area
  is '所属区域（如山东省+青岛市+黄岛区）';
comment on column GAODE_POI_POINT.type
  is '类型';
comment on column GAODE_POI_POINT.dept
  is '所属辖区';

prompt
prompt Creating table GPS_CURRENT_DATA
prompt ===============================
prompt
create table GPS_CURRENT_DATA
(
  deviceid   NVARCHAR2(32),
  devicename NVARCHAR2(60),
  gpsid      NVARCHAR2(32),
  deptid     NVARCHAR2(32),
  longitude  NVARCHAR2(32),
  latitude   NVARCHAR2(32),
  ndirection VARCHAR2(2),
  datatime   DATE,
  geometry   MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table GPS_CURRENT_DATA
  is 'GPS设备当前位置表';
comment on column GPS_CURRENT_DATA.deviceid
  is '设备编号';
comment on column GPS_CURRENT_DATA.devicename
  is '设备名称';
comment on column GPS_CURRENT_DATA.gpsid
  is '警员/警车编号';
comment on column GPS_CURRENT_DATA.deptid
  is '部门编号';
comment on column GPS_CURRENT_DATA.longitude
  is '经度';
comment on column GPS_CURRENT_DATA.latitude
  is '纬度';
comment on column GPS_CURRENT_DATA.ndirection
  is '方向';
comment on column GPS_CURRENT_DATA.datatime
  is '更新时间';
comment on column GPS_CURRENT_DATA.geometry
  is '地理位置';

prompt
prompt Creating table GPS_DATA
prompt =======================
prompt
create table GPS_DATA
(
  cvehid         VARCHAR2(20) not null,
  nvehalarm      INTEGER not null,
  dtrecordtime   DATE not null,
  decarlong      NUMBER(16,10) not null,
  decarlat       NUMBER(16,10) not null,
  ncarstatus     INTEGER,
  nvehspeed      NUMBER(5,2),
  ndirection     INTEGER,
  datauploadtime DATE,
  datasavetime   DATE default sysdate,
  policeid       VARCHAR2(50),
  mdsid          VARCHAR2(20),
  reportstatus   CHAR(1),
  source         VARCHAR2(2)
)
partition by range (DTRECORDTIME)
(
  partition GPS_P1 values less than (TO_DATE(' 2022-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace GPSTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on column GPS_DATA.cvehid
  is '设备编号';
comment on column GPS_DATA.nvehalarm
  is '报警信息编号';
comment on column GPS_DATA.dtrecordtime
  is '采集时间';
comment on column GPS_DATA.decarlong
  is '经度';
comment on column GPS_DATA.decarlat
  is '纬度';
comment on column GPS_DATA.ncarstatus
  is '状态, 来源为单警时，1为报备0为未报备';
comment on column GPS_DATA.nvehspeed
  is '速度';
comment on column GPS_DATA.ndirection
  is '方向';
comment on column GPS_DATA.datauploadtime
  is '数据上传时间';
comment on column GPS_DATA.datasavetime
  is '入库时间';
comment on column GPS_DATA.policeid
  is '警员id';
comment on column GPS_DATA.mdsid
  is '捷思锐平台账号,单警专用';
comment on column GPS_DATA.reportstatus
  is '报备状态 0闲 1忙';
comment on column GPS_DATA.source
  is '来源,1为单警';
create index INDEX_GPS_DATA on GPS_DATA (DTRECORDTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_GPS_ID on GPS_DATA (CVEHID, DTRECORDTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table GUARD_DUTY
prompt =========================
prompt
create table GUARD_DUTY
(
  id             VARCHAR2(32) not null,
  duty_level     VARCHAR2(2),
  duty_name      NVARCHAR2(100),
  duty_target    NVARCHAR2(2000),
  createtime     DATE not null,
  createuserid   VARCHAR2(6),
  createusername NVARCHAR2(20),
  edituserid     NVARCHAR2(6),
  editusername   NVARCHAR2(20),
  edittime       DATE,
  video_flag     CHAR(1) default '0',
  single_flag    CHAR(1) default '0',
  vms_flag       CHAR(1) default '0',
  position_flag  CHAR(1) default '0',
  issued         VARCHAR2(2000),
  delete_flag    CHAR(1) default '0',
  executetime    DATE,
  issue_flag     CHAR(1),
  begintime      DATE,
  endtime        DATE,
  executestatus  CHAR(1) default '0'
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column GUARD_DUTY.duty_level
  is '任务等级：一级A、一级B、二级A、二级B、三级、优先放行';
comment on column GUARD_DUTY.duty_name
  is '任务名称';
comment on column GUARD_DUTY.duty_target
  is '任务要求';
comment on column GUARD_DUTY.createtime
  is '创建时间';
comment on column GUARD_DUTY.createuserid
  is '创建人id';
comment on column GUARD_DUTY.createusername
  is '创建人名';
comment on column GUARD_DUTY.edituserid
  is '修改人id';
comment on column GUARD_DUTY.editusername
  is '修改人名';
comment on column GUARD_DUTY.edittime
  is '修改时间';
comment on column GUARD_DUTY.video_flag
  is '视频配置标志：0未配置1已配置';
comment on column GUARD_DUTY.single_flag
  is '信号配置标志：0未配置1已配置';
comment on column GUARD_DUTY.vms_flag
  is '诱导配置标志：0未配置1已配置';
comment on column GUARD_DUTY.position_flag
  is '岗位配置标志：0未配置1已配置';
comment on column GUARD_DUTY.issued
  is '下发大队：大队编号用,分割：37000121,37000132';
comment on column GUARD_DUTY.delete_flag
  is '删除标志：0正常1删除';
comment on column GUARD_DUTY.executetime
  is '执行时间，空为未执行';
comment on column GUARD_DUTY.issue_flag
  is '是否已经下发到各大队';
comment on column GUARD_DUTY.begintime
  is '任务开始时间';
comment on column GUARD_DUTY.endtime
  is '任务结束时间';
comment on column GUARD_DUTY.executestatus
  is '执行状态  0未执行 1执行中 2执行完毕';
create index INDEX_GUARD_DUTY_TIME on GUARD_DUTY (CREATETIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table GUARD_DUTY
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table GUARD_DUTY_LINE
prompt ==============================
prompt
create table GUARD_DUTY_LINE
(
  id                   VARCHAR2(32) not null,
  duty_id              VARCHAR2(32) not null,
  line_name            NVARCHAR2(100),
  line_desc            NVARCHAR2(2000),
  line_coordinate      VARCHAR2(2000),
  createtime           DATE,
  createuserid         VARCHAR2(6),
  createusername       NVARCHAR2(20),
  edituserid           NVARCHAR2(6),
  editusername         NVARCHAR2(20),
  edittime             DATE,
  video_flag           CHAR(1) default '0',
  single_flag          CHAR(1) default '0',
  vms_flag             CHAR(1) default '0',
  position_flag        CHAR(1) default '0',
  delete_flag          CHAR(1) default '0',
  line_length          VARCHAR2(10),
  line_coordinate_clob CLOB,
  starttime            DATE,
  endtime              DATE,
  lineno               NUMBER,
  isbak                CHAR(1),
  main_line_id         VARCHAR2(32),
  lineexecutetime      DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column GUARD_DUTY_LINE.duty_id
  is '任务id';
comment on column GUARD_DUTY_LINE.line_name
  is '线路名称';
comment on column GUARD_DUTY_LINE.line_desc
  is '线路描述';
comment on column GUARD_DUTY_LINE.line_coordinate
  is '线路坐标';
comment on column GUARD_DUTY_LINE.createtime
  is '创建时间';
comment on column GUARD_DUTY_LINE.createuserid
  is '创建人id';
comment on column GUARD_DUTY_LINE.createusername
  is '创建人';
comment on column GUARD_DUTY_LINE.edituserid
  is '修改人id';
comment on column GUARD_DUTY_LINE.editusername
  is '修改人';
comment on column GUARD_DUTY_LINE.edittime
  is '修改时间';
comment on column GUARD_DUTY_LINE.video_flag
  is '视频配置标志：0未配置1已配置';
comment on column GUARD_DUTY_LINE.single_flag
  is '信号配置标志：0未配置1已配置';
comment on column GUARD_DUTY_LINE.vms_flag
  is '诱导配置标志：0未配置1已配置';
comment on column GUARD_DUTY_LINE.position_flag
  is '岗位配置标志：0未配置1已配置';
comment on column GUARD_DUTY_LINE.delete_flag
  is '删除标志';
comment on column GUARD_DUTY_LINE.line_length
  is '线路长度';
comment on column GUARD_DUTY_LINE.line_coordinate_clob
  is '线路坐标clob';
comment on column GUARD_DUTY_LINE.starttime
  is '线路执行开始时间';
comment on column GUARD_DUTY_LINE.endtime
  is '线路执行结束时间';
comment on column GUARD_DUTY_LINE.lineno
  is '线路编号';
comment on column GUARD_DUTY_LINE.isbak
  is '是否备用线路';
comment on column GUARD_DUTY_LINE.main_line_id
  is '主线路ID';
comment on column GUARD_DUTY_LINE.lineexecutetime
  is '线路启动时的时间';
alter table GUARD_DUTY_LINE
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table GUARD_DUTY_LINE_POSITION
prompt =======================================
prompt
create table GUARD_DUTY_LINE_POSITION
(
  id             VARCHAR2(32) not null,
  line_id        VARCHAR2(32) not null,
  position_id    VARCHAR2(32) not null,
  position_no    NUMBER(3),
  short_num      VARCHAR2(4),
  createtime     DATE default sysdate,
  createuserid   VARCHAR2(8),
  createusername NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column GUARD_DUTY_LINE_POSITION.id
  is '主键UUID';
comment on column GUARD_DUTY_LINE_POSITION.line_id
  is '线路ID';
comment on column GUARD_DUTY_LINE_POSITION.position_id
  is '岗位id';
comment on column GUARD_DUTY_LINE_POSITION.position_no
  is '岗位顺序';
comment on column GUARD_DUTY_LINE_POSITION.short_num
  is '缺口数';
comment on column GUARD_DUTY_LINE_POSITION.createtime
  is '创建时间';
comment on column GUARD_DUTY_LINE_POSITION.createuserid
  is '创建人ID';
comment on column GUARD_DUTY_LINE_POSITION.createusername
  is '创建人姓名';
alter table GUARD_DUTY_LINE_POSITION
  add constraint PK_GUARD_POSITION_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table GUARD_DUTY_LINE_UTC
prompt ==================================
prompt
create table GUARD_DUTY_LINE_UTC
(
  id             VARCHAR2(32) not null,
  line_id        VARCHAR2(32) not null,
  deviceid       VARCHAR2(18),
  devicename     NVARCHAR2(50),
  resident       VARCHAR2(5),
  num            VARCHAR2(3),
  utc_phaseno    VARCHAR2(4),
  createtime     DATE,
  createuserid   VARCHAR2(6),
  createusername NVARCHAR2(20),
  utc_phasename  VARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column GUARD_DUTY_LINE_UTC.line_id
  is '线路id';
comment on column GUARD_DUTY_LINE_UTC.deviceid
  is '设备id';
comment on column GUARD_DUTY_LINE_UTC.devicename
  is '设备名称';
comment on column GUARD_DUTY_LINE_UTC.resident
  is '驻留时间';
comment on column GUARD_DUTY_LINE_UTC.num
  is '序号';
comment on column GUARD_DUTY_LINE_UTC.utc_phaseno
  is '相位编号';
comment on column GUARD_DUTY_LINE_UTC.createtime
  is '创建时间';
comment on column GUARD_DUTY_LINE_UTC.createuserid
  is '创建人id';
comment on column GUARD_DUTY_LINE_UTC.createusername
  is '创建人';
comment on column GUARD_DUTY_LINE_UTC.utc_phasename
  is '相位名称';
alter table GUARD_DUTY_LINE_UTC
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table GUARD_DUTY_LINE_VIDEO
prompt ====================================
prompt
create table GUARD_DUTY_LINE_VIDEO
(
  id         VARCHAR2(32) not null,
  line_id    VARCHAR2(32) not null,
  deviceid   VARCHAR2(18),
  devicename NVARCHAR2(50),
  devicetype VARCHAR2(2),
  num        VARCHAR2(3),
  position   VARCHAR2(18),
  createtime DATE,
  userid     VARCHAR2(6),
  username   NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column GUARD_DUTY_LINE_VIDEO.line_id
  is '线路id';
comment on column GUARD_DUTY_LINE_VIDEO.deviceid
  is '设备id';
comment on column GUARD_DUTY_LINE_VIDEO.devicename
  is '设备名称';
comment on column GUARD_DUTY_LINE_VIDEO.devicetype
  is '设备类型';
comment on column GUARD_DUTY_LINE_VIDEO.num
  is '序号';
comment on column GUARD_DUTY_LINE_VIDEO.position
  is '预制位编号';
comment on column GUARD_DUTY_LINE_VIDEO.createtime
  is '创建时间';
comment on column GUARD_DUTY_LINE_VIDEO.userid
  is '创建人id';
comment on column GUARD_DUTY_LINE_VIDEO.username
  is '创建人';
alter table GUARD_DUTY_LINE_VIDEO
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HDVIEW_COMPONENT
prompt ===============================
prompt
create table HDVIEW_COMPONENT
(
  componentid      VARCHAR2(32) not null,
  name             VARCHAR2(60),
  description      VARCHAR2(50),
  type             CHAR(1),
  title            VARCHAR2(30),
  showborder       CHAR(1),
  transparent      VARCHAR2(20),
  refresh_interval NUMBER,
  datafuc          VARCHAR2(50),
  sceneid          VARCHAR2(30) not null,
  create_time      DATE,
  update_time      DATE,
  create_user      VARCHAR2(30),
  w                NUMBER,
  h                NUMBER,
  x                NUMBER,
  y                NUMBER,
  i                VARCHAR2(30),
  isditu           CHAR(1),
  basefont         NUMBER,
  maxw             NUMBER,
  minw             NUMBER,
  minh             NUMBER,
  maxh             NUMBER,
  border           CHAR(1) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table HDVIEW_COMPONENT
  is '组件表';
comment on column HDVIEW_COMPONENT.name
  is '组件名称';
comment on column HDVIEW_COMPONENT.type
  is '1：专题组件
2：地图组件
3：指标组件
';
comment on column HDVIEW_COMPONENT.title
  is '默认标题';
comment on column HDVIEW_COMPONENT.showborder
  is '是否展示边框';
comment on column HDVIEW_COMPONENT.transparent
  is '背景透明度';
comment on column HDVIEW_COMPONENT.refresh_interval
  is '组件刷新间隔';
comment on column HDVIEW_COMPONENT.datafuc
  is '数据接口';
comment on column HDVIEW_COMPONENT.sceneid
  is '场景';
comment on column HDVIEW_COMPONENT.w
  is '默认宽';
comment on column HDVIEW_COMPONENT.h
  is '默认高';
comment on column HDVIEW_COMPONENT.x
  is '默认x轴';
comment on column HDVIEW_COMPONENT.y
  is '默认y轴';
comment on column HDVIEW_COMPONENT.i
  is '默认 COMPONENTID';
comment on column HDVIEW_COMPONENT.isditu
  is '默认是否底图(地图) 0:否 1 :是   ';
comment on column HDVIEW_COMPONENT.border
  is '默认是否有边框 0:否 1 :是   ';
alter table HDVIEW_COMPONENT
  add constraint PK_HHDVIEW_COMPONENT primary key (COMPONENTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HDVIEW_SCENE
prompt ===========================
prompt
create table HDVIEW_SCENE
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
  maxtrans 255;
comment on table HDVIEW_SCENE
  is '场景表';
comment on column HDVIEW_SCENE.visiable
  is '1:可见0：不可见';
comment on column HDVIEW_SCENE.titleflag
  is '是否自定义title,默认0不配置,展示的是切的图,要不就是SCENENAME值';
alter table HDVIEW_SCENE
  add constraint PK_HHDVIEW_SCENE primary key (SCENEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HDVIEW_THEME
prompt ===========================
prompt
create table HDVIEW_THEME
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
  create_user VARCHAR2(30)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table HDVIEW_THEME_CONFIG
prompt ==================================
prompt
create table HDVIEW_THEME_CONFIG
(
  themeid     VARCHAR2(32) not null,
  componentid VARCHAR2(30) not null,
  name        VARCHAR2(60) not null,
  page        NUMBER,
  basefont    NUMBER,
  w           NUMBER,
  h           NUMBER,
  x           NUMBER,
  y           NUMBER,
  i           VARCHAR2(30) not null,
  status      CHAR(1),
  isditu      CHAR(1),
  creat_time  DATE,
  update_time DATE,
  create_user VARCHAR2(30),
  sceneid     VARCHAR2(32),
  id          VARCHAR2(32) not null,
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
comment on table HDVIEW_THEME_CONFIG
  is '场景主题配置表';
comment on column HDVIEW_THEME_CONFIG.w
  is '宽';
comment on column HDVIEW_THEME_CONFIG.h
  is '高';
comment on column HDVIEW_THEME_CONFIG.x
  is 'x轴';
comment on column HDVIEW_THEME_CONFIG.y
  is 'y轴';
comment on column HDVIEW_THEME_CONFIG.i
  is 'COMPONENTID';
comment on column HDVIEW_THEME_CONFIG.status
  is '0:不生效 1';
comment on column HDVIEW_THEME_CONFIG.isditu
  is '0:否 1 :是   是否底图(地图)';
comment on column HDVIEW_THEME_CONFIG.border
  is '默认是否有边框 0:否 1 :是   ';
alter table HDVIEW_THEME_CONFIG
  add constraint PK_HHDVIEW_THEME_CONFIG primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table HDVIEW_THEME_CONFIG
  add constraint UNI_HHDVIEW_THEME_CONFIG unique (THEMEID, SCENEID, I, PAGE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HIGHSPEED_DATA
prompt =============================
prompt
create table HIGHSPEED_DATA
(
  id            VARCHAR2(32),
  traffic_index VARCHAR2(32) not null,
  time          DATE not null
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
comment on table HIGHSPEED_DATA
  is '高速公路高峰时段流量';

prompt
prompt Creating table HIMAP_TOKEN
prompt ==========================
prompt
create table HIMAP_TOKEN
(
  token   NVARCHAR2(32) not null,
  appname NVARCHAR2(32) not null,
  address NVARCHAR2(200) not null,
  appdesc NVARCHAR2(32),
  apptype NVARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table HIMAP_TOKEN
  is '地图服务token表';
comment on column HIMAP_TOKEN.token
  is 'token';
comment on column HIMAP_TOKEN.appname
  is '应用名称';
comment on column HIMAP_TOKEN.address
  is '应用地址';
comment on column HIMAP_TOKEN.appdesc
  is '应用描述';
comment on column HIMAP_TOKEN.apptype
  is '应用类型　0:管控子系统 1:其他';
alter table HIMAP_TOKEN
  add primary key (TOKEN)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HRV_CONCERN
prompt ==========================
prompt
create table HRV_CONCERN
(
  concernid   VARCHAR2(32) not null,
  concernname VARCHAR2(100) not null,
  concerntype CHAR(1) not null,
  creator     VARCHAR2(50) not null,
  createtime  DATE not null,
  updater     VARCHAR2(50),
  updatetime  DATE,
  strcoords   CLOB,
  description VARCHAR2(300),
  areaids     VARCHAR2(1000) default 'all' not null
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
comment on table HRV_CONCERN
  is '关注点（重点道路、重点区域）表';
comment on column HRV_CONCERN.concernid
  is '关注点（重点道路、重点区域）ID';
comment on column HRV_CONCERN.concernname
  is '关注点名称';
comment on column HRV_CONCERN.concerntype
  is '关注点类型';
comment on column HRV_CONCERN.creator
  is '创建人';
comment on column HRV_CONCERN.createtime
  is '创建时间';
comment on column HRV_CONCERN.updater
  is '更新人';
comment on column HRV_CONCERN.updatetime
  is '更新时间';
comment on column HRV_CONCERN.strcoords
  is '关注点图形坐标集';
comment on column HRV_CONCERN.description
  is '备注';
alter table HRV_CONCERN
  add primary key (CONCERNID)
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
prompt Creating table MONITOR_SECTION
prompt ==============================
prompt
create table MONITOR_SECTION
(
  sectionid       NVARCHAR2(8) not null,
  sectionname     NVARCHAR2(100) not null,
  downpointid     NVARCHAR2(50),
  uppointid       NVARCHAR2(50),
  roadid          NVARCHAR2(5) not null,
  approachdirt    NVARCHAR2(2) not null,
  width           NUMBER(5,2),
  lanes           INTEGER,
  crossflag       INTEGER default 1 not null,
  leftpktlanes    INTEGER,
  rightpktlanes   INTEGER,
  fulllanelen     INTEGER,
  leftpktlanelen  NUMBER(6,2),
  rightpktlanelen NUMBER(6,2),
  stdflux         INTEGER,
  expflux         INTEGER,
  jamflux         INTEGER,
  stdspeed        INTEGER,
  expspeed        INTEGER,
  jamspeed        INTEGER,
  stdtime         INTEGER,
  exptime         INTEGER,
  jamtime         INTEGER,
  remark          VARCHAR2(4000),
  effect          NVARCHAR2(1) default 1,
  addroadid       VARCHAR2(4),
  huanxian        NVARCHAR2(2),
  maxflux         INTEGER,
  avgflux         INTEGER,
  maxspeed        INTEGER,
  avgspeed        INTEGER,
  mintime         INTEGER,
  avgtime         INTEGER,
  uproadid        VARCHAR2(5),
  downroadid      VARCHAR2(5),
  rxdkd           NUMBER(5,2),
  bxshyz          NVARCHAR2(64),
  dltcbwgs        NUMBER(6),
  isdxcd          NVARCHAR2(1),
  dxstarttime     NVARCHAR2(8),
  dxendtime       NVARCHAR2(8),
  isgjcd          NVARCHAR2(1),
  sourcetype      INTEGER,
  area_id         VARCHAR2(6),
  length          NUMBER(8,2),
  sectionlevel    CHAR(1),
  upcrossid       VARCHAR2(32),
  downcrossid     VARCHAR2(32),
  department      VARCHAR2(100),
  flag            CHAR(1)
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
comment on table MONITOR_SECTION
  is '路段表';
comment on column MONITOR_SECTION.sectionid
  is '路段编号，8位数值型字符（必须填写）';
comment on column MONITOR_SECTION.sectionname
  is '路段名称，必须填写';
comment on column MONITOR_SECTION.downpointid
  is '--下游道路道路（对应道路表nid）';
comment on column MONITOR_SECTION.uppointid
  is '--上游道路道路（对应道路表nid）';
comment on column MONITOR_SECTION.roadid
  is '属性不详，默认“00000”即可';
comment on column MONITOR_SECTION.approachdirt
  is '进口道方向（对应枚举类型 149：1	东->西
2	西->东
3	南->北
4	北->南
5	东北->西南
6	西南->东北
7	东南->西北
8	西北->东南
11	进城
0	无
23	下行出口
10	出城
13	下行
21	上行出口
12	上行
14	进(收费站)
20	上行进口
22	下行进口
15	出(收费站)
）';
comment on column MONITOR_SECTION.width
  is '--路段宽度';
comment on column MONITOR_SECTION.lanes
  is '--车道数';
comment on column MONITOR_SECTION.crossflag
  is '行人通行标志 0-不允许 1-允许';
comment on column MONITOR_SECTION.leftpktlanes
  is '--左转不完整车道数';
comment on column MONITOR_SECTION.rightpktlanes
  is '--右转不完整车道数';
comment on column MONITOR_SECTION.fulllanelen
  is '--完整车道长度';
comment on column MONITOR_SECTION.leftpktlanelen
  is '--左转不完整车道长度';
comment on column MONITOR_SECTION.rightpktlanelen
  is '--右转不完整车道长度';
comment on column MONITOR_SECTION.stdflux
  is '--标准流量';
comment on column MONITOR_SECTION.expflux
  is '--畅通流量';
comment on column MONITOR_SECTION.jamflux
  is '--拥堵流量';
comment on column MONITOR_SECTION.stdspeed
  is '--标准速度';
comment on column MONITOR_SECTION.expspeed
  is '--畅通速度';
comment on column MONITOR_SECTION.jamspeed
  is '--拥堵速度';
comment on column MONITOR_SECTION.stdtime
  is '--标准通过时间';
comment on column MONITOR_SECTION.exptime
  is '--畅通通过时间';
comment on column MONITOR_SECTION.jamtime
  is '--拥堵通过时间';
comment on column MONITOR_SECTION.remark
  is '备注（暂时用来存储路段经纬度）';
comment on column MONITOR_SECTION.effect
  is '--属性不详';
comment on column MONITOR_SECTION.addroadid
  is '--属性不详';
comment on column MONITOR_SECTION.huanxian
  is '--属性不详';
comment on column MONITOR_SECTION.maxflux
  is '--属性不详';
comment on column MONITOR_SECTION.avgflux
  is '--属性不详';
comment on column MONITOR_SECTION.maxspeed
  is '--属性不详';
comment on column MONITOR_SECTION.avgspeed
  is '--属性不详';
comment on column MONITOR_SECTION.mintime
  is '--属性不详';
comment on column MONITOR_SECTION.avgtime
  is '--属性不详';
comment on column MONITOR_SECTION.uproadid
  is '--属性不详';
comment on column MONITOR_SECTION.downroadid
  is '--属性不详';
comment on column MONITOR_SECTION.rxdkd
  is '--人行道宽度';
comment on column MONITOR_SECTION.bxshyz
  is '--标线施划样子';
comment on column MONITOR_SECTION.dltcbwgs
  is '--道路停车泊位个数';
comment on column MONITOR_SECTION.isdxcd
  is '是否单行车道（0：非单行车道； 1：是单行车道）';
comment on column MONITOR_SECTION.dxstarttime
  is '--单行起始时间';
comment on column MONITOR_SECTION.dxendtime
  is '--单行结束时间';
comment on column MONITOR_SECTION.isgjcd
  is '--有无公交车道（0：无公交车道； 1：有公交车道）';
comment on column MONITOR_SECTION.sourcetype
  is '--1：信号控制系统所定义的路段；其他值为非信号控制系统所定义的路段。';
comment on column MONITOR_SECTION.area_id
  is '所属辖区（对应枚举 180）';
comment on column MONITOR_SECTION.length
  is '路段长度（米）';
comment on column MONITOR_SECTION.sectionlevel
  is '道路等级（对应枚举 3115：0	国家高速公路
1	国道
2	省级高速公路、省道
3	县道
4	乡村道
5	城市快速路
6	城市主干道
7	城市次干道
8	城市支路
9	其他道路
A	单位小区自建路
B	公共停车场
C	公共广场
）';
comment on column MONITOR_SECTION.upcrossid
  is '--上游路口编码（对应路口表nid）';
comment on column MONITOR_SECTION.downcrossid
  is '--下游路口编码（对应路口表nid）';
comment on column MONITOR_SECTION.department
  is '管养部门';
comment on column MONITOR_SECTION.flag
  is '是否有流量监测设备（0：没有；1：有）';
create index PK_MONITOR_INDEX on MONITOR_SECTION (SECTIONID, SECTIONNAME)
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
alter table MONITOR_SECTION
  add constraint MONITOR_SECTION_PRIMARKEY primary key (SECTIONID);

prompt
prompt Creating table HRV_CONCERN_SECTION_RELATION
prompt ===========================================
prompt
create table HRV_CONCERN_SECTION_RELATION
(
  concernid VARCHAR2(32) not null,
  sectionid NVARCHAR2(8) not null,
  strcoords CLOB
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
comment on table HRV_CONCERN_SECTION_RELATION
  is '关注点与路段关联表';
comment on column HRV_CONCERN_SECTION_RELATION.concernid
  is '关注点ID';
comment on column HRV_CONCERN_SECTION_RELATION.sectionid
  is '路段ID';
comment on column HRV_CONCERN_SECTION_RELATION.strcoords
  is '路段坐标集合';
alter table HRV_CONCERN_SECTION_RELATION
  add constraint CONCERN_SECTION_RELATION_01 primary key (CONCERNID, SECTIONID)
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
alter table HRV_CONCERN_SECTION_RELATION
  add constraint FK_HCSR_SECTIONID foreign key (SECTIONID)
  references MONITOR_SECTION (SECTIONID);

prompt
prompt Creating table HRV_DEPARTMENT
prompt =============================
prompt
create table HRV_DEPARTMENT
(
  cdepartmentid   NVARCHAR2(12) not null,
  cdepartmentname NVARCHAR2(12) not null
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
prompt Creating table HRV_ECHARTS_TIME
prompt ===============================
prompt
create table HRV_ECHARTS_TIME
(
  timestr VARCHAR2(4) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table HRV_ECHARTS_TIME
  is 'echarts统计图表';
comment on column HRV_ECHARTS_TIME.timestr
  is '24小时时间';

prompt
prompt Creating table HRV_FREEFLOWSPEED
prompt ================================
prompt
create table HRV_FREEFLOWSPEED
(
  sectionid     VARCHAR2(32) not null,
  updatetdate   DATE default sysdate,
  freeflowspeed NUMBER(11,2) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table HRV_FREEFLOWSPEED
  is '路段自由流速度表';
comment on column HRV_FREEFLOWSPEED.sectionid
  is '路段id';
comment on column HRV_FREEFLOWSPEED.updatetdate
  is '更新时间';
comment on column HRV_FREEFLOWSPEED.freeflowspeed
  is '自由流速度    自动计算  定时更新（默认一个月更新一次）';
alter table HRV_FREEFLOWSPEED
  add constraint HRV_FREEFLOWSPEED_PK primary key (SECTIONID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table HRV_INOUTCITY_FLOW
prompt =================================
prompt
create table HRV_INOUTCITY_FLOW
(
  deviceid    NVARCHAR2(20) not null,
  inoutflag   CHAR(1) not null,
  allcarnum   NUMBER(10) not null,
  computedate DATE not null,
  insertdate  DATE default sysdate not null
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
comment on table HRV_INOUTCITY_FLOW
  is '进出城车流量表';
comment on column HRV_INOUTCITY_FLOW.deviceid
  is '卡口编号';
comment on column HRV_INOUTCITY_FLOW.inoutflag
  is '进出城标志，0-进城，1-出城';
comment on column HRV_INOUTCITY_FLOW.allcarnum
  is '车辆总数';
comment on column HRV_INOUTCITY_FLOW.computedate
  is '计算时间';
comment on column HRV_INOUTCITY_FLOW.insertdate
  is '入库时间';

prompt
prompt Creating table HRV_MAPLAYER
prompt ===========================
prompt
create table HRV_MAPLAYER
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
comment on table HRV_MAPLAYER
  is '可视化地图图层表';
comment on column HRV_MAPLAYER.layer_id
  is '图层ID';
comment on column HRV_MAPLAYER.layer_name
  is '图层名称';
comment on column HRV_MAPLAYER.layer_visible
  is '是否显示';
comment on column HRV_MAPLAYER.layer_order
  is '图层顺序';
comment on column HRV_MAPLAYER.creator
  is '创建人';
comment on column HRV_MAPLAYER.createtime
  is '创建时间';
comment on column HRV_MAPLAYER.updater
  is '更新人';
comment on column HRV_MAPLAYER.updatetime
  is '更新时间';
comment on column HRV_MAPLAYER.sqlview
  is 'sql视图';
alter table HRV_MAPLAYER
  add constraint LAYER_ID_KEY primary key (LAYER_ID)
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
prompt Creating table HRV_MONITOR_AREA_REGULAR_NUM
prompt ===========================================
prompt
create table HRV_MONITOR_AREA_REGULAR_NUM
(
  regularnum   NUMBER not null,
  unregularnum NUMBER not null,
  areaid       VARCHAR2(20) not null,
  computedate  DATE not null,
  insertdate   DATE not null
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
comment on table HRV_MONITOR_AREA_REGULAR_NUM
  is '高分可视化区域通勤车流量表';
comment on column HRV_MONITOR_AREA_REGULAR_NUM.regularnum
  is '通勤车数';
comment on column HRV_MONITOR_AREA_REGULAR_NUM.unregularnum
  is '非通勤车数';
comment on column HRV_MONITOR_AREA_REGULAR_NUM.areaid
  is '区域编号';
comment on column HRV_MONITOR_AREA_REGULAR_NUM.computedate
  is '计算时间';
comment on column HRV_MONITOR_AREA_REGULAR_NUM.insertdate
  is '入库时间';

prompt
prompt Creating table HRV_MONITOR_CAR_BELONGING
prompt ========================================
prompt
create table HRV_MONITOR_CAR_BELONGING
(
  allcarnum        NUMBER not null,
  otherprovincenum NUMBER not null,
  foreignnum       NUMBER not null,
  localnum         NUMBER not null,
  pointcode        VARCHAR2(20) not null,
  computedate      DATE not null,
  insertdate       DATE not null
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
comment on table HRV_MONITOR_CAR_BELONGING
  is '高分可视化车辆归属地分析表';
comment on column HRV_MONITOR_CAR_BELONGING.allcarnum
  is '在途车辆数';
comment on column HRV_MONITOR_CAR_BELONGING.otherprovincenum
  is '外省车数';
comment on column HRV_MONITOR_CAR_BELONGING.foreignnum
  is '本省外地车数';
comment on column HRV_MONITOR_CAR_BELONGING.localnum
  is '本市车';
comment on column HRV_MONITOR_CAR_BELONGING.pointcode
  is '点位编号';
comment on column HRV_MONITOR_CAR_BELONGING.computedate
  is '计算时间';
comment on column HRV_MONITOR_CAR_BELONGING.insertdate
  is '入库时间';

prompt
prompt Creating table HRV_MONITOR_CAR_ONWAY
prompt ====================================
prompt
create table HRV_MONITOR_CAR_ONWAY
(
  allcarnum        NUMBER not null,
  otherprovincenum NUMBER not null,
  foreignnum       NUMBER not null,
  localnum         NUMBER not null,
  bigcar           NUMBER not null,
  computedate      DATE not null,
  insertdate       DATE not null,
  smallcar         NUMBER not null
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
comment on table HRV_MONITOR_CAR_ONWAY
  is '高分可视化在途车辆表';
comment on column HRV_MONITOR_CAR_ONWAY.allcarnum
  is '在途车辆数';
comment on column HRV_MONITOR_CAR_ONWAY.otherprovincenum
  is '外省车辆数';
comment on column HRV_MONITOR_CAR_ONWAY.foreignnum
  is '本省外地车辆数';
comment on column HRV_MONITOR_CAR_ONWAY.localnum
  is '本市车辆数';
comment on column HRV_MONITOR_CAR_ONWAY.bigcar
  is '大型车数';
comment on column HRV_MONITOR_CAR_ONWAY.computedate
  is '计算时间';
comment on column HRV_MONITOR_CAR_ONWAY.insertdate
  is '入库时间';
comment on column HRV_MONITOR_CAR_ONWAY.smallcar
  is '小型车数';

prompt
prompt Creating table HRV_ROAD_NET_HUB
prompt ===============================
prompt
create table HRV_ROAD_NET_HUB
(
  point_id         VARCHAR2(32),
  point_name       VARCHAR2(100),
  point_coordiante CLOB,
  related_roadid   VARCHAR2(10)
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
comment on table HRV_ROAD_NET_HUB
  is '路网枢纽点位信息';
comment on column HRV_ROAD_NET_HUB.point_id
  is '枢纽点位唯一标识';
comment on column HRV_ROAD_NET_HUB.point_name
  is '枢纽名称';
comment on column HRV_ROAD_NET_HUB.point_coordiante
  is '坐标';
comment on column HRV_ROAD_NET_HUB.related_roadid
  is '最近相关联的路段ID';

prompt
prompt Creating table HRV_SECTION_BASE
prompt ===============================
prompt
create table HRV_SECTION_BASE
(
  sectionid     VARCHAR2(32) not null,
  saturatedflow NUMBER,
  updater       VARCHAR2(32) not null,
  updatetdate   DATE not null,
  speedlimit    NUMBER
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
comment on table HRV_SECTION_BASE
  is '路段基础信息表';
comment on column HRV_SECTION_BASE.sectionid
  is '路段id';
comment on column HRV_SECTION_BASE.saturatedflow
  is '饱和流量    人工录入';
comment on column HRV_SECTION_BASE.updater
  is '更新人';
comment on column HRV_SECTION_BASE.updatetdate
  is '更新时间';
comment on column HRV_SECTION_BASE.speedlimit
  is '路段限速值   人工录入';
alter table HRV_SECTION_BASE
  add constraint HRV_SECTION_SATURATED_CONFIG_1 primary key (SECTIONID)
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
prompt Creating table HRV_SECTION_STATUS
prompt =================================
prompt
create table HRV_SECTION_STATUS
(
  sectionid     VARCHAR2(32) not null,
  delaytime     NUMBER(11,2) not null,
  avspeed       NUMBER(11,2) not null,
  delaytimerito NUMBER(11,2) not null,
  computedate   DATE default sysdate not null,
  insertdate    DATE default sysdate not null
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
comment on table HRV_SECTION_STATUS
  is '路段交通状态表';
comment on column HRV_SECTION_STATUS.sectionid
  is '路段id';
comment on column HRV_SECTION_STATUS.delaytime
  is '延误时间';
comment on column HRV_SECTION_STATUS.avspeed
  is '平均行程速度';
comment on column HRV_SECTION_STATUS.delaytimerito
  is '延误时间比';
comment on column HRV_SECTION_STATUS.computedate
  is '计算时间';
comment on column HRV_SECTION_STATUS.insertdate
  is '入库时间';
alter table HRV_SECTION_STATUS
  add constraint SYS_HRV_SECTION_STATUS_1 primary key (SECTIONID, COMPUTEDATE)
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
prompt Creating table HRV_TRAFFICWARN
prompt ==============================
prompt
create table HRV_TRAFFICWARN
(
  concernid      VARCHAR2(32) not null,
  concerntype    CHAR(1) not null,
  concernname    VARCHAR2(100) not null,
  warntype       CHAR(1) not null,
  value          NUMBER not null,
  saturationflow NUMBER not null,
  actualflow     NUMBER not null,
  caltime        DATE not null,
  updatetime     DATE not null
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
comment on table HRV_TRAFFICWARN
  is '流量预警分析结果表';
comment on column HRV_TRAFFICWARN.concernid
  is '关注点ID';
comment on column HRV_TRAFFICWARN.concerntype
  is '关注点类型  1：重点道路 2：重点区域';
comment on column HRV_TRAFFICWARN.concernname
  is '关注点名称';
comment on column HRV_TRAFFICWARN.warntype
  is '预警类型  1：饱和 2：突变上升 3：突变下降';
comment on column HRV_TRAFFICWARN.value
  is '预警值   Type为1时 是饱和度， Type为2 3 时是突变百分比';
comment on column HRV_TRAFFICWARN.saturationflow
  is '饱和流量';
comment on column HRV_TRAFFICWARN.actualflow
  is '实际流量';
comment on column HRV_TRAFFICWARN.caltime
  is '计算时间';
comment on column HRV_TRAFFICWARN.updatetime
  is '入库时间';
alter table HRV_TRAFFICWARN
  add constraint SYS_HRV_TRAFFICWARN_P001 primary key (CONCERNID, CALTIME, WARNTYPE)
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
prompt Creating table ILLEGAL_COERCIVEMEASURES
prompt =======================================
prompt
create table ILLEGAL_COERCIVEMEASURES
(
  id           VARCHAR2(32) not null,
  dept         VARCHAR2(12),
  dillegaldate DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_COERCIVEMEASURES
  is '部门强制措施违法';
comment on column ILLEGAL_COERCIVEMEASURES.id
  is 'uuid';
comment on column ILLEGAL_COERCIVEMEASURES.dept
  is '部门编号';
comment on column ILLEGAL_COERCIVEMEASURES.dillegaldate
  is '违法时间';
alter table ILLEGAL_COERCIVEMEASURES
  add constraint PRIILLEGAL_COERCIVEMEASURES primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_COFENCE_WARNING
prompt ======================================
prompt
create table ILLEGAL_COFENCE_WARNING
(
  nid          VARCHAR2(32) not null,
  cofence      VARCHAR2(6),
  warningvalue NVARCHAR2(100) not null,
  warningname  NVARCHAR2(60) not null,
  warningtime  DATE not null,
  prenum       NUMBER,
  nownum       NUMBER,
  warningdept  VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_COFENCE_WARNING
  is '违法数据突变预警';
comment on column ILLEGAL_COFENCE_WARNING.nid
  is 'uuid';
comment on column ILLEGAL_COFENCE_WARNING.cofence
  is '违法行为';
comment on column ILLEGAL_COFENCE_WARNING.warningvalue
  is '预警数值';
comment on column ILLEGAL_COFENCE_WARNING.warningname
  is '预警名称';
comment on column ILLEGAL_COFENCE_WARNING.warningtime
  is '预警时间';
comment on column ILLEGAL_COFENCE_WARNING.prenum
  is '历史值';
comment on column ILLEGAL_COFENCE_WARNING.nownum
  is '当前值';
comment on column ILLEGAL_COFENCE_WARNING.warningdept
  is '预警部门';
alter table ILLEGAL_COFENCE_WARNING
  add constraint PK_ILLEGAL_COFENCE_WARNING primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_DATA
prompt ===========================
prompt
create table ILLEGAL_DATA
(
  nid                     VARCHAR2(32) not null,
  clicensetype            VARCHAR2(2),
  ccarnumber              NVARCHAR2(16),
  dillegaldate            DATE not null,
  coffense                VARCHAR2(6) not null,
  caddresscode            VARCHAR2(12) not null,
  cillegaladdress         VARCHAR2(200),
  ccollectionagencies     VARCHAR2(12) not null,
  cdatasource             VARCHAR2(2) not null,
  csnaptype               CHAR(1) not null,
  cdevicecode             VARCHAR2(18) not null,
  cdirectioncode          VARCHAR2(8),
  dredlighttime           DATE,
  nredlightduration       NUMBER(3),
  clanenumber             VARCHAR2(2),
  nvehiclespeed           NUMBER(3) default 0 not null,
  nbigcarspeedlimit       NUMBER(3) default 0 not null,
  ntruckspeedlimit        NUMBER(3),
  ncarspeedlimit          NUMBER(3),
  nbigcarlawenforcsplimit NUMBER(3) default 0 not null,
  ntrucklawenforcsplimit  NUMBER(3),
  ncarlawenforcsplimit    NUMBER(3) default 0 not null,
  nminispeedlimit         NUMBER(3),
  nevidencevideo          VARCHAR2(400),
  npicvidpathid           NUMBER(4),
  cvehicletype            VARCHAR2(32) default 1,
  cpic1path               VARCHAR2(400),
  cpic2path               VARCHAR2(400),
  cpic3path               VARCHAR2(400),
  cselectstatus           CHAR(1),
  dselecttime             DATE,
  noperator               VARCHAR2(20),
  cpic4path               VARCHAR2(400),
  zpz                     NVARCHAR2(20),
  shry                    NVARCHAR2(20),
  fsry                    NVARCHAR2(20),
  scry                    NVARCHAR2(20),
  dcry                    NVARCHAR2(20),
  xywh                    VARCHAR2(400),
  videoevidence           VARCHAR2(200),
  dillegalenddate         DATE,
  shryid                  VARCHAR2(12),
  fsryid                  NVARCHAR2(6),
  scryid                  NVARCHAR2(6),
  dcryid                  NVARCHAR2(6),
  remarks                 VARCHAR2(100),
  datauploadtime          DATE,
  mqrecivetime            DATE,
  create_time             DATE,
  export_time             DATE,
  uploadflag              CHAR(1),
  uploadrecord            VARCHAR2(1300),
  reviewerrormark         VARCHAR2(1),
  dillegalbegindate       DATE,
  caddressendcode         VARCHAR2(12),
  jdsbh                   VARCHAR2(15),
  returnval               CHAR(5),
  returnmes               NVARCHAR2(2000),
  datasavetime            DATE default sysdate,
  illegalvehtype          VARCHAR2(2) default 0,
  hisccarnumber           NVARCHAR2(16),
  cllx                    CHAR(3),
  syxz                    CHAR(1),
  syr                     VARCHAR2(128),
  fzjg                    VARCHAR2(500),
  glbm                    VARCHAR2(12),
  zsxzqh                  VARCHAR2(10),
  zsxxdz                  VARCHAR2(128),
  clyt                    CHAR(16),
  dwbh                    VARCHAR2(14),
  zzjglx                  VARCHAR2(2),
  regionname              VARCHAR2(200),
  regiondistance          NUMBER(6),
  monitorcode             VARCHAR2(12),
  monitoraddress          VARCHAR2(200),
  msg                     VARCHAR2(650),
  msgno                   VARCHAR2(2),
  policeid                CHAR(6),
  longtitude              NUMBER(13,6),
  latitude                NUMBER(13,6),
  allocoperatorid         VARCHAR2(16),
  alloctime               VARCHAR2(16),
  allocstate              VARCHAR2(16) default 0,
  selectedtime            VARCHAR2(16),
  aistatus                VARCHAR2(16),
  aidropreason            VARCHAR2(16),
  positive                VARCHAR2(16),
  scrap                   VARCHAR2(16),
  rollbackthrough         VARCHAR2(16),
  rollbacktoscrap         VARCHAR2(16),
  tempftpflag             VARCHAR2(16),
  tempmarkflag            VARCHAR2(16)
)
partition by range (DILLEGALDATE) interval (NUMTOYMINTERVAL(3,'MONTH'))
(
  partition ILLDT_201706 values less than (TO_DATE(' 2018-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace TS_ILLEGAL_201706
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table ILLEGAL_DATA
  is '违法数据表';
comment on column ILLEGAL_DATA.nid
  is '数据库自动编号';
comment on column ILLEGAL_DATA.clicensetype
  is '号牌种类';
comment on column ILLEGAL_DATA.ccarnumber
  is '号牌号码';
comment on column ILLEGAL_DATA.dillegaldate
  is '违法时间';
comment on column ILLEGAL_DATA.coffense
  is '违法行为';
comment on column ILLEGAL_DATA.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_DATA.cillegaladdress
  is '违法地址';
comment on column ILLEGAL_DATA.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_DATA.cdatasource
  is '数据来源';
comment on column ILLEGAL_DATA.csnaptype
  is '抓拍类型';
comment on column ILLEGAL_DATA.cdevicecode
  is '设备编号';
comment on column ILLEGAL_DATA.cdirectioncode
  is '方向编号';
comment on column ILLEGAL_DATA.dredlighttime
  is '红灯亮起时间';
comment on column ILLEGAL_DATA.nredlightduration
  is '红灯持续时间';
comment on column ILLEGAL_DATA.clanenumber
  is '车道编号';
comment on column ILLEGAL_DATA.nvehiclespeed
  is '车辆速度';
comment on column ILLEGAL_DATA.nbigcarspeedlimit
  is '大车限速';
comment on column ILLEGAL_DATA.ntruckspeedlimit
  is '卡车限速';
comment on column ILLEGAL_DATA.ncarspeedlimit
  is '小车限速';
comment on column ILLEGAL_DATA.nbigcarlawenforcsplimit
  is '大车执法限速';
comment on column ILLEGAL_DATA.ntrucklawenforcsplimit
  is '卡车执法限速';
comment on column ILLEGAL_DATA.ncarlawenforcsplimit
  is '小车执法限速';
comment on column ILLEGAL_DATA.nminispeedlimit
  is '最低限速';
comment on column ILLEGAL_DATA.nevidencevideo
  is '证据－视频';
comment on column ILLEGAL_DATA.npicvidpathid
  is '图片或视频路径ID';
comment on column ILLEGAL_DATA.cvehicletype
  is '违法车辆类型';
comment on column ILLEGAL_DATA.cpic1path
  is '证据－图片1路径';
comment on column ILLEGAL_DATA.cpic2path
  is '证据－图片2路径';
comment on column ILLEGAL_DATA.cpic3path
  is '证据－图片3路径';
comment on column ILLEGAL_DATA.cselectstatus
  is '分拣状态(枚举值:146)';
comment on column ILLEGAL_DATA.dselecttime
  is '分拣时间';
comment on column ILLEGAL_DATA.noperator
  is '操作人员';
comment on column ILLEGAL_DATA.cpic4path
  is '证据－图片4路径';
comment on column ILLEGAL_DATA.shry
  is '审核人员';
comment on column ILLEGAL_DATA.fsry
  is '复审人员';
comment on column ILLEGAL_DATA.scry
  is '删除人员';
comment on column ILLEGAL_DATA.dcry
  is '导出人员';
comment on column ILLEGAL_DATA.xywh
  is '特征图片';
comment on column ILLEGAL_DATA.dillegalenddate
  is '区间测速终点违法时间';
comment on column ILLEGAL_DATA.jdsbh
  is '违法数据手工录入-违停告知单号';
comment on column ILLEGAL_DATA.hisccarnumber
  is '历史号牌号码  号牌识别错误使用';
comment on column ILLEGAL_DATA.cllx
  is '车辆类型';
comment on column ILLEGAL_DATA.syxz
  is '使用性质';
comment on column ILLEGAL_DATA.syr
  is '机动车所有人';
comment on column ILLEGAL_DATA.fzjg
  is '发证机关';
comment on column ILLEGAL_DATA.glbm
  is '管理部门';
comment on column ILLEGAL_DATA.zsxzqh
  is '住所行政区划';
comment on column ILLEGAL_DATA.zsxxdz
  is '住所详细地址';
comment on column ILLEGAL_DATA.clyt
  is '车辆用途';
comment on column ILLEGAL_DATA.dwbh
  is '单位编号';
comment on column ILLEGAL_DATA.zzjglx
  is '组织机构类型';
comment on column ILLEGAL_DATA.regionname
  is '区间名称';
comment on column ILLEGAL_DATA.regiondistance
  is '区间距离';
comment on column ILLEGAL_DATA.monitorcode
  is '移动点位编号';
comment on column ILLEGAL_DATA.monitoraddress
  is '移动点位地址';
comment on column ILLEGAL_DATA.msg
  is '作废原因';
comment on column ILLEGAL_DATA.msgno
  is '作废原因编号，枚举值3838';
comment on column ILLEGAL_DATA.policeid
  is '警员号';
comment on column ILLEGAL_DATA.longtitude
  is '经度';
comment on column ILLEGAL_DATA.latitude
  is '纬度';
comment on column ILLEGAL_DATA.allocoperatorid
  is '待办用户ID';
comment on column ILLEGAL_DATA.alloctime
  is '分配时间';
comment on column ILLEGAL_DATA.allocstate
  is '分配状态：0待办 1已办';
comment on column ILLEGAL_DATA.selectedtime
  is '提取时间';
comment on column ILLEGAL_DATA.aistatus
  is 'AI审核状态';
comment on column ILLEGAL_DATA.aidropreason
  is 'AI废片原因';
comment on column ILLEGAL_DATA.positive
  is '正片';
comment on column ILLEGAL_DATA.scrap
  is '废片';
comment on column ILLEGAL_DATA.rollbackthrough
  is '回滚正片';
comment on column ILLEGAL_DATA.rollbacktoscrap
  is '回滚废片';
comment on column ILLEGAL_DATA.tempmarkflag
  is '水印临时用字段';
create index IDX_ILL_ADDR_ORDER on ILLEGAL_DATA (DILLEGALDATE, CADDRESSCODE, CCARNUMBER)
  nologging  local;
create index IDX_ILL_ADDR_STATUS on ILLEGAL_DATA (DILLEGALDATE, CADDRESSCODE, CSELECTSTATUS)
  nologging  local;
create index IDX_ILL_CARNUM on ILLEGAL_DATA (CCARNUMBER, DILLEGALDATE, CSELECTSTATUS)
  nologging  local;
create index IDX_ILL_OFFENSE_STATUS on ILLEGAL_DATA (DILLEGALDATE, COFFENSE, CSELECTSTATUS)
  nologging  local;
create index IDX_ILL_SCRY on ILLEGAL_DATA (DSELECTTIME, SCRY, DILLEGALDATE)
  nologging  local;
create index IDX_ILL_VEHTYPE on ILLEGAL_DATA (DILLEGALDATE, ILLEGALVEHTYPE)
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
create unique index PK_ILLDATE_ID on ILLEGAL_DATA (DILLEGALDATE, NID)
  nologging  local;
alter table ILLEGAL_DATA
  add constraint PK_ILLEGAL_DATA primary key (NID)
  disable
  novalidate;

prompt
prompt Creating table ILLEGAL_DATA_EXEMPTION
prompt =====================================
prompt
create table ILLEGAL_DATA_EXEMPTION
(
  nid                     VARCHAR2(32) not null,
  exemption_type          VARCHAR2(2),
  clicensetype            VARCHAR2(2),
  ccarnumber              NVARCHAR2(16),
  dillegaldate            DATE not null,
  coffense                VARCHAR2(6) not null,
  caddresscode            VARCHAR2(12) not null,
  cillegaladdress         VARCHAR2(200),
  ccollectionagencies     VARCHAR2(12) not null,
  cdatasource             VARCHAR2(2) not null,
  csnaptype               CHAR(1) not null,
  cdevicecode             VARCHAR2(18) not null,
  cdirectioncode          VARCHAR2(8),
  dredlighttime           DATE,
  nredlightduration       NUMBER(3),
  clanenumber             VARCHAR2(2),
  nvehiclespeed           NUMBER(3) default 0 not null,
  nbigcarspeedlimit       NUMBER(3) default 0 not null,
  ntruckspeedlimit        NUMBER(3),
  ncarspeedlimit          NUMBER(3),
  nbigcarlawenforcsplimit NUMBER(3) default 0 not null,
  ntrucklawenforcsplimit  NUMBER(3),
  ncarlawenforcsplimit    NUMBER(3) default 0 not null,
  nminispeedlimit         NUMBER(4),
  nevidencevideo          VARCHAR2(400),
  npicvidpathid           NUMBER(4),
  cvehicletype            VARCHAR2(32) default 1,
  cpic1path               VARCHAR2(400),
  cpic2path               VARCHAR2(400),
  cpic3path               VARCHAR2(400),
  cselectstatus           CHAR(1),
  dselecttime             DATE,
  noperator               VARCHAR2(20),
  cpic4path               VARCHAR2(400),
  zpz                     NVARCHAR2(20),
  shry                    NVARCHAR2(20),
  fsry                    NVARCHAR2(20),
  scry                    NVARCHAR2(20),
  dcry                    NVARCHAR2(20),
  xywh                    VARCHAR2(400),
  videoevidence           VARCHAR2(200),
  dillegalenddate         DATE,
  shryid                  VARCHAR2(12),
  fsryid                  NVARCHAR2(6),
  scryid                  NVARCHAR2(6),
  dcryid                  NVARCHAR2(6),
  remarks                 VARCHAR2(100),
  datauploadtime          DATE,
  mqrecivetime            DATE,
  create_time             DATE,
  export_time             DATE,
  uploadflag              CHAR(1),
  uploadrecord            VARCHAR2(1300),
  reviewerrormark         VARCHAR2(1),
  dillegalbegindate       DATE,
  caddressendcode         VARCHAR2(12),
  jdsbh                   VARCHAR2(15),
  returnval               CHAR(5),
  returnmes               NVARCHAR2(2000),
  datasavetime            DATE default sysdate,
  illegalvehtype          VARCHAR2(2) default 0,
  hisccarnumber           NVARCHAR2(16),
  cllx                    CHAR(3),
  syxz                    CHAR(1),
  syr                     VARCHAR2(128),
  fzjg                    VARCHAR2(51),
  glbm                    VARCHAR2(12),
  zsxzqh                  VARCHAR2(10),
  zsxxdz                  VARCHAR2(128),
  clyt                    CHAR(2),
  dwbh                    VARCHAR2(14),
  zzjglx                  VARCHAR2(2),
  regionname              VARCHAR2(200),
  regiondistance          NUMBER(6),
  monitorcode             VARCHAR2(12),
  monitoraddress          VARCHAR2(200),
  msg                     VARCHAR2(650),
  msgno                   VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_DATA_GEOMETRY
prompt ====================================
prompt
create table ILLEGAL_DATA_GEOMETRY
(
  caddresscode VARCHAR2(32),
  geometry     MDSYS.SDO_GEOMETRY,
  ncounts      NUMBER(6),
  illegaldate  DATE
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
comment on table ILLEGAL_DATA_GEOMETRY
  is '违法地理信息表';
comment on column ILLEGAL_DATA_GEOMETRY.caddresscode
  is '违法编号';
comment on column ILLEGAL_DATA_GEOMETRY.geometry
  is '违法地理信息';
create index IDX_ILLEGAL_GEOMETRY_DATE on ILLEGAL_DATA_GEOMETRY (ILLEGALDATE)
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
prompt Creating table ILLEGAL_DATA_MILITARY
prompt ====================================
prompt
create table ILLEGAL_DATA_MILITARY
(
  nid                     VARCHAR2(32) not null,
  clicensetype            VARCHAR2(2),
  ccarnumber              NVARCHAR2(16),
  dillegaldate            DATE not null,
  coffense                VARCHAR2(6) not null,
  caddresscode            VARCHAR2(12) not null,
  cillegaladdress         VARCHAR2(200),
  ccollectionagencies     VARCHAR2(12) not null,
  cdatasource             VARCHAR2(2) not null,
  csnaptype               CHAR(1) not null,
  cdevicecode             VARCHAR2(18) not null,
  cdirectioncode          VARCHAR2(8),
  dredlighttime           DATE,
  nredlightduration       NUMBER(3),
  clanenumber             VARCHAR2(2),
  nvehiclespeed           NUMBER(3) default 0 not null,
  nbigcarspeedlimit       NUMBER(3) default 0 not null,
  ntruckspeedlimit        NUMBER(3),
  ncarspeedlimit          NUMBER(3),
  nbigcarlawenforcsplimit NUMBER(3) default 0 not null,
  ntrucklawenforcsplimit  NUMBER(3),
  ncarlawenforcsplimit    NUMBER(3) default 0 not null,
  nminispeedlimit         NUMBER(4),
  nevidencevideo          VARCHAR2(400),
  npicvidpathid           NUMBER(4),
  cvehicletype            VARCHAR2(32) default 1,
  cpic1path               VARCHAR2(400),
  cpic2path               VARCHAR2(400),
  cpic3path               VARCHAR2(400),
  cselectstatus           CHAR(1),
  dselecttime             DATE,
  noperator               VARCHAR2(20),
  cpic4path               VARCHAR2(400),
  zpz                     NVARCHAR2(20),
  shry                    NVARCHAR2(20),
  fsry                    NVARCHAR2(20),
  scry                    NVARCHAR2(20),
  dcry                    NVARCHAR2(20),
  xywh                    VARCHAR2(400),
  videoevidence           VARCHAR2(200),
  dillegalenddate         DATE,
  shryid                  VARCHAR2(12),
  fsryid                  NVARCHAR2(6),
  scryid                  NVARCHAR2(6),
  dcryid                  NVARCHAR2(6),
  remarks                 VARCHAR2(100),
  datauploadtime          DATE,
  mqrecivetime            DATE,
  create_time             DATE,
  export_time             DATE,
  uploadflag              CHAR(1),
  uploadrecord            VARCHAR2(1300),
  reviewerrormark         VARCHAR2(1),
  dillegalbegindate       DATE,
  caddressendcode         VARCHAR2(12),
  jdsbh                   VARCHAR2(15),
  returnval               CHAR(5),
  returnmes               NVARCHAR2(2000),
  datasavetime            DATE default sysdate,
  illegalvehtype          VARCHAR2(2) default 0,
  hisccarnumber           NVARCHAR2(16),
  cllx                    CHAR(3),
  syxz                    CHAR(1),
  syr                     VARCHAR2(128),
  fzjg                    VARCHAR2(51),
  glbm                    VARCHAR2(12),
  zsxzqh                  VARCHAR2(10),
  zsxxdz                  VARCHAR2(128),
  clyt                    CHAR(16),
  dwbh                    VARCHAR2(14),
  zzjglx                  VARCHAR2(2),
  regionname              VARCHAR2(200),
  regiondistance          NUMBER(6),
  monitorcode             VARCHAR2(12),
  monitoraddress          VARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_DATA_MILITARY
  is '军车违法数据表';
comment on column ILLEGAL_DATA_MILITARY.nid
  is '数据库自动编号';
comment on column ILLEGAL_DATA_MILITARY.clicensetype
  is '号牌种类';
comment on column ILLEGAL_DATA_MILITARY.ccarnumber
  is '号牌号码';
comment on column ILLEGAL_DATA_MILITARY.dillegaldate
  is '违法时间';
comment on column ILLEGAL_DATA_MILITARY.coffense
  is '违法行为';
comment on column ILLEGAL_DATA_MILITARY.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_DATA_MILITARY.cillegaladdress
  is '违法地址';
comment on column ILLEGAL_DATA_MILITARY.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_DATA_MILITARY.cdatasource
  is '数据来源';
comment on column ILLEGAL_DATA_MILITARY.csnaptype
  is '抓拍类型';
comment on column ILLEGAL_DATA_MILITARY.cdevicecode
  is '设备编号';
comment on column ILLEGAL_DATA_MILITARY.cdirectioncode
  is '方向编号';
comment on column ILLEGAL_DATA_MILITARY.dredlighttime
  is '红灯亮起时间';
comment on column ILLEGAL_DATA_MILITARY.nredlightduration
  is '红灯持续时间';
comment on column ILLEGAL_DATA_MILITARY.clanenumber
  is '车道编号';
comment on column ILLEGAL_DATA_MILITARY.nvehiclespeed
  is '车辆速度';
comment on column ILLEGAL_DATA_MILITARY.nbigcarspeedlimit
  is '大车限速';
comment on column ILLEGAL_DATA_MILITARY.ntruckspeedlimit
  is '卡车限速';
comment on column ILLEGAL_DATA_MILITARY.ncarspeedlimit
  is '小车限速';
comment on column ILLEGAL_DATA_MILITARY.nbigcarlawenforcsplimit
  is '大车执法限速';
comment on column ILLEGAL_DATA_MILITARY.ntrucklawenforcsplimit
  is '卡车执法限速';
comment on column ILLEGAL_DATA_MILITARY.ncarlawenforcsplimit
  is '小车执法限速';
comment on column ILLEGAL_DATA_MILITARY.nminispeedlimit
  is '最低限速';
comment on column ILLEGAL_DATA_MILITARY.nevidencevideo
  is '证据－视频';
comment on column ILLEGAL_DATA_MILITARY.npicvidpathid
  is '图片或视频路径ID';
comment on column ILLEGAL_DATA_MILITARY.cvehicletype
  is '违法车辆类型';
comment on column ILLEGAL_DATA_MILITARY.cpic1path
  is '证据－图片1路径';
comment on column ILLEGAL_DATA_MILITARY.cpic2path
  is '证据－图片2路径';
comment on column ILLEGAL_DATA_MILITARY.cpic3path
  is '证据－图片3路径';
comment on column ILLEGAL_DATA_MILITARY.cselectstatus
  is '分拣状态(枚举值:146)';
comment on column ILLEGAL_DATA_MILITARY.dselecttime
  is '分拣时间';
comment on column ILLEGAL_DATA_MILITARY.noperator
  is '操作人员';
comment on column ILLEGAL_DATA_MILITARY.cpic4path
  is '证据－图片4路径';
comment on column ILLEGAL_DATA_MILITARY.shry
  is '审核人员';
comment on column ILLEGAL_DATA_MILITARY.fsry
  is '复审人员';
comment on column ILLEGAL_DATA_MILITARY.scry
  is '删除人员';
comment on column ILLEGAL_DATA_MILITARY.dcry
  is '导出人员';
comment on column ILLEGAL_DATA_MILITARY.xywh
  is '特征图片';
comment on column ILLEGAL_DATA_MILITARY.dillegalenddate
  is '区间测速终点违法时间';
comment on column ILLEGAL_DATA_MILITARY.dillegalbegindate
  is '区间测速起点违法时间';
comment on column ILLEGAL_DATA_MILITARY.jdsbh
  is '违法数据手工录入-违停告知单号';
comment on column ILLEGAL_DATA_MILITARY.datasavetime
  is '数据入库时间';
comment on column ILLEGAL_DATA_MILITARY.illegalvehtype
  is '违法复审用的车辆种类';
comment on column ILLEGAL_DATA_MILITARY.hisccarnumber
  is '历史号牌号码  号牌识别错误使用';
comment on column ILLEGAL_DATA_MILITARY.cllx
  is '车辆类型';
comment on column ILLEGAL_DATA_MILITARY.syxz
  is '使用性质';
comment on column ILLEGAL_DATA_MILITARY.syr
  is '机动车所有人';
comment on column ILLEGAL_DATA_MILITARY.fzjg
  is '发证机关';
comment on column ILLEGAL_DATA_MILITARY.glbm
  is '管理部门';
comment on column ILLEGAL_DATA_MILITARY.zsxzqh
  is '住所行政区划';
comment on column ILLEGAL_DATA_MILITARY.zsxxdz
  is '住所详细地址';
comment on column ILLEGAL_DATA_MILITARY.clyt
  is '车辆用途';
comment on column ILLEGAL_DATA_MILITARY.dwbh
  is '单位编号';
comment on column ILLEGAL_DATA_MILITARY.zzjglx
  is '组织机构类型';
comment on column ILLEGAL_DATA_MILITARY.regiondistance
  is '区间距离';
comment on column ILLEGAL_DATA_MILITARY.monitorcode
  is '移动点位编号';
comment on column ILLEGAL_DATA_MILITARY.monitoraddress
  is '移动点位地址';
create index IDX_ILL_CAR on ILLEGAL_DATA_MILITARY (CCARNUMBER)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create unique index PK_ILL_ID on ILLEGAL_DATA_MILITARY (DILLEGALDATE, NID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_DEVICE_WARNING
prompt =====================================
prompt
create table ILLEGAL_DEVICE_WARNING
(
  nid          VARCHAR2(32) not null,
  deviceid     VARCHAR2(18) not null,
  warningvalue NVARCHAR2(100) not null,
  warningname  NVARCHAR2(200),
  warningtime  DATE not null,
  prenum       NUMBER,
  nownum       NUMBER,
  warningdept  VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_DEVICE_WARNING
  is '违法设备突变预警';
comment on column ILLEGAL_DEVICE_WARNING.nid
  is 'uuid';
comment on column ILLEGAL_DEVICE_WARNING.deviceid
  is '设备编号';
comment on column ILLEGAL_DEVICE_WARNING.warningvalue
  is '预警数值';
comment on column ILLEGAL_DEVICE_WARNING.warningname
  is '预警名称';
comment on column ILLEGAL_DEVICE_WARNING.warningtime
  is '预警时间';
comment on column ILLEGAL_DEVICE_WARNING.prenum
  is '历史作废率';
comment on column ILLEGAL_DEVICE_WARNING.nownum
  is '当前作废率';
comment on column ILLEGAL_DEVICE_WARNING.warningdept
  is '预警部门';
alter table ILLEGAL_DEVICE_WARNING
  add constraint PK_ILLEGAL_DEVICE_WARNING primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_ENFORCE
prompt ==============================
prompt
create table ILLEGAL_ENFORCE
(
  id                  VARCHAR2(32) not null,
  coffense            VARCHAR2(6),
  caddresscode        VARCHAR2(12),
  ccollectionagencies VARCHAR2(12),
  syxz                VARCHAR2(2),
  wfsj                DATE not null,
  syr                 NVARCHAR2(128),
  zqmj                VARCHAR2(10),
  forcetype           VARCHAR2(1),
  fineinfo            NVARCHAR2(500),
  dsr                 NVARCHAR2(50),
  clicensetype        VARCHAR2(2),
  ccarnumber          NVARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_ENFORCE
  is '现场执法表';
comment on column ILLEGAL_ENFORCE.id
  is '唯一编号';
comment on column ILLEGAL_ENFORCE.coffense
  is '违法行为';
comment on column ILLEGAL_ENFORCE.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_ENFORCE.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_ENFORCE.syxz
  is '使用性质';
comment on column ILLEGAL_ENFORCE.wfsj
  is '违法时间';
comment on column ILLEGAL_ENFORCE.syr
  is '机动车所有人';
comment on column ILLEGAL_ENFORCE.zqmj
  is '执勤民警（警号）';
comment on column ILLEGAL_ENFORCE.forcetype
  is '现场执法种类（简易处罚：1；强制处罚：2）';
comment on column ILLEGAL_ENFORCE.fineinfo
  is '处罚情况';
comment on column ILLEGAL_ENFORCE.dsr
  is '当事人';
comment on column ILLEGAL_ENFORCE.clicensetype
  is '号牌种类';
comment on column ILLEGAL_ENFORCE.ccarnumber
  is '号牌号码';
alter table ILLEGAL_ENFORCE
  add constraint PK_ILLEGAL_ENFORCE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_EXCEPTION_DATA
prompt =====================================
prompt
create table ILLEGAL_EXCEPTION_DATA
(
  nid                     VARCHAR2(32) not null,
  clicensetype            VARCHAR2(10),
  ccarnumber              NVARCHAR2(16),
  dillegaldate            DATE,
  coffense                VARCHAR2(10),
  caddresscode            VARCHAR2(20),
  cillegaladdress         VARCHAR2(200),
  ccollectionagencies     VARCHAR2(20),
  cdatasource             VARCHAR2(10),
  csnaptype               VARCHAR2(10),
  cdevicecode             VARCHAR2(25),
  cdirectioncode          VARCHAR2(10),
  dredlighttime           DATE,
  nredlightduration       NUMBER(3),
  clanenumber             VARCHAR2(2),
  nvehiclespeed           NUMBER(3) default 0 not null,
  nbigcarspeedlimit       NUMBER(3) default 0 not null,
  ntruckspeedlimit        NUMBER(3),
  ncarspeedlimit          NUMBER(3),
  nbigcarlawenforcsplimit NUMBER(3) default 0 not null,
  ntrucklawenforcsplimit  NUMBER(3),
  ncarlawenforcsplimit    NUMBER(3) default 0 not null,
  nminispeedlimit         NUMBER(3),
  nevidencevideo          VARCHAR2(400),
  npicvidpathid           NUMBER(4),
  cvehicletype            VARCHAR2(32) default 1,
  cpic1path               VARCHAR2(400),
  cpic2path               VARCHAR2(400),
  cpic3path               VARCHAR2(400),
  cselectstatus           CHAR(1),
  cpic4path               VARCHAR2(400),
  xywh                    VARCHAR2(400),
  videoevidence           VARCHAR2(200),
  dillegalenddate         DATE,
  datauploadtime          DATE,
  mqrecivetime            DATE,
  export_time             DATE,
  dillegalbegindate       DATE,
  caddressendcode         VARCHAR2(20),
  datasavetime            DATE default sysdate,
  regionname              VARCHAR2(200),
  regiondistance          NUMBER(6),
  monitorcode             VARCHAR2(20),
  monitoraddress          VARCHAR2(200),
  errordesc               VARCHAR2(2000),
  propose                 NVARCHAR2(50),
  accessflag              VARCHAR2(2) default 0,
  offercode               VARCHAR2(32),
  offername               VARCHAR2(400),
  reuploadflag            VARCHAR2(2) default 0,
  orignalmsg              VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_EXCEPTION_DATA
  is '违法接口校验无效数据表';
comment on column ILLEGAL_EXCEPTION_DATA.nid
  is '数据库自动编号';
comment on column ILLEGAL_EXCEPTION_DATA.clicensetype
  is '号牌种类';
comment on column ILLEGAL_EXCEPTION_DATA.ccarnumber
  is '号牌号码';
comment on column ILLEGAL_EXCEPTION_DATA.dillegaldate
  is '违法时间';
comment on column ILLEGAL_EXCEPTION_DATA.coffense
  is '违法行为';
comment on column ILLEGAL_EXCEPTION_DATA.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_EXCEPTION_DATA.cillegaladdress
  is '违法地址';
comment on column ILLEGAL_EXCEPTION_DATA.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_EXCEPTION_DATA.cdatasource
  is '数据来源';
comment on column ILLEGAL_EXCEPTION_DATA.csnaptype
  is '抓拍类型';
comment on column ILLEGAL_EXCEPTION_DATA.cdevicecode
  is '设备编号';
comment on column ILLEGAL_EXCEPTION_DATA.cdirectioncode
  is '方向编号';
comment on column ILLEGAL_EXCEPTION_DATA.dredlighttime
  is '红灯亮起时间';
comment on column ILLEGAL_EXCEPTION_DATA.nredlightduration
  is '红灯持续时间';
comment on column ILLEGAL_EXCEPTION_DATA.clanenumber
  is '车道编号';
comment on column ILLEGAL_EXCEPTION_DATA.nvehiclespeed
  is '车辆速度';
comment on column ILLEGAL_EXCEPTION_DATA.nbigcarspeedlimit
  is '大车限速';
comment on column ILLEGAL_EXCEPTION_DATA.ntruckspeedlimit
  is '卡车限速';
comment on column ILLEGAL_EXCEPTION_DATA.ncarspeedlimit
  is '小车限速';
comment on column ILLEGAL_EXCEPTION_DATA.nbigcarlawenforcsplimit
  is '大车执法限速';
comment on column ILLEGAL_EXCEPTION_DATA.ntrucklawenforcsplimit
  is '卡车执法限速';
comment on column ILLEGAL_EXCEPTION_DATA.ncarlawenforcsplimit
  is '小车执法限速';
comment on column ILLEGAL_EXCEPTION_DATA.nminispeedlimit
  is '最低限速';
comment on column ILLEGAL_EXCEPTION_DATA.nevidencevideo
  is '证据－视频';
comment on column ILLEGAL_EXCEPTION_DATA.npicvidpathid
  is '图片或视频路径ID';
comment on column ILLEGAL_EXCEPTION_DATA.cvehicletype
  is '违法车辆类型';
comment on column ILLEGAL_EXCEPTION_DATA.cpic1path
  is '证据－图片1路径';
comment on column ILLEGAL_EXCEPTION_DATA.cpic2path
  is '证据－图片2路径';
comment on column ILLEGAL_EXCEPTION_DATA.cpic3path
  is '证据－图片3路径';
comment on column ILLEGAL_EXCEPTION_DATA.cselectstatus
  is '分拣状态(枚举值:146)';
comment on column ILLEGAL_EXCEPTION_DATA.cpic4path
  is '证据－图片4路径';
comment on column ILLEGAL_EXCEPTION_DATA.xywh
  is '特征图片';
comment on column ILLEGAL_EXCEPTION_DATA.videoevidence
  is '证据视频';
comment on column ILLEGAL_EXCEPTION_DATA.dillegalenddate
  is '区间测速终点违法时间';
comment on column ILLEGAL_EXCEPTION_DATA.datauploadtime
  is '数据上传时间';
comment on column ILLEGAL_EXCEPTION_DATA.mqrecivetime
  is 'MQ接收时间';
comment on column ILLEGAL_EXCEPTION_DATA.export_time
  is '导出时间';
comment on column ILLEGAL_EXCEPTION_DATA.dillegalbegindate
  is '违法终止时间';
comment on column ILLEGAL_EXCEPTION_DATA.caddressendcode
  is '终止点编码';
comment on column ILLEGAL_EXCEPTION_DATA.datasavetime
  is '入库时间';
comment on column ILLEGAL_EXCEPTION_DATA.regionname
  is '区间名称';
comment on column ILLEGAL_EXCEPTION_DATA.regiondistance
  is '区间距离';
comment on column ILLEGAL_EXCEPTION_DATA.monitorcode
  is '移动点位编号';
comment on column ILLEGAL_EXCEPTION_DATA.monitoraddress
  is '移动点位地址';
comment on column ILLEGAL_EXCEPTION_DATA.errordesc
  is '错误描述';
comment on column ILLEGAL_EXCEPTION_DATA.propose
  is '处置建议';
comment on column ILLEGAL_EXCEPTION_DATA.accessflag
  is '0-接入校验失败，1-六合一上传失败';
comment on column ILLEGAL_EXCEPTION_DATA.offercode
  is '处理意见代码';
comment on column ILLEGAL_EXCEPTION_DATA.offername
  is '处理意见';
comment on column ILLEGAL_EXCEPTION_DATA.reuploadflag
  is '0-不允许重传，1-允许重传';
comment on column ILLEGAL_EXCEPTION_DATA.orignalmsg
  is '设备上传违法报文';
alter table ILLEGAL_EXCEPTION_DATA
  add constraint ILLEGAL_EXCEPTION_DATA_ID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_EXEMPTION_ADDRESS
prompt ========================================
prompt
create table ILLEGAL_EXEMPTION_ADDRESS
(
  id             VARCHAR2(32) not null,
  address_code   VARCHAR2(12) not null,
  direction_code VARCHAR2(8) default '0',
  device_code    VARCHAR2(20),
  lane_code      VARCHAR2(2) default '0',
  exemption_id   VARCHAR2(32)
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
comment on table ILLEGAL_EXEMPTION_ADDRESS
  is '违法免责的点位';
comment on column ILLEGAL_EXEMPTION_ADDRESS.id
  is 'uuid';
comment on column ILLEGAL_EXEMPTION_ADDRESS.device_code
  is 'equipment_info.deviceid';
comment on column ILLEGAL_EXEMPTION_ADDRESS.exemption_id
  is 'illegal_exemption_baseinfo.id';

prompt
prompt Creating table ILLEGAL_EXEMPTION_BASEINFO
prompt =========================================
prompt
create table ILLEGAL_EXEMPTION_BASEINFO
(
  id             VARCHAR2(32) not null,
  name           VARCHAR2(64),
  type           CHAR(1) default '1',
  begin_date     DATE,
  end_date       DATE,
  expired_flag   CHAR(1),
  license_type   VARCHAR2(2),
  license_no     VARCHAR2(16),
  audit_status   VARCHAR2(2) default '1',
  audit_date     DATE,
  exemption_desc VARCHAR2(1024),
  create_time    DATE default sysdate,
  creater        VARCHAR2(8),
  revise_time    DATE default sysdate,
  revisor        VARCHAR2(8),
  forb_id        VARCHAR2(32),
  auditor        VARCHAR2(8),
  audit_desc     VARCHAR2(128),
  illegal_code   VARCHAR2(6),
  subtype        VARCHAR2(2) default 1,
  cqtp_url       VARCHAR2(400),
  chtp_url       VARCHAR2(400),
  xsztp_url      VARCHAR2(400),
  sqbtp_url      VARCHAR2(400),
  department_id  VARCHAR2(100),
  timerstr       VARCHAR2(1000)
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
comment on table ILLEGAL_EXEMPTION_BASEINFO
  is '违法免责信息表';
comment on column ILLEGAL_EXEMPTION_BASEINFO.id
  is 'uuid';
comment on column ILLEGAL_EXEMPTION_BASEINFO.begin_date
  is '免责开始时间';
comment on column ILLEGAL_EXEMPTION_BASEINFO.end_date
  is '免责结束时间';
comment on column ILLEGAL_EXEMPTION_BASEINFO.expired_flag
  is '免责是否过期,1-不过期';
comment on column ILLEGAL_EXEMPTION_BASEINFO.license_type
  is '号牌种类';
comment on column ILLEGAL_EXEMPTION_BASEINFO.license_no
  is '号牌号码';
comment on column ILLEGAL_EXEMPTION_BASEINFO.audit_status
  is '审核状态enumtypeid=311';
comment on column ILLEGAL_EXEMPTION_BASEINFO.audit_date
  is '审核日期';
comment on column ILLEGAL_EXEMPTION_BASEINFO.exemption_desc
  is '免责描述';
comment on column ILLEGAL_EXEMPTION_BASEINFO.forb_id
  is 'illegal_forbid_baseinfo.id';
comment on column ILLEGAL_EXEMPTION_BASEINFO.auditor
  is '审核人';
comment on column ILLEGAL_EXEMPTION_BASEINFO.audit_desc
  is '审核意见';
comment on column ILLEGAL_EXEMPTION_BASEINFO.illegal_code
  is '违法行为';
comment on column ILLEGAL_EXEMPTION_BASEINFO.subtype
  is '限行业务子类型,用于大货限行,1-报备车,2-公交车';
comment on column ILLEGAL_EXEMPTION_BASEINFO.cqtp_url
  is '车前图片存放地址';
comment on column ILLEGAL_EXEMPTION_BASEINFO.chtp_url
  is '车后图片存放地址';
comment on column ILLEGAL_EXEMPTION_BASEINFO.xsztp_url
  is '行驶证图片存放地址';
comment on column ILLEGAL_EXEMPTION_BASEINFO.sqbtp_url
  is '申请表图片存放地址';
comment on column ILLEGAL_EXEMPTION_BASEINFO.department_id
  is '申请部门ID';
alter table ILLEGAL_EXEMPTION_BASEINFO
  add constraint PK_ILLEGAL_EXEMPTION_BASEINFO primary key (ID)
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
prompt Creating table ILLEGAL_EXEMPTION_CARINFO
prompt ========================================
prompt
create table ILLEGAL_EXEMPTION_CARINFO
(
  nid          VARCHAR2(32) not null,
  ccarnumber   NVARCHAR2(16) not null,
  clicensetype VARCHAR2(2) not null,
  startime     DATE not null,
  endtime      DATE not null,
  creator      CHAR(6),
  create_time  DATE default sysdate
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
comment on table ILLEGAL_EXEMPTION_CARINFO
  is '警卫任务车辆免责表';
comment on column ILLEGAL_EXEMPTION_CARINFO.nid
  is 'uuid';
comment on column ILLEGAL_EXEMPTION_CARINFO.ccarnumber
  is '号牌号码';
comment on column ILLEGAL_EXEMPTION_CARINFO.clicensetype
  is '号牌类型';
comment on column ILLEGAL_EXEMPTION_CARINFO.startime
  is '开始时间';
comment on column ILLEGAL_EXEMPTION_CARINFO.endtime
  is '结束时间';
comment on column ILLEGAL_EXEMPTION_CARINFO.creator
  is '记录创建人;operator.nuserid';
comment on column ILLEGAL_EXEMPTION_CARINFO.create_time
  is '记录创建时间';
create index ILLEGAL_EXEMPTION_INDEX on ILLEGAL_EXEMPTION_CARINFO (CCARNUMBER, CLICENSETYPE)
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
alter table ILLEGAL_EXEMPTION_CARINFO
  add constraint ILLEGAL_EXEMPTION_KEY primary key (NID)
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
prompt Creating table ILLEGAL_EXEMPTION_DATA
prompt =====================================
prompt
create table ILLEGAL_EXEMPTION_DATA
(
  nid                 VARCHAR2(32) not null,
  clicensetype        VARCHAR2(2),
  ccarnumber          NVARCHAR2(16),
  dillegaldate        DATE not null,
  coffense            VARCHAR2(6) not null,
  caddresscode        VARCHAR2(12) not null,
  cillegaladdress     VARCHAR2(200),
  ccollectionagencies VARCHAR2(12) not null,
  cdatasource         VARCHAR2(2) not null,
  csnaptype           CHAR(1) not null,
  cdevicecode         VARCHAR2(18) not null,
  cdirectioncode      VARCHAR2(8),
  dredlighttime       DATE,
  nredlightduration   NUMBER(3),
  clanenumber         VARCHAR2(2),
  nevidencevideo      VARCHAR2(400),
  cvehicletype        VARCHAR2(32) default 1,
  cpic1path           VARCHAR2(400),
  cpic2path           VARCHAR2(400),
  cpic3path           VARCHAR2(400),
  cselectstatus       CHAR(1),
  noperator           VARCHAR2(20),
  xywh                VARCHAR2(100),
  videoevidence       VARCHAR2(200),
  datauploadtime      DATE,
  datasavetime        DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_INTERVEL_VELOCITY
prompt ========================================
prompt
create table ILLEGAL_INTERVEL_VELOCITY
(
  nid                VARCHAR2(32) not null,
  intervelpoint      VARCHAR2(12) not null,
  velocitysectioname VARCHAR2(500) not null,
  speedlimit         VARCHAR2(3) not null,
  startpoint         VARCHAR2(12) not null,
  endpoint           VARCHAR2(12) not null,
  startdirection     VARCHAR2(2) not null,
  endirection        VARCHAR2(2) not null,
  interveldistance   VARCHAR2(10) not null,
  bigspeedlimit      VARCHAR2(3),
  ifforillegal       VARCHAR2(1),
  deviceid           NVARCHAR2(18)
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
comment on column ILLEGAL_INTERVEL_VELOCITY.nid
  is '主键';
comment on column ILLEGAL_INTERVEL_VELOCITY.intervelpoint
  is '区间编号';
comment on column ILLEGAL_INTERVEL_VELOCITY.velocitysectioname
  is '区间名称';
comment on column ILLEGAL_INTERVEL_VELOCITY.speedlimit
  is '小车限速';
comment on column ILLEGAL_INTERVEL_VELOCITY.startpoint
  is '起点编号';
comment on column ILLEGAL_INTERVEL_VELOCITY.endpoint
  is '止点编号';
comment on column ILLEGAL_INTERVEL_VELOCITY.startdirection
  is '起点方向';
comment on column ILLEGAL_INTERVEL_VELOCITY.endirection
  is '止点方向';
comment on column ILLEGAL_INTERVEL_VELOCITY.interveldistance
  is '区间距离';
comment on column ILLEGAL_INTERVEL_VELOCITY.bigspeedlimit
  is '大车限速';
comment on column ILLEGAL_INTERVEL_VELOCITY.ifforillegal
  is '是否用于违法（1：用于违法；0：不用于违法）';
comment on column ILLEGAL_INTERVEL_VELOCITY.deviceid
  is '设备编号';
alter table ILLEGAL_INTERVEL_VELOCITY
  add constraint NID3 primary key (NID)
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
prompt Creating table ILLEGAL_MANUALFORENSICS
prompt ======================================
prompt
create table ILLEGAL_MANUALFORENSICS
(
  id           VARCHAR2(32) not null,
  dept         VARCHAR2(12),
  dillegaldate DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_MANUALFORENSICS
  is '人工违法取证信息';
comment on column ILLEGAL_MANUALFORENSICS.id
  is 'uuid';
comment on column ILLEGAL_MANUALFORENSICS.dept
  is '采集机关';
comment on column ILLEGAL_MANUALFORENSICS.dillegaldate
  is '违法时间';
alter table ILLEGAL_MANUALFORENSICS
  add constraint PRIILLEGAL_MANUALFORENSICS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_PERSONTIME
prompt =================================
prompt
create table ILLEGAL_PERSONTIME
(
  id           VARCHAR2(32) not null,
  name         NVARCHAR2(20),
  idcard       VARCHAR2(20),
  dillegaldate DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_PERSONTIME
  is '已处理违法人次信息';
comment on column ILLEGAL_PERSONTIME.id
  is 'uuid';
comment on column ILLEGAL_PERSONTIME.name
  is '姓名';
comment on column ILLEGAL_PERSONTIME.idcard
  is '身份证';
comment on column ILLEGAL_PERSONTIME.dillegaldate
  is '违法时间';
alter table ILLEGAL_PERSONTIME
  add constraint PRI_ILLEGAL_PERSONTIME primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_RELIEF_DATA
prompt ==================================
prompt
create table ILLEGAL_RELIEF_DATA
(
  nid                     VARCHAR2(32) not null,
  clicensetype            VARCHAR2(2),
  ccarnumber              NVARCHAR2(16),
  dillegaldate            DATE not null,
  coffense                VARCHAR2(6) not null,
  caddresscode            VARCHAR2(12) not null,
  cillegaladdress         VARCHAR2(200),
  ccollectionagencies     VARCHAR2(12) not null,
  cdatasource             VARCHAR2(2) not null,
  csnaptype               CHAR(1) not null,
  cdevicecode             VARCHAR2(18) not null,
  cdirectioncode          VARCHAR2(8),
  dredlighttime           DATE,
  nredlightduration       NUMBER(3),
  clanenumber             VARCHAR2(2),
  nvehiclespeed           NUMBER(3) default 0 not null,
  nbigcarspeedlimit       NUMBER(3) default 0 not null,
  ntruckspeedlimit        NUMBER(3),
  ncarspeedlimit          NUMBER(3),
  nbigcarlawenforcsplimit NUMBER(3) default 0 not null,
  ntrucklawenforcsplimit  NUMBER(3),
  ncarlawenforcsplimit    NUMBER(3) default 0 not null,
  nminispeedlimit         NUMBER(4),
  nevidencevideo          VARCHAR2(400),
  cvehicletype            VARCHAR2(32) default 1,
  cpic1path               VARCHAR2(400),
  cpic2path               VARCHAR2(400),
  cpic3path               VARCHAR2(400),
  cselectstatus           CHAR(1),
  noperator               VARCHAR2(20),
  xywh                    VARCHAR2(400),
  videoevidence           VARCHAR2(200),
  dillegalenddate         DATE,
  datauploadtime          DATE,
  mqrecivetime            DATE,
  dillegalbegindate       DATE,
  datasavetime            DATE default sysdate,
  illegalvehtype          VARCHAR2(2) default 0,
  regionname              VARCHAR2(200),
  regiondistance          NUMBER(4),
  monitorcode             VARCHAR2(12),
  monitoraddress          VARCHAR2(200),
  caddressendcode         VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
create index IDX_ILL_CARNO on ILLEGAL_RELIEF_DATA (CCARNUMBER)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create unique index PK_DATE_ID on ILLEGAL_RELIEF_DATA (DILLEGALDATE, NID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_SUM_DAY
prompt ==============================
prompt
create table ILLEGAL_SUM_DAY
(
  id                  VARCHAR2(32) not null,
  coffense            VARCHAR2(6),
  caddresscode        VARCHAR2(12),
  ccollectionagencies VARCHAR2(12),
  syxz                VARCHAR2(2),
  countrange          DATE not null,
  zffs                VARCHAR2(2) not null,
  countnum            VARCHAR2(10) not null,
  syr                 NVARCHAR2(128),
  zqmj                VARCHAR2(10),
  forcetype           VARCHAR2(1),
  fineinfo            NVARCHAR2(500),
  dsr                 NVARCHAR2(50),
  clicensetype        VARCHAR2(2),
  ccarnumber          NVARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_SUM_DAY
  is '违法数量汇总表（天）';
comment on column ILLEGAL_SUM_DAY.id
  is '唯一编号';
comment on column ILLEGAL_SUM_DAY.coffense
  is '违法行为';
comment on column ILLEGAL_SUM_DAY.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_SUM_DAY.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_SUM_DAY.syxz
  is '使用性质';
comment on column ILLEGAL_SUM_DAY.countrange
  is '统计周期';
comment on column ILLEGAL_SUM_DAY.zffs
  is '执法方式(0 非现场执法1 现场执法)';
comment on column ILLEGAL_SUM_DAY.countnum
  is '违法数量';
comment on column ILLEGAL_SUM_DAY.syr
  is '机动车所有人';
comment on column ILLEGAL_SUM_DAY.zqmj
  is '执勤民警（警号）';
comment on column ILLEGAL_SUM_DAY.forcetype
  is '现场执法种类（简易处罚：1；强制处罚：2）';
comment on column ILLEGAL_SUM_DAY.fineinfo
  is '处罚情况';
comment on column ILLEGAL_SUM_DAY.dsr
  is '当事人';
comment on column ILLEGAL_SUM_DAY.clicensetype
  is '号牌种类';
comment on column ILLEGAL_SUM_DAY.ccarnumber
  is '号牌号码';
alter table ILLEGAL_SUM_DAY
  add constraint PK_ILLEGAL_SUM_DAY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_SUM_HOURS
prompt ================================
prompt
create table ILLEGAL_SUM_HOURS
(
  id                  VARCHAR2(32) not null,
  coffense            VARCHAR2(6),
  caddresscode        VARCHAR2(12),
  ccollectionagencies VARCHAR2(12),
  syxz                VARCHAR2(2),
  countrange          DATE not null,
  zffs                VARCHAR2(2) not null,
  countnum            VARCHAR2(10) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_SUM_HOURS
  is '违法数量汇总表（天）';
comment on column ILLEGAL_SUM_HOURS.id
  is '唯一编号';
comment on column ILLEGAL_SUM_HOURS.coffense
  is '违法行为';
comment on column ILLEGAL_SUM_HOURS.caddresscode
  is '违法地点代码';
comment on column ILLEGAL_SUM_HOURS.ccollectionagencies
  is '采集机关';
comment on column ILLEGAL_SUM_HOURS.syxz
  is '使用性质';
comment on column ILLEGAL_SUM_HOURS.countrange
  is '统计周期';
comment on column ILLEGAL_SUM_HOURS.zffs
  is '执法方式(0 非现场执法1 现场执法)';
comment on column ILLEGAL_SUM_HOURS.countnum
  is '违法数量';
alter table ILLEGAL_SUM_HOURS
  add constraint PK_ILLEGAL_SUM_HOURS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_SYXZGROUP
prompt ================================
prompt
create table ILLEGAL_SYXZGROUP
(
  id        VARCHAR2(32) not null,
  groupname NVARCHAR2(200) not null,
  syxz      VARCHAR2(200) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_SYXZGROUP
  is '重点车辆类型配置表';
comment on column ILLEGAL_SYXZGROUP.id
  is '重点车辆分组编号';
comment on column ILLEGAL_SYXZGROUP.groupname
  is '分组名称';
comment on column ILLEGAL_SYXZGROUP.syxz
  is '使用性质(多条用逗号分隔)';
alter table ILLEGAL_SYXZGROUP
  add constraint PK_ILLEGAL_SYXZGROUP primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_TJEXEMPTION
prompt ==================================
prompt
create table ILLEGAL_TJEXEMPTION
(
  nid       VARCHAR2(32) not null,
  devid     VARCHAR2(18),
  devname   NVARCHAR2(200),
  coffense  VARCHAR2(6),
  isuse     VARCHAR2(1),
  startdate DATE,
  enddate   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_TJEXEMPTION
  is '违法免责表';
comment on column ILLEGAL_TJEXEMPTION.nid
  is 'uuid';
comment on column ILLEGAL_TJEXEMPTION.devid
  is '设备编号';
comment on column ILLEGAL_TJEXEMPTION.devname
  is '设备名称';
comment on column ILLEGAL_TJEXEMPTION.coffense
  is '违法行为';
comment on column ILLEGAL_TJEXEMPTION.isuse
  is '是否启用（1：启用，2：停用）';
comment on column ILLEGAL_TJEXEMPTION.startdate
  is '开始时间';
comment on column ILLEGAL_TJEXEMPTION.enddate
  is '结束时间';
alter table ILLEGAL_TJEXEMPTION
  add constraint PRIILLEGAL_TJEXEMPTION primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ILLEGAL_VEHINFO
prompt ==============================
prompt
create table ILLEGAL_VEHINFO
(
  illegalid VARCHAR2(32) not null,
  clfl      VARCHAR2(1) not null,
  jdcsyr    VARCHAR2(128),
  syxz      VARCHAR2(1),
  fdjh      VARCHAR2(30),
  clsbdh    VARCHAR2(30),
  csys      VARCHAR2(10),
  clpp      VARCHAR2(32),
  cllx      VARCHAR2(3) not null,
  fzjg      VARCHAR2(10),
  zsxzqh    VARCHAR2(10),
  zsxxdz    VARCHAR2(128),
  dh        VARCHAR2(50),
  lxfs      VARCHAR2(128),
  resv1     VARCHAR2(18),
  resv2     VARCHAR2(30),
  resv3     VARCHAR2(30),
  hdzk      VARCHAR2(3),
  yxqz      VARCHAR2(30),
  zt        VARCHAR2(6),
  clyt      VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ILLEGAL_VEHINFO
  is '?????????';
comment on column ILLEGAL_VEHINFO.illegalid
  is 'illegal_data表的id';
comment on column ILLEGAL_VEHINFO.clfl
  is '车辆分类';
comment on column ILLEGAL_VEHINFO.jdcsyr
  is '机动车所有人';
comment on column ILLEGAL_VEHINFO.syxz
  is '使用性质';
comment on column ILLEGAL_VEHINFO.fdjh
  is '发动机号';
comment on column ILLEGAL_VEHINFO.clsbdh
  is '车辆识别代号';
comment on column ILLEGAL_VEHINFO.csys
  is '车身颜色';
comment on column ILLEGAL_VEHINFO.clpp
  is '车辆品牌';
comment on column ILLEGAL_VEHINFO.cllx
  is '车辆类型  交通方式';
comment on column ILLEGAL_VEHINFO.fzjg
  is '发证机关';
comment on column ILLEGAL_VEHINFO.zsxzqh
  is '住所行政区划';
comment on column ILLEGAL_VEHINFO.zsxxdz
  is '住所详细地址';
comment on column ILLEGAL_VEHINFO.dh
  is '电话';
comment on column ILLEGAL_VEHINFO.lxfs
  is '联系方式';
comment on column ILLEGAL_VEHINFO.resv1
  is '身份证';
comment on column ILLEGAL_VEHINFO.resv2
  is '预留字段2';
comment on column ILLEGAL_VEHINFO.resv3
  is '预留字段3';
comment on column ILLEGAL_VEHINFO.hdzk
  is '核定载客';
comment on column ILLEGAL_VEHINFO.yxqz
  is '有效期至';
comment on column ILLEGAL_VEHINFO.zt
  is '状态';
comment on column ILLEGAL_VEHINFO.clyt
  is '车辆用途';
create index INDEX01 on ILLEGAL_VEHINFO (RESV2, RESV3)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table ILLEGAL_VEHINFO
  add constraint ILLEGALVEHINFOID primary key (ILLEGALID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IMPORTANT_SCENERY
prompt ================================
prompt
create table IMPORTANT_SCENERY
(
  id                VARCHAR2(32),
  scenery_name      VARCHAR2(32) not null,
  road_name         VARCHAR2(32) not null,
  congestion_period VARCHAR2(32) not null,
  congestion_flow   VARCHAR2(32) not null
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
comment on table IMPORTANT_SCENERY
  is '重点景区周边道路流量';
comment on column IMPORTANT_SCENERY.scenery_name
  is '景区名称';
comment on column IMPORTANT_SCENERY.road_name
  is '道路名称';
comment on column IMPORTANT_SCENERY.congestion_period
  is '拥堵时段';
comment on column IMPORTANT_SCENERY.congestion_flow
  is '拥堵时段平均流量';

prompt
prompt Creating table INFO_ACCIDENTNM
prompt ==============================
prompt
create table INFO_ACCIDENTNM
(
  id                VARCHAR2(32) not null,
  info_publishnm_id VARCHAR2(32),
  time              DATE,
  description       VARCHAR2(255),
  note              VARCHAR2(255),
  address           VARCHAR2(255),
  parentdepartment  NVARCHAR2(12),
  yq_time           DATE,
  hzstatus          NCHAR(1),
  status            NCHAR(1),
  deptshortname     NVARCHAR2(50)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column INFO_ACCIDENTNM.info_publishnm_id
  is '关联信息发布Id';
comment on column INFO_ACCIDENTNM.time
  is '特殊事故时间';
comment on column INFO_ACCIDENTNM.description
  is '事故描述';
comment on column INFO_ACCIDENTNM.note
  is '备注';
comment on column INFO_ACCIDENTNM.address
  is '地址';
comment on column INFO_ACCIDENTNM.parentdepartment
  is '上级组织机构';
comment on column INFO_ACCIDENTNM.yq_time
  is '要情事件';
comment on column INFO_ACCIDENTNM.hzstatus
  is '支队汇总状态';
comment on column INFO_ACCIDENTNM.status
  is '总队汇总状态';
alter table INFO_ACCIDENTNM
  add constraint ACN_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table INTERSECTION_STATUS_DATA
prompt =======================================
prompt
create table INTERSECTION_STATUS_DATA
(
  cintsid                 VARCHAR2(8) not null,
  napproachdirection      VARCHAR2(2) not null,
  nlaneno                 VARCHAR2(2) not null,
  ndetectorno             VARCHAR2(18),
  dtcollecttime           DATE not null,
  ntimepoint              INTEGER,
  nvolume                 INTEGER,
  deoccupancy             NUMBER(3,2),
  despeed                 NUMBER(6,2),
  devehlength             NUMBER(6,2),
  nlvehvolume             INTEGER,
  nmvehvolume             INTEGER,
  nsvehvolume             INTEGER,
  deheadway               NUMBER(6,2),
  volumecharacteristic    NUMBER(2) default 1,
  occupancycharacteristic NUMBER(2) default 1
)
partition by range (DTCOLLECTTIME) interval (NUMTODSINTERVAL(1,'DAY'))
(
  partition INTER_VOLUME_P1 values less than (TO_DATE(' 2017-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace INTER_VOLUMETS_01
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on column INTERSECTION_STATUS_DATA.cintsid
  is '路口编号';
comment on column INTERSECTION_STATUS_DATA.napproachdirection
  is '进口道方向';
comment on column INTERSECTION_STATUS_DATA.nlaneno
  is '车道编号';
comment on column INTERSECTION_STATUS_DATA.ndetectorno
  is '检测器编号';
comment on column INTERSECTION_STATUS_DATA.dtcollecttime
  is '标准时间';
comment on column INTERSECTION_STATUS_DATA.ntimepoint
  is '采集时间间隔';
comment on column INTERSECTION_STATUS_DATA.nvolume
  is '采集周期流量（目前采集周期是5分钟）';
comment on column INTERSECTION_STATUS_DATA.deoccupancy
  is '时间占有率';
comment on column INTERSECTION_STATUS_DATA.despeed
  is '平均速度';
comment on column INTERSECTION_STATUS_DATA.devehlength
  is '排队长度';
comment on column INTERSECTION_STATUS_DATA.nlvehvolume
  is '大型车流量';
comment on column INTERSECTION_STATUS_DATA.nmvehvolume
  is '通行能力（单位：辆/小时）';
comment on column INTERSECTION_STATUS_DATA.nsvehvolume
  is '小型车流量';
comment on column INTERSECTION_STATUS_DATA.deheadway
  is '车头时距';
comment on column INTERSECTION_STATUS_DATA.volumecharacteristic
  is '流量标志位 0-缺数据 1-原始数据 2-融合数据 3-补偿数据';
comment on column INTERSECTION_STATUS_DATA.occupancycharacteristic
  is '占有率标志位 0-缺数据 1-原始数据 2-融合数据 3-补偿数据';
create index IDX_INTS_CONDI on INTERSECTION_STATUS_DATA (CINTSID, DTCOLLECTTIME, TO_CHAR(DTCOLLECTTIME,'hh24:mi'), TO_CHAR(DTCOLLECTTIME,'day'))
  nologging  local;
create index IDX_INTS_DATA on INTERSECTION_STATUS_DATA (DTCOLLECTTIME)
  nologging  local;
create index IDX_INTS_ID on INTERSECTION_STATUS_DATA (CINTSID, DTCOLLECTTIME)
  nologging  local;
create unique index PK_INTS_DATA on INTERSECTION_STATUS_DATA (CINTSID, NAPPROACHDIRECTION, NLANENO, DTCOLLECTTIME)
  nologging  local;

prompt
prompt Creating table IP_WHITE_LIST
prompt ============================
prompt
create table IP_WHITE_LIST
(
  pkid           NUMBER not null,
  segment_name   VARCHAR2(100),
  start_address  VARCHAR2(15) not null,
  end_address    VARCHAR2(15) not null,
  user_id        VARCHAR2(20),
  operating_time DATE,
  remark         VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table IP_WHITE_LIST
  is 'ip白名单';
comment on column IP_WHITE_LIST.pkid
  is '主键';
comment on column IP_WHITE_LIST.segment_name
  is '网段名称';
comment on column IP_WHITE_LIST.start_address
  is '起始地址';
comment on column IP_WHITE_LIST.end_address
  is '结束地址';
comment on column IP_WHITE_LIST.user_id
  is '操作人';
comment on column IP_WHITE_LIST.operating_time
  is '操作时间';
comment on column IP_WHITE_LIST.remark
  is '备注';
alter table IP_WHITE_LIST
  add constraint IP_WHITE_LIST_PK primary key (PKID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_DRVPERSON
prompt ============================
prompt
create table IST_DRVPERSON
(
  nid      VARCHAR2(32) not null,
  xm       VARCHAR2(32),
  xb       NVARCHAR2(1),
  gj       VARCHAR2(32),
  csrq     VARCHAR2(20),
  djzsxxdz VARCHAR2(200),
  cclzrq   VARCHAR2(20),
  fzjg     VARCHAR2(200),
  zjcx     VARCHAR2(200),
  ljjf     VARCHAR2(6),
  zt       VARCHAR2(10),
  dabh     VARCHAR2(20),
  sfzmhm   VARCHAR2(20),
  csrqtt   DATE,
  cclzrqtt DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table IST_DRVPERSON
  is '驾驶员';
comment on column IST_DRVPERSON.nid
  is '主键';
comment on column IST_DRVPERSON.xm
  is '姓名';
comment on column IST_DRVPERSON.xb
  is '性别';
comment on column IST_DRVPERSON.gj
  is '国籍';
comment on column IST_DRVPERSON.csrq
  is '出生日期';
comment on column IST_DRVPERSON.djzsxxdz
  is '住址';
comment on column IST_DRVPERSON.cclzrq
  is '初次领证日期';
comment on column IST_DRVPERSON.fzjg
  is '发证机关';
comment on column IST_DRVPERSON.zjcx
  is '准驾车型';
comment on column IST_DRVPERSON.ljjf
  is '累积记分';
comment on column IST_DRVPERSON.zt
  is '状态';
comment on column IST_DRVPERSON.dabh
  is '档案编号';
comment on column IST_DRVPERSON.sfzmhm
  is '身份证明号码';
alter table IST_DRVPERSON
  add constraint PRI_ISTDRVPERSON primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_FUGITIVE
prompt ===========================
prompt
create table IST_FUGITIVE
(
  id                    VARCHAR2(100) not null,
  type                  VARCHAR2(10) not null,
  cardnumber            VARCHAR2(30) not null,
  caseid                VARCHAR2(50) not null,
  casetype              VARCHAR2(50) not null,
  jianyaoanqing         VARCHAR2(200) not null,
  lianshengshixianqu    VARCHAR2(30) not null,
  liandanwei            VARCHAR2(100) not null,
  xianzhushengshixianqu VARCHAR2(30) not null,
  chexiaoshijian        VARCHAR2(30) not null,
  sheanjibie            VARCHAR2(30) not null,
  zaitaoleixing         VARCHAR2(30) not null,
  taopaoriqi            VARCHAR2(30) not null,
  jibujibie             VARCHAR2(30) not null,
  lianxirenxingming     VARCHAR2(30) not null,
  telephone             VARCHAR2(30) not null,
  zhuahuoshijian        VARCHAR2(30) not null,
  zhuahuodidian         VARCHAR2(30) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table IST_FUGITIVE
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_MDS_DISPATCHERUSER
prompt =====================================
prompt
create table IST_MDS_DISPATCHERUSER
(
  id       VARCHAR2(100) not null,
  password VARCHAR2(100) not null,
  ip       VARCHAR2(100) not null,
  status   VARCHAR2(10) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table IST_MDS_DISPATCHERUSER
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_PEOPLEBASE
prompt =============================
prompt
create table IST_PEOPLEBASE
(
  id                  VARCHAR2(100) not null,
  type                VARCHAR2(10) not null,
  name                VARCHAR2(15) not null,
  sex                 VARCHAR2(30) not null,
  minzu               VARCHAR2(30) not null,
  birthday            VARCHAR2(30) not null,
  address             VARCHAR2(200) not null,
  idcardnum           VARCHAR2(30) not null,
  qianfajiguan        VARCHAR2(100) not null,
  youxiaoqixian       VARCHAR2(30) not null,
  jiazhaoleijifenshu  VARCHAR2(10) not null,
  jiashiyuanzhuangtai VARCHAR2(30) not null,
  shifouzaitao        VARCHAR2(20) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table IST_PEOPLEBASE
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_PUSH_RECEIPT
prompt ===============================
prompt
create table IST_PUSH_RECEIPT
(
  policeid    VARCHAR2(100) not null,
  messageid   VARCHAR2(100) not null,
  servicename VARCHAR2(100) not null,
  subaction   VARCHAR2(100) not null,
  sendtime    VARCHAR2(100) default '',
  receivetime VARCHAR2(100) default '',
  readtime    VARCHAR2(100) default '',
  returncode  VARCHAR2(100) default '',
  mescontent  VARCHAR2(1000) default ''
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table IST_PUSH_RECEIPT
  add constraint PK_IST primary key (POLICEID, MESSAGEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_SIT_ENFORCEMENT_INFO
prompt =======================================
prompt
create table IST_SIT_ENFORCEMENT_INFO
(
  id                 NVARCHAR2(15) not null,
  police_id          NVARCHAR2(6) not null,
  zflx               VARCHAR2(4) not null,
  ryfl               VARCHAR2(4),
  jszh               NVARCHAR2(20),
  dabh               VARCHAR2(12),
  fzjg               NVARCHAR2(20),
  zjcx               VARCHAR2(10),
  dsr                NVARCHAR2(30),
  ljjf               NUMBER(2),
  clfl               VARCHAR2(4),
  hpzl               VARCHAR2(2),
  hphm               VARCHAR2(15),
  jdcsyr             NVARCHAR2(128),
  syxz               VARCHAR2(1),
  jtfs               VARCHAR2(3),
  dh                 VARCHAR2(13),
  fdjh               VARCHAR2(32),
  jcyxqz             DATE,
  wfsj               DATE,
  xzqh               VARCHAR2(6),
  wfdz               NVARCHAR2(128),
  wfdd               NVARCHAR2(128),
  lddm               VARCHAR2(4),
  ddms               VARCHAR2(3),
  wfxw               VARCHAR2(10),
  cffs               VARCHAR2(10),
  fkje               VARCHAR2(6),
  zqmj               VARCHAR2(10),
  jkfs               VARCHAR2(1),
  jkbz               VARCHAR2(1),
  fxjg               VARCHAR2(12),
  jsjqbj             VARCHAR2(2),
  sgdj               VARCHAR2(1),
  longtitude         VARCHAR2(10),
  latitude           VARCHAR2(10),
  wslb               VARCHAR2(1),
  qzcslx             VARCHAR2(10),
  klwpcfd            NVARCHAR2(128),
  sjxm               VARCHAR2(4),
  sjwpmc             NVARCHAR2(128),
  sjwpcfd            NVARCHAR2(128),
  kljdc              VARCHAR2(1),
  klfjdc             VARCHAR2(1),
  kljsz              VARCHAR2(1),
  klxsz              VARCHAR2(1),
  sjffwp             VARCHAR2(1),
  tyjdc              VARCHAR2(1),
  ffwp               NVARCHAR2(2000),
  photourls          NVARCHAR2(2000),
  fzjg_car           VARCHAR2(100),
  jianyinum          VARCHAR2(1000),
  qiangzhinum        VARCHAR2(1000),
  zhifaid            VARCHAR2(32),
  weifatongzhishuadd VARCHAR2(4),
  ssqx               VARCHAR2(2000),
  clzt               VARCHAR2(200),
  csys               VARCHAR2(2),
  clstuate           VARCHAR2(255),
  jdsbh              VARCHAR2(25),
  hpys               VARCHAR2(25),
  cfdd               VARCHAR2(225),
  jsclbm             VARCHAR2(225),
  bmlxdh             VARCHAR2(25),
  jsclsj             VARCHAR2(32),
  fyjg               VARCHAR2(255),
  ssjg               VARCHAR2(255),
  falvyiju           VARCHAR2(4000),
  koufen             VARCHAR2(4),
  clsj               DATE default sysdate not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table IST_SIT_ENFORCEMENT_INFO
  is '单警现场执法信息表';
comment on column IST_SIT_ENFORCEMENT_INFO.id
  is '强制措施/简易程序编号';
comment on column IST_SIT_ENFORCEMENT_INFO.police_id
  is '用户id,处置警员信息';
comment on column IST_SIT_ENFORCEMENT_INFO.zflx
  is '执法类型';
comment on column IST_SIT_ENFORCEMENT_INFO.ryfl
  is '人员分类  必须符合六合一代码表中xtlb=04和dmlb=0080的代码';
comment on column IST_SIT_ENFORCEMENT_INFO.jszh
  is '驾驶证号';
comment on column IST_SIT_ENFORCEMENT_INFO.dabh
  is '档案编号';
comment on column IST_SIT_ENFORCEMENT_INFO.fzjg
  is '发证机关';
comment on column IST_SIT_ENFORCEMENT_INFO.zjcx
  is '准驾车型';
comment on column IST_SIT_ENFORCEMENT_INFO.dsr
  is '当事人';
comment on column IST_SIT_ENFORCEMENT_INFO.ljjf
  is '累计积分';
comment on column IST_SIT_ENFORCEMENT_INFO.clfl
  is '车辆分类';
comment on column IST_SIT_ENFORCEMENT_INFO.hpzl
  is '号牌种类';
comment on column IST_SIT_ENFORCEMENT_INFO.hphm
  is '号牌号码';
comment on column IST_SIT_ENFORCEMENT_INFO.jdcsyr
  is '机动车所有人';
comment on column IST_SIT_ENFORCEMENT_INFO.syxz
  is '使用性质';
comment on column IST_SIT_ENFORCEMENT_INFO.jtfs
  is '交通方式';
comment on column IST_SIT_ENFORCEMENT_INFO.dh
  is '电话';
comment on column IST_SIT_ENFORCEMENT_INFO.fdjh
  is '发动机号';
comment on column IST_SIT_ENFORCEMENT_INFO.jcyxqz
  is '检查有效期止';
comment on column IST_SIT_ENFORCEMENT_INFO.wfsj
  is '违法时间';
comment on column IST_SIT_ENFORCEMENT_INFO.xzqh
  is '行政区划';
comment on column IST_SIT_ENFORCEMENT_INFO.wfdz
  is '违法地址';
comment on column IST_SIT_ENFORCEMENT_INFO.wfdd
  is '违法地点';
comment on column IST_SIT_ENFORCEMENT_INFO.lddm
  is '路段代码';
comment on column IST_SIT_ENFORCEMENT_INFO.ddms
  is '地点米数';
comment on column IST_SIT_ENFORCEMENT_INFO.wfxw
  is '违法行为';
comment on column IST_SIT_ENFORCEMENT_INFO.cffs
  is '处罚方式';
comment on column IST_SIT_ENFORCEMENT_INFO.fkje
  is '罚款金额';
comment on column IST_SIT_ENFORCEMENT_INFO.zqmj
  is '执勤民警';
comment on column IST_SIT_ENFORCEMENT_INFO.jkfs
  is '交款方式';
comment on column IST_SIT_ENFORCEMENT_INFO.jkbz
  is '交款标志';
comment on column IST_SIT_ENFORCEMENT_INFO.fxjg
  is '发现机关';
comment on column IST_SIT_ENFORCEMENT_INFO.jsjqbj
  is '拒收拒签标记';
comment on column IST_SIT_ENFORCEMENT_INFO.sgdj
  is '事故等级';
comment on column IST_SIT_ENFORCEMENT_INFO.longtitude
  is '经度';
comment on column IST_SIT_ENFORCEMENT_INFO.latitude
  is '纬度';
comment on column IST_SIT_ENFORCEMENT_INFO.wslb
  is '文书类别，3-强制措施凭证；6-违法处理通知书';
comment on column IST_SIT_ENFORCEMENT_INFO.qzcslx
  is '强制措施类型，文书类别为“3”时，必须符合代码表中xtlb=04和dmlb=0080的代码；为“6”时必须为空。';
comment on column IST_SIT_ENFORCEMENT_INFO.klwpcfd
  is '扣留物品存放地';
comment on column IST_SIT_ENFORCEMENT_INFO.sjxm
  is '收缴项目';
comment on column IST_SIT_ENFORCEMENT_INFO.sjwpmc
  is '收缴物品名称';
comment on column IST_SIT_ENFORCEMENT_INFO.sjwpcfd
  is '收缴物品存放地';
comment on column IST_SIT_ENFORCEMENT_INFO.kljdc
  is '扣留机动车';
comment on column IST_SIT_ENFORCEMENT_INFO.klfjdc
  is '扣留非机动车';
comment on column IST_SIT_ENFORCEMENT_INFO.kljsz
  is '扣留驾驶证';
comment on column IST_SIT_ENFORCEMENT_INFO.klxsz
  is '扣留行驶证';
comment on column IST_SIT_ENFORCEMENT_INFO.sjffwp
  is '收缴非法物品';
comment on column IST_SIT_ENFORCEMENT_INFO.tyjdc
  is '拖移机动车';
comment on column IST_SIT_ENFORCEMENT_INFO.ffwp
  is '非法物品明细';
comment on column IST_SIT_ENFORCEMENT_INFO.photourls
  is '违法取证照片';
comment on column IST_SIT_ENFORCEMENT_INFO.fzjg_car
  is '车辆发证机关';
comment on column IST_SIT_ENFORCEMENT_INFO.jianyinum
  is '简易程序处罚决定书打印数';
comment on column IST_SIT_ENFORCEMENT_INFO.qiangzhinum
  is '强制措施凭证打印数';
comment on column IST_SIT_ENFORCEMENT_INFO.zhifaid
  is '执法id';
comment on column IST_SIT_ENFORCEMENT_INFO.weifatongzhishuadd
  is '违法通知书打印数';
comment on column IST_SIT_ENFORCEMENT_INFO.ssqx
  is '所属辖区';
comment on column IST_SIT_ENFORCEMENT_INFO.clzt
  is '处理状态';
comment on column IST_SIT_ENFORCEMENT_INFO.csys
  is '车身颜色';
comment on column IST_SIT_ENFORCEMENT_INFO.clstuate
  is '车辆状态';
comment on column IST_SIT_ENFORCEMENT_INFO.jdsbh
  is '决定书编号';
comment on column IST_SIT_ENFORCEMENT_INFO.hpys
  is '号牌颜色';
comment on column IST_SIT_ENFORCEMENT_INFO.cfdd
  is '处罚地点';
comment on column IST_SIT_ENFORCEMENT_INFO.jsclbm
  is '接受处理部门';
comment on column IST_SIT_ENFORCEMENT_INFO.bmlxdh
  is '部门联系电话';
comment on column IST_SIT_ENFORCEMENT_INFO.jsclsj
  is '接受处理时间';
comment on column IST_SIT_ENFORCEMENT_INFO.fyjg
  is '复议机关';
comment on column IST_SIT_ENFORCEMENT_INFO.ssjg
  is '诉讼机关';
comment on column IST_SIT_ENFORCEMENT_INFO.falvyiju
  is '法律依据';
comment on column IST_SIT_ENFORCEMENT_INFO.koufen
  is '扣分';
comment on column IST_SIT_ENFORCEMENT_INFO.clsj
  is '处理时间';
alter table IST_SIT_ENFORCEMENT_INFO
  add constraint IST_SIT_PRIKEY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_STOLENCAR
prompt ============================
prompt
create table IST_STOLENCAR
(
  id            VARCHAR2(100) not null,
  type          VARCHAR2(10) not null,
  carnumber     VARCHAR2(15) not null,
  anjianbianhao VARCHAR2(30) not null,
  anjianxingzhi VARCHAR2(30) not null,
  liandanwei    VARCHAR2(30) not null,
  liandianhua   VARCHAR2(30) not null,
  lianshiian    VARCHAR2(30) not null,
  zhuangtai     VARCHAR2(30) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table IST_STOLENCAR
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table IST_ZFDEPT
prompt =========================
prompt
create table IST_ZFDEPT
(
  deptid    VARCHAR2(15),
  jsclbm    VARCHAR2(150),
  cfdd      VARCHAR2(255),
  bmlxdh    VARCHAR2(18),
  jsclsj_am VARCHAR2(50),
  jsclsj_pm VARCHAR2(10),
  fyjg      VARCHAR2(255),
  ssjg      VARCHAR2(255)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column IST_ZFDEPT.deptid
  is '部门编号';
comment on column IST_ZFDEPT.jsclbm
  is '处罚部门';
comment on column IST_ZFDEPT.cfdd
  is '处罚地址';
comment on column IST_ZFDEPT.bmlxdh
  is '部门联系电话';
comment on column IST_ZFDEPT.jsclsj_am
  is '接受处理时间（上午时间）';
comment on column IST_ZFDEPT.jsclsj_pm
  is '接受处理时间（下午时间）';
comment on column IST_ZFDEPT.fyjg
  is '复议机关';
comment on column IST_ZFDEPT.ssjg
  is '诉讼机关';

prompt
prompt Creating table JJDB_SJ
prompt ======================
prompt
create table JJDB_SJ
(
  xzqh      VARCHAR2(6) not null,
  jjdbh     VARCHAR2(20) not null,
  gljjdbh   VARCHAR2(20),
  bjfsdm    NUMBER(1) not null,
  jjdcllxdm NUMBER(2) not null,
  jjdwdm    NUMBER(12) not null,
  jjyxm     VARCHAR2(18) not null,
  hrsj      DATE not null,
  bjsj      DATE not null,
  bjdh      VARCHAR2(15),
  jjlyh     VARCHAR2(14),
  bjrxm     VARCHAR2(30),
  bjrxb     NUMBER(1),
  afdd      VARCHAR2(80),
  bjnr      VARCHAR2(800),
  gxdwdm    NUMBER(12),
  bjlbdm    NUMBER(2),
  bjlxdm    NUMBER(6),
  bjxldm    NUMBER(6),
  hpzldm    NUMBER(2),
  bjcph     VARCHAR2(10),
  jqjb      NUMBER(1),
  scbz      NUMBER(1) default 0,
  hcbz      NUMBER(1),
  jjdzt     NUMBER(2),
  jqms      VARCHAR2(4000),
  xpos      VARCHAR2(200),
  ypos      VARCHAR2(200),
  sjgxsj    DATE,
  sjpjsj    DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table JJDB_SJ
  is '接警单表';
comment on column JJDB_SJ.xzqh
  is '行政区划';
comment on column JJDB_SJ.jjdbh
  is '接警单编号';
comment on column JJDB_SJ.gljjdbh
  is '关联接警单编号';
comment on column JJDB_SJ.bjfsdm
  is '报警方式代码';
comment on column JJDB_SJ.jjdcllxdm
  is '接警单处理类型代码';
comment on column JJDB_SJ.jjdwdm
  is '接警单位代码';
comment on column JJDB_SJ.jjyxm
  is '接警员姓名';
comment on column JJDB_SJ.hrsj
  is '呼入时间';
comment on column JJDB_SJ.bjsj
  is '报警时间';
comment on column JJDB_SJ.bjdh
  is '报警电话';
comment on column JJDB_SJ.jjlyh
  is '接警录音号';
comment on column JJDB_SJ.bjrxm
  is '报警人姓名';
comment on column JJDB_SJ.bjrxb
  is '报警人性别';
comment on column JJDB_SJ.afdd
  is '案发地址';
comment on column JJDB_SJ.bjnr
  is '报警内容';
comment on column JJDB_SJ.gxdwdm
  is '管辖单位代码';
comment on column JJDB_SJ.bjlbdm
  is '报警类别代码';
comment on column JJDB_SJ.bjlxdm
  is '报警类型代码';
comment on column JJDB_SJ.bjxldm
  is '报警细类代码';
comment on column JJDB_SJ.hpzldm
  is '号牌种类代码';
comment on column JJDB_SJ.bjcph
  is '报警车牌号';
comment on column JJDB_SJ.jqjb
  is '警情级别';
comment on column JJDB_SJ.scbz
  is '上传标志';
comment on column JJDB_SJ.hcbz
  is '回传标志';
comment on column JJDB_SJ.jjdzt
  is '接警单状态';
comment on column JJDB_SJ.jqms
  is '警情描述';
comment on column JJDB_SJ.xpos
  is 'X坐标';
comment on column JJDB_SJ.ypos
  is 'Y坐标';
comment on column JJDB_SJ.sjgxsj
  is '数据更新时间';
comment on column JJDB_SJ.sjpjsj
  is '市局派警时间';
create index IDX_JJDB_SJ1 on JJDB_SJ (HRSJ, JJDCLLXDM, BJFSDM)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_JJDB_SJ2 on JJDB_SJ (BJSJ, BJXLDM)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index IDX_JJDB_SJ_GLJJDBH on JJDB_SJ (GLJJDBH)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table JJDB_SJ
  add constraint PK_JJDB_SJ primary key (JJDBH)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LAYER_TYPE
prompt =========================
prompt
create table LAYER_TYPE
(
  lid          INTEGER not null,
  lname        NVARCHAR2(40) not null,
  llevel       VARCHAR2(2) not null,
  lorder       INTEGER default 0,
  lparent      INTEGER default 0,
  licon        NVARCHAR2(200) not null,
  thirdsyscode NVARCHAR2(40),
  ishidden     INTEGER default 0,
  modulename   NVARCHAR2(200),
  cfunc        NVARCHAR2(200),
  ucfunc       NVARCHAR2(200),
  sqlview      CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table LAYER_TYPE
  is '图层类型表';
comment on column LAYER_TYPE.lid
  is '图层编号';
comment on column LAYER_TYPE.lname
  is '图层名称';
comment on column LAYER_TYPE.llevel
  is '图层级别';
comment on column LAYER_TYPE.lorder
  is '排列顺序';
comment on column LAYER_TYPE.lparent
  is '父级图层';
comment on column LAYER_TYPE.licon
  is '显示图标';
comment on column LAYER_TYPE.thirdsyscode
  is '第三方编号，用于与枚举值或其他表对应';
comment on column LAYER_TYPE.ishidden
  is '是否隐藏，0 不隐藏 1隐藏';
comment on column LAYER_TYPE.modulename
  is 'js模块名';
comment on column LAYER_TYPE.cfunc
  is '勾选事件 为空时触发checklayer';
comment on column LAYER_TYPE.ucfunc
  is '取消勾选事件 为空时触发unchecklayer';
comment on column LAYER_TYPE.sqlview
  is '用于获取图层sql信息';
alter table LAYER_TYPE
  add primary key (LID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LEG_WRECKER_POINT
prompt ================================
prompt
create table LEG_WRECKER_POINT
(
  id              VARCHAR2(32) not null,
  sn              VARCHAR2(32),
  name            NVARCHAR2(50),
  point_x         VARCHAR2(20),
  area_range_desc NVARCHAR2(100),
  charge_people   NVARCHAR2(32),
  charge_phone    VARCHAR2(32),
  creator         NVARCHAR2(32),
  create_time     DATE default sysdate,
  updater         VARCHAR2(32),
  update_time     DATE default sysdate,
  point_y         VARCHAR2(20),
  belong_area     VARCHAR2(20),
  remark          NVARCHAR2(100)
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
comment on table LEG_WRECKER_POINT
  is '清障车点表';
comment on column LEG_WRECKER_POINT.id
  is '主键';
comment on column LEG_WRECKER_POINT.sn
  is '编号';
comment on column LEG_WRECKER_POINT.name
  is '名称';
comment on column LEG_WRECKER_POINT.point_x
  is '经度';
comment on column LEG_WRECKER_POINT.area_range_desc
  is '区域描述';
comment on column LEG_WRECKER_POINT.charge_people
  is '负责人';
comment on column LEG_WRECKER_POINT.charge_phone
  is '负责人电话';
comment on column LEG_WRECKER_POINT.creator
  is '创建者';
comment on column LEG_WRECKER_POINT.create_time
  is '创建时间';
comment on column LEG_WRECKER_POINT.updater
  is '更新者';
comment on column LEG_WRECKER_POINT.update_time
  is '更新时间';
comment on column LEG_WRECKER_POINT.point_y
  is '纬度';
comment on column LEG_WRECKER_POINT.belong_area
  is '区域id（枚举180）';
comment on column LEG_WRECKER_POINT.remark
  is '备注';
alter table LEG_WRECKER_POINT
  add constraint PK_LEG_WRECKER_POINT primary key (ID)
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
prompt Creating table LOCK_USERS
prompt =========================
prompt
create table LOCK_USERS
(
  id           VARCHAR2(32) not null,
  userid       VARCHAR2(12),
  locktime     DATE,
  unlocktime   DATE,
  locktype     VARCHAR2(2),
  status       VARCHAR2(2),
  lockreason   VARCHAR2(1000),
  unlockreason VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column LOCK_USERS.id
  is 'id';
comment on column LOCK_USERS.userid
  is '用户id';
comment on column LOCK_USERS.locktime
  is '锁定时间';
comment on column LOCK_USERS.unlocktime
  is '解锁时间';
comment on column LOCK_USERS.locktype
  is '锁定的模块（1：视频巡检模块，2：其他模块）';
comment on column LOCK_USERS.status
  is '状态（1：锁定，0：未锁）';
comment on column LOCK_USERS.lockreason
  is '锁定原因';
comment on column LOCK_USERS.unlockreason
  is '解锁原因';
alter table LOCK_USERS
  add constraint PRI_LOCK_USERS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LOGIN_RESTRICT
prompt =============================
prompt
create table LOGIN_RESTRICT
(
  lrpkid         VARCHAR2(32) not null,
  segment_name   VARCHAR2(100),
  start_address  VARCHAR2(15) not null,
  end_address    VARCHAR2(15) not null,
  user_id        VARCHAR2(20),
  recorder       VARCHAR2(20),
  operating_time DATE,
  remark         VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table LOGIN_RESTRICT
  is '限制登陆ip及用户白名单';
comment on column LOGIN_RESTRICT.lrpkid
  is '主键';
comment on column LOGIN_RESTRICT.segment_name
  is '网段名称';
comment on column LOGIN_RESTRICT.start_address
  is '起始地址';
comment on column LOGIN_RESTRICT.end_address
  is '结束地址';
comment on column LOGIN_RESTRICT.user_id
  is '操作人';
comment on column LOGIN_RESTRICT.recorder
  is '登记人';
comment on column LOGIN_RESTRICT.operating_time
  is '操作时间';
comment on column LOGIN_RESTRICT.remark
  is '备注';
alter table LOGIN_RESTRICT
  add constraint LOGIN_RESTRICT_PK primary key (LRPKID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LOG_CONTENT
prompt ==========================
prompt
create table LOG_CONTENT
(
  nid      VARCHAR2(7) not null,
  funcname VARCHAR2(120) not null,
  content  VARCHAR2(225) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table LOG_CONTENT
  is '日志内容表';
comment on column LOG_CONTENT.nid
  is '日志ID';
comment on column LOG_CONTENT.funcname
  is '功能名称';
comment on column LOG_CONTENT.content
  is '日志内容';
alter table LOG_CONTENT
  add constraint PRI_NLOGID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LOG_DATA
prompt =======================
prompt
create table LOG_DATA
(
  nid            VARCHAR2(32) not null,
  logtype        VARCHAR2(2) not null,
  userid         VARCHAR2(20) not null,
  cardid         VARCHAR2(18),
  username       NVARCHAR2(30) not null,
  departmentname NVARCHAR2(50) not null,
  departmentid   VARCHAR2(12) not null,
  logtime        DATE not null,
  clientip       VARCHAR2(15) not null,
  clientid       VARCHAR2(50),
  operatetype    VARCHAR2(2) not null,
  failcode       VARCHAR2(10),
  operatetarget  NVARCHAR2(50) not null,
  operatecontent NVARCHAR2(1024) not null,
  systemid       VARCHAR2(10) not null,
  firstmenuid    VARCHAR2(20),
  secondmenuid   VARCHAR2(30),
  functionid     VARCHAR2(40),
  functionname   NVARCHAR2(50) not null
)
partition by range (LOGTIME) interval (NUMTOYMINTERVAL(1,'MONTH'))
(
  partition SYS_P945 values less than (TO_DATE(' 2017-08-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1049 values less than (TO_DATE(' 2017-09-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1110 values less than (TO_DATE(' 2017-10-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1246 values less than (TO_DATE(' 2017-11-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1507 values less than (TO_DATE(' 2017-12-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1627 values less than (TO_DATE(' 2018-01-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1649 values less than (TO_DATE(' 2018-02-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1674 values less than (TO_DATE(' 2018-03-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P1709 values less than (TO_DATE(' 2018-04-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMP_LOGTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P21 values less than (TO_DATE(' 2018-05-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P41 values less than (TO_DATE(' 2018-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on column LOG_DATA.nid
  is '唯一编号';
comment on column LOG_DATA.logtype
  is '日志类型';
comment on column LOG_DATA.userid
  is '警员号/系统标识';
comment on column LOG_DATA.cardid
  is '身份证号码';
comment on column LOG_DATA.username
  is '用户/系统名称';
comment on column LOG_DATA.departmentname
  is '单位名称';
comment on column LOG_DATA.departmentid
  is '单位机构代码';
comment on column LOG_DATA.logtime
  is '操作时间';
comment on column LOG_DATA.clientip
  is '终端ip';
comment on column LOG_DATA.clientid
  is '终端标识';
comment on column LOG_DATA.operatetype
  is '操作类型';
comment on column LOG_DATA.failcode
  is '失败原因代码';
comment on column LOG_DATA.operatetarget
  is '操作对象';
comment on column LOG_DATA.operatecontent
  is '操作内容';
comment on column LOG_DATA.systemid
  is '系统标识';
comment on column LOG_DATA.firstmenuid
  is '一级菜单标识';
comment on column LOG_DATA.secondmenuid
  is '二级菜单标识';
comment on column LOG_DATA.functionid
  is '按钮/超链接功能标识';
comment on column LOG_DATA.functionname
  is '功能名称';
create unique index IDX_LOGDATA_LOGTIME_NID on LOG_DATA (LOGTIME, NID)
  nologging  local;
create index IDX_LOGDATA_TIME_DEPART_USERID on LOG_DATA (LOGTIME, DEPARTMENTID, USERID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table LOG_DATA
  add constraint PK_LOGDATA_NID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table LOW_ANALYSIS_MAP_GEOMETRY
prompt ========================================
prompt
create table LOW_ANALYSIS_MAP_GEOMETRY
(
  pointcode  NVARCHAR2(16),
  geometry   MDSYS.SDO_GEOMETRY,
  ncounts    NUMBER,
  uuid       VARCHAR2(32),
  createtime DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table LOW_ANALYSIS_RELATION
prompt ====================================
prompt
create table LOW_ANALYSIS_RELATION
(
  columnname VARCHAR2(30) not null,
  enumvalue  VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table LOW_ANALYSIS_RELATION
  add constraint LOW_ANALYSIS_RELATION primary key (COLUMNNAME)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table MAINTAIN_DISPATCH_INFO
prompt =====================================
prompt
create table MAINTAIN_DISPATCH_INFO
(
  id             VARCHAR2(8) not null,
  maintainman    NVARCHAR2(50),
  maintain_phone VARCHAR2(16),
  operator_date  DATE default sysdate,
  operator       NVARCHAR2(20),
  operator_id    NVARCHAR2(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column MAINTAIN_DISPATCH_INFO.id
  is 'PK';
comment on column MAINTAIN_DISPATCH_INFO.maintainman
  is '维修责任人';
comment on column MAINTAIN_DISPATCH_INFO.maintain_phone
  is '维修责任人联系方式';
comment on column MAINTAIN_DISPATCH_INFO.operator_date
  is '派工时间';
comment on column MAINTAIN_DISPATCH_INFO.operator
  is '派工人名称';
comment on column MAINTAIN_DISPATCH_INFO.operator_id
  is '派工人ID';
alter table MAINTAIN_DISPATCH_INFO
  add constraint MAINTAIN_DISPATCH_INFO_PK primary key (ID)
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
prompt Creating table MAIN_ROAD
prompt ========================
prompt
create table MAIN_ROAD
(
  mainroadid      VARCHAR2(32) not null,
  roadname        VARCHAR2(32),
  trafficeindex   VARCHAR2(32),
  averyspeed      VARCHAR2(32),
  speedratio      VARCHAR2(32),
  congestionlevel VARCHAR2(32),
  traffictype     VARCHAR2(32)
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
comment on table MAIN_ROAD
  is '主要干道运行概况';
comment on column MAIN_ROAD.mainroadid
  is 'ID';
comment on column MAIN_ROAD.roadname
  is '道路名称';
comment on column MAIN_ROAD.trafficeindex
  is '交通指数';
comment on column MAIN_ROAD.averyspeed
  is '平均速度';
comment on column MAIN_ROAD.speedratio
  is '车速环比';
comment on column MAIN_ROAD.congestionlevel
  is '拥堵等级';
comment on column MAIN_ROAD.traffictype
  is '0代表早高峰，1代表晚高峰';

prompt
prompt Creating table MAJORCAR_INFO
prompt ============================
prompt
create table MAJORCAR_INFO
(
  id                         VARCHAR2(32) not null,
  majorcar_type              VARCHAR2(4),
  car_no                     NVARCHAR2(20),
  car_type                   VARCHAR2(4),
  car_owner                  VARCHAR2(32),
  grant_dept                 NVARCHAR2(100),
  engine_model               VARCHAR2(50),
  engine_no                  VARCHAR2(50),
  have_recorder              CHAR(1),
  have_gps                   CHAR(1),
  registe_date               DATE,
  licence_date               DATE,
  total_mass                 VARCHAR2(20),
  load_capacity              VARCHAR2(20),
  load_no                    VARCHAR2(20),
  effective_date             DATE,
  insurance_company          NVARCHAR2(100),
  car_id                     NVARCHAR2(50),
  check_date                 DATE,
  gatherer                   NVARCHAR2(50),
  gather_time                DATE,
  gather_company             NVARCHAR2(100),
  areaid                     VARCHAR2(6),
  is_addition                CHAR(1),
  status                     CHAR(1),
  opinion                    NVARCHAR2(200),
  create_time                DATE,
  create_user                VARCHAR2(32),
  update_time                DATE,
  update_user                VARCHAR2(32),
  car_brand                  NVARCHAR2(50),
  car_color                  NVARCHAR2(20),
  car_status                 NVARCHAR2(20),
  car_prop                   NVARCHAR2(20),
  insurance_termination_date DATE,
  tank_date                  DATE,
  start_point                NVARCHAR2(50),
  end_point                  NVARCHAR2(50),
  remark                     NVARCHAR2(200),
  gather_no                  VARCHAR2(50),
  gather_ip                  VARCHAR2(32),
  delflag                    CHAR(1) default 1,
  gps_code                   VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column MAJORCAR_INFO.id
  is 'UUID';
comment on column MAJORCAR_INFO.majorcar_type
  is '重点车辆类型 字典关联';
comment on column MAJORCAR_INFO.car_no
  is '车牌号码';
comment on column MAJORCAR_INFO.car_type
  is '号牌种类';
comment on column MAJORCAR_INFO.car_owner
  is '所有人';
comment on column MAJORCAR_INFO.grant_dept
  is '发证机关';
comment on column MAJORCAR_INFO.engine_model
  is '发动机型号';
comment on column MAJORCAR_INFO.engine_no
  is '发动机号';
comment on column MAJORCAR_INFO.have_recorder
  is '是否安装记录仪';
comment on column MAJORCAR_INFO.have_gps
  is '是否安装GPS';
comment on column MAJORCAR_INFO.registe_date
  is '初次登记日期';
comment on column MAJORCAR_INFO.licence_date
  is '发证日期';
comment on column MAJORCAR_INFO.total_mass
  is '总质量';
comment on column MAJORCAR_INFO.load_capacity
  is '核定载重量';
comment on column MAJORCAR_INFO.load_no
  is '核定载客';
comment on column MAJORCAR_INFO.effective_date
  is '检验有效日期止';
comment on column MAJORCAR_INFO.insurance_company
  is '保险公司';
comment on column MAJORCAR_INFO.car_id
  is '车辆识别代码';
comment on column MAJORCAR_INFO.check_date
  is '定检日期';
comment on column MAJORCAR_INFO.gatherer
  is '采集人';
comment on column MAJORCAR_INFO.gather_time
  is '采集时间';
comment on column MAJORCAR_INFO.gather_company
  is '采集单位';
comment on column MAJORCAR_INFO.areaid
  is '行政区域';
comment on column MAJORCAR_INFO.is_addition
  is '1 是 0 否';
comment on column MAJORCAR_INFO.status
  is '1 审核中 2 通过 0 驳回';
comment on column MAJORCAR_INFO.opinion
  is '意见';
comment on column MAJORCAR_INFO.create_time
  is '创建时间';
comment on column MAJORCAR_INFO.create_user
  is '创建人';
comment on column MAJORCAR_INFO.update_time
  is '更新时间';
comment on column MAJORCAR_INFO.update_user
  is '更新者';
comment on column MAJORCAR_INFO.car_brand
  is '车辆品牌';
comment on column MAJORCAR_INFO.car_color
  is '车身颜色';
comment on column MAJORCAR_INFO.car_status
  is '车辆状态';
comment on column MAJORCAR_INFO.car_prop
  is '使用性质';
comment on column MAJORCAR_INFO.insurance_termination_date
  is '保险终止日期';
comment on column MAJORCAR_INFO.tank_date
  is '罐体合格日期';
comment on column MAJORCAR_INFO.start_point
  is '营运起点';
comment on column MAJORCAR_INFO.end_point
  is '营运终点';
comment on column MAJORCAR_INFO.remark
  is '备注';
comment on column MAJORCAR_INFO.gather_no
  is '采集卡点编号';
comment on column MAJORCAR_INFO.gather_ip
  is '采集卡点ip';
comment on column MAJORCAR_INFO.delflag
  is '删除标志 0删除';
comment on column MAJORCAR_INFO.gps_code
  is 'GPS编号';
create index INDEX_MAJORCAR_INFO_CARNO on MAJORCAR_INFO (CAR_NO, CAR_TYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table MAJORCAR_INFO
  add constraint PK_MAJORCAR_INFO_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table MANCONSTRA
prompt =========================
prompt
create table MANCONSTRA
(
  id          VARCHAR2(32) not null,
  sectionid   NVARCHAR2(8),
  modconstate VARCHAR2(1),
  manendtime  DATE,
  delflag     VARCHAR2(1) not null,
  createid    VARCHAR2(20) not null,
  createtime  DATE not null,
  updateid    VARCHAR2(20) not null,
  updatetime  DATE not null
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
comment on table MANCONSTRA
  is '手动控制策略表';
comment on column MANCONSTRA.id
  is '主键';
comment on column MANCONSTRA.sectionid
  is '路段编号';
comment on column MANCONSTRA.modconstate
  is '修改后的拥堵状态';
comment on column MANCONSTRA.manendtime
  is '手控结束时间';
comment on column MANCONSTRA.delflag
  is '删除标志(0:未删除，1::删除)';
comment on column MANCONSTRA.createid
  is '创建id';
comment on column MANCONSTRA.createtime
  is '创建时间';
comment on column MANCONSTRA.updateid
  is '更新id';
comment on column MANCONSTRA.updatetime
  is '更新时间';
alter table MANCONSTRA
  add constraint MANCONSTRAID primary key (ID)
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
prompt Creating table MENU
prompt ===================
prompt
create table MENU
(
  id               VARCHAR2(20) not null,
  name             VARCHAR2(100) not null,
  title            VARCHAR2(100) not null,
  align            VARCHAR2(15),
  alt_image        VARCHAR2(100),
  description      VARCHAR2(255),
  width            NUMBER(6),
  height           NUMBER(6),
  image            VARCHAR2(100),
  on_click         VARCHAR2(500),
  on_dbclick       VARCHAR2(200),
  on_mouseover     VARCHAR2(200),
  on_mouseout      VARCHAR2(200),
  page             VARCHAR2(100),
  location         VARCHAR2(100),
  target           VARCHAR2(15),
  roles            VARCHAR2(100),
  tooltip          VARCHAR2(255),
  url              VARCHAR2(255),
  parent_id        VARCHAR2(20),
  order_id         NUMBER(10),
  fast_id          NUMBER(10),
  del_flag         NUMBER(1),
  created_by       VARCHAR2(20),
  created_at       NUMBER(15),
  last_modified_by VARCHAR2(20),
  last_modified_at NUMBER(15),
  version          NUMBER(15) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column MENU.id
  is '菜单编号，主键';
comment on column MENU.name
  is '菜单名称，程序内部使用';
comment on column MENU.title
  is '菜单标题，用于外部展示';
comment on column MENU.align
  is '对齐方式，left,center,right,top,middle,bottom';
comment on column MENU.alt_image
  is 'alt提示image';
comment on column MENU.description
  is '描述';
comment on column MENU.width
  is '宽度';
comment on column MENU.height
  is '高度';
comment on column MENU.image
  is '菜单图片';
comment on column MENU.on_click
  is '单击脚本';
comment on column MENU.on_dbclick
  is '双击脚本';
comment on column MENU.on_mouseover
  is '滑过脚本';
comment on column MENU.on_mouseout
  is '移出脚本';
comment on column MENU.page
  is '跳转相对路径';
comment on column MENU.location
  is '跳转绝对路径';
comment on column MENU.target
  is '打开链接目标位置';
comment on column MENU.roles
  is '允许的角色';
comment on column MENU.tooltip
  is '气泡提示文字';
comment on column MENU.url
  is '可被渲染成url';
comment on column MENU.parent_id
  is '父菜单编号，通过此构成树级关系，顶级菜单可设置为空';
comment on column MENU.order_id
  is '顺序号，备用';
comment on column MENU.fast_id
  is '快速查询号，备用';
comment on column MENU.del_flag
  is '逻辑删除标志，备用 0为不可用  1或空为可用';
comment on column MENU.created_by
  is '创建人，备用';
comment on column MENU.created_at
  is '创建时间，备用';
comment on column MENU.last_modified_by
  is '最后修改人，备用';
comment on column MENU.last_modified_at
  is '最后修改时间，备用';
comment on column MENU.version
  is '记录版本号，0以及小于0的值在生产环境中将不显示';
alter table MENU
  add constraint PK_MENU_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table METEOROLOGY
prompt ==========================
prompt
create table METEOROLOGY
(
  nid               VARCHAR2(32) not null,
  datasource        VARCHAR2(2) not null,
  airtemperature    NUMBER(3,1),
  dewtemperature    NUMBER(3,1),
  humidity          NUMBER(4,1),
  speed             NUMBER(3,1),
  direction         NUMBER(4,1),
  wind              VARCHAR2(2),
  pressure          NUMBER(4),
  condition         VARCHAR2(3),
  rainfalltype      VARCHAR2(3),
  surftemperature   NUMBER(3,1),
  waterthickness    NUMBER(3,1),
  icethickness      NUMBER(3,1),
  snowthickness     NUMBER(3,1),
  saltvalue         NUMBER(2),
  visibility        NUMBER(5) not null,
  hindertype        VARCHAR2(3),
  pointid           VARCHAR2(12) not null,
  pointname         VARCHAR2(150) not null,
  deviceid          VARCHAR2(18) not null,
  departmentid      VARCHAR2(12) not null,
  detecttime        DATE not null,
  interval          VARCHAR2(2) not null,
  uploadtime        DATE not null,
  rainfall          NUMBER(6,2),
  rainfallintensity NUMBER(6,2)
)
partition by range (DETECTTIME)
(
  partition METEOR_P1 values less than (TO_DATE(' 2016-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table METEOROLOGY
  is '气象表';
comment on column METEOROLOGY.nid
  is '唯一标识';
comment on column METEOROLOGY.datasource
  is '数据来源)';
comment on column METEOROLOGY.airtemperature
  is '空气温度';
comment on column METEOROLOGY.dewtemperature
  is '露点温度';
comment on column METEOROLOGY.humidity
  is '湿度';
comment on column METEOROLOGY.speed
  is '风速';
comment on column METEOROLOGY.direction
  is '风向';
comment on column METEOROLOGY.wind
  is '风力';
comment on column METEOROLOGY.pressure
  is '气压';
comment on column METEOROLOGY.condition
  is '路面状况';
comment on column METEOROLOGY.rainfalltype
  is '降水类型';
comment on column METEOROLOGY.surftemperature
  is '路表温度';
comment on column METEOROLOGY.waterthickness
  is '路表水厚度';
comment on column METEOROLOGY.icethickness
  is '路表冰厚度';
comment on column METEOROLOGY.snowthickness
  is '路表雪厚度';
comment on column METEOROLOGY.saltvalue
  is '盐度值';
comment on column METEOROLOGY.visibility
  is '能见度';
comment on column METEOROLOGY.hindertype
  is '视程障碍类型';
comment on column METEOROLOGY.pointid
  is '点位编号';
comment on column METEOROLOGY.pointname
  is '点位名称';
comment on column METEOROLOGY.deviceid
  is '设备编号';
comment on column METEOROLOGY.departmentid
  is '所属部门';
comment on column METEOROLOGY.detecttime
  is '检测时间';
comment on column METEOROLOGY.interval
  is '间隔时长';
comment on column METEOROLOGY.uploadtime
  is '上传时间';
create unique index PK_METEOROLOGY_ID on METEOROLOGY (DETECTTIME, NID)
  nologging  local;

prompt
prompt Creating table MONITORPOINT_MARK
prompt ================================
prompt
create table MONITORPOINT_MARK
(
  pkid            VARCHAR2(36) not null,
  pointcode       VARCHAR2(25) not null,
  approvestate    VARCHAR2(2) not null,
  approvetime     DATE,
  auditor         VARCHAR2(20),
  approvedescribe VARCHAR2(800)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table MONITORPOINT_MARK
  is '安装点备案';
comment on column MONITORPOINT_MARK.pkid
  is '主键';
comment on column MONITORPOINT_MARK.pointcode
  is '安装点编号';
comment on column MONITORPOINT_MARK.approvestate
  is '审批状态';
comment on column MONITORPOINT_MARK.approvetime
  is '审批时间';
comment on column MONITORPOINT_MARK.auditor
  is '审批人';
comment on column MONITORPOINT_MARK.approvedescribe
  is '审批描述';
alter table MONITORPOINT_MARK
  add constraint MONITORPOINT_MARK primary key (PKID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table MONITOR_POINT
prompt ============================
prompt
create table MONITOR_POINT
(
  pointcode           NVARCHAR2(16) not null,
  pointname           NVARCHAR2(100) not null,
  provider            NVARCHAR2(32),
  illegaladdrid       NVARCHAR2(12),
  providedate         DATE not null,
  passfunc            NVARCHAR2(1),
  epfunc              NVARCHAR2(1),
  osfunc              NVARCHAR2(1),
  vediofunc           NVARCHAR2(1),
  remark              NVARCHAR2(64),
  longitude           NUMBER(13,6),
  latitude            NUMBER(13,6),
  pointtype           NVARCHAR2(2),
  adminiarea          NVARCHAR2(10),
  gpsfunc             NVARCHAR2(1),
  inducefunc          NVARCHAR2(1),
  signalfunc          NVARCHAR2(1),
  flowfunc            NVARCHAR2(1),
  eventfunc           NVARCHAR2(1),
  departmentid        NVARCHAR2(12),
  huanxian            NVARCHAR2(2),
  intervelvelocity    NVARCHAR2(1),
  status              VARCHAR2(2),
  entryperson         VARCHAR2(20),
  checkperson         VARCHAR2(20),
  checktime           DATE,
  entrytime           DATE,
  dldm                VARCHAR2(5),
  lkdm                VARCHAR2(4),
  ddms                VARCHAR2(3),
  features            VARCHAR2(12),
  dltz                NVARCHAR2(2),
  coilfunc            NVARCHAR2(1),
  meteorologyfunc     NVARCHAR2(1),
  checkpointfunc      NVARCHAR2(1),
  checkpointid        VARCHAR2(20),
  checkpointname      VARCHAR2(128),
  checkpointshortname VARCHAR2(128),
  funcitems           VARCHAR2(200),
  thirdcode           VARCHAR2(30),
  ifsppoint           NUMBER default 0,
  isinuse             VARCHAR2(1)
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
comment on table MONITOR_POINT
  is '安装点表';
comment on column MONITOR_POINT.pointcode
  is '点位编号';
comment on column MONITOR_POINT.pointname
  is '点位名称';
comment on column MONITOR_POINT.provider
  is '提供商';
comment on column MONITOR_POINT.illegaladdrid
  is '违法地点编号，同点位编号';
comment on column MONITOR_POINT.providedate
  is '安装时间';
comment on column MONITOR_POINT.passfunc
  is '过车功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.epfunc
  is '电警功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.osfunc
  is '超速功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.vediofunc
  is '视频功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.remark
  is '备注';
comment on column MONITOR_POINT.longitude
  is '经度';
comment on column MONITOR_POINT.latitude
  is '纬度';
comment on column MONITOR_POINT.pointtype
  is '安装点类型';
comment on column MONITOR_POINT.adminiarea
  is '行政辖区（对应枚举 180）';
comment on column MONITOR_POINT.gpsfunc
  is 'GPS功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.inducefunc
  is '诱导功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.signalfunc
  is '信号功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.flowfunc
  is '流量功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.eventfunc
  is '事件功能项(1:表示有;0表示无)';
comment on column MONITOR_POINT.departmentid
  is '所属部门（对应部门表部门cdepartmentid）';
comment on column MONITOR_POINT.huanxian
  is '0为不在环内,1为一环,2为二环,等';
comment on column MONITOR_POINT.intervelvelocity
  is '1表示要加测试，0不要测试';
comment on column MONITOR_POINT.status
  is '空代或1表正常使用，0申请状态,2驳回';
comment on column MONITOR_POINT.dldm
  is '5位道路代码（所属道路道路代码）';
comment on column MONITOR_POINT.lkdm
  is '4位路口代码（所属路口路口代码）';
comment on column MONITOR_POINT.ddms
  is '3位地点米数';
comment on column MONITOR_POINT.features
  is '点位特征';
comment on column MONITOR_POINT.dltz
  is '道路特征';
comment on column MONITOR_POINT.coilfunc
  is '微波功能项';
comment on column MONITOR_POINT.meteorologyfunc
  is '气象设备 1有0无';
comment on column MONITOR_POINT.funcitems
  is '功能项，如电警功能项为01，卡口功能项为02（多个功能项之间用英文逗号分隔，如: 01,02）';
comment on column MONITOR_POINT.ifsppoint
  is '点位是否重点分析';
comment on column MONITOR_POINT.isinuse
  is '是否启用，1：启用，0：未启用';
alter table MONITOR_POINT
  add constraint MONITOR_POINTID primary key (POINTCODE)
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
prompt Creating table MONITOR_POINT_GEOMETRY
prompt =====================================
prompt
create table MONITOR_POINT_GEOMETRY
(
  pointcode VARCHAR2(16),
  geometry  MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table MONITOR_POINT_GEOMETRY
  is '安装点地理信息表';

prompt
prompt Creating table MONITOR_POINT_INOUT_GS
prompt =====================================
prompt
create table MONITOR_POINT_INOUT_GS
(
  pointcode     NVARCHAR2(16) not null,
  pointname     NVARCHAR2(64),
  nindirection  NUMBER(2) not null,
  noutdirection NUMBER(2) not null,
  type          VARCHAR2(2) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table MONITOR_POINT_INOUT_GS
  is '进出高速检测点位表';
comment on column MONITOR_POINT_INOUT_GS.pointcode
  is '检测点编号';
comment on column MONITOR_POINT_INOUT_GS.pointname
  is '检测点名称';
comment on column MONITOR_POINT_INOUT_GS.nindirection
  is '进高速方向，没有填0';
comment on column MONITOR_POINT_INOUT_GS.noutdirection
  is '出高速方向，没有填0';
comment on column MONITOR_POINT_INOUT_GS.type
  is '监测点类型，0-过车点位；1-流量检测器';
alter table MONITOR_POINT_INOUT_GS
  add constraint PK_MONITOR_POINT_INOUT_GS primary key (POINTCODE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table MONITOR_POINT_TRAVTIMESET
prompt ========================================
prompt
create table MONITOR_POINT_TRAVTIMESET
(
  id             VARCHAR2(32) not null,
  startpoint     VARCHAR2(12) not null,
  endpoint       VARCHAR2(12) not null,
  startpointname VARCHAR2(120) not null,
  endpointname   VARCHAR2(120) not null,
  travtime       VARCHAR2(10) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table MONITOR_POINT_TRAVTIMESET
  is '安装点管理->旅行时间设定';
create index TRAVTIME_SEARCH_INDEX on MONITOR_POINT_TRAVTIMESET (STARTPOINT, ENDPOINT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table MONITOR_POINT_TRAVTIMESET
  add constraint MONITOR_POINT_TRAVTIME_PRI primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table MONITOR_SECTION_POINT
prompt ====================================
prompt
create table MONITOR_SECTION_POINT
(
  id          NUMBER not null,
  pointcode   NVARCHAR2(13) not null,
  sectionid   NVARCHAR2(8),
  approachdir NVARCHAR2(1),
  flag        NVARCHAR2(1),
  offset      INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table MONITOR_SECTION_POINT
  is '安装点路段关联表';
comment on column MONITOR_SECTION_POINT.id
  is '主键ID';
comment on column MONITOR_SECTION_POINT.pointcode
  is '安装点编号';
comment on column MONITOR_SECTION_POINT.sectionid
  is '路段编号';
comment on column MONITOR_SECTION_POINT.approachdir
  is '方向 枚举149';
comment on column MONITOR_SECTION_POINT.flag
  is '标志 0-无用 1- 在使用 2- 过期';
comment on column MONITOR_SECTION_POINT.offset
  is '偏移';

prompt
prompt Creating table MONITOR_SECTION_POSITIONS
prompt ========================================
prompt
create table MONITOR_SECTION_POSITIONS
(
  sectionid NVARCHAR2(8) not null,
  zoomlevel NVARCHAR2(2) not null,
  positions VARCHAR2(4000),
  geometry  MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column MONITOR_SECTION_POSITIONS.sectionid
  is '路段编号';
comment on column MONITOR_SECTION_POSITIONS.zoomlevel
  is '缩放级别';
comment on column MONITOR_SECTION_POSITIONS.positions
  is '路线坐标';
create index MSP_SECTIONID on MONITOR_SECTION_POSITIONS (SECTIONID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table MONITOR_SECTION_POSITIONS
  add primary key (SECTIONID, ZOOMLEVEL)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table NLV_VIOACTION_LOCAL
prompt ==================================
prompt
create table NLV_VIOACTION_LOCAL
(
  wfxw     NVARCHAR2(6) not null,
  wfms     NVARCHAR2(160),
  wfnr     NVARCHAR2(255),
  wfgd     NVARCHAR2(255),
  fltw     NVARCHAR2(255),
  wfjfs    NUMBER(2),
  fkje_min NUMBER(6),
  fkje_max NUMBER(6),
  qzcs_min VARCHAR2(4),
  qzcs_max VARCHAR2(4),
  jlsj_min VARCHAR2(4),
  jlsj_max VARCHAR2(4),
  gb       VARCHAR2(1),
  zkbj     VARCHAR2(1),
  jlbj     VARCHAR2(1),
  dxbj     VARCHAR2(1),
  cxbj     VARCHAR2(1),
  sfyx     VARCHAR2(1) default 1,
  dmfl     VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column NLV_VIOACTION_LOCAL.wfxw
  is '违法行为编号';
comment on column NLV_VIOACTION_LOCAL.wfms
  is '违法描述';
comment on column NLV_VIOACTION_LOCAL.wfnr
  is '违法内容';
comment on column NLV_VIOACTION_LOCAL.wfgd
  is '相关法规';
comment on column NLV_VIOACTION_LOCAL.fltw
  is '法律条文';
comment on column NLV_VIOACTION_LOCAL.wfjfs
  is '违法处分';
comment on column NLV_VIOACTION_LOCAL.fkje_min
  is '罚款金额最小数';
comment on column NLV_VIOACTION_LOCAL.fkje_max
  is '罚款金额最大数';
comment on column NLV_VIOACTION_LOCAL.qzcs_min
  is '暂扣金额最小数';
comment on column NLV_VIOACTION_LOCAL.qzcs_max
  is '暂扣金额最大数';
comment on column NLV_VIOACTION_LOCAL.jlsj_min
  is '拘留天数最小数';
comment on column NLV_VIOACTION_LOCAL.jlsj_max
  is '拘留天数最大数';
comment on column NLV_VIOACTION_LOCAL.gb
  is '国际';
comment on column NLV_VIOACTION_LOCAL.zkbj
  is '暂扣标记';
comment on column NLV_VIOACTION_LOCAL.jlbj
  is '拘留标记';
comment on column NLV_VIOACTION_LOCAL.dxbj
  is '吊销标记';
comment on column NLV_VIOACTION_LOCAL.cxbj
  is '撤销标记';
comment on column NLV_VIOACTION_LOCAL.sfyx
  is '是否有效标记';
comment on column NLV_VIOACTION_LOCAL.dmfl
  is '违法小类';
alter table NLV_VIOACTION_LOCAL
  add constraint PK_VIOACT_LOCAL primary key (WFXW)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ONEKEYREADY
prompt ==========================
prompt
create table ONEKEYREADY
(
  id          VARCHAR2(32) not null,
  carcode     VARCHAR2(10),
  reportstate VARCHAR2(2),
  reporttime  DATE,
  strtemp1    VARCHAR2(32),
  strtemp2    VARCHAR2(32),
  strtemp3    VARCHAR2(32),
  savetime    DATE default sysdate,
  numbertemp  NUMBER
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
comment on table ONEKEYREADY
  is '一键报备数据表';
comment on column ONEKEYREADY.id
  is 'ID(自增长)';
comment on column ONEKEYREADY.carcode
  is '台号';
comment on column ONEKEYREADY.reportstate
  is '报备状态';
comment on column ONEKEYREADY.reporttime
  is '报备时间';
comment on column ONEKEYREADY.strtemp1
  is '备用字段1';
comment on column ONEKEYREADY.strtemp2
  is '备用字段2';
comment on column ONEKEYREADY.strtemp3
  is '备用字段3';
comment on column ONEKEYREADY.savetime
  is '入平台库保存时间';
comment on column ONEKEYREADY.numbertemp
  is '备用字段4';
create index IDX_CARCODE on ONEKEYREADY (CARCODE)
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
create index IDX_CARCODE_REPORTTIME on ONEKEYREADY (CARCODE, REPORTTIME)
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
create index IDX_CARCODE_REPORTTIME_RS on ONEKEYREADY (CARCODE, REPORTTIME, REPORTSTATE)
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
create index IDX_ID_REPORTTIME on ONEKEYREADY (ID, REPORTTIME)
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
create index IDX_REPORTTIME on ONEKEYREADY (REPORTTIME)
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
create index IDX_SAVETIME_REPORTTIME on ONEKEYREADY (SAVETIME, REPORTTIME)
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
prompt Creating table ONEKEYREADY_PREDAY
prompt =================================
prompt
create table ONEKEYREADY_PREDAY
(
  id          VARCHAR2(32) not null,
  carcode     VARCHAR2(10),
  reportstate VARCHAR2(2),
  reporttime  DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ONEKEYREADY_PREDAY
  is '一键报备数据表';
comment on column ONEKEYREADY_PREDAY.id
  is 'ID(自增长)';
comment on column ONEKEYREADY_PREDAY.carcode
  is '台号';
comment on column ONEKEYREADY_PREDAY.reportstate
  is '报备状态';
comment on column ONEKEYREADY_PREDAY.reporttime
  is '报备时间';
create index IDX_OKRP_CRR on ONEKEYREADY_PREDAY (CARCODE, REPORTSTATE, REPORTTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table ONEKEYREADY_PREDAY
  add constraint PRI_ONEKEYREADY_PREDAY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table OPERATE_COMPONENT
prompt ================================
prompt
create table OPERATE_COMPONENT
(
  id       VARCHAR2(100) not null,
  menu_id  VARCHAR2(100) not null,
  name     VARCHAR2(100) not null,
  title    VARCHAR2(150) not null,
  order_id NUMBER(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column OPERATE_COMPONENT.id
  is '编号';
comment on column OPERATE_COMPONENT.menu_id
  is '菜单编号';
comment on column OPERATE_COMPONENT.name
  is '操作名称';
comment on column OPERATE_COMPONENT.title
  is '操作标题';
comment on column OPERATE_COMPONENT.order_id
  is '顺序';
alter table OPERATE_COMPONENT
  add constraint PK_OPERATE_COMPONENT_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table OPERATOR
prompt =======================
prompt
create table OPERATOR
(
  nuserid          CHAR(6) not null,
  cusername        NVARCHAR2(20) not null,
  cuserpwd         VARCHAR2(128),
  nusergrade       INTEGER not null,
  cdepartmentid    NVARCHAR2(12) not null,
  nisclosed        INTEGER default 0 not null,
  dtexpireddate    DATE,
  cemail           NVARCHAR2(100),
  cdescription     NVARCHAR2(20),
  checkip          NVARCHAR2(16),
  daycount         VARCHAR2(10),
  monthcount       VARCHAR2(10),
  dayreviewcount   VARCHAR2(10),
  monthreviewcount VARCHAR2(10),
  phone            VARCHAR2(15),
  usertype         VARCHAR2(3),
  logintype        VARCHAR2(10),
  available        NUMBER(1),
  firstflag        NUMBER(1),
  msg_prompt       NUMBER(1),
  telephone        NVARCHAR2(18),
  logindate        DATE,
  loginip          NVARCHAR2(16),
  prelogindate     DATE,
  preloginip       NVARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table OPERATOR
  is '用户表';
comment on column OPERATOR.nuserid
  is '用户ID';
comment on column OPERATOR.cusername
  is '用户名';
comment on column OPERATOR.cuserpwd
  is '密码';
comment on column OPERATOR.nusergrade
  is '用户级别';
comment on column OPERATOR.cdepartmentid
  is '所属部门';
comment on column OPERATOR.nisclosed
  is '是否停用';
comment on column OPERATOR.dtexpireddate
  is '密码失效日期';
comment on column OPERATOR.cemail
  is 'Email地址';
comment on column OPERATOR.cdescription
  is '身份证';
comment on column OPERATOR.checkip
  is '与登录机器ip匹配验证的ip地址';
comment on column OPERATOR.daycount
  is '每天分拣工作量';
comment on column OPERATOR.monthcount
  is '每月分拣工作量';
comment on column OPERATOR.dayreviewcount
  is '每天复审工作量';
comment on column OPERATOR.monthreviewcount
  is '每月复审工作量';
comment on column OPERATOR.phone
  is '手机号';
comment on column OPERATOR.msg_prompt
  is '是否登录短信提示 0 不提示 1 提示';
comment on column OPERATOR.telephone
  is '电话';
comment on column OPERATOR.logindate
  is '最后登录时间';
comment on column OPERATOR.loginip
  is '最后登录IP';
comment on column OPERATOR.prelogindate
  is '上一次登录时间';
comment on column OPERATOR.preloginip
  is '上一次登录IP';
create index PK_USERNAME on OPERATOR (CUSERNAME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table OPERATOR
  add primary key (NUSERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table OPERATOR_LOG
prompt ===========================
prompt
create table OPERATOR_LOG
(
  nid            VARCHAR2(32) not null,
  logtype        INTEGER not null,
  logtime        DATE not null,
  logcontentid   VARCHAR2(7) not null,
  isfaile        NUMBER not null,
  userid         NVARCHAR2(6) not null,
  username       NVARCHAR2(20) not null,
  userip         NVARCHAR2(50) not null,
  departmentid   NVARCHAR2(12) not null,
  departmentname NVARCHAR2(50) not null,
  logdescription VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table OPERATOR_LOG
  is 'bak';
comment on column OPERATOR_LOG.nid
  is '日志ID';
comment on column OPERATOR_LOG.logtype
  is '1:普通操作 2:安全日志;3:错误日志';
comment on column OPERATOR_LOG.logtime
  is '操作时间';
comment on column OPERATOR_LOG.logcontentid
  is '内容ID';
comment on column OPERATOR_LOG.isfaile
  is '0成功日志 1失败日志';
comment on column OPERATOR_LOG.userid
  is '用户ID';
comment on column OPERATOR_LOG.username
  is '用户名称';
alter table OPERATOR_LOG
  add primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table OPERATOR_ROLE
prompt ============================
prompt
create table OPERATOR_ROLE
(
  noperatorroleid INTEGER not null,
  nroleid         INTEGER not null,
  noperatorid     INTEGER not null,
  cdepartmentid   NVARCHAR2(11) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table OPERATOR_ROLE
  is '人员角色关联表';
comment on column OPERATOR_ROLE.noperatorroleid
  is '用户角色ID';
comment on column OPERATOR_ROLE.nroleid
  is '对应角色ID';
comment on column OPERATOR_ROLE.noperatorid
  is '对应用户ID';
comment on column OPERATOR_ROLE.cdepartmentid
  is '所属部门ID';
alter table OPERATOR_ROLE
  add constraint PK_OPERATOR_ROLE primary key (NOPERATORROLEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table OTHERPLACE_VEH
prompt =============================
prompt
create table OTHERPLACE_VEH
(
  no     NVARCHAR2(32) not null,
  hphm   NVARCHAR2(16),
  cclzsj DATE,
  fdjh   NVARCHAR2(30),
  clsbm  NVARCHAR2(25),
  lb     NVARCHAR2(7),
  bz     NVARCHAR2(30),
  ccdjrq DATE,
  syr    VARCHAR2(128)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column OTHERPLACE_VEH.no
  is '编号';
comment on column OTHERPLACE_VEH.hphm
  is '号牌';
comment on column OTHERPLACE_VEH.cclzsj
  is '初次领证时间';
comment on column OTHERPLACE_VEH.fdjh
  is '发动机号';
comment on column OTHERPLACE_VEH.clsbm
  is '车辆识别码';
comment on column OTHERPLACE_VEH.lb
  is '类别';
comment on column OTHERPLACE_VEH.bz
  is '备注';
comment on column OTHERPLACE_VEH.ccdjrq
  is '初次登记时间';
comment on column OTHERPLACE_VEH.syr
  is '所有人';
create index PK_OTHER_VEH_HPHM on OTHERPLACE_VEH (HPHM)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table OTHERPLACE_VEH
  add constraint PK_OTHERPLACE_VEH primary key (NO)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PARKBERTH_MAN
prompt ============================
prompt
create table PARKBERTH_MAN
(
  id             VARCHAR2(32) not null,
  parkid         NVARCHAR2(20) not null,
  berthusedcount NUMBER,
  islast         CHAR(1),
  manendtime     DATE,
  createid       VARCHAR2(20),
  createtime     DATE,
  updateid       VARCHAR2(20),
  updatetime     DATE,
  colorcode      CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PARKBERTH_MAN
  is '手工修改停车泊位表';
comment on column PARKBERTH_MAN.id
  is '主键';
comment on column PARKBERTH_MAN.parkid
  is '停车场ID';
comment on column PARKBERTH_MAN.berthusedcount
  is '停车场可用车位数（泊位数）';
comment on column PARKBERTH_MAN.islast
  is '是否最新的值(0:否，1:是) 新增2:停车三级专用，因要求定时手工修改停车三级屏同时改正行车二级屏，修改二级屏不允许改正三级屏';
comment on column PARKBERTH_MAN.manendtime
  is '手控结束时间';
comment on column PARKBERTH_MAN.createid
  is '创建id';
comment on column PARKBERTH_MAN.createtime
  is '创建时间';
comment on column PARKBERTH_MAN.updateid
  is '更新id';
comment on column PARKBERTH_MAN.updatetime
  is '更新时间';
comment on column PARKBERTH_MAN.colorcode
  is '颜色编号：1-红色；2-黄色；3-绿色；4-未知';
alter table PARKBERTH_MAN
  add constraint PRI_MANPARKBERTHID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PARKINGSPACE
prompt ===========================
prompt
create table PARKINGSPACE
(
  id            VARCHAR2(32) not null,
  serial        VARCHAR2(32) not null,
  berthcount    NUMBER,
  sparecount    NUMBER,
  occupiedcount NUMBER,
  normal        VARCHAR2(1),
  savetime      DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PARKINGSPACE
  is '停车场泊位信息表';
comment on column PARKINGSPACE.serial
  is '停车场编号，关联faci_vehiclepark表的serial';
comment on column PARKINGSPACE.berthcount
  is '泊位总数';
comment on column PARKINGSPACE.sparecount
  is '空闲数';
comment on column PARKINGSPACE.occupiedcount
  is '占用数';
comment on column PARKINGSPACE.normal
  is '状态：1-有效，2-无效';
comment on column PARKINGSPACE.savetime
  is '上传时间';
create index PK_PARK_SEARCH on PARKINGSPACE (SERIAL, NORMAL)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PARKINGSPACE
  add constraint PK_PARKINGSPACE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PASSINOUT
prompt ========================
prompt
create table PASSINOUT
(
  id         VARCHAR2(32) not null,
  pointcode  NVARCHAR2(16),
  ndirection NUMBER(1),
  inoutflg   VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column PASSINOUT.id
  is 'uuid';
comment on column PASSINOUT.pointcode
  is '点编号';
comment on column PASSINOUT.ndirection
  is '方向编号';
comment on column PASSINOUT.inoutflg
  is '方向描述的';
alter table PASSINOUT
  add constraint ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PASS_MGR_INFO
prompt ============================
prompt
create table PASS_MGR_INFO
(
  id                      VARCHAR2(32) not null,
  business_id             VARCHAR2(32),
  state                   VARCHAR2(1) not null,
  state_time              DATE,
  car_num                 VARCHAR2(16) not null,
  car_num_type            VARCHAR2(2) not null,
  car_type                VARCHAR2(3),
  highway_limit           VARCHAR2(3),
  freeway_limit           VARCHAR2(3),
  safety_measure          VARCHAR2(200),
  goods_name              VARCHAR2(200),
  exceed_limit            VARCHAR2(3),
  issuing_dept            VARCHAR2(12),
  car_length              VARCHAR2(10),
  car_width               VARCHAR2(10),
  car_height              VARCHAR2(10),
  car_capacity            VARCHAR2(10),
  car_label               VARCHAR2(50),
  car_model               VARCHAR2(50),
  car_company             VARCHAR2(50),
  car_address             VARCHAR2(100),
  car_state               VARCHAR2(50),
  check_result            VARCHAR2(200),
  pass_type               CHAR(1) not null,
  pass_time_type          CHAR(1),
  begin_date              DATE not null,
  end_date                DATE not null,
  area_no                 VARCHAR2(12),
  type                    VARCHAR2(2),
  pass_road_info          VARCHAR2(1000),
  create_staff_id         VARCHAR2(6),
  create_staff_department VARCHAR2(100),
  create_time             DATE default sysdate not null,
  audit_staff_id          VARCHAR2(6) not null,
  audit_time              DATE,
  print_time              DATE,
  handle_time             DATE,
  handle_code             VARCHAR2(10),
  pt_id                   VARCHAR2(32),
  business_name           VARCHAR2(400),
  no                      VARCHAR2(10),
  audit_staff_name        VARCHAR2(20),
  create_staff_name       VARCHAR2(20),
  source_type             NUMBER(1) default 0 not null,
  isfake                  VARCHAR2(1),
  applybusiness           VARCHAR2(200),
  projectname             VARCHAR2(200),
  replacement             VARCHAR2(1),
  timestate               VARCHAR2(1),
  usefulness              VARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table PASS_MGR_INFO
  is '通行证管理信息表';
comment on column PASS_MGR_INFO.id
  is '系统自动生成编号';
comment on column PASS_MGR_INFO.business_id
  is '关联的企业或个人信息';
comment on column PASS_MGR_INFO.state
  is '状态（''S：保存未提交；''0''：审批中；''1''：审批通过；''2''：审批驳回；‘3’：已作废；‘4’：已配证；‘5’：已打印；‘E’：提前终结（过户使用）；‘X’：已丢失）；';
comment on column PASS_MGR_INFO.state_time
  is '状态时间';
comment on column PASS_MGR_INFO.car_num
  is '号牌号码';
comment on column PASS_MGR_INFO.car_num_type
  is '号牌类型(''01''：大货车，''02''：小货车)';
comment on column PASS_MGR_INFO.car_type
  is '车辆类型(普通重型货车；)';
comment on column PASS_MGR_INFO.highway_limit
  is '普通公路最高限速';
comment on column PASS_MGR_INFO.freeway_limit
  is '高速公路最高限速';
comment on column PASS_MGR_INFO.safety_measure
  is '安全措施';
comment on column PASS_MGR_INFO.goods_name
  is '载运物品名称';
comment on column PASS_MGR_INFO.exceed_limit
  is '超限类别';
comment on column PASS_MGR_INFO.issuing_dept
  is '发证机关（发放通行证的部门编号）';
comment on column PASS_MGR_INFO.car_length
  is '车辆长度';
comment on column PASS_MGR_INFO.car_width
  is '车辆宽度';
comment on column PASS_MGR_INFO.car_height
  is '车辆高度';
comment on column PASS_MGR_INFO.car_capacity
  is '核载人数';
comment on column PASS_MGR_INFO.car_label
  is '厂牌';
comment on column PASS_MGR_INFO.car_model
  is '车型';
comment on column PASS_MGR_INFO.car_company
  is '单位所属';
comment on column PASS_MGR_INFO.car_address
  is '车辆登记地址';
comment on column PASS_MGR_INFO.car_state
  is '车辆状态';
comment on column PASS_MGR_INFO.check_result
  is '针对大货车临检结果';
comment on column PASS_MGR_INFO.pass_type
  is '通行证类型（‘1’：普通；‘2’：超限）';
comment on column PASS_MGR_INFO.pass_time_type
  is '通行证时效类型（‘0’：临时；‘1’：长时）';
comment on column PASS_MGR_INFO.begin_date
  is '通行证开始时间';
comment on column PASS_MGR_INFO.end_date
  is '通行证结束时间';
comment on column PASS_MGR_INFO.type
  is '类型';
comment on column PASS_MGR_INFO.pass_road_info
  is '通行路线信息';
comment on column PASS_MGR_INFO.create_staff_id
  is '创建人编号（录入信息的警员编号，窗口内，外网导入为空）';
comment on column PASS_MGR_INFO.create_staff_department
  is '创建人部门（受理部门）';
comment on column PASS_MGR_INFO.create_time
  is '创建时间';
comment on column PASS_MGR_INFO.audit_staff_id
  is '审批人编号';
comment on column PASS_MGR_INFO.audit_time
  is '审批通过时间';
comment on column PASS_MGR_INFO.print_time
  is '打印时间';
comment on column PASS_MGR_INFO.handle_time
  is '配证时间';
comment on column PASS_MGR_INFO.handle_code
  is '配证唯一编码';
comment on column PASS_MGR_INFO.pt_id
  is '通行证模板编号';
comment on column PASS_MGR_INFO.business_name
  is '承运单位（冗余）';
comment on column PASS_MGR_INFO.no
  is 'NO.流水号';
comment on column PASS_MGR_INFO.audit_staff_name
  is '审批人姓名（冗余）';
comment on column PASS_MGR_INFO.create_staff_name
  is '创建人姓名（冗余）';
comment on column PASS_MGR_INFO.source_type
  is '0：窗口；1：网站；';
comment on column PASS_MGR_INFO.isfake
  is '是否贴有防伪标识 1;是 0：否';
comment on column PASS_MGR_INFO.applybusiness
  is '申请单位';
comment on column PASS_MGR_INFO.projectname
  is '项目名称';
comment on column PASS_MGR_INFO.replacement
  is '是否换证标志 1：新证、其他表示办证的次数';
comment on column PASS_MGR_INFO.timestate
  is '是否过期 0有效 1过期';
comment on column PASS_MGR_INFO.usefulness
  is '用途';
create index PASS_ASD_STATE on PASS_MGR_INFO (AUDIT_STAFF_ID, STATE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index PASS_STATE_TIEM on PASS_MGR_INFO (STATE_TIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table PASS_MGR_INFO
  add constraint PK_PASSMGR_INFOID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PEH_POLICEEXPRESSWAY_VMS_PLAN
prompt ============================================
prompt
create table PEH_POLICEEXPRESSWAY_VMS_PLAN
(
  id             VARCHAR2(32) not null,
  vmsplanid      VARCHAR2(32),
  grouptype      VARCHAR2(8),
  groupnames     VARCHAR2(128),
  playcount      NUMBER,
  car_direction  VARCHAR2(20),
  road_number    NUMBER(2),
  relateid       VARCHAR2(80),
  elementgroupid VARCHAR2(2000),
  deviceid       VARCHAR2(32),
  elementids     VARCHAR2(2000)
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
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.id
  is 'ID';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.vmsplanid
  is '节目组计划id';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.grouptype
  is '诱导组类型';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.groupnames
  is '诱导组名称';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.playcount
  is '播放次数';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.car_direction
  is '行车方向';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.road_number
  is '车道数量';
comment on column PEH_POLICEEXPRESSWAY_VMS_PLAN.relateid
  is '设备关联ID';
alter table PEH_POLICEEXPRESSWAY_VMS_PLAN
  add constraint PEH_POLICE_EXP_VMS_PLAN_KEY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PEH_POLICEFOG_MODELS
prompt ===================================
prompt
create table PEH_POLICEFOG_MODELS
(
  modelid      VARCHAR2(32) not null,
  modeltype    VARCHAR2(16),
  modelname    VARCHAR2(128),
  thirdsyscode VARCHAR2(32),
  zlcdms       VARCHAR2(32),
  yjdpl        VARCHAR2(32),
  yddpl        VARCHAR2(32),
  yjdld        VARCHAR2(32),
  yddld        VARCHAR2(32),
  wjcd         VARCHAR2(32),
  kqdd         VARCHAR2(32),
  wjsj         VARCHAR2(32),
  cjq          VARCHAR2(32),
  updatetime   DATE,
  updateuser   VARCHAR2(32)
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
comment on column PEH_POLICEFOG_MODELS.modelid
  is '模式ID';
comment on column PEH_POLICEFOG_MODELS.modeltype
  is '模式类型';
comment on column PEH_POLICEFOG_MODELS.modelname
  is '模式名称';
comment on column PEH_POLICEFOG_MODELS.thirdsyscode
  is '第三方编号';
comment on column PEH_POLICEFOG_MODELS.zlcdms
  is '指令传递模式';
comment on column PEH_POLICEFOG_MODELS.yjdpl
  is '预警灯频率';
comment on column PEH_POLICEFOG_MODELS.yddpl
  is '诱导灯频率';
comment on column PEH_POLICEFOG_MODELS.yjdld
  is '预警灯亮度';
comment on column PEH_POLICEFOG_MODELS.yddld
  is '诱导灯亮度';
comment on column PEH_POLICEFOG_MODELS.wjcd
  is '尾迹长度';
comment on column PEH_POLICEFOG_MODELS.kqdd
  is '开启道钉';
comment on column PEH_POLICEFOG_MODELS.wjsj
  is '尾迹时间';
comment on column PEH_POLICEFOG_MODELS.cjq
  is '车检器';
comment on column PEH_POLICEFOG_MODELS.updatetime
  is '更新时间';
comment on column PEH_POLICEFOG_MODELS.updateuser
  is '创建用户';
alter table PEH_POLICEFOG_MODELS
  add constraint XPKPEH_POLICEFOG_MODELS primary key (MODELID)
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
prompt Creating table PEH_POLICE_EMERGENCY
prompt ===================================
prompt
create table PEH_POLICE_EMERGENCY
(
  case_id                VARCHAR2(32) not null,
  source                 VARCHAR2(2),
  case_category          VARCHAR2(2),
  concrete_type          VARCHAR2(4),
  nlevel                 CHAR(1),
  status                 VARCHAR2(2) default 1 not null,
  department_id          VARCHAR2(18),
  brief                  NVARCHAR2(150),
  detail                 NVARCHAR2(300),
  start_time             DATE,
  end_time               DATE,
  point_id               VARCHAR2(12),
  location_name          NVARCHAR2(150),
  longitude              VARCHAR2(200),
  latitude               VARCHAR2(200),
  area_id                NVARCHAR2(20),
  road_id                VARCHAR2(12),
  road_name              NVARCHAR2(50),
  pic_url                VARCHAR2(200),
  video_url              VARCHAR2(200),
  report_usrname         NVARCHAR2(20),
  create_time            DATE default SYSDATE,
  remark                 NVARCHAR2(150),
  cartype                VARCHAR2(2),
  carnumber              VARCHAR2(16),
  recordline             CLOB,
  last_modify_time       DATE,
  delete_flag            VARCHAR2(2),
  source_super           VARCHAR2(2),
  phone_num              VARCHAR2(20),
  sex                    VARCHAR2(2),
  case_type              VARCHAR2(2),
  isauto                 VARCHAR2(2) default 0,
  checkflag              VARCHAR2(2) default 0,
  up_and_down            VARCHAR2(2),
  dldm                   VARCHAR2(5),
  lkdm                   VARCHAR2(5),
  meter                  VARCHAR2(10),
  pile_num               VARCHAR2(10),
  similar_case_id        VARCHAR2(32) default 0,
  additional_information VARCHAR2(100),
  third_case_id          VARCHAR2(100),
  receiver               VARCHAR2(6),
  handler                NVARCHAR2(10),
  note                   VARCHAR2(300),
  direction              VARCHAR2(4),
  terminator             VARCHAR2(6),
  receiver_phone         VARCHAR2(20),
  receiver_type          VARCHAR2(2),
  report_type            VARCHAR2(2),
  report_id              VARCHAR2(6),
  disappear_time         DATE,
  jamover                VARCHAR2(2),
  msgpk                  NVARCHAR2(200),
  point_name             NVARCHAR2(50),
  invalidflag            VARCHAR2(2) default 0,
  invaliduser            NVARCHAR2(50),
  orderid122             NVARCHAR2(50),
  oldcaseid              VARCHAR2(32),
  cancletime             DATE,
  poidesc                VARCHAR2(20)
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
comment on column PEH_POLICE_EMERGENCY.case_id
  is '警情单号UUID';
comment on column PEH_POLICE_EMERGENCY.source
  is '来源2级（枚举1118）';
comment on column PEH_POLICE_EMERGENCY.case_category
  is '警情种类(枚举1110)';
comment on column PEH_POLICE_EMERGENCY.concrete_type
  is '具体类别(枚举1120)';
comment on column PEH_POLICE_EMERGENCY.nlevel
  is '警情级别（枚举1139）';
comment on column PEH_POLICE_EMERGENCY.status
  is '警情状态(枚举15003）';
comment on column PEH_POLICE_EMERGENCY.department_id
  is '处警部门编号';
comment on column PEH_POLICE_EMERGENCY.brief
  is '简要警情描述';
comment on column PEH_POLICE_EMERGENCY.detail
  is '详细描述';
comment on column PEH_POLICE_EMERGENCY.start_time
  is '开始时间';
comment on column PEH_POLICE_EMERGENCY.end_time
  is '结束时间';
comment on column PEH_POLICE_EMERGENCY.point_id
  is '地点编号（平台）';
comment on column PEH_POLICE_EMERGENCY.location_name
  is '地点名称';
comment on column PEH_POLICE_EMERGENCY.longitude
  is '经度';
comment on column PEH_POLICE_EMERGENCY.latitude
  is '纬度';
comment on column PEH_POLICE_EMERGENCY.area_id
  is '辖区编号（枚举值180）（修改为部门代码）';
comment on column PEH_POLICE_EMERGENCY.road_id
  is '路段编码';
comment on column PEH_POLICE_EMERGENCY.road_name
  is '路段名称';
comment on column PEH_POLICE_EMERGENCY.pic_url
  is '图片URL';
comment on column PEH_POLICE_EMERGENCY.video_url
  is '视频URL';
comment on column PEH_POLICE_EMERGENCY.report_usrname
  is '报警人';
comment on column PEH_POLICE_EMERGENCY.create_time
  is '创建时间';
comment on column PEH_POLICE_EMERGENCY.remark
  is '备注';
comment on column PEH_POLICE_EMERGENCY.cartype
  is '号牌类型';
comment on column PEH_POLICE_EMERGENCY.carnumber
  is '号牌号码';
comment on column PEH_POLICE_EMERGENCY.recordline
  is '备案路线';
comment on column PEH_POLICE_EMERGENCY.source_super
  is '来源1级（枚举15001）';
comment on column PEH_POLICE_EMERGENCY.phone_num
  is '联系电话';
comment on column PEH_POLICE_EMERGENCY.sex
  is '性别：0，男 1，女';
comment on column PEH_POLICE_EMERGENCY.case_type
  is '报警类别：0，实时警情 1，信息调度';
comment on column PEH_POLICE_EMERGENCY.isauto
  is '0手动，1自动';
comment on column PEH_POLICE_EMERGENCY.checkflag
  is '0未查看的警情,1已查看的警情';
comment on column PEH_POLICE_EMERGENCY.up_and_down
  is '上下行标识（枚举值1302：0上行，1下行）';
comment on column PEH_POLICE_EMERGENCY.dldm
  is '道路代码（5位数字）';
comment on column PEH_POLICE_EMERGENCY.lkdm
  is '路口代码（5位数字）';
comment on column PEH_POLICE_EMERGENCY.meter
  is '米数';
comment on column PEH_POLICE_EMERGENCY.pile_num
  is '桩号(前四位代表公里，后三位代表米)';
comment on column PEH_POLICE_EMERGENCY.similar_case_id
  is '与之关联的相似警情id';
comment on column PEH_POLICE_EMERGENCY.additional_information
  is '附加信息';
comment on column PEH_POLICE_EMERGENCY.third_case_id
  is '第三方警情ID';
comment on column PEH_POLICE_EMERGENCY.receiver
  is '接警人id';
comment on column PEH_POLICE_EMERGENCY.handler
  is '处理警情人员';
comment on column PEH_POLICE_EMERGENCY.note
  is '备注';
comment on column PEH_POLICE_EMERGENCY.direction
  is '方向';
comment on column PEH_POLICE_EMERGENCY.terminator
  is '结警人';
comment on column PEH_POLICE_EMERGENCY.receiver_phone
  is '接警人电话';
comment on column PEH_POLICE_EMERGENCY.receiver_type
  is '接警人类型';
comment on column PEH_POLICE_EMERGENCY.report_type
  is '报警人类型  0 执法民警 1 普通民警 2 群众';
comment on column PEH_POLICE_EMERGENCY.report_id
  is '报警人id';
comment on column PEH_POLICE_EMERGENCY.disappear_time
  is '信号自主检测拥堵警情消散时间';
comment on column PEH_POLICE_EMERGENCY.jamover
  is '信号自主检测拥堵警情消散状态';
comment on column PEH_POLICE_EMERGENCY.msgpk
  is '信号自主检测拥堵警情唯一标识';
comment on column PEH_POLICE_EMERGENCY.point_name
  is '地点名称（设备安装点名称）';
comment on column PEH_POLICE_EMERGENCY.invalidflag
  is '0：有效 1：已作废无效';
comment on column PEH_POLICE_EMERGENCY.invaliduser
  is '警情无效操作人员';
comment on column PEH_POLICE_EMERGENCY.orderid122
  is '指令单编号122';
create bitmap index IDX_PEH_ENERGENCY_STATUS on PEH_POLICE_EMERGENCY (STATUS)
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
create index IDX_PEH_POLICE_EMERGENCY on PEH_POLICE_EMERGENCY (LOCATION_NAME)
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
alter table PEH_POLICE_EMERGENCY
  add constraint PK_PEH_POLICE_EMERGENCY primary key (CASE_ID)
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
prompt Creating table PEH_POLICE_FOG_PLAN
prompt ==================================
prompt
create table PEH_POLICE_FOG_PLAN
(
  id        VARCHAR2(32) not null,
  modeltype VARCHAR2(16),
  modelname VARCHAR2(128),
  modelid   VARCHAR2(32),
  relateid  VARCHAR2(80)
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
comment on column PEH_POLICE_FOG_PLAN.id
  is 'ID';
comment on column PEH_POLICE_FOG_PLAN.modeltype
  is '模式类型';
comment on column PEH_POLICE_FOG_PLAN.modelname
  is '模式名称';
comment on column PEH_POLICE_FOG_PLAN.modelid
  is '模式ID';
comment on column PEH_POLICE_FOG_PLAN.relateid
  is '设备关联ID';
alter table PEH_POLICE_FOG_PLAN
  add constraint XPKPEH_POLICE_FOG_PLAN primary key (ID)
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
prompt Creating table PEH_POLICE_PROPAGANDA_ELEMENT
prompt ============================================
prompt
create table PEH_POLICE_PROPAGANDA_ELEMENT
(
  element_id    VARCHAR2(32) not null,
  element_title VARCHAR2(128),
  element_text  VARCHAR2(2048),
  program_type  VARCHAR2(32),
  extcol        VARCHAR2(512)
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
comment on column PEH_POLICE_PROPAGANDA_ELEMENT.element_id
  is '节目ID';
comment on column PEH_POLICE_PROPAGANDA_ELEMENT.element_title
  is '节目名称';
comment on column PEH_POLICE_PROPAGANDA_ELEMENT.element_text
  is '节目内容';
comment on column PEH_POLICE_PROPAGANDA_ELEMENT.program_type
  is '节目类别';
comment on column PEH_POLICE_PROPAGANDA_ELEMENT.extcol
  is '扩展字段';
alter table PEH_POLICE_PROPAGANDA_ELEMENT
  add constraint PEH_POLICE_PRO_ELEMENT_KEY primary key (ELEMENT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PEH_POLICE_PROPAGANDA_PLAN
prompt =========================================
prompt
create table PEH_POLICE_PROPAGANDA_PLAN
(
  id             VARCHAR2(32) not null,
  play_type      VARCHAR2(8),
  macid          VARCHAR2(32),
  macname        VARCHAR2(128),
  audioelementid VARCHAR2(32),
  voicename      VARCHAR2(2000),
  voicepath      VARCHAR2(128),
  method         VARCHAR2(16),
  duration       NUMBER(10),
  frequency      NUMBER(3),
  element_id     VARCHAR2(32),
  relateid       VARCHAR2(80)
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
comment on column PEH_POLICE_PROPAGANDA_PLAN.id
  is 'ID';
comment on column PEH_POLICE_PROPAGANDA_PLAN.play_type
  is '播放模式(1麦克2音频3文字)';
comment on column PEH_POLICE_PROPAGANDA_PLAN.macid
  is '喊话mac';
comment on column PEH_POLICE_PROPAGANDA_PLAN.macname
  is '喊话麦克名称';
comment on column PEH_POLICE_PROPAGANDA_PLAN.audioelementid
  is '音频设备id';
comment on column PEH_POLICE_PROPAGANDA_PLAN.voicename
  is '音频文件名称';
comment on column PEH_POLICE_PROPAGANDA_PLAN.voicepath
  is '音频文件路径';
comment on column PEH_POLICE_PROPAGANDA_PLAN.method
  is '持续方式';
comment on column PEH_POLICE_PROPAGANDA_PLAN.duration
  is '持续时长';
comment on column PEH_POLICE_PROPAGANDA_PLAN.frequency
  is '频率';
comment on column PEH_POLICE_PROPAGANDA_PLAN.element_id
  is '节目ID';
comment on column PEH_POLICE_PROPAGANDA_PLAN.relateid
  is '设备关联ID';
alter table PEH_POLICE_PROPAGANDA_PLAN
  add constraint XPKPEH_POLICE_PROPAGANDA_PLAN primary key (ID)
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
prompt Creating table PEH_POLICE_VMS_CONFIG
prompt ====================================
prompt
create table PEH_POLICE_VMS_CONFIG
(
  id             VARCHAR2(32) not null,
  caseid         VARCHAR2(32),
  deviceid       VARCHAR2(32),
  devicename     VARCHAR2(512),
  thirdsyscode   VARCHAR2(32),
  devicetype     VARCHAR2(2),
  userid         VARCHAR2(6),
  changeid       VARCHAR2(6),
  reportid       VARCHAR2(6),
  vmstype        VARCHAR2(16),
  vmssize        VARCHAR2(16),
  direction      VARCHAR2(16),
  provider       VARCHAR2(16),
  status         VARCHAR2(16),
  devicestate    VARCHAR2(16),
  departmentid   VARCHAR2(32),
  createtime     DATE,
  pointid        VARCHAR2(32),
  upvmsroad      VARCHAR2(128),
  downvmsroad    VARCHAR2(128),
  configstate    VARCHAR2(4) default 0,
  coordinate     VARCHAR2(32),
  departmentname VARCHAR2(128),
  pointname      VARCHAR2(128),
  elementidbf    VARCHAR2(32),
  elementidnow   VARCHAR2(32),
  commandflag    VARCHAR2(2) default 0,
  playtype       VARCHAR2(2) default 1,
  handledate     DATE default sysdate,
  commandtime    DATE default sysdate,
  videotype      VARCHAR2(16),
  isgroup        VARCHAR2(2),
  islimited      VARCHAR2(1),
  sendid         VARCHAR2(32),
  ordernum       NUMBER,
  currentmodel   VARCHAR2(2)
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
comment on table PEH_POLICE_VMS_CONFIG
  is '诱导发布警情信息处理配置表';
comment on column PEH_POLICE_VMS_CONFIG.id
  is 'ID';
comment on column PEH_POLICE_VMS_CONFIG.caseid
  is '当前警情ID';
comment on column PEH_POLICE_VMS_CONFIG.deviceid
  is '设备ID';
comment on column PEH_POLICE_VMS_CONFIG.devicename
  is '设备名称';
comment on column PEH_POLICE_VMS_CONFIG.thirdsyscode
  is '第三方编号';
comment on column PEH_POLICE_VMS_CONFIG.devicetype
  is '设备配置类型 枚举1704';
comment on column PEH_POLICE_VMS_CONFIG.userid
  is '处理人ID';
comment on column PEH_POLICE_VMS_CONFIG.changeid
  is '交接员ID';
comment on column PEH_POLICE_VMS_CONFIG.reportid
  is '上报员ID';
comment on column PEH_POLICE_VMS_CONFIG.vmstype
  is '诱导屏类型（枚举186）';
comment on column PEH_POLICE_VMS_CONFIG.vmssize
  is '诱导屏尺寸';
comment on column PEH_POLICE_VMS_CONFIG.direction
  is '诱导屏方向（枚举149）';
comment on column PEH_POLICE_VMS_CONFIG.provider
  is '诱导屏厂商（枚举902）';
comment on column PEH_POLICE_VMS_CONFIG.status
  is '执行状态（0未执行 1下发成功 2下发失败 3撤销成功 4撤销失败）';
comment on column PEH_POLICE_VMS_CONFIG.devicestate
  is '设备状态（枚举100）';
comment on column PEH_POLICE_VMS_CONFIG.departmentid
  is '所属部门';
comment on column PEH_POLICE_VMS_CONFIG.createtime
  is '制作时间';
comment on column PEH_POLICE_VMS_CONFIG.pointid
  is '安装点';
comment on column PEH_POLICE_VMS_CONFIG.upvmsroad
  is '雾区防撞上行诱导路段';
comment on column PEH_POLICE_VMS_CONFIG.downvmsroad
  is '雾区防撞下行诱导路段';
comment on column PEH_POLICE_VMS_CONFIG.configstate
  is '节目配置状态 0未配置 1已配置';
comment on column PEH_POLICE_VMS_CONFIG.coordinate
  is '设备安装点坐标';
comment on column PEH_POLICE_VMS_CONFIG.departmentname
  is '所属部门名称';
comment on column PEH_POLICE_VMS_CONFIG.pointname
  is '安装点名称';
comment on column PEH_POLICE_VMS_CONFIG.elementidbf
  is '该设备配置前节目ID';
comment on column PEH_POLICE_VMS_CONFIG.elementidnow
  is '设备配置节目ID';
comment on column PEH_POLICE_VMS_CONFIG.commandflag
  is '0:指令未下发 1：指令下发';
comment on column PEH_POLICE_VMS_CONFIG.playtype
  is '1X:诱导（独占）';
comment on column PEH_POLICE_VMS_CONFIG.handledate
  is '当前配置处理时间';
comment on column PEH_POLICE_VMS_CONFIG.commandtime
  is '指令下发时间';
comment on column PEH_POLICE_VMS_CONFIG.videotype
  is '视频类型';
comment on column PEH_POLICE_VMS_CONFIG.isgroup
  is '0 是限速设备组 1 非限速设备组信息';
comment on column PEH_POLICE_VMS_CONFIG.islimited
  is '是否发限速消息（1：发，0：不发）';
comment on column PEH_POLICE_VMS_CONFIG.sendid
  is '发送的节目计划ID';
comment on column PEH_POLICE_VMS_CONFIG.ordernum
  is '设备排序';
comment on column PEH_POLICE_VMS_CONFIG.currentmodel
  is '0:未获取到执行模式；1:获取到执行模式';
alter table PEH_POLICE_VMS_CONFIG
  add constraint IDKIEY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PEH_POLICE_VMS_INFO
prompt ==================================
prompt
create table PEH_POLICE_VMS_INFO
(
  id            VARCHAR2(32) not null,
  userid        VARCHAR2(32) not null,
  starttime     DATE,
  endtime       DATE,
  processmode   INTEGER,
  status        INTEGER default 1 not null,
  username      VARCHAR2(100),
  controlstatus INTEGER default 100 not null,
  create_time   DATE default sysdate
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
comment on table PEH_POLICE_VMS_INFO
  is '信息服务诱导发布警情信息表';
comment on column PEH_POLICE_VMS_INFO.id
  is '警情ID';
comment on column PEH_POLICE_VMS_INFO.userid
  is '处理人id';
comment on column PEH_POLICE_VMS_INFO.starttime
  is '开始时间';
comment on column PEH_POLICE_VMS_INFO.endtime
  is '结束时间';
comment on column PEH_POLICE_VMS_INFO.processmode
  is '处理方式';
comment on column PEH_POLICE_VMS_INFO.status
  is '处理状态1未处理2处理中3已处理完成';
comment on column PEH_POLICE_VMS_INFO.username
  is '处理人名字';
comment on column PEH_POLICE_VMS_INFO.controlstatus
  is '控制状态100;';
comment on column PEH_POLICE_VMS_INFO.create_time
  is '创建时间';
alter table PEH_POLICE_VMS_INFO
  add constraint ID_USERID primary key (ID, USERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PEH_POLICE_VMS_PLAN
prompt ==================================
prompt
create table PEH_POLICE_VMS_PLAN
(
  id         VARCHAR2(32) not null,
  vmscaseid  VARCHAR2(32),
  relateid   VARCHAR2(80),
  elementids VARCHAR2(2000)
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
comment on column PEH_POLICE_VMS_PLAN.id
  is 'ID';
comment on column PEH_POLICE_VMS_PLAN.vmscaseid
  is '诱导发布计划id';
comment on column PEH_POLICE_VMS_PLAN.relateid
  is '设备关联ID';
alter table PEH_POLICE_VMS_PLAN
  add constraint XPKPEH_POLICE_VMS_PLAN primary key (ID)
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
prompt Creating table POLICE
prompt =====================
prompt
create table POLICE
(
  uuid              CHAR(32) not null,
  policeid          CHAR(6),
  policename        NVARCHAR2(7),
  depid             VARCHAR2(12),
  isxiejing         VARCHAR2(4) default 1,
  isclosed          INTEGER default 1,
  phone             VARCHAR2(15),
  email             VARCHAR2(100),
  idcard            VARCHAR2(20),
  hasgps            VARCHAR2(4),
  deviceid          VARCHAR2(18),
  is_effective      VARCHAR2(2) default 0,
  auditstate        VARCHAR2(1),
  auditid           CHAR(6),
  suggestion        NVARCHAR2(500),
  auditname         NVARCHAR2(20),
  createid          CHAR(6),
  createname        NVARCHAR2(20),
  createtime        DATE,
  modifytime        DATE,
  isleader          VARCHAR2(1),
  sex               VARCHAR2(1) default 0,
  nation            NVARCHAR2(20),
  birthday          DATE,
  nativeplace       NVARCHAR2(100),
  birthplace        NVARCHAR2(100),
  politicalface     VARCHAR2(2),
  politicalfacetime DATE,
  worktime          DATE,
  worktimepolice    DATE,
  workplace         NVARCHAR2(100),
  precentposition   NVARCHAR2(20),
  partyposition     NVARCHAR2(20),
  picture           VARCHAR2(500),
  remarks           NVARCHAR2(2000),
  relativedeptid    VARCHAR2(30),
  policerank        NVARCHAR2(20),
  marriage          VARCHAR2(1),
  updatetime        DATE,
  cert_id           NVARCHAR2(100),
  permitcar         VARCHAR2(20),
  gunnumber         NVARCHAR2(20),
  deviceid2         VARCHAR2(18),
  dutytime          VARCHAR2(64),
  dutyable          VARCHAR2(1),
  deviceid3         VARCHAR2(20),
  deviceid4         VARCHAR2(20),
  policetype        NVARCHAR2(2),
  positionleveltype NVARCHAR2(2),
  positionlevelname NVARCHAR2(2),
  publicholiday     NUMBER,
  state             NVARCHAR2(1) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column POLICE.uuid
  is 'uuid';
comment on column POLICE.policeid
  is '警员号，可为空';
comment on column POLICE.policename
  is '警员姓名';
comment on column POLICE.depid
  is '警员所属部门';
comment on column POLICE.isxiejing
  is '是否协警  是:0  否:1  枚举：24';
comment on column POLICE.isclosed
  is '是否停用  是:0  否:1  枚举：24';
comment on column POLICE.phone
  is '电话';
comment on column POLICE.email
  is '电子邮件';
comment on column POLICE.idcard
  is '身份证号';
comment on column POLICE.hasgps
  is '是否有GPS设备  是:0  否:1  枚举：24';
comment on column POLICE.deviceid
  is 'EQUIPMENT_INFO表id  用于关联GPS设备';
comment on column POLICE.is_effective
  is '警员状态';
comment on column POLICE.auditstate
  is '状态 （0，审批中；1，审批通过； 2，作废 ；3，未提交审核；9，审批驳回 ）';
comment on column POLICE.auditid
  is '审批人 ID';
comment on column POLICE.suggestion
  is '审批意见';
comment on column POLICE.auditname
  is '审批人name';
comment on column POLICE.createid
  is '申请人ID';
comment on column POLICE.createname
  is '申请人name';
comment on column POLICE.createtime
  is '申请时间';
comment on column POLICE.modifytime
  is '修改时间';
comment on column POLICE.isleader
  is '是否是领导（1，是；0，否）';
comment on column POLICE.sex
  is '性别（0，男；1，女）';
comment on column POLICE.nation
  is '民族';
comment on column POLICE.birthday
  is '出生年月';
comment on column POLICE.nativeplace
  is '籍贯';
comment on column POLICE.birthplace
  is '出生地';
comment on column POLICE.politicalface
  is '政治面目（0，中共党员；1，团员；2，群众；）';
comment on column POLICE.politicalfacetime
  is '入党团时间';
comment on column POLICE.worktime
  is '参加工作时间';
comment on column POLICE.worktimepolice
  is '参加公安时间';
comment on column POLICE.workplace
  is '现工作单位';
comment on column POLICE.precentposition
  is '现任行政职务';
comment on column POLICE.partyposition
  is '党内职务';
comment on column POLICE.picture
  is '照片';
comment on column POLICE.remarks
  is '备注';
comment on column POLICE.relativedeptid
  is '六合一部门';
comment on column POLICE.policerank
  is '警衔';
comment on column POLICE.marriage
  is '婚姻状况（0，未婚；1，已婚；2，离异；3，丧偶）';
comment on column POLICE.updatetime
  is '警员信息最近一次更新时间';
comment on column POLICE.cert_id
  is '数字证书id';
comment on column POLICE.permitcar
  is '准驾车型';
comment on column POLICE.gunnumber
  is '持枪证编号';
comment on column POLICE.deviceid2
  is '设备编号';
comment on column POLICE.dutytime
  is '在岗时段';
comment on column POLICE.dutyable
  is '可否值班 可值班：1 普通（不可）：0';
comment on column POLICE.deviceid3
  is 'EQUIPMENT_INFO表id  用于关联副GPS3设备';
comment on column POLICE.deviceid4
  is 'EQUIPMENT_INFO表id  用于关联副GPS4设备';
comment on column POLICE.policetype
  is '警员类型，枚举1192';
comment on column POLICE.positionleveltype
  is '职级类别，枚举1193';
comment on column POLICE.positionlevelname
  is '职级名称，枚举1194';
comment on column POLICE.publicholiday
  is '公休假天数';
comment on column POLICE.state
  is '警员的忙闲状态 默认状态为0为闲，1为忙';
create index INDEX_POLICE_DEPID on POLICE (DEPID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_POLICE_POLICEID on POLICE (POLICEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table POLICE
  add constraint POLICE_PRIKEY primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table POLICE_CASE
prompt ==========================
prompt
create table POLICE_CASE
(
  case_id        VARCHAR2(32) not null,
  source         VARCHAR2(2) not null,
  case_category  VARCHAR2(2) not null,
  concrete_type  VARCHAR2(4),
  nlevel         CHAR(1) not null,
  status         VARCHAR2(2) default 1 not null,
  department_id  VARCHAR2(18),
  brief          NVARCHAR2(50),
  detail         NVARCHAR2(300),
  start_time     DATE,
  end_time       DATE,
  point_id       VARCHAR2(12),
  location_name  NVARCHAR2(150),
  longitude      VARCHAR2(200),
  latitude       VARCHAR2(200),
  area_id        VARCHAR2(10) not null,
  road_id        VARCHAR2(8),
  road_name      NVARCHAR2(50),
  pic_url        VARCHAR2(200),
  video_url      VARCHAR2(200),
  report_usrname NVARCHAR2(20),
  create_time    DATE not null,
  remark         NVARCHAR2(150),
  cartype        VARCHAR2(2),
  carnumber      VARCHAR2(16),
  recordline     CLOB,
  delete_flag    VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table POLICE_CASE
  is '警情表';
comment on column POLICE_CASE.case_id
  is '警情单号UUID';
comment on column POLICE_CASE.source
  is '警情来源(枚举1118)';
comment on column POLICE_CASE.case_category
  is '警情种类(枚举1110)';
comment on column POLICE_CASE.concrete_type
  is '具体类别(枚举1120)';
comment on column POLICE_CASE.nlevel
  is '警情级别';
comment on column POLICE_CASE.status
  is '警情状态(枚举5302）';
comment on column POLICE_CASE.department_id
  is '处警部门编号';
comment on column POLICE_CASE.brief
  is '简要警情描述';
comment on column POLICE_CASE.detail
  is '详细描述';
comment on column POLICE_CASE.start_time
  is '开始时间';
comment on column POLICE_CASE.end_time
  is '结束时间';
comment on column POLICE_CASE.point_id
  is '地点编号（平台）';
comment on column POLICE_CASE.location_name
  is '地点名称';
comment on column POLICE_CASE.longitude
  is '经度';
comment on column POLICE_CASE.latitude
  is '纬度';
comment on column POLICE_CASE.area_id
  is '辖区编号';
comment on column POLICE_CASE.road_id
  is '路段编码';
comment on column POLICE_CASE.road_name
  is '路段名称';
comment on column POLICE_CASE.pic_url
  is '图片URL';
comment on column POLICE_CASE.video_url
  is '视频URL';
comment on column POLICE_CASE.report_usrname
  is '上报人';
comment on column POLICE_CASE.create_time
  is '创建时间';
comment on column POLICE_CASE.remark
  is '备注';
comment on column POLICE_CASE.cartype
  is '号牌类型';
comment on column POLICE_CASE.carnumber
  is '号牌号码';
comment on column POLICE_CASE.recordline
  is '备案路线';
alter table POLICE_CASE
  add constraint POLICE_CASE_ID primary key (CASE_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table POLICE_CASE_GEOMETRY
prompt ===================================
prompt
create table POLICE_CASE_GEOMETRY
(
  area_id        VARCHAR2(6),
  geometry       MDSYS.SDO_GEOMETRY,
  case_categorys VARCHAR2(2),
  countnum       NUMBER(5),
  start_time     DATE,
  area_id_zd     VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table POLICE_CASE_GEOMETRY
  is '警情地理信息表';
comment on column POLICE_CASE_GEOMETRY.area_id
  is '辖区';
comment on column POLICE_CASE_GEOMETRY.geometry
  is '警情地理信息';
comment on column POLICE_CASE_GEOMETRY.case_categorys
  is '警情类型';
comment on column POLICE_CASE_GEOMETRY.countnum
  is '数量';
comment on column POLICE_CASE_GEOMETRY.start_time
  is '发生时间';
comment on column POLICE_CASE_GEOMETRY.area_id_zd
  is '中队';

prompt
prompt Creating table POLICE_CASE_VMS
prompt ==============================
prompt
create table POLICE_CASE_VMS
(
  id         VARCHAR2(32),
  caseid     VARCHAR2(32),
  planid     VARCHAR2(1024),
  pubuser    NVARCHAR2(32),
  pubtime    DATE,
  createtime DATE,
  pubendtime DATE
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
comment on column POLICE_CASE_VMS.caseid
  is '警情ID';
comment on column POLICE_CASE_VMS.planid
  is '计划ID';
comment on column POLICE_CASE_VMS.pubuser
  is '操作用户';
comment on column POLICE_CASE_VMS.pubtime
  is '发布时间';
comment on column POLICE_CASE_VMS.createtime
  is '打开时间';
comment on column POLICE_CASE_VMS.pubendtime
  is '发布结束时间';

prompt
prompt Creating table POSITION_COLOR
prompt =============================
prompt
create table POSITION_COLOR
(
  id            VARCHAR2(32) not null,
  color         VARCHAR2(2),
  position_name NVARCHAR2(20),
  duty_type     VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table POSITION_COLOR
  is '岗位颜色关联表';
comment on column POSITION_COLOR.id
  is 'UUID';
comment on column POSITION_COLOR.color
  is '地图显示辖区颜色(枚举值)';
comment on column POSITION_COLOR.position_name
  is '岗位名称';
comment on column POSITION_COLOR.duty_type
  is '勤务类型（枚举1150）';
create index IDX_POSITION_COLOR_ID on POSITION_COLOR (COLOR)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table POSITION_COLOR
  add constraint PRI_POSITION_COLOR primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table PSD_ACCIDENT_CARS
prompt ================================
prompt
create table PSD_ACCIDENT_CARS
(
  case_id            VARCHAR2(32) not null,
  license_plate_num  VARCHAR2(20),
  license_plate_type VARCHAR2(2) not null,
  collision_part     VARCHAR2(32),
  happened_time      VARCHAR2(20),
  id                 VARCHAR2(32) not null
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
comment on table PSD_ACCIDENT_CARS
  is '事故车辆信息';
comment on column PSD_ACCIDENT_CARS.case_id
  is '警情单号UUID';
comment on column PSD_ACCIDENT_CARS.license_plate_num
  is '号牌号码';
comment on column PSD_ACCIDENT_CARS.license_plate_type
  is '号牌类型(枚举值 170)';
comment on column PSD_ACCIDENT_CARS.collision_part
  is '碰撞部位(枚举值 13013暂用前8个)';
comment on column PSD_ACCIDENT_CARS.happened_time
  is '事发时间';
comment on column PSD_ACCIDENT_CARS.id
  is '主键';
alter table PSD_ACCIDENT_CARS
  add constraint PK_PSD_ACCIDENT_CARS primary key (ID)
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
prompt Creating table PSD_ACCIDENT_INFO
prompt ================================
prompt
create table PSD_ACCIDENT_INFO
(
  case_id       VARCHAR2(32) not null,
  injery_num    VARCHAR2(2) default 0,
  death_num     VARCHAR2(2) default 0,
  happened_time VARCHAR2(20)
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
comment on table PSD_ACCIDENT_INFO
  is '事故详情表';
comment on column PSD_ACCIDENT_INFO.case_id
  is '警情单号UUID';
comment on column PSD_ACCIDENT_INFO.injery_num
  is '受伤数量';
comment on column PSD_ACCIDENT_INFO.death_num
  is '死亡人数';
comment on column PSD_ACCIDENT_INFO.happened_time
  is '事发时长';
alter table PSD_ACCIDENT_INFO
  add constraint PK_PSD_ACCIDENT_INFO primary key (CASE_ID)
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
prompt Creating table PSD_AUTORIZATION_CONFIG
prompt ======================================
prompt
create table PSD_AUTORIZATION_CONFIG
(
  department_type      VARCHAR2(1) not null,
  modes                VARCHAR2(1),
  autorization_entries VARCHAR2(20)
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
comment on column PSD_AUTORIZATION_CONFIG.department_type
  is '部门类型0为支队，1为大队';
comment on column PSD_AUTORIZATION_CONFIG.modes
  is '指挥方式0为集中式 ，1为两级式';
comment on column PSD_AUTORIZATION_CONFIG.autorization_entries
  is '拥有的权限';

prompt
prompt Creating table PSD_AUTORIZATION_CONFIG_DETAIL
prompt =============================================
prompt
create table PSD_AUTORIZATION_CONFIG_DETAIL
(
  department_type      VARCHAR2(1),
  modes                VARCHAR2(1),
  autorization_entries VARCHAR2(20),
  detail               VARCHAR2(32)
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
prompt Creating table PSD_DUTY
prompt =======================
prompt
create table PSD_DUTY
(
  id             VARCHAR2(32) not null,
  duty_sender    NVARCHAR2(20),
  duty_receiver  NVARCHAR2(20),
  duty_note      VARCHAR2(256),
  begin_time     DATE,
  duty_time      DATE default Sysdate,
  police_case_id VARCHAR2(32),
  shift_id       VARCHAR2(32),
  finish_flag    NUMBER(1)
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
comment on table PSD_DUTY
  is '警情交接班表';
comment on column PSD_DUTY.id
  is '主键，交接班id，';
comment on column PSD_DUTY.duty_sender
  is '交班人';
comment on column PSD_DUTY.duty_receiver
  is '接班人';
comment on column PSD_DUTY.duty_note
  is '备注';
comment on column PSD_DUTY.begin_time
  is '值班开始时间';
comment on column PSD_DUTY.duty_time
  is '交班时间';
comment on column PSD_DUTY.police_case_id
  is '警情主流程id';
comment on column PSD_DUTY.shift_id
  is '交接班ID';
comment on column PSD_DUTY.finish_flag
  is '完成标志位 0：已完成 1：未完成';
alter table PSD_DUTY
  add constraint PK_PSD_DUTY_PK primary key (ID)
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
prompt Creating table PSD_EXPRESSWAY_VMS_PLAN
prompt ======================================
prompt
create table PSD_EXPRESSWAY_VMS_PLAN
(
  id             VARCHAR2(32) not null,
  vmsplanid      VARCHAR2(32),
  grouptype      VARCHAR2(8),
  groupnames     VARCHAR2(128),
  playcount      NUMBER,
  car_direction  VARCHAR2(20),
  road_number    NUMBER(2),
  relateid       VARCHAR2(80),
  elementgroupid VARCHAR2(2000),
  deviceid       VARCHAR2(32),
  elementids     VARCHAR2(2000)
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
comment on column PSD_EXPRESSWAY_VMS_PLAN.id
  is 'ID';
comment on column PSD_EXPRESSWAY_VMS_PLAN.vmsplanid
  is '节目组计划id';
comment on column PSD_EXPRESSWAY_VMS_PLAN.grouptype
  is '诱导组类型';
comment on column PSD_EXPRESSWAY_VMS_PLAN.groupnames
  is '诱导组名称';
comment on column PSD_EXPRESSWAY_VMS_PLAN.playcount
  is '播放次数';
comment on column PSD_EXPRESSWAY_VMS_PLAN.car_direction
  is '行车方向';
comment on column PSD_EXPRESSWAY_VMS_PLAN.road_number
  is '车道数量';
comment on column PSD_EXPRESSWAY_VMS_PLAN.relateid
  is '设备关联ID';
comment on column PSD_EXPRESSWAY_VMS_PLAN.elementgroupid
  is '节目组编号';
comment on column PSD_EXPRESSWAY_VMS_PLAN.deviceid
  is '设备编号';
comment on column PSD_EXPRESSWAY_VMS_PLAN.elementids
  is '节目编号';
alter table PSD_EXPRESSWAY_VMS_PLAN
  add constraint XPKPSD_EXPRESSWAY_VMS_PLAN primary key (ID)
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
prompt Creating table PSD_FOG_MODELS
prompt =============================
prompt
create table PSD_FOG_MODELS
(
  modelid      VARCHAR2(32) not null,
  modeltype    VARCHAR2(16),
  modelname    VARCHAR2(128),
  thirdsyscode VARCHAR2(32),
  zlcdms       VARCHAR2(32),
  yjdpl        VARCHAR2(32),
  yddpl        VARCHAR2(32),
  yjdld        VARCHAR2(32),
  yddld        VARCHAR2(32),
  wjcd         VARCHAR2(32),
  kqdd         VARCHAR2(32),
  wjsj         VARCHAR2(32),
  cjq          VARCHAR2(32),
  updatetime   DATE,
  updateuser   VARCHAR2(32),
  cdjgids      VARCHAR2(32)
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
comment on column PSD_FOG_MODELS.modelid
  is '模式ID';
comment on column PSD_FOG_MODELS.modeltype
  is '模式类型';
comment on column PSD_FOG_MODELS.modelname
  is '模式名称';
comment on column PSD_FOG_MODELS.thirdsyscode
  is '第三方编号';
comment on column PSD_FOG_MODELS.zlcdms
  is '指令传递模式';
comment on column PSD_FOG_MODELS.yjdpl
  is '预警灯频率';
comment on column PSD_FOG_MODELS.yddpl
  is '诱导灯频率';
comment on column PSD_FOG_MODELS.yjdld
  is '预警灯亮度';
comment on column PSD_FOG_MODELS.yddld
  is '诱导灯亮度';
comment on column PSD_FOG_MODELS.wjcd
  is '尾迹长度';
comment on column PSD_FOG_MODELS.kqdd
  is '开启道钉';
comment on column PSD_FOG_MODELS.wjsj
  is '尾迹时间';
comment on column PSD_FOG_MODELS.cjq
  is '车检器';
comment on column PSD_FOG_MODELS.updatetime
  is '更新时间';
comment on column PSD_FOG_MODELS.updateuser
  is '创建用户';
comment on column PSD_FOG_MODELS.cdjgids
  is '传递间隔ID数';
alter table PSD_FOG_MODELS
  add constraint XPKPSD_FOG_MODELS primary key (MODELID)
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
prompt Creating table PSD_FOG_MODELS_BACKUP
prompt ====================================
prompt
create table PSD_FOG_MODELS_BACKUP
(
  modelid      VARCHAR2(32) not null,
  modeltype    VARCHAR2(16),
  modelname    VARCHAR2(128),
  thirdsyscode VARCHAR2(32),
  zlcdms       VARCHAR2(32),
  yjdpl        VARCHAR2(32),
  yddpl        VARCHAR2(32),
  yjdld        VARCHAR2(32),
  yddld        VARCHAR2(32),
  wjcd         VARCHAR2(32),
  kqdd         VARCHAR2(32),
  wjsj         VARCHAR2(32),
  cjq          VARCHAR2(32),
  updatetime   DATE,
  updateuser   VARCHAR2(32),
  fogplanid    VARCHAR2(32) not null,
  cdjgids      VARCHAR2(32)
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
comment on column PSD_FOG_MODELS_BACKUP.modelid
  is '模式ID';
comment on column PSD_FOG_MODELS_BACKUP.modeltype
  is '模式类型';
comment on column PSD_FOG_MODELS_BACKUP.modelname
  is '模式名称';
comment on column PSD_FOG_MODELS_BACKUP.thirdsyscode
  is '第三方编号';
comment on column PSD_FOG_MODELS_BACKUP.zlcdms
  is '指令传递模式';
comment on column PSD_FOG_MODELS_BACKUP.yjdpl
  is '预警灯频率';
comment on column PSD_FOG_MODELS_BACKUP.yddpl
  is '诱导灯频率';
comment on column PSD_FOG_MODELS_BACKUP.yjdld
  is '预警灯亮度';
comment on column PSD_FOG_MODELS_BACKUP.yddld
  is '诱导灯亮度';
comment on column PSD_FOG_MODELS_BACKUP.wjcd
  is '尾迹长度';
comment on column PSD_FOG_MODELS_BACKUP.kqdd
  is '开启道钉';
comment on column PSD_FOG_MODELS_BACKUP.wjsj
  is '尾迹时间';
comment on column PSD_FOG_MODELS_BACKUP.cjq
  is '车检器';
comment on column PSD_FOG_MODELS_BACKUP.updatetime
  is '更新时间';
comment on column PSD_FOG_MODELS_BACKUP.updateuser
  is '创建用户';
comment on column PSD_FOG_MODELS_BACKUP.fogplanid
  is 'tpms_fog_plan表主键';
comment on column PSD_FOG_MODELS_BACKUP.cdjgids
  is '传递间隔ID数';
alter table PSD_FOG_MODELS_BACKUP
  add constraint PRI_PSDFOGMODELSBACKUPID primary key (FOGPLANID)
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
prompt Creating table PSD_FOG_PLAN
prompt ===========================
prompt
create table PSD_FOG_PLAN
(
  id        VARCHAR2(32) not null,
  modeltype VARCHAR2(16),
  modelname VARCHAR2(128),
  modelid   VARCHAR2(32),
  relateid  VARCHAR2(80),
  caseid    VARCHAR2(32)
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
comment on column PSD_FOG_PLAN.id
  is 'ID';
comment on column PSD_FOG_PLAN.modeltype
  is '模式类型';
comment on column PSD_FOG_PLAN.modelname
  is '模式名称';
comment on column PSD_FOG_PLAN.modelid
  is '模式ID';
comment on column PSD_FOG_PLAN.relateid
  is '设备关联ID';
comment on column PSD_FOG_PLAN.caseid
  is '警情id';
alter table PSD_FOG_PLAN
  add constraint XPKPSD_FOG_PLAN primary key (ID)
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
prompt Creating table PSD_ORDER
prompt ========================
prompt
create table PSD_ORDER
(
  id               VARCHAR2(32) not null,
  order_type       VARCHAR2(2),
  response_type    VARCHAR2(1),
  order_sender     VARCHAR2(32),
  receiver_type    VARCHAR2(1),
  order_content    NVARCHAR2(500),
  order_attachment VARCHAR2(32),
  order_date       DATE default sysdate,
  police_case_id   VARCHAR2(32),
  note_type        VARCHAR2(8),
  contacter        NVARCHAR2(40),
  position         NVARCHAR2(32),
  telephone        VARCHAR2(30),
  is_read          VARCHAR2(1),
  order_rule       NVARCHAR2(500),
  process_id       VARCHAR2(32) default 0,
  disposal_state   VARCHAR2(32),
  deviceid         VARCHAR2(32),
  response_code    VARCHAR2(32),
  response_message NVARCHAR2(300),
  response_time    DATE,
  coordinate       VARCHAR2(50),
  address          NVARCHAR2(200),
  dealtime         DATE
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
comment on column PSD_ORDER.id
  is 'UUID';
comment on column PSD_ORDER.order_type
  is '指令类型';
comment on column PSD_ORDER.response_type
  is '1发送2反馈';
comment on column PSD_ORDER.order_sender
  is '指令发送人';
comment on column PSD_ORDER.receiver_type
  is '接收人类型1个人2部门3角色4岗位';
comment on column PSD_ORDER.order_content
  is '指令内容';
comment on column PSD_ORDER.order_attachment
  is '附件id(psd_order_attachment表id)';
comment on column PSD_ORDER.order_date
  is '指令发送时间';
comment on column PSD_ORDER.police_case_id
  is '警情id';
comment on column PSD_ORDER.note_type
  is '1手机短信2系统消息3警务通';
comment on column PSD_ORDER.contacter
  is '联系人';
comment on column PSD_ORDER.position
  is '职务';
comment on column PSD_ORDER.telephone
  is '联系电话';
comment on column PSD_ORDER.is_read
  is '是否已读0未读1已读';
comment on column PSD_ORDER.order_rule
  is '指令规则';
comment on column PSD_ORDER.process_id
  is '子流程ID';
comment on column PSD_ORDER.disposal_state
  is '警情处置状态(枚举值15005)';
comment on column PSD_ORDER.deviceid
  is '处置设备ID';
comment on column PSD_ORDER.response_code
  is '响应编码(枚举值178)';
comment on column PSD_ORDER.response_message
  is '响应信息';
comment on column PSD_ORDER.response_time
  is '响应时间';
comment on column PSD_ORDER.coordinate
  is '经纬度';
comment on column PSD_ORDER.address
  is '地址';
comment on column PSD_ORDER.dealtime
  is '诱导开始处置时间';
alter table PSD_ORDER
  add constraint PK_PSD_ORDER primary key (ID)
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
prompt Creating table PSD_ORDER_ATTACHMENT
prompt ===================================
prompt
create table PSD_ORDER_ATTACHMENT
(
  order_id        VARCHAR2(32),
  ftp_url         VARCHAR2(128),
  attachment_type VARCHAR2(2) default 1
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
comment on column PSD_ORDER_ATTACHMENT.order_id
  is '指令id（psd_order表的主键）';
comment on column PSD_ORDER_ATTACHMENT.ftp_url
  is 'ftp路段ID';
comment on column PSD_ORDER_ATTACHMENT.attachment_type
  is '附件类型(1、图片 2、视频)';

prompt
prompt Creating table PSD_ORDER_RECEIVER
prompt =================================
prompt
create table PSD_ORDER_RECEIVER
(
  order_id       VARCHAR2(32),
  order_receiver VARCHAR2(32),
  create_time    DATE default sysdate
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
comment on column PSD_ORDER_RECEIVER.order_id
  is '指令id';
comment on column PSD_ORDER_RECEIVER.order_receiver
  is '接收人';
comment on column PSD_ORDER_RECEIVER.create_time
  is '创建时间';

prompt
prompt Creating table PSD_POLICECASE_LOG
prompt =================================
prompt
create table PSD_POLICECASE_LOG
(
  id            VARCHAR2(32) not null,
  log_content   NVARCHAR2(256),
  log_user      VARCHAR2(12),
  log_time      DATE default sysdate,
  policecase_id VARCHAR2(32)
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
comment on table PSD_POLICECASE_LOG
  is '警情日志表';
comment on column PSD_POLICECASE_LOG.id
  is 'UUID';
comment on column PSD_POLICECASE_LOG.log_content
  is '日志内容';
comment on column PSD_POLICECASE_LOG.log_user
  is '操作人';
comment on column PSD_POLICECASE_LOG.log_time
  is '日志时间';
comment on column PSD_POLICECASE_LOG.policecase_id
  is '警情ID';
alter table PSD_POLICECASE_LOG
  add constraint PSD_POLICECASE_LOG_ID primary key (ID)
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
prompt Creating table PSD_POST_RESOURCE
prompt ================================
prompt
create table PSD_POST_RESOURCE
(
  id          VARCHAR2(32) not null,
  post_name   VARCHAR2(1),
  dept_id     VARCHAR2(12),
  role_id     VARCHAR2(32),
  manage_dept VARCHAR2(600)
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
comment on column PSD_POST_RESOURCE.id
  is 'uuid唯一标识';
comment on column PSD_POST_RESOURCE.post_name
  is '岗位名称，枚举值16001';
comment on column PSD_POST_RESOURCE.dept_id
  is '所属大队';
comment on column PSD_POST_RESOURCE.role_id
  is '关联角色id';
comment on column PSD_POST_RESOURCE.manage_dept
  is '分管大队';
alter table PSD_POST_RESOURCE
  add constraint PK_PSD_POST_RESOURCE primary key (ID)
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
prompt Creating table PSD_PRESET
prompt =========================
prompt
create table PSD_PRESET
(
  id                VARCHAR2(32) not null,
  police_case_type  VARCHAR2(5),
  police_case_level VARCHAR2(2),
  use_flag          VARCHAR2(1) default 0,
  nlevel            VARCHAR2(1) default 2
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
comment on column PSD_PRESET.id
  is 'UUID';
comment on column PSD_PRESET.police_case_type
  is '警情类型';
comment on column PSD_PRESET.police_case_level
  is '警情级别';
comment on column PSD_PRESET.use_flag
  is '0停用1启动';
comment on column PSD_PRESET.nlevel
  is '3大队，2支队';
alter table PSD_PRESET
  add constraint PK_PSD_PRESET primary key (ID)
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
prompt Creating table PSD_PRESET_DETAIL
prompt ================================
prompt
create table PSD_PRESET_DETAIL
(
  id               VARCHAR2(32) not null,
  order_type       VARCHAR2(1),
  receiver_type    VARCHAR2(1),
  order_content    NVARCHAR2(500),
  order_attachment VARCHAR2(32),
  note_type        VARCHAR2(5),
  order_rule       NVARCHAR2(1000),
  preset_id        VARCHAR2(32),
  contacter        NVARCHAR2(40),
  position         NVARCHAR2(32),
  telephone        VARCHAR2(15),
  coordinate       VARCHAR2(60),
  address          NVARCHAR2(200)
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
comment on column PSD_PRESET_DETAIL.id
  is 'UUID';
comment on column PSD_PRESET_DETAIL.order_type
  is '指令类型';
comment on column PSD_PRESET_DETAIL.receiver_type
  is '接收人类型1个人2部门3角色';
comment on column PSD_PRESET_DETAIL.order_content
  is '指令内容';
comment on column PSD_PRESET_DETAIL.order_attachment
  is '附件id(psd_order_attachment表id)';
comment on column PSD_PRESET_DETAIL.note_type
  is '1手机短信2系统消息3警务通';
comment on column PSD_PRESET_DETAIL.order_rule
  is '指令规则';
comment on column PSD_PRESET_DETAIL.preset_id
  is '所属预案ID';
comment on column PSD_PRESET_DETAIL.contacter
  is '联系人';
comment on column PSD_PRESET_DETAIL.position
  is '职务';
comment on column PSD_PRESET_DETAIL.telephone
  is '联系电话';
comment on column PSD_PRESET_DETAIL.coordinate
  is '经纬度';
comment on column PSD_PRESET_DETAIL.address
  is '地址';
alter table PSD_PRESET_DETAIL
  add constraint PK_PSD_PRESET_DETAIL primary key (ID)
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
prompt Creating table PSD_PROCESS
prompt ==========================
prompt
create table PSD_PROCESS
(
  id                   VARCHAR2(32) not null,
  police_case_receiver VARCHAR2(32),
  receive_type         VARCHAR2(1),
  begin_time           DATE,
  end_time             DATE,
  police_case_id       VARCHAR2(32),
  create_time          DATE default sysdate,
  process_type         VARCHAR2(2),
  order_id             VARCHAR2(32),
  isread               VARCHAR2(1) default 1
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
comment on column PSD_PROCESS.id
  is 'UUID';
comment on column PSD_PROCESS.police_case_receiver
  is '警情处置人';
comment on column PSD_PROCESS.receive_type
  is '处置人类型1个人2部门3角色';
comment on column PSD_PROCESS.begin_time
  is '开始时间';
comment on column PSD_PROCESS.end_time
  is '结束时间';
comment on column PSD_PROCESS.police_case_id
  is '警情ID';
comment on column PSD_PROCESS.create_time
  is '创建时间';
comment on column PSD_PROCESS.process_type
  is '子流程类型，枚举16000';
comment on column PSD_PROCESS.order_id
  is '所属指令ID';
comment on column PSD_PROCESS.isread
  is '0未读,1已读';
alter table PSD_PROCESS
  add constraint PK_PSD_PROCESS primary key (ID)
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
prompt Creating table PSD_PROPAGANDA_ELEMENT
prompt =====================================
prompt
create table PSD_PROPAGANDA_ELEMENT
(
  element_id    VARCHAR2(32) not null,
  element_title VARCHAR2(128),
  element_text  VARCHAR2(2048),
  program_type  VARCHAR2(32),
  extcol        VARCHAR2(512)
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
comment on column PSD_PROPAGANDA_ELEMENT.element_id
  is '节目ID';
comment on column PSD_PROPAGANDA_ELEMENT.element_title
  is '节目名称';
comment on column PSD_PROPAGANDA_ELEMENT.element_text
  is '节目内容';
comment on column PSD_PROPAGANDA_ELEMENT.program_type
  is '节目类别';
comment on column PSD_PROPAGANDA_ELEMENT.extcol
  is '扩展字段';
alter table PSD_PROPAGANDA_ELEMENT
  add constraint XPKPSD_PROPAGANDA_ELEMENT primary key (ELEMENT_ID)
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
prompt Creating table PSD_PROPAGANDA_PLAN
prompt ==================================
prompt
create table PSD_PROPAGANDA_PLAN
(
  id             VARCHAR2(32) not null,
  play_type      VARCHAR2(8),
  macid          VARCHAR2(32),
  macname        VARCHAR2(128),
  audioelementid VARCHAR2(32),
  voicename      VARCHAR2(2000),
  voicepath      VARCHAR2(128),
  method         VARCHAR2(16),
  duration       NUMBER(10),
  frequency      NUMBER(3),
  element_id     VARCHAR2(32),
  relateid       VARCHAR2(80),
  caseid         VARCHAR2(32)
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
comment on column PSD_PROPAGANDA_PLAN.id
  is 'ID';
comment on column PSD_PROPAGANDA_PLAN.play_type
  is '播放模式(1:麦克,2:音频,3:文字)';
comment on column PSD_PROPAGANDA_PLAN.macid
  is '喊话麦克编号';
comment on column PSD_PROPAGANDA_PLAN.macname
  is '喊话麦克名称';
comment on column PSD_PROPAGANDA_PLAN.audioelementid
  is '音频设备编号';
comment on column PSD_PROPAGANDA_PLAN.voicename
  is '音频文件名称';
comment on column PSD_PROPAGANDA_PLAN.voicepath
  is '音频文件路径';
comment on column PSD_PROPAGANDA_PLAN.method
  is '持续方式';
comment on column PSD_PROPAGANDA_PLAN.duration
  is '持续时长';
comment on column PSD_PROPAGANDA_PLAN.frequency
  is '频率';
comment on column PSD_PROPAGANDA_PLAN.element_id
  is '节目编号';
comment on column PSD_PROPAGANDA_PLAN.relateid
  is '设备关联编号';
comment on column PSD_PROPAGANDA_PLAN.caseid
  is '警情id';
alter table PSD_PROPAGANDA_PLAN
  add constraint XPKPSD_PROPAGANDA_PLAN primary key (ID)
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
prompt Creating table PSD_SCENE
prompt ========================
prompt
create table PSD_SCENE
(
  sceneid          VARCHAR2(32) not null,
  advanceid        VARCHAR2(32),
  scenename        VARCHAR2(256),
  vmsconfig        VARCHAR2(4),
  videoconfig      VARCHAR2(4),
  utcconfig        VARCHAR2(4),
  propagandaconfig VARCHAR2(4),
  fogsetconfig     VARCHAR2(4),
  expwayvmsconfig  VARCHAR2(4),
  dutyconfig       VARCHAR2(4),
  videostatus      VARCHAR2(4),
  utcstatus        VARCHAR2(4),
  vmsstatus        VARCHAR2(4),
  expwayvmsstatus  VARCHAR2(4),
  fogstatus        VARCHAR2(4),
  propagandastatus VARCHAR2(4),
  ordernum         NUMBER,
  starttime        DATE,
  endtime          DATE,
  startconflag     VARCHAR2(4),
  tigtype          VARCHAR2(16),
  coordinate       VARCHAR2(4000),
  startflag        VARCHAR2(4),
  accident         VARCHAR2(16),
  eventtype        VARCHAR2(16),
  eventlevel       VARCHAR2(16),
  scenestatus      VARCHAR2(2) default 0
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
comment on table PSD_SCENE
  is '预案场景表';
comment on column PSD_SCENE.sceneid
  is '场景编号';
comment on column PSD_SCENE.advanceid
  is '预案编号';
comment on column PSD_SCENE.scenename
  is '场景名称';
comment on column PSD_SCENE.vmsconfig
  is '诱导配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.videoconfig
  is '视频配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.utcconfig
  is '信号配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.propagandaconfig
  is '喊话系统配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.fogsetconfig
  is '雾区防撞配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.expwayvmsconfig
  is '限速诱导配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.dutyconfig
  is '岗位配置状态(0:未配置,1:已配置)';
comment on column PSD_SCENE.videostatus
  is '视频执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.utcstatus
  is '信号执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.vmsstatus
  is '诱导执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.expwayvmsstatus
  is '限速诱导执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.fogstatus
  is '雾区防撞执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.propagandastatus
  is '喊话执行状态(0:未执行,1:已执行)';
comment on column PSD_SCENE.ordernum
  is '场景序号排序';
comment on column PSD_SCENE.starttime
  is '启动时间';
comment on column PSD_SCENE.endtime
  is '结束时间';
comment on column PSD_SCENE.startconflag
  is '启动条件标志(弃用)';
comment on column PSD_SCENE.tigtype
  is '触发条件(1:手动, 2:按时间, 3:按事件)';
comment on column PSD_SCENE.coordinate
  is '事件触发区域坐标';
comment on column PSD_SCENE.startflag
  is '启动提示';
comment on column PSD_SCENE.accident
  is '事件种类(弃用)';
comment on column PSD_SCENE.eventtype
  is '事件类型(枚举1110)';
comment on column PSD_SCENE.eventlevel
  is '事件级别（弃用）';
comment on column PSD_SCENE.scenestatus
  is '场景执行状态（0:未执行，1:执行中）';
alter table PSD_SCENE
  add constraint XPKPSD_SCENE primary key (SCENEID)
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
prompt Creating table PSD_SHIFT
prompt ========================
prompt
create table PSD_SHIFT
(
  id            VARCHAR2(32) not null,
  duty_sender   NVARCHAR2(20),
  duty_receiver NVARCHAR2(20),
  duty_note     VARCHAR2(256),
  finished_num  NUMBER(6),
  ongoing_num   NUMBER(6),
  begin_time    DATE,
  duty_time     DATE default Sysdate
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
comment on table PSD_SHIFT
  is '警情交接班记录表';
comment on column PSD_SHIFT.id
  is '主键，交接班记录id，';
comment on column PSD_SHIFT.duty_sender
  is '交班人';
comment on column PSD_SHIFT.duty_receiver
  is '接班人';
comment on column PSD_SHIFT.duty_note
  is '备注';
comment on column PSD_SHIFT.finished_num
  is '完成警情数目';
comment on column PSD_SHIFT.ongoing_num
  is '进行中警情数目';
comment on column PSD_SHIFT.begin_time
  is '值班开始时间';
comment on column PSD_SHIFT.duty_time
  is '交班时间';
alter table PSD_SHIFT
  add constraint PK_PSD_SHIFT_PK primary key (ID)
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
prompt Creating table PSD_SYS_PARAMS
prompt =============================
prompt
create table PSD_SYS_PARAMS
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
comment on table PSD_SYS_PARAMS
  is '警情处置参数配置';
comment on column PSD_SYS_PARAMS.paramcode
  is '参数CODE';
comment on column PSD_SYS_PARAMS.paramname
  is '参数名称';
comment on column PSD_SYS_PARAMS.paramvalue
  is '参数值';
comment on column PSD_SYS_PARAMS.paramcontent
  is '参数描述';
alter table PSD_SYS_PARAMS
  add constraint PSD_PARAMS_KEY primary key (PARAMCODE)
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
prompt Creating table PSD_TEMPLATE
prompt ===========================
prompt
create table PSD_TEMPLATE
(
  order_type       VARCHAR2(2),
  template_content NVARCHAR2(1500),
  id               VARCHAR2(32) not null
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
comment on column PSD_TEMPLATE.order_type
  is '指令类型';
comment on column PSD_TEMPLATE.template_content
  is '模板内容';
comment on column PSD_TEMPLATE.id
  is '主键';
alter table PSD_TEMPLATE
  add constraint PSD_TEMPLATE_ID primary key (ID)
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
prompt Creating table REGULAR_CAR
prompt ==========================
prompt
create table REGULAR_CAR
(
  carnumber VARCHAR2(16) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table REGULAR_CAR
  is '高分可视化-通勤车表';
alter table REGULAR_CAR
  add constraint CARNUMBER primary key (CARNUMBER)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROAD
prompt ===================
prompt
create table ROAD
(
  dldm   VARCHAR2(5),
  lkdm   VARCHAR2(4),
  sbbh   VARCHAR2(18),
  kkmc   VARCHAR2(1024),
  lkmc   VARCHAR2(1024),
  id     NUMBER,
  xztpye VARCHAR2(18),
  tpbldj NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table ROADNET_MONITOR_POINT
prompt ====================================
prompt
create table ROADNET_MONITOR_POINT
(
  pointcode           NVARCHAR2(16) not null,
  pointname           NVARCHAR2(100) not null,
  provider            NVARCHAR2(32),
  illegaladdrid       NVARCHAR2(12),
  providedate         DATE not null,
  passfunc            NVARCHAR2(1),
  epfunc              NVARCHAR2(1),
  osfunc              NVARCHAR2(1),
  vediofunc           NVARCHAR2(1),
  remark              NVARCHAR2(64),
  longitude           NUMBER(13,6),
  latitude            NUMBER(13,6),
  pointtype           NVARCHAR2(2),
  adminiarea          NVARCHAR2(10),
  gpsfunc             NVARCHAR2(1),
  inducefunc          NVARCHAR2(1),
  signalfunc          NVARCHAR2(1),
  flowfunc            NVARCHAR2(1),
  eventfunc           NVARCHAR2(1),
  departmentid        NVARCHAR2(12),
  huanxian            NVARCHAR2(2),
  intervelvelocity    NVARCHAR2(1),
  status              VARCHAR2(2),
  entryperson         VARCHAR2(20),
  checkperson         VARCHAR2(20),
  checktime           DATE,
  entrytime           DATE,
  dldm                VARCHAR2(5),
  lkdm                VARCHAR2(4),
  ddms                VARCHAR2(3),
  features            VARCHAR2(12),
  dltz                NVARCHAR2(2),
  coilfunc            NVARCHAR2(1),
  meteorologyfunc     NVARCHAR2(1),
  checkpointfunc      NVARCHAR2(1),
  checkpointid        VARCHAR2(20),
  checkpointname      VARCHAR2(128),
  checkpointshortname VARCHAR2(128),
  funcitems           VARCHAR2(200),
  thirdcode           VARCHAR2(30),
  ifsppoint           NUMBER default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROADNET_MONITOR_POINT
  is '安装点表';
comment on column ROADNET_MONITOR_POINT.pointcode
  is '点位编号';
comment on column ROADNET_MONITOR_POINT.pointname
  is '点位名称';
comment on column ROADNET_MONITOR_POINT.provider
  is '提供商';
comment on column ROADNET_MONITOR_POINT.illegaladdrid
  is '违法地点编号，同点位编号';
comment on column ROADNET_MONITOR_POINT.providedate
  is '安装时间';
comment on column ROADNET_MONITOR_POINT.passfunc
  is '过车功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.epfunc
  is '电警功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.osfunc
  is '超速功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.vediofunc
  is '视频功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.remark
  is '备注';
comment on column ROADNET_MONITOR_POINT.longitude
  is '经度';
comment on column ROADNET_MONITOR_POINT.latitude
  is '纬度';
comment on column ROADNET_MONITOR_POINT.pointtype
  is '安装点类型';
comment on column ROADNET_MONITOR_POINT.adminiarea
  is '行政辖区（对应枚举 180）';
comment on column ROADNET_MONITOR_POINT.gpsfunc
  is 'GPS功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.inducefunc
  is '诱导功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.signalfunc
  is '信号功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.flowfunc
  is '流量功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.eventfunc
  is '事件功能项(1:表示有;0表示无)';
comment on column ROADNET_MONITOR_POINT.departmentid
  is '所属部门（对应部门表部门cdepartmentid）';
comment on column ROADNET_MONITOR_POINT.huanxian
  is '0为不在环内,1为一环,2为二环,等';
comment on column ROADNET_MONITOR_POINT.intervelvelocity
  is '1表示要加测试，0不要测试';
comment on column ROADNET_MONITOR_POINT.status
  is '空代或1表正常使用，0申请状态,2驳回';
comment on column ROADNET_MONITOR_POINT.dldm
  is '5位道路代码（所属道路道路代码）';
comment on column ROADNET_MONITOR_POINT.lkdm
  is '4位路口代码（所属路口路口代码）';
comment on column ROADNET_MONITOR_POINT.ddms
  is '3位地点米数';
comment on column ROADNET_MONITOR_POINT.features
  is '点位特征';
comment on column ROADNET_MONITOR_POINT.dltz
  is '道路特征';
comment on column ROADNET_MONITOR_POINT.coilfunc
  is '微波功能项';
comment on column ROADNET_MONITOR_POINT.meteorologyfunc
  is '气象设备 1有0无';
comment on column ROADNET_MONITOR_POINT.funcitems
  is '功能项，如电警功能项为01，卡口功能项为02（多个功能项之间用英文逗号分隔，如: 01,02）';
comment on column ROADNET_MONITOR_POINT.ifsppoint
  is '点位是否重点分析';

prompt
prompt Creating table ROADNET_POINT_RELATION
prompt =====================================
prompt
create table ROADNET_POINT_RELATION
(
  pointcode            VARCHAR2(16) not null,
  direction            NUMBER not null,
  lane_number          VARCHAR2(2) not null,
  lower_pointcode      VARCHAR2(16) not null,
  weight               NUMBER(8,6),
  last_traffic_volume  NUMBER default 0,
  total_traffic_volume NUMBER default 0,
  last_update_time     DATE,
  manual_flag          NUMBER default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROADNET_POINT_RELATION
  is '路口安装点关联表';
comment on column ROADNET_POINT_RELATION.pointcode
  is '点位编号';
comment on column ROADNET_POINT_RELATION.direction
  is '方向';
comment on column ROADNET_POINT_RELATION.lane_number
  is '车道号';
comment on column ROADNET_POINT_RELATION.lower_pointcode
  is '下游点位编号';
comment on column ROADNET_POINT_RELATION.weight
  is '权重';
comment on column ROADNET_POINT_RELATION.last_traffic_volume
  is '最新过车量';
comment on column ROADNET_POINT_RELATION.total_traffic_volume
  is '累计过车量';
comment on column ROADNET_POINT_RELATION.last_update_time
  is '更新时间';
comment on column ROADNET_POINT_RELATION.manual_flag
  is '人工干预标记,0:自动；1：手动';

prompt
prompt Creating table ROAD_ACCIDENT
prompt ============================
prompt
create table ROAD_ACCIDENT
(
  id             VARCHAR2(32),
  road_name      VARCHAR2(32) not null,
  accident_time  VARCHAR2(32) not null,
  accident_count VARCHAR2(32) not null
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
comment on table ROAD_ACCIDENT
  is '事故多发表';
comment on column ROAD_ACCIDENT.road_name
  is '道路名称';
comment on column ROAD_ACCIDENT.accident_time
  is '事故高发时段';
comment on column ROAD_ACCIDENT.accident_count
  is '累计事故次数';

prompt
prompt Creating table ROAD_JAM
prompt =======================
prompt
create table ROAD_JAM
(
  id           VARCHAR2(32),
  road_name    VARCHAR2(32) not null,
  traffic_time VARCHAR2(32) not null,
  time_length  VARCHAR2(32) not null
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
comment on table ROAD_JAM
  is '拥堵多发路段';
comment on column ROAD_JAM.road_name
  is '道路名字';
comment on column ROAD_JAM.traffic_time
  is '拥堵时段';
comment on column ROAD_JAM.time_length
  is '累计拥堵时长';

prompt
prompt Creating table ROAD_ROUND
prompt =========================
prompt
create table ROAD_ROUND
(
  id              VARCHAR2(32),
  scene_name      VARCHAR2(32) not null,
  influence_road  VARCHAR2(32) not null,
  suggestion_road VARCHAR2(32) not null
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
comment on table ROAD_ROUND
  is '热点商圈、热点旅游';
comment on column ROAD_ROUND.scene_name
  is '景区名字';
comment on column ROAD_ROUND.influence_road
  is '受影响路段名称';
comment on column ROAD_ROUND.suggestion_road
  is '绕行方案';

prompt
prompt Creating table ROAD_TRAFFIC
prompt ===========================
prompt
create table ROAD_TRAFFIC
(
  weektype      VARCHAR2(32),
  id            VARCHAR2(32) not null,
  index_data    VARCHAR2(32),
  ratio         VARCHAR2(32),
  average_speed VARCHAR2(32)
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
comment on table ROAD_TRAFFIC
  is '道路交通表';
comment on column ROAD_TRAFFIC.weektype
  is '周类型，0是本周，1是上周';
comment on column ROAD_TRAFFIC.index_data
  is '指标';
comment on column ROAD_TRAFFIC.ratio
  is '环比';
comment on column ROAD_TRAFFIC.average_speed
  is '速度';

prompt
prompt Creating table ROLE
prompt ===================
prompt
create table ROLE
(
  roleid   NVARCHAR2(32) not null,
  rolename NVARCHAR2(32) not null,
  detail   NVARCHAR2(200),
  creator  NVARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROLE
  is '角色权限信息表';
comment on column ROLE.roleid
  is '角色ID';
comment on column ROLE.rolename
  is '角色名称';
comment on column ROLE.detail
  is '描述';
alter table ROLE
  add constraint ROLE_ID primary key (ROLEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROLE_OPERATION_RELATION
prompt ======================================
prompt
create table ROLE_OPERATION_RELATION
(
  roleid      VARCHAR2(32) not null,
  operationid VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROLE_OPERATION_RELATION
  is '用户操作权限关联表';
comment on column ROLE_OPERATION_RELATION.roleid
  is '角色ID';
comment on column ROLE_OPERATION_RELATION.operationid
  is '操作ID';
alter table ROLE_OPERATION_RELATION
  add constraint ROLE_OPERATION_RELATION_ID primary key (ROLEID, OPERATIONID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROLE_RESOURCE_RELATION
prompt =====================================
prompt
create table ROLE_RESOURCE_RELATION
(
  roleid     VARCHAR2(32) not null,
  resourceid VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROLE_RESOURCE_RELATION
  is '用户资源权限关联表';
comment on column ROLE_RESOURCE_RELATION.roleid
  is '角色ID';
comment on column ROLE_RESOURCE_RELATION.resourceid
  is '资源ID';
alter table ROLE_RESOURCE_RELATION
  add constraint ROLE_RESOURCE_RELATION_ID primary key (ROLEID, RESOURCEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_ARC
prompt ========================
prompt
create table ROUTE_ARC
(
  arcid           NVARCHAR2(32) not null,
  arcname         NVARCHAR2(60),
  arclength       NUMBER(*,2),
  startnode       NVARCHAR2(32),
  endnode         NVARCHAR2(32),
  strcoords       CLOB,
  roadcode        VARCHAR2(32),
  geometry        MDSYS.SDO_GEOMETRY,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20),
  arctype         VARCHAR2(5) not null,
  traffic_dir     VARCHAR2(5)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_ARC.arcid
  is '弧段编号';
comment on column ROUTE_ARC.arcname
  is '弧段名称';
comment on column ROUTE_ARC.arclength
  is '长度';
comment on column ROUTE_ARC.startnode
  is '起始节点编号';
comment on column ROUTE_ARC.endnode
  is '结束节点编号';
comment on column ROUTE_ARC.strcoords
  is '弧段坐标';
comment on column ROUTE_ARC.roadcode
  is '所属道路';
comment on column ROUTE_ARC.geometry
  is '地理信息';
comment on column ROUTE_ARC.create_operator
  is '创建者';
comment on column ROUTE_ARC.create_time
  is '创建时间';
comment on column ROUTE_ARC.update_operator
  is '更新者';
comment on column ROUTE_ARC.update_time
  is '更新时间';
comment on column ROUTE_ARC.version
  is '版本号';
comment on column ROUTE_ARC.arctype
  is '弧段类型 0：路段弧段
1：路口弧段
';
comment on column ROUTE_ARC.traffic_dir
  is '交通流方向 0：正向通行
1：反向通行
2：双向通行
3：禁行
';
alter table ROUTE_ARC
  add primary key (ARCID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_FORBIDDENTURN
prompt ==================================
prompt
create table ROUTE_FORBIDDENTURN
(
  ftid            NVARCHAR2(32) not null,
  crossnode       NVARCHAR2(32) not null,
  fromnode        NVARCHAR2(32) not null,
  tonode          NVARCHAR2(32) not null,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20),
  direction       NVARCHAR2(2),
  flevel          NVARCHAR2(2) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_FORBIDDENTURN.flevel
  is '级别，0为节点弧段层 1为路口道路层';
alter table ROUTE_FORBIDDENTURN
  add primary key (FTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_INTERSECTION
prompt =================================
prompt
create table ROUTE_INTERSECTION
(
  intsid    VARCHAR2(32) not null,
  lkmc      VARCHAR2(60),
  bmdm      VARCHAR2(12),
  intstype  INTEGER,
  longitude NVARCHAR2(20),
  latitude  NVARCHAR2(20),
  cjr       NVARCHAR2(60),
  cjsj      DATE,
  gxr       NVARCHAR2(60),
  gxsj      DATE,
  version   NVARCHAR2(20),
  nodeid    VARCHAR2(12),
  jcdl      VARCHAR2(100),
  geometry  MDSYS.SDO_GEOMETRY,
  dldm      VARCHAR2(32),
  lkdm      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_INTERSECTION.intsid
  is '路口编号';
comment on column ROUTE_INTERSECTION.lkmc
  is '路口名称';
comment on column ROUTE_INTERSECTION.bmdm
  is '部门代码';
comment on column ROUTE_INTERSECTION.intstype
  is '路口类型';
comment on column ROUTE_INTERSECTION.longitude
  is '经度';
comment on column ROUTE_INTERSECTION.latitude
  is '纬度';
comment on column ROUTE_INTERSECTION.cjr
  is '创建人';
comment on column ROUTE_INTERSECTION.cjsj
  is '创建时间';
comment on column ROUTE_INTERSECTION.gxr
  is '更新人';
comment on column ROUTE_INTERSECTION.gxsj
  is '更新时间';
comment on column ROUTE_INTERSECTION.version
  is '版本号';
comment on column ROUTE_INTERSECTION.nodeid
  is '节点编号';
comment on column ROUTE_INTERSECTION.jcdl
  is '交叉道路';
alter table ROUTE_INTERSECTION
  add primary key (INTSID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_JOINPOINT
prompt ==============================
prompt
create table ROUTE_JOINPOINT
(
  pointid         NVARCHAR2(32) not null,
  strcoords       NVARCHAR2(200),
  cross_arcs      NVARCHAR2(1500),
  geometry        MDSYS.SDO_GEOMETRY,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_JOINPOINT.pointid
  is '连接点编号';
comment on column ROUTE_JOINPOINT.strcoords
  is '连接点坐标';
comment on column ROUTE_JOINPOINT.cross_arcs
  is '邻接弧段编号';
comment on column ROUTE_JOINPOINT.geometry
  is '地理信息';
comment on column ROUTE_JOINPOINT.create_operator
  is '创建者';
comment on column ROUTE_JOINPOINT.create_time
  is '创建时间';
comment on column ROUTE_JOINPOINT.update_operator
  is '更新者';
comment on column ROUTE_JOINPOINT.update_time
  is '更新时间';
comment on column ROUTE_JOINPOINT.version
  is '版本号';
alter table ROUTE_JOINPOINT
  add primary key (POINTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_LANE
prompt =========================
prompt
create table ROUTE_LANE
(
  laneno          INTEGER not null,
  direction       INTEGER not null,
  lanetype        CHAR(18),
  ssld            NVARCHAR2(32),
  sslk            NVARCHAR2(32),
  qd              INTEGER,
  zd              INTEGER,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20),
  nthrough        INTEGER default 0,
  nturnleft       INTEGER default 0,
  nturnright      INTEGER default 0,
  nturnaround     INTEGER default 0,
  laneid          NVARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_LANE.laneno
  is '车道编号';
comment on column ROUTE_LANE.direction
  is '行驶方向';
comment on column ROUTE_LANE.lanetype
  is '车道类型';
comment on column ROUTE_LANE.ssld
  is '所属路段';
comment on column ROUTE_LANE.sslk
  is '所属路口';
comment on column ROUTE_LANE.qd
  is '起点';
comment on column ROUTE_LANE.zd
  is '终点';
comment on column ROUTE_LANE.create_operator
  is '创建者';
comment on column ROUTE_LANE.create_time
  is '创建时间';
comment on column ROUTE_LANE.update_operator
  is '更新者';
comment on column ROUTE_LANE.update_time
  is '更新时间';
comment on column ROUTE_LANE.version
  is '版本号';
comment on column ROUTE_LANE.nthrough
  is '直行放行  0为不允许通行';
comment on column ROUTE_LANE.nturnleft
  is '左转放行  0为不允许通行';
comment on column ROUTE_LANE.nturnright
  is '右转放行  0为不允许通行';
comment on column ROUTE_LANE.nturnaround
  is '掉头放行  0为不允许通行';
comment on column ROUTE_LANE.laneid
  is '车道ID';
alter table ROUTE_LANE
  add primary key (LANEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_LANE_RELATIONS
prompt ===================================
prompt
create table ROUTE_LANE_RELATIONS
(
  laneno          NVARCHAR2(32) not null,
  next_arc        NVARCHAR2(32) not null,
  next_section    NVARCHAR2(32) not null,
  relation        INTEGER,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_LANE_RELATIONS.laneno
  is '车道编号';
comment on column ROUTE_LANE_RELATIONS.next_arc
  is '连通弧段';
comment on column ROUTE_LANE_RELATIONS.next_section
  is '连通路段';
comment on column ROUTE_LANE_RELATIONS.relation
  is '连通关系';
comment on column ROUTE_LANE_RELATIONS.create_operator
  is '创建者';
comment on column ROUTE_LANE_RELATIONS.create_time
  is '创建时间';
comment on column ROUTE_LANE_RELATIONS.update_operator
  is '更新者';
comment on column ROUTE_LANE_RELATIONS.update_time
  is '更新时间';
comment on column ROUTE_LANE_RELATIONS.version
  is '版本号';
alter table ROUTE_LANE_RELATIONS
  add primary key (LANENO)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_NODE
prompt =========================
prompt
create table ROUTE_NODE
(
  nodeid           NVARCHAR2(32) not null,
  strcoords        NVARCHAR2(100),
  cross_roads      NVARCHAR2(60),
  related_sections NVARCHAR2(320),
  geometry         MDSYS.SDO_GEOMETRY,
  create_operator  NVARCHAR2(60),
  create_time      DATE,
  update_operator  NVARCHAR2(60),
  update_time      DATE,
  version          NVARCHAR2(20),
  joinpoints       NVARCHAR2(2000),
  pointsgeometry   MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_NODE.nodeid
  is '节点编号';
comment on column ROUTE_NODE.strcoords
  is '节点坐标';
comment on column ROUTE_NODE.cross_roads
  is '交叉道路编号';
comment on column ROUTE_NODE.related_sections
  is '邻接路段编号';
comment on column ROUTE_NODE.geometry
  is '地理信息';
comment on column ROUTE_NODE.create_operator
  is '创建者';
comment on column ROUTE_NODE.create_time
  is '创建时间';
comment on column ROUTE_NODE.update_operator
  is '更新者';
comment on column ROUTE_NODE.update_time
  is '更新时间';
comment on column ROUTE_NODE.version
  is '版本号';
comment on column ROUTE_NODE.joinpoints
  is '连接点';
comment on column ROUTE_NODE.pointsgeometry
  is '连接点组成的多边形地理信息';
alter table ROUTE_NODE
  add constraint IDX_RN primary key (NODEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_NODE_RELATIONS
prompt ===================================
prompt
create table ROUTE_NODE_RELATIONS
(
  nodeid          NVARCHAR2(32) not null,
  next_nodes      NVARCHAR2(1600),
  next_arcs       NVARCHAR2(1600),
  arc_angles      NVARCHAR2(30),
  ltztj           VARCHAR2(200),
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_NODE_RELATIONS.nodeid
  is '节点编号';
comment on column ROUTE_NODE_RELATIONS.next_nodes
  is '下一连通节点';
comment on column ROUTE_NODE_RELATIONS.next_arcs
  is '下一连通弧段';
comment on column ROUTE_NODE_RELATIONS.arc_angles
  is '弧段间夹角';
comment on column ROUTE_NODE_RELATIONS.ltztj
  is '连通状态集';
comment on column ROUTE_NODE_RELATIONS.create_operator
  is '创建者';
comment on column ROUTE_NODE_RELATIONS.create_time
  is '创建时间';
comment on column ROUTE_NODE_RELATIONS.update_operator
  is '更新者';
comment on column ROUTE_NODE_RELATIONS.update_time
  is '更新时间';
comment on column ROUTE_NODE_RELATIONS.version
  is '版本号';
alter table ROUTE_NODE_RELATIONS
  add constraint IDX_RNR primary key (NODEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_ROAD
prompt =========================
prompt
create table ROUTE_ROAD
(
  uuid     NVARCHAR2(32) not null,
  dldm     VARCHAR2(32) not null,
  dlmc     NVARCHAR2(60) not null,
  bmdm     VARCHAR2(12),
  xzqh     NVARCHAR2(200),
  dllx     NVARCHAR2(10) not null,
  glxzdj   NVARCHAR2(10),
  dx       NVARCHAR2(10),
  dlxx     NVARCHAR2(10),
  lkldlx   NVARCHAR2(10),
  dlwlgl   NVARCHAR2(10),
  lmjg     NVARCHAR2(10),
  fhsslx   NVARCHAR2(10),
  qs       NUMBER,
  js       NUMBER,
  xqlc     NUMBER,
  cjr      NVARCHAR2(60),
  cjsj     DATE,
  gxr      NVARCHAR2(60),
  gxsj     DATE,
  jlzt     VARCHAR2(20),
  qsmc     NVARCHAR2(30),
  xzqhxxlc NVARCHAR2(200),
  zyglss   NVARCHAR2(10),
  ssglbm   NVARCHAR2(20),
  bzdllx   NVARCHAR2(10),
  bbh      NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROUTE_ROAD
  is '道路表';
comment on column ROUTE_ROAD.uuid
  is '道路编号';
comment on column ROUTE_ROAD.dldm
  is '道路代码';
comment on column ROUTE_ROAD.dlmc
  is '道路名称';
comment on column ROUTE_ROAD.bmdm
  is '部门代码';
comment on column ROUTE_ROAD.xzqh
  is '行政区划';
comment on column ROUTE_ROAD.dllx
  is '道路类型';
comment on column ROUTE_ROAD.glxzdj
  is '公路行政等级 枚举值3124';
comment on column ROUTE_ROAD.dx
  is '道路地形 枚举值3110';
comment on column ROUTE_ROAD.dlxx
  is '道路线形 枚举值3123';
comment on column ROUTE_ROAD.lkldlx
  is '路口路段类型 枚举值3120';
comment on column ROUTE_ROAD.dlwlgl
  is '道路物理隔离 枚举值3121';
comment on column ROUTE_ROAD.lmjg
  is '路面结构 枚举值3119';
comment on column ROUTE_ROAD.fhsslx
  is '防护设施类型 枚举值3127';
comment on column ROUTE_ROAD.qs
  is '里程起始';
comment on column ROUTE_ROAD.js
  is '里程结束';
comment on column ROUTE_ROAD.xqlc
  is '辖区里程';
comment on column ROUTE_ROAD.cjr
  is '创建人';
comment on column ROUTE_ROAD.cjsj
  is '创建时间';
comment on column ROUTE_ROAD.gxr
  is '更新人';
comment on column ROUTE_ROAD.gxsj
  is '更新时间';
comment on column ROUTE_ROAD.jlzt
  is '记录状态';
comment on column ROUTE_ROAD.qsmc
  is '起始名称';
comment on column ROUTE_ROAD.xzqhxxlc
  is '行政区划详细里程';
comment on column ROUTE_ROAD.zyglss
  is '中央隔离设施';
comment on column ROUTE_ROAD.ssglbm
  is '所属管理部门';
comment on column ROUTE_ROAD.bzdllx
  is '标准道路类型';
comment on column ROUTE_ROAD.bbh
  is '版本号';
alter table ROUTE_ROAD
  add primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_ROADLINE
prompt =============================
prompt
create table ROUTE_ROADLINE
(
  dldm            VARCHAR2(5) not null,
  uuid            VARCHAR2(32) not null,
  strcoords       CLOB,
  geometry        MDSYS.SDO_GEOMETRY,
  linelength      NUMBER,
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_ROADLINE.dldm
  is '道路代码';
comment on column ROUTE_ROADLINE.strcoords
  is '中心线坐标';
comment on column ROUTE_ROADLINE.geometry
  is '地理信息';
comment on column ROUTE_ROADLINE.linelength
  is '长度';
comment on column ROUTE_ROADLINE.create_operator
  is '创建者';
comment on column ROUTE_ROADLINE.create_time
  is '创建时间';
comment on column ROUTE_ROADLINE.update_operator
  is '更新者';
comment on column ROUTE_ROADLINE.update_time
  is '更新时间';
comment on column ROUTE_ROADLINE.version
  is '版本号';
alter table ROUTE_ROADLINE
  add constraint IDX_RRL primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_ROADLINK
prompt =============================
prompt
create table ROUTE_ROADLINK
(
  roadid      NVARCHAR2(32) not null,
  linkid      NVARCHAR2(32) not null,
  strcoords   CLOB not null,
  geometry    MDSYS.SDO_GEOMETRY,
  crosspoints NVARCHAR2(2000),
  formatlevel NVARCHAR2(2),
  linkname    NVARCHAR2(28),
  direction   NVARCHAR2(5),
  viodldm     NVARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROUTE_ROADLINK
  is '路径规划-路段边表';
comment on column ROUTE_ROADLINK.roadid
  is '路段编号';
comment on column ROUTE_ROADLINK.linkid
  is '边编号';
comment on column ROUTE_ROADLINK.strcoords
  is '坐标';
comment on column ROUTE_ROADLINK.formatlevel
  is '是否已经自动纠正过方向';
comment on column ROUTE_ROADLINK.linkname
  is '路段名称';
comment on column ROUTE_ROADLINK.direction
  is '方向：0：正向 1：反向 2：双向';
comment on column ROUTE_ROADLINK.viodldm
  is '六合一道路代码';
alter table ROUTE_ROADLINK
  add primary key (LINKID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_SECTION
prompt ============================
prompt
create table ROUTE_SECTION
(
  sectionid       NVARCHAR2(32) not null,
  sectionname     NVARCHAR2(200),
  uppints         NVARCHAR2(32),
  downints        NVARCHAR2(32),
  road_code       VARCHAR2(5),
  width           NUMBER(5,2),
  length          INTEGER,
  direction       INTEGER,
  logic_del       INTEGER default 0 not null,
  road_level      INTEGER,
  fireespeed      INTEGER,
  ryspeed         INTEGER,
  ygspeed         INTEGER,
  hotpressure     NVARCHAR2(100),
  norpressure     NVARCHAR2(100),
  lowpressure     NVARCHAR2(100),
  arcs            NVARCHAR2(600),
  opp_section     NVARCHAR2(32),
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20),
  geometry        MDSYS.SDO_GEOMETRY,
  lanenum         VARCHAR2(20),
  strcoords       CLOB
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_SECTION.sectionid
  is '路段编号';
comment on column ROUTE_SECTION.sectionname
  is '路段名称';
comment on column ROUTE_SECTION.uppints
  is '上游路口';
comment on column ROUTE_SECTION.downints
  is '下游路口';
comment on column ROUTE_SECTION.road_code
  is '所属道路代码';
comment on column ROUTE_SECTION.width
  is '宽度';
comment on column ROUTE_SECTION.length
  is '长度';
comment on column ROUTE_SECTION.direction
  is '方向 1 东向西 2 西向东 3-南向北 4-北向南 5东北到西南 6-西南到东北 7东南到西北 7 西北到东南';
comment on column ROUTE_SECTION.logic_del
  is '删除标识 0 未删除 1 已删除';
comment on column ROUTE_SECTION.road_level
  is '道路级别';
comment on column ROUTE_SECTION.fireespeed
  is '自由流速';
comment on column ROUTE_SECTION.ryspeed
  is '红黄速度分界点';
comment on column ROUTE_SECTION.ygspeed
  is '黄绿速度分界点';
comment on column ROUTE_SECTION.hotpressure
  is '高峰时段';
comment on column ROUTE_SECTION.norpressure
  is '平峰时段';
comment on column ROUTE_SECTION.lowpressure
  is '低峰时段';
comment on column ROUTE_SECTION.arcs
  is '包含弧段';
comment on column ROUTE_SECTION.opp_section
  is '反向路段';
comment on column ROUTE_SECTION.create_operator
  is '创建者';
comment on column ROUTE_SECTION.create_time
  is '创建时间';
comment on column ROUTE_SECTION.update_operator
  is '更新者';
comment on column ROUTE_SECTION.update_time
  is '更新时间';
comment on column ROUTE_SECTION.version
  is '版本号';
comment on column ROUTE_SECTION.lanenum
  is '车道数';
create index UPPINTS_DOWNINTS_IDX on ROUTE_SECTION (UPPINTS, DOWNINTS)
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
alter table ROUTE_SECTION
  add primary key (SECTIONID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_UTC_SECTION
prompt ================================
prompt
create table ROUTE_UTC_SECTION
(
  sectionid       NVARCHAR2(32) not null,
  sectionname     NVARCHAR2(60),
  uppints         NVARCHAR2(32),
  downints        NVARCHAR2(32),
  road_code       VARCHAR2(5),
  width           NUMBER(5,2),
  length          INTEGER,
  direction       INTEGER,
  logic_del       INTEGER default 0 not null,
  road_level      INTEGER not null,
  fireespeed      INTEGER,
  ryspeed         INTEGER,
  ygspeed         INTEGER,
  hotpressure     NVARCHAR2(100),
  norpressure     NVARCHAR2(100),
  lowpressure     NVARCHAR2(100),
  arcs            NVARCHAR2(600),
  opp_section     NVARCHAR2(32),
  create_operator NVARCHAR2(60),
  create_time     DATE,
  update_operator NVARCHAR2(60),
  update_time     DATE,
  version         NVARCHAR2(20),
  sections        NVARCHAR2(320)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column ROUTE_UTC_SECTION.sectionid
  is '路段编号';
comment on column ROUTE_UTC_SECTION.sectionname
  is '路段名称';
comment on column ROUTE_UTC_SECTION.uppints
  is '上游路口';
comment on column ROUTE_UTC_SECTION.downints
  is '下游路口';
comment on column ROUTE_UTC_SECTION.road_code
  is '所属道路代码';
comment on column ROUTE_UTC_SECTION.width
  is '宽度';
comment on column ROUTE_UTC_SECTION.length
  is '长度';
comment on column ROUTE_UTC_SECTION.direction
  is '方向 1 东向西 2 西向东 3-南向北 4-北向南 5东北到西南 6-西南到东北 7东南到西北 7 西北到东南';
comment on column ROUTE_UTC_SECTION.logic_del
  is '删除标识 0 未删除 1 已删除';
comment on column ROUTE_UTC_SECTION.road_level
  is '道路级别';
comment on column ROUTE_UTC_SECTION.fireespeed
  is '自由流速';
comment on column ROUTE_UTC_SECTION.ryspeed
  is '红黄速度分界点';
comment on column ROUTE_UTC_SECTION.ygspeed
  is '黄绿速度分界点';
comment on column ROUTE_UTC_SECTION.hotpressure
  is '高峰时段';
comment on column ROUTE_UTC_SECTION.norpressure
  is '平峰时段';
comment on column ROUTE_UTC_SECTION.lowpressure
  is '低峰时段';
comment on column ROUTE_UTC_SECTION.arcs
  is '包含弧段';
comment on column ROUTE_UTC_SECTION.opp_section
  is '反向路段';
comment on column ROUTE_UTC_SECTION.create_operator
  is '创建者';
comment on column ROUTE_UTC_SECTION.create_time
  is '创建时间';
comment on column ROUTE_UTC_SECTION.update_operator
  is '更新者';
comment on column ROUTE_UTC_SECTION.update_time
  is '更新时间';
comment on column ROUTE_UTC_SECTION.version
  is '版本号';
comment on column ROUTE_UTC_SECTION.sections
  is '包含路段 包含路段表中的路段';
alter table ROUTE_UTC_SECTION
  add primary key (SECTIONID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table ROUTE_VIO_INTS
prompt =============================
prompt
create table ROUTE_VIO_INTS
(
  intsid    VARCHAR2(32) not null,
  dldm      VARCHAR2(5) not null,
  lkdm      VARCHAR2(4) not null,
  viointsid VARCHAR2(32) not null,
  jcdl      VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table ROUTE_VIO_INTS
  is '路网路口与六合一路口关联表';
comment on column ROUTE_VIO_INTS.intsid
  is '路口编号';
comment on column ROUTE_VIO_INTS.dldm
  is '道路代码';
comment on column ROUTE_VIO_INTS.lkdm
  is '路口代码';
comment on column ROUTE_VIO_INTS.viointsid
  is '六合一路口编号';
alter table ROUTE_VIO_INTS
  add constraint IDX_ROUTE_VIO_INTS primary key (INTSID, VIOINTSID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SCREEN_MODES
prompt ===========================
prompt
create table SCREEN_MODES
(
  modeid     VARCHAR2(32) not null,
  modename   NVARCHAR2(300) not null,
  modegroup  VARCHAR2(10),
  modepicurl NVARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SCREEN_MODES
  is '大屏模式表';
comment on column SCREEN_MODES.modeid
  is 'UUID，模式编号';
comment on column SCREEN_MODES.modename
  is '模式名称';
comment on column SCREEN_MODES.modegroup
  is '模式分组';
comment on column SCREEN_MODES.modepicurl
  is '模式效果图url';
alter table SCREEN_MODES
  add constraint SCREEN_MODES_KEY primary key (MODEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SEARCHTRACKING
prompt =============================
prompt
create table SEARCHTRACKING
(
  nid          VARCHAR2(32) default sys_guid(),
  ccarnumber   VARCHAR2(16) not null,
  clicensetype VARCHAR2(2) not null,
  searchdate   DATE default Sysdate,
  startdate    DATE,
  enddate      DATE,
  description  VARCHAR2(50)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SEARCHTRACKING
  is '实时追踪历史记录表';
comment on column SEARCHTRACKING.nid
  is '数据库自动编号';
comment on column SEARCHTRACKING.ccarnumber
  is '车牌号码';
comment on column SEARCHTRACKING.clicensetype
  is '车牌类型';
comment on column SEARCHTRACKING.searchdate
  is '追踪时间';
comment on column SEARCHTRACKING.startdate
  is '抓拍开始时间';
comment on column SEARCHTRACKING.enddate
  is '抓拍结束时间';
comment on column SEARCHTRACKING.description
  is '备注';

prompt
prompt Creating table SECTION_COMPUTER_30MIN
prompt =====================================
prompt
create table SECTION_COMPUTER_30MIN
(
  sectionid          VARCHAR2(8) not null,
  computertime       DATE,
  roadcongestiontime NUMBER,
  indey              NUMBER(4,2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table SECTION_COMPUTER_DAY
prompt ===================================
prompt
create table SECTION_COMPUTER_DAY
(
  sectionid          VARCHAR2(8) not null,
  computertime       DATE,
  roadcongestiontime NUMBER,
  indey              NUMBER(4,2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column SECTION_COMPUTER_DAY.sectionid
  is '路段id';
comment on column SECTION_COMPUTER_DAY.computertime
  is '计算时间';
comment on column SECTION_COMPUTER_DAY.roadcongestiontime
  is '路况拥堵时长';
comment on column SECTION_COMPUTER_DAY.indey
  is '平均指数（天平均）';

prompt
prompt Creating table SECTION_COMPUTER_HOUR
prompt ====================================
prompt
create table SECTION_COMPUTER_HOUR
(
  sectionid          VARCHAR2(8) not null,
  computertime       DATE,
  roadcongestiontime NUMBER,
  indey              NUMBER(4,2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column SECTION_COMPUTER_HOUR.sectionid
  is '路段id';
comment on column SECTION_COMPUTER_HOUR.computertime
  is '计算时间';
comment on column SECTION_COMPUTER_HOUR.roadcongestiontime
  is '路况拥堵时长';
comment on column SECTION_COMPUTER_HOUR.indey
  is '交通指数（小时平均）';
create index IDX_ANLYS_SCH_HOUR on SECTION_COMPUTER_HOUR (COMPUTERTIME, SECTIONID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SECTION_CONGESTION
prompt =================================
prompt
create table SECTION_CONGESTION
(
  nid                 VARCHAR2(32) not null,
  sectionid           NVARCHAR2(8),
  statisticsstarttime DATE,
  statisticsendtime   DATE,
  statisticstype      CHAR(1),
  congestionstate     CHAR(1),
  congestiontime      VARCHAR2(300),
  congestionlength    NUMBER(4),
  relatedsection      VARCHAR2(900)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SECTION_CONGESTION
  is '拥堵路段表，存放常发拥堵或突发拥堵的路段';
comment on column SECTION_CONGESTION.nid
  is '主键';
comment on column SECTION_CONGESTION.sectionid
  is '路段编号';
comment on column SECTION_CONGESTION.statisticsstarttime
  is '统计开始时间';
comment on column SECTION_CONGESTION.statisticsendtime
  is '统计结束时间';
comment on column SECTION_CONGESTION.statisticstype
  is '统计方式 1按月统计 2按周统计';
comment on column SECTION_CONGESTION.congestionstate
  is '拥堵状态 1 常态拥堵 2突发拥堵';
comment on column SECTION_CONGESTION.congestiontime
  is '拥堵时段';
comment on column SECTION_CONGESTION.congestionlength
  is '拥堵长度(以分为单位)';
comment on column SECTION_CONGESTION.relatedsection
  is '拥堵关联路段';

prompt
prompt Creating table SECTION_DEVICE
prompt =============================
prompt
create table SECTION_DEVICE
(
  sectionid    NVARCHAR2(20) not null,
  deviceid     NVARCHAR2(20) not null,
  devicetype   NVARCHAR2(2),
  sectionname  NVARCHAR2(200),
  devicename   NVARCHAR2(200),
  deviceorder  NUMBER,
  video_preset VARCHAR2(3)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
create index SECTION_DEVICE_ID_INDEX on SECTION_DEVICE (SECTIONID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SECTION_FLOW_DATA
prompt ================================
prompt
create table SECTION_FLOW_DATA
(
  sectionid      NVARCHAR2(8),
  laneid         VARCHAR2(2),
  directionid    VARCHAR2(2),
  volume         NUMBER(8),
  occupancy      NUMBER(5,4),
  speed          NUMBER,
  datasource     CHAR(1),
  sectionname    NVARCHAR2(64),
  largecount     NUMBER(8),
  smallcount     NUMBER(8),
  commcount      NUMBER(8),
  pointid        NVARCHAR2(16),
  pointname      NVARCHAR2(64),
  deviceid       NVARCHAR2(18),
  devicename     NVARCHAR2(64),
  stdtime        DATE,
  volumestate    NUMBER(2) default 1,
  occupancystate NUMBER(2) default 1,
  speedstate     NUMBER(2) default 1,
  nid            VARCHAR2(32)
)
partition by range (STDTIME) interval (NUMTODSINTERVAL(1,'DAY'))
(
  partition SEC_VOL_P1 values less than (TO_DATE(' 2016-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace SECTION_VOLUMETS_01
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P583 values less than (TO_DATE(' 2018-02-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace HIATMPTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table SECTION_FLOW_DATA
  is '流量数据表（字段和原始流量表的一样）';
comment on column SECTION_FLOW_DATA.sectionid
  is '路段ID';
comment on column SECTION_FLOW_DATA.laneid
  is '车道号';
comment on column SECTION_FLOW_DATA.directionid
  is '车道方向';
comment on column SECTION_FLOW_DATA.volume
  is '流量';
comment on column SECTION_FLOW_DATA.occupancy
  is '占有率';
comment on column SECTION_FLOW_DATA.speed
  is '平均速度';
comment on column SECTION_FLOW_DATA.datasource
  is '数据来源   1-电子警察  2-卡口  5-信号系统';
comment on column SECTION_FLOW_DATA.sectionname
  is '路段名称';
comment on column SECTION_FLOW_DATA.largecount
  is '大型车辆数  最近整点1分钟内通过大型车辆数，单位辆';
comment on column SECTION_FLOW_DATA.smallcount
  is '小型车辆数  最近整点1分钟内通过小型车辆数，单位辆';
comment on column SECTION_FLOW_DATA.commcount
  is '过车数    最近整点1分钟内通过车辆数，单位辆';
comment on column SECTION_FLOW_DATA.pointid
  is '采集点编号  采集点编号';
comment on column SECTION_FLOW_DATA.pointname
  is '采集点名称  采集点名称';
comment on column SECTION_FLOW_DATA.deviceid
  is '检测设备  检测设备编号';
comment on column SECTION_FLOW_DATA.devicename
  is '检测设备名称 检测设备名称';
comment on column SECTION_FLOW_DATA.stdtime
  is '标准时间，程序根据采集时间处理得到';
comment on column SECTION_FLOW_DATA.volumestate
  is '流量来源标志位，0-缺数据 1-原始数据 2-融合数据 3-补偿数据';
comment on column SECTION_FLOW_DATA.occupancystate
  is '占有率来源标志位，0-缺数据 1-原始数据 2-融合数据 3-补偿数据';
comment on column SECTION_FLOW_DATA.speedstate
  is '平均速度来源标志位，0-缺数据 1-原始数据 2-融合数据 3-补偿数据';
create index IDX_SECTIONID on SECTION_FLOW_DATA (STDTIME, SECTIONID)
  nologging  local;
create index IDX_SEC_CHARSTD on SECTION_FLOW_DATA (STDTIME, SECTIONID, TO_CHAR(STDTIME,'hh24:mi'))
  nologging  local;
create index IDX_SEC_DEVICEID on SECTION_FLOW_DATA (DEVICEID)
  nologging  local;
create index IDX_SEC_POINTID on SECTION_FLOW_DATA (STDTIME, POINTID)
  nologging  local;

prompt
prompt Creating table SECTION_FLOW_DATA_SUM5
prompt =====================================
prompt
create table SECTION_FLOW_DATA_SUM5
(
  sectionid   VARCHAR2(32) not null,
  trafficflow NUMBER not null,
  computedate DATE not null
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
comment on column SECTION_FLOW_DATA_SUM5.sectionid
  is '路段id';
comment on column SECTION_FLOW_DATA_SUM5.trafficflow
  is '交通流量';
comment on column SECTION_FLOW_DATA_SUM5.computedate
  is '计算时间';
alter table SECTION_FLOW_DATA_SUM5
  add constraint SYS_SECTION_FLOW_DATA_SUM5 primary key (SECTIONID, COMPUTEDATE)
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
prompt Creating table SECTION_JAM_LENGTH
prompt =================================
prompt
create table SECTION_JAM_LENGTH
(
  id            VARCHAR2(32) not null,
  sectionid     VARCHAR2(8) not null,
  jamlevel      CHAR(1) not null,
  startjampoint NUMBER(4),
  jamlength     NUMBER(4),
  pubtime       DATE not null,
  receivetime   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SECTION_JAM_LENGTH
  is '路段拥堵表';
comment on column SECTION_JAM_LENGTH.id
  is 'uuid';
comment on column SECTION_JAM_LENGTH.sectionid
  is '路段编号';
comment on column SECTION_JAM_LENGTH.jamlevel
  is '拥堵级别 2-缓行，3-拥堵';
comment on column SECTION_JAM_LENGTH.startjampoint
  is '起始拥堵点';
comment on column SECTION_JAM_LENGTH.jamlength
  is '排队长度';
comment on column SECTION_JAM_LENGTH.pubtime
  is '发布时间';
comment on column SECTION_JAM_LENGTH.receivetime
  is '接收时间';
create index IDX_SEC_TIME on SECTION_JAM_LENGTH (PUBTIME, SECTIONID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create unique index PK_SECTION_JAM_LENGTH on SECTION_JAM_LENGTH (PUBTIME, ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SECTION_STATUS_COMPUTE
prompt =====================================
prompt
create table SECTION_STATUS_COMPUTE
(
  id          VARCHAR2(32) not null,
  section_id  VARCHAR2(8) not null,
  status      CHAR(1),
  traveltime  NUMBER(5),
  computetime DATE,
  createtime  DATE,
  volume      NUMBER(4),
  speed       NUMBER(4,1),
  receivetime DATE,
  indey       NUMBER(4,2)
)
partition by range (RECEIVETIME) interval (NUMTODSINTERVAL(1,'DAY'))
(
  partition ROAD_STATUS_P1 values less than (TO_DATE(' 2017-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ROAD_SITUATIONTS
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P985 values less than (TO_DATE(' 2018-07-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace ROAD_SITUATIONTS
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table SECTION_STATUS_COMPUTE
  is '路况信息数据表';
comment on column SECTION_STATUS_COMPUTE.id
  is 'uuid';
comment on column SECTION_STATUS_COMPUTE.section_id
  is '路段_ID';
comment on column SECTION_STATUS_COMPUTE.status
  is '路况状态 1 拥堵 2 事故 3 违法 -1 其他';
comment on column SECTION_STATUS_COMPUTE.traveltime
  is '旅行时间';
comment on column SECTION_STATUS_COMPUTE.computetime
  is '计算时间';
comment on column SECTION_STATUS_COMPUTE.createtime
  is '创建时间';
comment on column SECTION_STATUS_COMPUTE.volume
  is '流量';
comment on column SECTION_STATUS_COMPUTE.speed
  is '速度';
comment on column SECTION_STATUS_COMPUTE.receivetime
  is '接收时间';
comment on column SECTION_STATUS_COMPUTE.indey
  is '交通指数';
create index IDX_SEC_ID on SECTION_STATUS_COMPUTE (STATUS, RECEIVETIME, MOD(TO_NUMBER(TO_CHAR(RECEIVETIME,'mi')),5), SECTION_ID)
  nologging  local;
create index IDX_SEC_INDEY on SECTION_STATUS_COMPUTE (RECEIVETIME, TO_CHAR(RECEIVETIME,'hh24:mi'), INDEY)
  nologging  local;
create index IDX_SEC_INDEY2 on SECTION_STATUS_COMPUTE (SECTION_ID, RECEIVETIME, TO_CHAR(RECEIVETIME,'hh24:mi'), INDEY)
  nologging  local;
create index IDX_SEC_STATUS on SECTION_STATUS_COMPUTE (STATUS, SECTION_ID, RECEIVETIME)
  nologging  local;
create index IDX_SSC_COMPUTETIME on SECTION_STATUS_COMPUTE (COMPUTETIME)
  nologging  local;
create index IDX_SSC_RECEIVETIME on SECTION_STATUS_COMPUTE (RECEIVETIME)
  nologging  local;
alter table SECTION_STATUS_COMPUTE
  add constraint SECTION_STATUS_HISTORY_ID primary key (ID)
  disable
  novalidate;

prompt
prompt Creating table SECTION_STATUS_DATA
prompt ==================================
prompt
create table SECTION_STATUS_DATA
(
  nid             VARCHAR2(32) not null,
  sectionid       NVARCHAR2(8),
  laneid          VARCHAR2(2),
  directionid     VARCHAR2(2),
  collectiontime  DATE,
  intervals       NUMBER(4),
  volume          NUMBER(8),
  occupancy       NUMBER(5,4),
  speed           NUMBER,
  traveltime      NUMBER,
  islast          CHAR(1),
  datasource      CHAR(1),
  sectionname     NVARCHAR2(64),
  largecount      NUMBER,
  smallcount      NUMBER,
  commcount       NUMBER,
  queuelen        NUMBER,
  pointid         NVARCHAR2(16),
  pointname       NVARCHAR2(64),
  deviceid        NVARCHAR2(18),
  devicename      NVARCHAR2(64),
  stdtime         DATE,
  uploadtime      DATE,
  storetime       DATE default sysdate,
  mquptime        DATE,
  leftturnvolume  NUMBER(8),
  throughvolume   NUMBER(8),
  rightturnvolume NUMBER(8),
  spaceoccupation NUMBER(3,2),
  saturation      NUMBER(3,2)
)
partition by range (STDTIME) interval (NUMTODSINTERVAL(1,'DAY'))
(
  partition SEC_STA_DATA_P1 values less than (TO_DATE(' 2017-06-01 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace VOLUMETS_01
    pctfree 10
    initrans 1
    maxtrans 255,
  partition SYS_P582 values less than (TO_DATE(' 2018-07-07 00:00:00', 'SYYYY-MM-DD HH24:MI:SS', 'NLS_CALENDAR=GREGORIAN'))
    tablespace VOLUMETS_02
    pctfree 10
    initrans 1
    maxtrans 255
);
comment on table SECTION_STATUS_DATA
  is '流量数据表（字段和原始流量表的一样）';
comment on column SECTION_STATUS_DATA.nid
  is '一次表征拥堵的采集信息ID';
comment on column SECTION_STATUS_DATA.sectionid
  is '路段ID';
comment on column SECTION_STATUS_DATA.laneid
  is '车道号';
comment on column SECTION_STATUS_DATA.directionid
  is '车道方向';
comment on column SECTION_STATUS_DATA.collectiontime
  is '采集时间';
comment on column SECTION_STATUS_DATA.intervals
  is '时间间隔';
comment on column SECTION_STATUS_DATA.volume
  is '流量';
comment on column SECTION_STATUS_DATA.occupancy
  is '占有率';
comment on column SECTION_STATUS_DATA.speed
  is '平均速度';
comment on column SECTION_STATUS_DATA.traveltime
  is '旅行时间';
comment on column SECTION_STATUS_DATA.islast
  is '是否最后一次的上传值';
comment on column SECTION_STATUS_DATA.datasource
  is '数据来源   1-电子警察  2-卡口  5-信号系统';
comment on column SECTION_STATUS_DATA.sectionname
  is '路段名称';
comment on column SECTION_STATUS_DATA.largecount
  is '大型车辆数  最近整点1分钟内通过大型车辆数，单位辆';
comment on column SECTION_STATUS_DATA.smallcount
  is '小型车辆数  最近整点1分钟内通过小型车辆数，单位辆';
comment on column SECTION_STATUS_DATA.commcount
  is '过车数    最近整点1分钟内通过车辆数，单位辆';
comment on column SECTION_STATUS_DATA.queuelen
  is '排对长度  最近整点1分钟的平均排对长度，单位 米';
comment on column SECTION_STATUS_DATA.pointid
  is '采集点编号  采集点编号';
comment on column SECTION_STATUS_DATA.pointname
  is '采集点名称  采集点名称';
comment on column SECTION_STATUS_DATA.deviceid
  is '检测设备  检测设备编号';
comment on column SECTION_STATUS_DATA.devicename
  is '检测设备名称 检测设备名称';
comment on column SECTION_STATUS_DATA.stdtime
  is '标准时间，程序根据采集时间处理得到';
comment on column SECTION_STATUS_DATA.uploadtime
  is '数据上传时间';
comment on column SECTION_STATUS_DATA.storetime
  is '数据入库时间';
comment on column SECTION_STATUS_DATA.mquptime
  is 'MQ接收时间';
comment on column SECTION_STATUS_DATA.leftturnvolume
  is '左转车道流量';
comment on column SECTION_STATUS_DATA.throughvolume
  is '直行车道流量';
comment on column SECTION_STATUS_DATA.rightturnvolume
  is '右转车道流量';
create index IDX_SECDATA_DEVICEID on SECTION_STATUS_DATA (DEVICEID)
  nologging  local;
create index IDX_SECTION_TIMEPOINT on SECTION_STATUS_DATA (STDTIME, POINTID)
  nologging  local;
create index IDX_SECTION_TIMESEC on SECTION_STATUS_DATA (SECTIONID, STDTIME)
  nologging  local;

prompt
prompt Creating table SECTION_STATUS_DATA_VERIFY
prompt =========================================
prompt
create table SECTION_STATUS_DATA_VERIFY
(
  nid             VARCHAR2(48),
  datasource      NVARCHAR2(4),
  sectionid       NVARCHAR2(8),
  sectionname     NVARCHAR2(64),
  largecount      NUMBER,
  smallcount      NUMBER,
  commcount       NUMBER,
  volume          NUMBER(8),
  speed           NUMBER,
  occupancy       NUMBER(5,4),
  queuelen        NUMBER,
  traveltime      NUMBER,
  pointid         NVARCHAR2(16),
  pointname       NVARCHAR2(64),
  deviceid        NVARCHAR2(18),
  devicename      NVARCHAR2(64),
  collectiontime  DATE,
  laneid          NVARCHAR2(6),
  directionid     NVARCHAR2(6),
  intervals       NUMBER(4),
  islast          CHAR(1),
  uploadtime      DATE,
  leftturnvolume  NUMBER(8),
  throughvolume   NUMBER(8),
  rightturnvolume NUMBER(8),
  spaceoccupation NUMBER(3,2),
  saturation      NUMBER(3,2),
  stdtime         DATE,
  storetime       DATE default sysdate,
  mquptime        DATE,
  flag            CHAR(1),
  orignalmsg      VARCHAR2(600),
  errordesc       VARCHAR2(100),
  propose         VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SECTION_STATUS_DATA_VERIFY
  is '流量数据表（字段和原始流量表的一样）';
comment on column SECTION_STATUS_DATA_VERIFY.nid
  is '一次表征拥堵的采集信息ID';
comment on column SECTION_STATUS_DATA_VERIFY.datasource
  is '数据来源   1-电子警察  2-卡口  5-信号系统';
comment on column SECTION_STATUS_DATA_VERIFY.sectionid
  is '路段ID';
comment on column SECTION_STATUS_DATA_VERIFY.sectionname
  is '路段名称';
comment on column SECTION_STATUS_DATA_VERIFY.largecount
  is '大型车辆数  最近整点1分钟内通过大型车辆数，单位辆';
comment on column SECTION_STATUS_DATA_VERIFY.smallcount
  is '小型车辆数  最近整点1分钟内通过小型车辆数，单位辆';
comment on column SECTION_STATUS_DATA_VERIFY.commcount
  is '过车数    最近整点1分钟内通过车辆数，单位辆';
comment on column SECTION_STATUS_DATA_VERIFY.volume
  is '流量';
comment on column SECTION_STATUS_DATA_VERIFY.speed
  is '平均速度';
comment on column SECTION_STATUS_DATA_VERIFY.occupancy
  is '占有率';
comment on column SECTION_STATUS_DATA_VERIFY.queuelen
  is '排对长度  最近整点1分钟的平均排对长度，单位 米';
comment on column SECTION_STATUS_DATA_VERIFY.traveltime
  is '旅行时间';
comment on column SECTION_STATUS_DATA_VERIFY.pointid
  is '采集点编号  采集点编号';
comment on column SECTION_STATUS_DATA_VERIFY.pointname
  is '采集点名称  采集点名称';
comment on column SECTION_STATUS_DATA_VERIFY.deviceid
  is '检测设备  检测设备编号';
comment on column SECTION_STATUS_DATA_VERIFY.devicename
  is '检测设备名称 检测设备名称';
comment on column SECTION_STATUS_DATA_VERIFY.collectiontime
  is '采集时间';
comment on column SECTION_STATUS_DATA_VERIFY.laneid
  is '车道号';
comment on column SECTION_STATUS_DATA_VERIFY.directionid
  is '车道方向';
comment on column SECTION_STATUS_DATA_VERIFY.intervals
  is '时间间隔';
comment on column SECTION_STATUS_DATA_VERIFY.islast
  is '是否最后一次的上传值';
comment on column SECTION_STATUS_DATA_VERIFY.uploadtime
  is '数据上传时间';
comment on column SECTION_STATUS_DATA_VERIFY.leftturnvolume
  is '左转车道流量';
comment on column SECTION_STATUS_DATA_VERIFY.throughvolume
  is '直行车道流量';
comment on column SECTION_STATUS_DATA_VERIFY.rightturnvolume
  is '右转车道流量';
comment on column SECTION_STATUS_DATA_VERIFY.spaceoccupation
  is '空间占有率';
comment on column SECTION_STATUS_DATA_VERIFY.saturation
  is '饱和度';
comment on column SECTION_STATUS_DATA_VERIFY.stdtime
  is '标准时间，程序根据采集时间处理得到';
comment on column SECTION_STATUS_DATA_VERIFY.storetime
  is '数据入库时间';
comment on column SECTION_STATUS_DATA_VERIFY.mquptime
  is 'MQ接收时间';
comment on column SECTION_STATUS_DATA_VERIFY.flag
  is '标志位（测试通过-1，测试未通过-0）';
comment on column SECTION_STATUS_DATA_VERIFY.orignalmsg
  is '设备上传报文信息';
comment on column SECTION_STATUS_DATA_VERIFY.errordesc
  is '错误描述';
comment on column SECTION_STATUS_DATA_VERIFY.propose
  is '处置建议';

prompt
prompt Creating table SECTION_STATUS_PRESENT
prompt =====================================
prompt
create table SECTION_STATUS_PRESENT
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
comment on column SECTION_STATUS_PRESENT.id
  is '主键';
comment on column SECTION_STATUS_PRESENT.section_id
  is '路段id';
comment on column SECTION_STATUS_PRESENT.status
  is '路段拥堵状态';
comment on column SECTION_STATUS_PRESENT.traveltime
  is '旅行时间';
comment on column SECTION_STATUS_PRESENT.volume
  is '流量';
comment on column SECTION_STATUS_PRESENT.speed
  is '速度';
comment on column SECTION_STATUS_PRESENT.computetime
  is '路段状态计算时间';
comment on column SECTION_STATUS_PRESENT.receivetime
  is '接收时间';
comment on column SECTION_STATUS_PRESENT.indey
  is '交通指数';
create index IDX_SECTION on SECTION_STATUS_PRESENT (SECTION_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table SECTION_STATUS_PRESENT
  add constraint PK_SECTION_STATUS_PRESENT primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SECTION_USUALCONGESTIONMGR
prompt =========================================
prompt
create table SECTION_USUALCONGESTIONMGR
(
  nid              VARCHAR2(32) not null,
  sectionid        NVARCHAR2(8),
  addtime          DATE,
  state            CHAR(1),
  congestiontime   VARCHAR2(300),
  congestionlength NUMBER(4),
  relatedsection   VARCHAR2(900)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SECTION_USUALCONGESTIONMGR
  is '常态拥堵管理表';
comment on column SECTION_USUALCONGESTIONMGR.nid
  is '主键';
comment on column SECTION_USUALCONGESTIONMGR.sectionid
  is '路段编号';
comment on column SECTION_USUALCONGESTIONMGR.addtime
  is '加入常态拥堵管理的时间';
comment on column SECTION_USUALCONGESTIONMGR.state
  is '常态拥堵状态 1有效 2已撤销';
comment on column SECTION_USUALCONGESTIONMGR.congestiontime
  is '拥堵时段';
comment on column SECTION_USUALCONGESTIONMGR.congestionlength
  is '拥堵时长(以分为单位)';
comment on column SECTION_USUALCONGESTIONMGR.relatedsection
  is '拥堵关联路段';

prompt
prompt Creating table SERVER_INFO
prompt ==========================
prompt
create table SERVER_INFO
(
  id                  VARCHAR2(32) not null,
  server_type         VARCHAR2(4) not null,
  server_code         VARCHAR2(16),
  server_ip           VARCHAR2(15),
  server_name         VARCHAR2(64),
  server_desc         VARCHAR2(1000),
  backup1             VARCHAR2(16),
  server_port         NUMBER(8),
  project_code        VARCHAR2(10),
  nuserid             CHAR(6),
  login_user          NVARCHAR2(16),
  login_password      NVARCHAR2(16),
  upload_file_path    VARCHAR2(256),
  server_version      NVARCHAR2(16),
  server_provider     NVARCHAR2(32),
  provide_date        DATE,
  departmentid        VARCHAR2(12),
  thirdsyscode        NVARCHAR2(16),
  remark              NVARCHAR2(64),
  server_channelcount INTEGER,
  developer           VARCHAR2(2),
  service_dep         VARCHAR2(8),
  laststateoperator   VARCHAR2(16),
  laststatetime       DATE,
  checktype           NVARCHAR2(2),
  server_state        VARCHAR2(20),
  service_level       VARCHAR2(10),
  urgent_level        VARCHAR2(2),
  url                 VARCHAR2(200),
  main_preparation    VARCHAR2(2),
  install_date        DATE,
  instance_name       VARCHAR2(200),
  provider            NVARCHAR2(32),
  modul_number        NVARCHAR2(20),
  son_type            NVARCHAR2(10),
  image               VARCHAR2(200),
  host_room           NVARCHAR2(20),
  host_cupboard       NVARCHAR2(20),
  os_type             NVARCHAR2(2),
  heartbeat_cycle     NUMBER(8),
  monitor_tablespaces VARCHAR2(500),
  monitor_video_id    NVARCHAR2(20),
  brand               VARCHAR2(20),
  related_equip       VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SERVER_INFO
  is '服务器基本信息';
comment on column SERVER_INFO.server_type
  is '服务器类型';
comment on column SERVER_INFO.server_code
  is '服务器编码';
comment on column SERVER_INFO.server_ip
  is 'IP地址';
comment on column SERVER_INFO.server_name
  is '名称';
comment on column SERVER_INFO.server_desc
  is '功能描述';
comment on column SERVER_INFO.backup1
  is '备用';
comment on column SERVER_INFO.server_port
  is '服务端口';
comment on column SERVER_INFO.project_code
  is '所属项目';
comment on column SERVER_INFO.nuserid
  is '维护人员ID';
comment on column SERVER_INFO.login_user
  is '登录服务的用户名';
comment on column SERVER_INFO.login_password
  is '登录服务的密码';
comment on column SERVER_INFO.upload_file_path
  is 'FTP上传文件详细目录';
comment on column SERVER_INFO.server_version
  is '服务版本';
comment on column SERVER_INFO.server_provider
  is '服务提供商（维护厂商）';
comment on column SERVER_INFO.provide_date
  is '提供时间(安装时间)';
comment on column SERVER_INFO.departmentid
  is '部门编号';
comment on column SERVER_INFO.thirdsyscode
  is '第三方编号';
comment on column SERVER_INFO.remark
  is '备注信息';
comment on column SERVER_INFO.server_channelcount
  is '通道数量';
comment on column SERVER_INFO.developer
  is '建设单位(对应枚举：1025)';
comment on column SERVER_INFO.service_dep
  is '维护单位（对应枚举：1026）';
comment on column SERVER_INFO.laststateoperator
  is '状态修改人';
comment on column SERVER_INFO.laststatetime
  is '状态修改时间';
comment on column SERVER_INFO.checktype
  is '检测类型(只在表中显示，不在页面显示，分自动检测或手动报障)';
comment on column SERVER_INFO.server_state
  is '设备状态，正常、停用、拆除、故障';
comment on column SERVER_INFO.service_level
  is '服务级别';
comment on column SERVER_INFO.urgent_level
  is '紧急程度（1，紧急 0，一般）';
comment on column SERVER_INFO.url
  is '访问URL';
comment on column SERVER_INFO.main_preparation
  is '主备关系(枚举81:1主2备3单)';
comment on column SERVER_INFO.install_date
  is '安装时间';
comment on column SERVER_INFO.instance_name
  is '数据库名称 sid';
comment on column SERVER_INFO.provider
  is '提供商（生产商）';
comment on column SERVER_INFO.modul_number
  is '型号';
comment on column SERVER_INFO.son_type
  is '子类型(不同设备对应不同枚举:251,252...顺排)';
comment on column SERVER_INFO.image
  is '照片';
comment on column SERVER_INFO.host_room
  is '所属机房';
comment on column SERVER_INFO.host_cupboard
  is '所属机柜';
comment on column SERVER_INFO.heartbeat_cycle
  is '心跳频率 （秒）';
comment on column SERVER_INFO.monitor_tablespaces
  is '监控表空间  多个以空格分隔';
comment on column SERVER_INFO.monitor_video_id
  is '监控此服务器的监控摄像头ID';
comment on column SERVER_INFO.brand
  is '品牌BRAND';
comment on column SERVER_INFO.related_equip
  is '主备关系关联的设备ID';
alter table SERVER_INFO
  add constraint SERVER_INFO_ID unique (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMG_DRIVER
prompt =========================
prompt
create table SMG_DRIVER
(
  xm         NVARCHAR2(50) not null,
  sfzh       VARCHAR2(18) not null,
  zjcx       VARCHAR2(50),
  zt         VARCHAR2(10),
  ljjf       VARCHAR2(6),
  xzqh       NVARCHAR2(200),
  lxdh       VARCHAR2(20),
  djdz       NVARCHAR2(200),
  lxdz       NVARCHAR2(200),
  cclzrq     VARCHAR2(10),
  yxqz       VARCHAR2(10),
  syrq       VARCHAR2(10),
  syyxqz     VARCHAR2(10),
  createtime DATE not null,
  nid        VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMG_DRIVER
  is '重点驾驶人违法表';
comment on column SMG_DRIVER.xm
  is '姓名';
comment on column SMG_DRIVER.sfzh
  is '身份证号';
comment on column SMG_DRIVER.zjcx
  is '准驾车型';
comment on column SMG_DRIVER.zt
  is '状态';
comment on column SMG_DRIVER.ljjf
  is '累计积分';
comment on column SMG_DRIVER.xzqh
  is '行政区划';
comment on column SMG_DRIVER.lxdh
  is '联系电话';
comment on column SMG_DRIVER.djdz
  is '登记地址';
comment on column SMG_DRIVER.lxdz
  is '联系地址';
comment on column SMG_DRIVER.cclzrq
  is '初次领证日期';
comment on column SMG_DRIVER.yxqz
  is '有效期至';
comment on column SMG_DRIVER.syrq
  is '审验日期';
comment on column SMG_DRIVER.syyxqz
  is '审验有效期至';
comment on column SMG_DRIVER.createtime
  is '导入时间';
comment on column SMG_DRIVER.nid
  is '主键';
alter table SMG_DRIVER
  add constraint SMG_DRIVERNID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMG_VEHINFO
prompt ==========================
prompt
create table SMG_VEHINFO
(
  hpzl       VARCHAR2(2) not null,
  hphm       NVARCHAR2(10) not null,
  xzqh       NVARCHAR2(20),
  syr        NVARCHAR2(200),
  zt         VARCHAR2(10),
  syxz       NVARCHAR2(20),
  syq        NVARCHAR2(10),
  cllx       VARCHAR2(10),
  ccdjrq     VARCHAR2(10),
  yxqz       VARCHAR2(10),
  qzbfqz     VARCHAR2(10),
  sjhm       VARCHAR2(100),
  zsxxdz     NVARCHAR2(200),
  zsxzqh     VARCHAR2(10),
  wfwcln     VARCHAR2(10),
  createtime DATE,
  nid        VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMG_VEHINFO
  is '源头管理重点车辆违法数据';
comment on column SMG_VEHINFO.hpzl
  is '号牌种类';
comment on column SMG_VEHINFO.hphm
  is '号牌号码';
comment on column SMG_VEHINFO.xzqh
  is '行政区划';
comment on column SMG_VEHINFO.syr
  is '所有人';
comment on column SMG_VEHINFO.zt
  is '状态';
comment on column SMG_VEHINFO.syxz
  is '使用性质';
comment on column SMG_VEHINFO.syq
  is '所有权';
comment on column SMG_VEHINFO.cllx
  is '车辆类型';
comment on column SMG_VEHINFO.ccdjrq
  is '初次领证日期';
comment on column SMG_VEHINFO.yxqz
  is '有效期至';
comment on column SMG_VEHINFO.qzbfqz
  is '强制报废期止';
comment on column SMG_VEHINFO.sjhm
  is '手机号码';
comment on column SMG_VEHINFO.zsxxdz
  is '真实详细地址';
comment on column SMG_VEHINFO.zsxzqh
  is '真实行政区划';
comment on column SMG_VEHINFO.wfwcln
  is '违法未处理数';
comment on column SMG_VEHINFO.createtime
  is '导入时间';
comment on column SMG_VEHINFO.nid
  is '主键';
alter table SMG_VEHINFO
  add constraint SMGVEHID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_ACCESS_TOKEN
prompt ===============================
prompt
create table SMS_ACCESS_TOKEN
(
  id           VARCHAR2(1) not null,
  access_token VARCHAR2(4000),
  createtime   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMS_ACCESS_TOKEN
  is '源头管理access_token存储表';
comment on column SMS_ACCESS_TOKEN.id
  is '主键（1：实际环境，2：测试环境）';
comment on column SMS_ACCESS_TOKEN.access_token
  is 'access_token';
comment on column SMS_ACCESS_TOKEN.createtime
  is '创建时间';
alter table SMS_ACCESS_TOKEN
  add constraint PRIACCESSTOKENID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_CONTACT
prompt ==========================
prompt
create table SMS_CONTACT
(
  id             VARCHAR2(32) not null,
  contact_source VARCHAR2(2),
  source_id      VARCHAR2(32),
  rule_id        VARCHAR2(32),
  contact_name   VARCHAR2(70),
  contact_phone  VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMS_CONTACT
  is '短信接收人';
comment on column SMS_CONTACT.contact_source
  is '1：平台用户 2：维修人员  3：临时接收人';
comment on column SMS_CONTACT.source_id
  is '联系人关联表ID';
comment on column SMS_CONTACT.rule_id
  is '短信发送规则ID';
comment on column SMS_CONTACT.contact_name
  is '联系人（3临时接收人）';
comment on column SMS_CONTACT.contact_phone
  is '联系方式（3临时接收人）';
alter table SMS_CONTACT
  add constraint SMS_CONTACT_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_DATA
prompt =======================
prompt
create table SMS_DATA
(
  smsid       VARCHAR2(32) not null,
  telnumber   VARCHAR2(2000),
  smstype     VARCHAR2(2),
  state       VARCHAR2(2),
  submitstate VARCHAR2(2),
  strmessage  NVARCHAR2(300),
  sendtime    DATE,
  multsmsid   VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column SMS_DATA.smsid
  is '发送ID';
comment on column SMS_DATA.telnumber
  is '手机号';
comment on column SMS_DATA.smstype
  is '信息类型 [01:设备故障, 02:设备维修, 03:设备标定, 04:稽查布控, 05:人工编辑, 10:回复信息, 99:其他]';
comment on column SMS_DATA.state
  is '调用状态[短信提交 1：成功  0：失败]';
comment on column SMS_DATA.submitstate
  is '提交状态[向运营商提交状态 0：失败、1：成功]';
comment on column SMS_DATA.strmessage
  is '短信内容';
comment on column SMS_DATA.sendtime
  is '发送时间';
comment on column SMS_DATA.multsmsid
  is '批量短信id';
create index SEND_TIME_IDX on SMS_DATA (SENDTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_DETAIL
prompt =========================
prompt
create table SMS_DETAIL
(
  id           VARCHAR2(32) not null,
  smsid        VARCHAR2(32),
  telnumber    VARCHAR2(18),
  sendstate    VARCHAR2(2),
  feedbacktime DATE,
  recordtime   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column SMS_DETAIL.id
  is '消息ID';
comment on column SMS_DETAIL.smsid
  is '发送ID';
comment on column SMS_DETAIL.telnumber
  is '手机号';
comment on column SMS_DETAIL.sendstate
  is '发送状态[运营商反馈状态 0：未送达；1：已送达 ]';
comment on column SMS_DETAIL.feedbacktime
  is '反馈时间';
comment on column SMS_DETAIL.recordtime
  is '录入时间';

prompt
prompt Creating table SMS_MSG_ACCESS_TOKEN
prompt ===================================
prompt
create table SMS_MSG_ACCESS_TOKEN
(
  id           VARCHAR2(1) not null,
  access_token VARCHAR2(4000),
  createtime   DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMS_MSG_ACCESS_TOKEN
  is '源头管理ACCESS_TOKEN(发送信息)';
comment on column SMS_MSG_ACCESS_TOKEN.id
  is '主键（1：实际环境，2：测试环境）';
comment on column SMS_MSG_ACCESS_TOKEN.access_token
  is 'access_token';
comment on column SMS_MSG_ACCESS_TOKEN.createtime
  is '创建时间';
alter table SMS_MSG_ACCESS_TOKEN
  add constraint SMS_MSG_ACCESS_TOKENID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_MULT_DATA
prompt ============================
prompt
create table SMS_MULT_DATA
(
  id           VARCHAR2(32) not null,
  smsfile      VARCHAR2(500) not null,
  isactive     NVARCHAR2(1),
  state        NVARCHAR2(1),
  cratetime    DATE default sysdate,
  sendtime     DATE,
  operatetimes NUMBER(3) default 0,
  smscount     NUMBER(10)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column SMS_MULT_DATA.id
  is '消息号';
comment on column SMS_MULT_DATA.smsfile
  is '批量处理文件';
comment on column SMS_MULT_DATA.isactive
  is '当前文件是否可写入  0 否   1可用';
comment on column SMS_MULT_DATA.state
  is '0：未处理  1：发送成功  2：发送失败';
comment on column SMS_MULT_DATA.cratetime
  is '文件创建时间';
comment on column SMS_MULT_DATA.sendtime
  is '发送时间';
comment on column SMS_MULT_DATA.operatetimes
  is '操作次数  一般失败重试不超过3次';
alter table SMS_MULT_DATA
  add constraint SMS_MULT_DATA_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SMS_SEND_RULE
prompt ============================
prompt
create table SMS_SEND_RULE
(
  id                VARCHAR2(32) not null,
  device_type       VARCHAR2(500),
  service_level     VARCHAR2(100),
  project_id        VARCHAR2(1000),
  department_id     VARCHAR2(1000),
  key               VARCHAR2(1000),
  operate_type      VARCHAR2(2),
  update_time       DATE,
  dupl_recive_times NUMBER(10),
  max_recive_times  NUMBER(10),
  rule_name         VARCHAR2(300),
  rule_type         VARCHAR2(2),
  report_time       VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SMS_SEND_RULE
  is '短信发送规则表';
comment on column SMS_SEND_RULE.device_type
  is '设备类型（多个以逗号分隔）';
comment on column SMS_SEND_RULE.service_level
  is '服务级别（多个以逗号分隔）';
comment on column SMS_SEND_RULE.project_id
  is '所属项目（多个以逗号分隔）';
comment on column SMS_SEND_RULE.department_id
  is '所属部门（多个以逗号分隔）';
comment on column SMS_SEND_RULE.key
  is '短信内容过滤（多个以逗号分隔）';
comment on column SMS_SEND_RULE.operate_type
  is '操作类型 1：and  2：or';
comment on column SMS_SEND_RULE.dupl_recive_times
  is '号码每日重复短信接收次数';
comment on column SMS_SEND_RULE.max_recive_times
  is '号码每日最多短信接收次数';
comment on column SMS_SEND_RULE.rule_name
  is '短信规则名称';
comment on column SMS_SEND_RULE.rule_type
  is '短信规则类型  1：短信预警规则   2：日报规则';
comment on column SMS_SEND_RULE.report_time
  is '日报发送时间  ';
alter table SMS_SEND_RULE
  add constraint SMS_SEND_RULE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table STATISTIC_ROLE_RELATION
prompt ======================================
prompt
create table STATISTIC_ROLE_RELATION
(
  id      VARCHAR2(32) not null,
  userid  VARCHAR2(32),
  module  VARCHAR2(10),
  roleids VARCHAR2(4000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    next 8K
  );
alter table STATISTIC_ROLE_RELATION
  add constraint PRI_STATISTIC_ROLEID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table STATISTIC_ROLE_RELATION
  add constraint UNI_STATISTIC_UM unique (USERID, MODULE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table STATUS
prompt =====================
prompt
create table STATUS
(
  id           VARCHAR2(32) not null,
  execute_date VARCHAR2(8) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table STAT_ILLEGAL_BEHAVIOR_DEPT
prompt =========================================
prompt
create table STAT_ILLEGAL_BEHAVIOR_DEPT
(
  nid           VARCHAR2(32) not null,
  illegaldate   DATE,
  deptid        VARCHAR2(12),
  illegaltotal  NUMBER(11),
  nlevel        VARCHAR2(2),
  cselectstatus CHAR(1),
  selecttime    DATE,
  type          VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table STAT_ILLEGAL_BEHAVIOR_DEPT
  is '按照违法数据的分拣状态统计出每个部门的违法数据情况';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.illegaldate
  is '违法时间';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.deptid
  is '部门id';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.illegaltotal
  is '总数';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.nlevel
  is '部门级别';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.cselectstatus
  is '分拣状态 枚举值146:0未审核;1已审核;2已删除;3上传失败;4上传成功;5上传中;7通过复审';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.selecttime
  is '分拣时间';
comment on column STAT_ILLEGAL_BEHAVIOR_DEPT.type
  is '1：写入违法时间，2：写入审核时间';
alter table STAT_ILLEGAL_BEHAVIOR_DEPT
  add constraint SIEDID primary key (NID)
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
prompt Creating table STAT_ILLEGAL_BEHAVIOR_DEPT1
prompt ==========================================
prompt
create table STAT_ILLEGAL_BEHAVIOR_DEPT1
(
  nid           VARCHAR2(32) not null,
  illegaldate   DATE,
  deptid        VARCHAR2(12),
  illegaltotal  NUMBER(11),
  nlevel        VARCHAR2(2),
  cselectstatus CHAR(1),
  selecttime    DATE,
  type          VARCHAR2(1)
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

prompt
prompt Creating table STAT_ILLEGAL_BEHAVIOR_OPER
prompt =========================================
prompt
create table STAT_ILLEGAL_BEHAVIOR_OPER
(
  nid           VARCHAR2(32) not null,
  illegaldate   DATE,
  dselecttime   DATE,
  deptid        VARCHAR2(12),
  shryid        VARCHAR2(20),
  fsryid        VARCHAR2(20),
  cselectstatus CHAR(1),
  illegaltotal  NUMBER(11)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table STAT_ILLEGAL_BEHAVIOR_OPER
  is '按照天、部门、人员、分拣状态统计出违法数据数量分布';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.illegaldate
  is '违法时间';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.dselecttime
  is '分拣时间';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.deptid
  is '采集机关';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.shryid
  is '审核人员id';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.fsryid
  is '复审人员id';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.cselectstatus
  is '分拣状态 枚举值146';
comment on column STAT_ILLEGAL_BEHAVIOR_OPER.illegaltotal
  is '总数';
alter table STAT_ILLEGAL_BEHAVIOR_OPER
  add constraint PRISTAT_ILLEGAL_BEHAVIOR_OPER primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SVGEDITINFO
prompt ==========================
prompt
create table SVGEDITINFO
(
  id     VARCHAR2(50) not null,
  name   VARCHAR2(50),
  svgxml VARCHAR2(4000)
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
alter table SVGEDITINFO
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
prompt Creating table SVMS_ALARMINFO
prompt =============================
prompt
create table SVMS_ALARMINFO
(
  nid          VARCHAR2(32) not null,
  carno        NVARCHAR2(10),
  vehtype      VARCHAR2(6),
  coffense     NVARCHAR2(100),
  dillegaldate DATE,
  caddresscode VARCHAR2(12),
  caddress     NVARCHAR2(200),
  cartype      VARCHAR2(2),
  type         VARCHAR2(1),
  remark       NVARCHAR2(200),
  createtime   DATE,
  pic1         NVARCHAR2(500),
  pic2         NVARCHAR2(500),
  pic3         NVARCHAR2(500),
  car_color    VARCHAR2(6),
  auditstatus  VARCHAR2(1)
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
comment on table SVMS_ALARMINFO
  is '重点车辆预警信息';
comment on column SVMS_ALARMINFO.nid
  is '主键';
comment on column SVMS_ALARMINFO.carno
  is '号牌号码';
comment on column SVMS_ALARMINFO.vehtype
  is '重点车辆类型';
comment on column SVMS_ALARMINFO.coffense
  is '违法行为';
comment on column SVMS_ALARMINFO.dillegaldate
  is '违法时间';
comment on column SVMS_ALARMINFO.caddresscode
  is '地点编号';
comment on column SVMS_ALARMINFO.caddress
  is '地点名称';
comment on column SVMS_ALARMINFO.cartype
  is '号牌种类';
comment on column SVMS_ALARMINFO.type
  is '生成类型，1：违法，2：过车';
comment on column SVMS_ALARMINFO.remark
  is '备注';
comment on column SVMS_ALARMINFO.createtime
  is '创建时间';
comment on column SVMS_ALARMINFO.pic1
  is '抓拍图片1';
comment on column SVMS_ALARMINFO.pic2
  is '抓拍图片2';
comment on column SVMS_ALARMINFO.pic3
  is '抓拍图片3';
comment on column SVMS_ALARMINFO.car_color
  is '重点车辆车身颜色  枚举745';
comment on column SVMS_ALARMINFO.auditstatus
  is '审核状态';
alter table SVMS_ALARMINFO
  add constraint PRI_SVMSALERMINFOID primary key (NID)
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
prompt Creating table SVMS_DRIVERINFO
prompt ==============================
prompt
create table SVMS_DRIVERINFO
(
  id                 VARCHAR2(32) not null,
  driveridenti       VARCHAR2(18),
  drivername         NVARCHAR2(10),
  allowdrivercartype VARCHAR2(20),
  driverphone        VARCHAR2(11),
  ccdjrq             DATE,
  yxqz               DATE,
  syrq               DATE,
  syyxqz             DATE,
  ljjf               VARCHAR2(10),
  ownertype          VARCHAR2(2),
  ownname            NVARCHAR2(200),
  ownerid            VARCHAR2(32)
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
comment on table SVMS_DRIVERINFO
  is '重点车辆-驾驶人表';
comment on column SVMS_DRIVERINFO.id
  is '主键uuid';
comment on column SVMS_DRIVERINFO.driveridenti
  is '身份证号码';
comment on column SVMS_DRIVERINFO.drivername
  is '姓名';
comment on column SVMS_DRIVERINFO.allowdrivercartype
  is '准驾车型';
comment on column SVMS_DRIVERINFO.driverphone
  is '手机号码';
comment on column SVMS_DRIVERINFO.ccdjrq
  is '初次领证日期';
comment on column SVMS_DRIVERINFO.yxqz
  is '有效期至';
comment on column SVMS_DRIVERINFO.syrq
  is '审验日期';
comment on column SVMS_DRIVERINFO.syyxqz
  is '审验有效期至';
comment on column SVMS_DRIVERINFO.ljjf
  is '累计积分';
comment on column SVMS_DRIVERINFO.ownertype
  is '所有人类别';
comment on column SVMS_DRIVERINFO.ownname
  is '所有人名称';
comment on column SVMS_DRIVERINFO.ownerid
  is '所有人id';
alter table SVMS_DRIVERINFO
  add constraint DRIVER_ID primary key (ID)
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
prompt Creating table SVMS_VEHINFO
prompt ===========================
prompt
create table SVMS_VEHINFO
(
  id             VARCHAR2(32) not null,
  hphm           NVARCHAR2(10),
  hpzl           VARCHAR2(2),
  vehtype        VARCHAR2(20),
  clpp1          NVARCHAR2(20),
  csys           VARCHAR2(20),
  fzjg           NVARCHAR2(20),
  glbm           NVARCHAR2(20),
  syxz           VARCHAR2(60),
  fdjxh          VARCHAR2(200),
  bxzzrq         DATE,
  clsbdh         NVARCHAR2(50),
  fdjh           NVARCHAR2(50),
  bxgs           NVARCHAR2(50),
  ccdjrq         DATE,
  djrq           DATE,
  qzbfqz         DATE,
  hdzzl          NUMBER(10),
  hdzk           NUMBER(3),
  zt             NVARCHAR2(20),
  ownerid        VARCHAR2(32),
  approvalstatus VARCHAR2(2),
  inputperson    NVARCHAR2(20),
  inputdept      NVARCHAR2(20),
  inputtime      DATE,
  vehmsg         NVARCHAR2(1000),
  updatetime     DATE,
  yxqz           DATE,
  gxrq           DATE,
  safeman        NVARCHAR2(20),
  pic1           VARCHAR2(200),
  pic2           VARCHAR2(200),
  pic3           VARCHAR2(200),
  gjzt           VARCHAR2(2)
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
comment on table SVMS_VEHINFO
  is '重点车辆基本信息表';
comment on column SVMS_VEHINFO.id
  is '主键uuid';
comment on column SVMS_VEHINFO.hphm
  is '号牌号码';
comment on column SVMS_VEHINFO.hpzl
  is '号牌种类';
comment on column SVMS_VEHINFO.vehtype
  is '车辆类型';
comment on column SVMS_VEHINFO.clpp1
  is '车辆品牌';
comment on column SVMS_VEHINFO.csys
  is '车身颜色（枚举）';
comment on column SVMS_VEHINFO.fzjg
  is '发证机关';
comment on column SVMS_VEHINFO.glbm
  is '管理部门';
comment on column SVMS_VEHINFO.syxz
  is '使用性质';
comment on column SVMS_VEHINFO.fdjxh
  is '发动机型号';
comment on column SVMS_VEHINFO.bxzzrq
  is '保险终止日期';
comment on column SVMS_VEHINFO.clsbdh
  is '车辆识别代号';
comment on column SVMS_VEHINFO.fdjh
  is '发动机编号';
comment on column SVMS_VEHINFO.bxgs
  is '保险公司';
comment on column SVMS_VEHINFO.ccdjrq
  is '初次登记日期';
comment on column SVMS_VEHINFO.djrq
  is '最近定检日期';
comment on column SVMS_VEHINFO.qzbfqz
  is '强制报废期止';
comment on column SVMS_VEHINFO.hdzzl
  is '核定载重量（kg）';
comment on column SVMS_VEHINFO.hdzk
  is '核定载客（人）';
comment on column SVMS_VEHINFO.zt
  is '车辆状态(六合一状态)';
comment on column SVMS_VEHINFO.ownerid
  is '所有人ID';
comment on column SVMS_VEHINFO.approvalstatus
  is '审批状态 0未提交 1未审批 2通过 3驳回';
comment on column SVMS_VEHINFO.inputperson
  is '采集人userid';
comment on column SVMS_VEHINFO.inputdept
  is '采集单位';
comment on column SVMS_VEHINFO.inputtime
  is '采集时间';
comment on column SVMS_VEHINFO.vehmsg
  is '六合一报文';
comment on column SVMS_VEHINFO.updatetime
  is '更新时间（数据库记录）';
comment on column SVMS_VEHINFO.yxqz
  is '检验有效期止';
comment on column SVMS_VEHINFO.gxrq
  is '更新日期（车管库）';
comment on column SVMS_VEHINFO.safeman
  is '安全责任人';
comment on column SVMS_VEHINFO.pic1
  is '图片一';
comment on column SVMS_VEHINFO.pic2
  is '图片二';
comment on column SVMS_VEHINFO.pic3
  is '图片三';
comment on column SVMS_VEHINFO.gjzt
  is '告警状态(枚举16008)';
alter table SVMS_VEHINFO
  add constraint VEH_ID primary key (ID)
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
prompt Creating table SVMS_VEHOWNER
prompt ============================
prompt
create table SVMS_VEHOWNER
(
  id                  VARCHAR2(32) not null,
  ownertype           VARCHAR2(20),
  ownername           NVARCHAR2(20),
  unitproperties      NVARCHAR2(20),
  unittype            NVARCHAR2(20),
  businesscertificate NVARCHAR2(20),
  representativename  NVARCHAR2(20),
  representativeid    VARCHAR2(18),
  corporationphone    VARCHAR2(32),
  address             NVARCHAR2(50),
  deptid              NVARCHAR2(20),
  bigdeptid           NVARCHAR2(20),
  qyzt                VARCHAR2(2),
  fzjy                VARCHAR2(32),
  gsfzr               VARCHAR2(32),
  gsfzrphone          VARCHAR2(32)
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
comment on table SVMS_VEHOWNER
  is '重点车辆-所有人表';
comment on column SVMS_VEHOWNER.ownertype
  is '所有人类别(01个人  02单位 枚举 17003)';
comment on column SVMS_VEHOWNER.ownername
  is '所有人名称 (公司填公司名,  个人写个人名)';
comment on column SVMS_VEHOWNER.unitproperties
  is '单位性质 (枚举 17004)';
comment on column SVMS_VEHOWNER.unittype
  is '单位类型';
comment on column SVMS_VEHOWNER.businesscertificate
  is '经营许可证';
comment on column SVMS_VEHOWNER.representativename
  is '法人代表姓名';
comment on column SVMS_VEHOWNER.representativeid
  is '法人身份证号';
comment on column SVMS_VEHOWNER.corporationphone
  is '公司电话';
comment on column SVMS_VEHOWNER.address
  is '单位地址';
comment on column SVMS_VEHOWNER.deptid
  is '所属分局';
comment on column SVMS_VEHOWNER.bigdeptid
  is '所属大队';
comment on column SVMS_VEHOWNER.qyzt
  is '所有人状态(枚举 16007)';
comment on column SVMS_VEHOWNER.fzjy
  is '职责民警';
comment on column SVMS_VEHOWNER.gsfzr
  is '负责人 (公司或个人)';
comment on column SVMS_VEHOWNER.gsfzrphone
  is '联系方式 (负责人)';
alter table SVMS_VEHOWNER
  add constraint OWNER_ID primary key (ID)
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
prompt Creating table SVMS_VEH_APPROVAL_HIS
prompt ====================================
prompt
create table SVMS_VEH_APPROVAL_HIS
(
  id             VARCHAR2(32) not null,
  vehinfoid      VARCHAR2(32),
  approvalstatus VARCHAR2(2),
  rejectreason   NVARCHAR2(100),
  approvalperson VARCHAR2(18),
  approvaltime   DATE
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
comment on table SVMS_VEH_APPROVAL_HIS
  is '重点车辆审批记录表';
comment on column SVMS_VEH_APPROVAL_HIS.vehinfoid
  is '重点车辆表ID';
comment on column SVMS_VEH_APPROVAL_HIS.approvalstatus
  is '审批状态 0未提交 1未审批 2通过 3驳回';
comment on column SVMS_VEH_APPROVAL_HIS.rejectreason
  is '驳回原因';
comment on column SVMS_VEH_APPROVAL_HIS.approvalperson
  is '审批人（对应重点车辆表采集人）';
comment on column SVMS_VEH_APPROVAL_HIS.approvaltime
  is '审批时间';
alter table SVMS_VEH_APPROVAL_HIS
  add constraint APP_ID primary key (ID)
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
prompt Creating table SVMS_VEH_DRIVER
prompt ==============================
prompt
create table SVMS_VEH_DRIVER
(
  id        VARCHAR2(32) not null,
  vehinfoid VARCHAR2(32),
  driverid  VARCHAR2(32)
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
comment on table SVMS_VEH_DRIVER
  is '重点车辆-车辆驾驶人关联表';
comment on column SVMS_VEH_DRIVER.id
  is 'uuid';
comment on column SVMS_VEH_DRIVER.vehinfoid
  is '重点车辆表ID';
comment on column SVMS_VEH_DRIVER.driverid
  is '驾驶人表ID';
alter table SVMS_VEH_DRIVER
  add constraint VEH_DRI_ID primary key (ID)
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
prompt Creating table SVMS_VEH_PASSINFO
prompt ================================
prompt
create table SVMS_VEH_PASSINFO
(
  id                        VARCHAR2(32) not null,
  transportgoods            NVARCHAR2(30),
  licensedept               VARCHAR2(30),
  certificatevalidity       DATE,
  passtype                  VARCHAR2(2),
  passno                    NVARCHAR2(50),
  hphm                      NVARCHAR2(30),
  hpzl                      VARCHAR2(2),
  certificatevaliditystdate DATE,
  applydate                 DATE,
  backflag                  VARCHAR2(1)
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
comment on table SVMS_VEH_PASSINFO
  is '重点车辆通行证表';
comment on column SVMS_VEH_PASSINFO.transportgoods
  is '运输物品';
comment on column SVMS_VEH_PASSINFO.licensedept
  is '发证机关，冗余字段，不用';
comment on column SVMS_VEH_PASSINFO.certificatevalidity
  is '证件有效期';
comment on column SVMS_VEH_PASSINFO.passtype
  is '通行类型  扩展字段';
comment on column SVMS_VEH_PASSINFO.passno
  is '通行证编号';
comment on column SVMS_VEH_PASSINFO.hphm
  is '号牌号码';
comment on column SVMS_VEH_PASSINFO.hpzl
  is '号牌种类';
comment on column SVMS_VEH_PASSINFO.certificatevaliditystdate
  is '通行证有效期（开始时间）';
comment on column SVMS_VEH_PASSINFO.applydate
  is '申请时间';
comment on column SVMS_VEH_PASSINFO.backflag
  is '标志位';
alter table SVMS_VEH_PASSINFO
  add constraint PASS_ID primary key (ID)
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
prompt Creating table SVMS_VEH_PASS_INFO_ROUTE
prompt =======================================
prompt
create table SVMS_VEH_PASS_INFO_ROUTE
(
  passinfoid VARCHAR2(32),
  routerid   VARCHAR2(32),
  begindate  DATE,
  enddate    DATE,
  begintime  VARCHAR2(40),
  endtime    VARCHAR2(40),
  datetype   VARCHAR2(12),
  routeno    NUMBER,
  id         VARCHAR2(32) not null
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
comment on table SVMS_VEH_PASS_INFO_ROUTE
  is '重点车辆通行证与限行线路关联表';
comment on column SVMS_VEH_PASS_INFO_ROUTE.passinfoid
  is '通行证表ID';
comment on column SVMS_VEH_PASS_INFO_ROUTE.routerid
  is '限行线路ID';
comment on column SVMS_VEH_PASS_INFO_ROUTE.begindate
  is '开始日期';
comment on column SVMS_VEH_PASS_INFO_ROUTE.enddate
  is '结束日期';
comment on column SVMS_VEH_PASS_INFO_ROUTE.begintime
  is '开始时间';
comment on column SVMS_VEH_PASS_INFO_ROUTE.endtime
  is '结束时间';
comment on column SVMS_VEH_PASS_INFO_ROUTE.datetype
  is '日期类型(1工作日\2节假日)';
comment on column SVMS_VEH_PASS_INFO_ROUTE.routeno
  is '路线编号1,2,3..';
comment on column SVMS_VEH_PASS_INFO_ROUTE.id
  is '主键';
alter table SVMS_VEH_PASS_INFO_ROUTE
  add constraint SVMS_VEH_PASS_INFO_ROUTE_PK primary key (ID)
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
prompt Creating table SVMS_VEH_PASS_ROUTE
prompt ==================================
prompt
create table SVMS_VEH_PASS_ROUTE
(
  id             VARCHAR2(32) not null,
  passinfoid     VARCHAR2(32),
  startpointname NVARCHAR2(50),
  endpointname   NVARCHAR2(50),
  passtype       VARCHAR2(2),
  passcoordinate CLOB,
  begindate      DATE,
  enddate        DATE,
  begintime      VARCHAR2(40),
  endtime        VARCHAR2(40),
  datetype       VARCHAR2(12),
  routeno        NUMBER
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
comment on table SVMS_VEH_PASS_ROUTE
  is '重点车辆通行证线路表';
comment on column SVMS_VEH_PASS_ROUTE.passinfoid
  is '通行证表主键ID';
comment on column SVMS_VEH_PASS_ROUTE.startpointname
  is '起点名称';
comment on column SVMS_VEH_PASS_ROUTE.endpointname
  is '终点名称';
comment on column SVMS_VEH_PASS_ROUTE.passtype
  is '通行类型，扩展字段';
comment on column SVMS_VEH_PASS_ROUTE.passcoordinate
  is '坐标';
comment on column SVMS_VEH_PASS_ROUTE.begindate
  is '开始日期';
comment on column SVMS_VEH_PASS_ROUTE.enddate
  is '结束日期';
comment on column SVMS_VEH_PASS_ROUTE.begintime
  is '开始时间';
comment on column SVMS_VEH_PASS_ROUTE.endtime
  is '结束时间';
comment on column SVMS_VEH_PASS_ROUTE.datetype
  is '日期类型（1工作日、2节假日）';
comment on column SVMS_VEH_PASS_ROUTE.routeno
  is '路线编号1、2、3..';
alter table SVMS_VEH_PASS_ROUTE
  add constraint R_ID primary key (ID)
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
prompt Creating table SVMS_VEH_ROUTE_DEVICE
prompt ====================================
prompt
create table SVMS_VEH_ROUTE_DEVICE
(
  id        VARCHAR2(32),
  routeid   VARCHAR2(32),
  deviceno  NUMBER,
  deviceid  NVARCHAR2(20),
  direction VARCHAR2(12)
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
comment on table SVMS_VEH_ROUTE_DEVICE
  is '重点车辆-通行证线路关联卡口表';
comment on column SVMS_VEH_ROUTE_DEVICE.routeid
  is '重点车辆通行证线路表主键ID';
comment on column SVMS_VEH_ROUTE_DEVICE.deviceno
  is '卡口序号（1、2、3…）';
comment on column SVMS_VEH_ROUTE_DEVICE.deviceid
  is '卡口设备id';
comment on column SVMS_VEH_ROUTE_DEVICE.direction
  is '方向';

prompt
prompt Creating table SYSPARAMS
prompt ========================
prompt
create table SYSPARAMS
(
  paramcode    NVARCHAR2(32) not null,
  paramname    NVARCHAR2(300) not null,
  paramvalue   NVARCHAR2(2000) not null,
  paramcontent NVARCHAR2(250),
  paramstate   NVARCHAR2(1)
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
comment on column SYSPARAMS.paramcode
  is '系统参数Code';
comment on column SYSPARAMS.paramname
  is '系统参数名称';
comment on column SYSPARAMS.paramvalue
  is '系统参数值';
comment on column SYSPARAMS.paramcontent
  is '系统参数描述';
comment on column SYSPARAMS.paramstate
  is '是否可编辑:0为可编辑;1为不可编辑';
alter table SYSPARAMS
  add constraint PARAM_KEY primary key (PARAMCODE)
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
prompt Creating table SYS_ONLINEUSERINFO
prompt =================================
prompt
create table SYS_ONLINEUSERINFO
(
  id                     VARCHAR2(32) not null,
  userid                 CHAR(6) not null,
  username               NVARCHAR2(20) not null,
  departmentid           VARCHAR2(12) not null,
  departmentname         NVARCHAR2(50),
  deptshortname          NVARCHAR2(50),
  clientip               VARCHAR2(20),
  logindatestr           VARCHAR2(20),
  latestoperationdatestr VARCHAR2(20),
  rolenamestr            NVARCHAR2(500),
  available              VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SYS_ONLINEUSERINFO
  is '在线用户信息表';
comment on column SYS_ONLINEUSERINFO.id
  is '在线用户记录ID(cookieid)';
comment on column SYS_ONLINEUSERINFO.userid
  is '用户id';
comment on column SYS_ONLINEUSERINFO.username
  is '用户名';
comment on column SYS_ONLINEUSERINFO.departmentid
  is '所属机构代码';
comment on column SYS_ONLINEUSERINFO.departmentname
  is '部门名称';
comment on column SYS_ONLINEUSERINFO.deptshortname
  is '部门简称';
comment on column SYS_ONLINEUSERINFO.clientip
  is '客户端ip';
comment on column SYS_ONLINEUSERINFO.logindatestr
  is '登录时间';
comment on column SYS_ONLINEUSERINFO.latestoperationdatestr
  is '最新操作时间';
comment on column SYS_ONLINEUSERINFO.rolenamestr
  is '角色组';
comment on column SYS_ONLINEUSERINFO.available
  is '是否可用';
alter table SYS_ONLINEUSERINFO
  add constraint ONLINEUSERINFO_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table SYS_PERSONALINFO
prompt ===============================
prompt
create table SYS_PERSONALINFO
(
  userid    CHAR(6) not null,
  position  NVARCHAR2(30),
  telephone VARCHAR2(15),
  phone     VARCHAR2(20),
  email     VARCHAR2(100),
  address   NVARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SYS_PERSONALINFO
  is '账号个人信息表';
comment on column SYS_PERSONALINFO.userid
  is '账号';
comment on column SYS_PERSONALINFO.position
  is '职位';
comment on column SYS_PERSONALINFO.telephone
  is '手机号码';
comment on column SYS_PERSONALINFO.phone
  is '办公电话';
comment on column SYS_PERSONALINFO.email
  is '邮箱地址';
comment on column SYS_PERSONALINFO.address
  is '联系地址';
alter table SYS_PERSONALINFO
  add constraint SYS_PERSONALINFO_PK primary key (USERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TD_TRAVELSPEED_RESULT_NEW
prompt ========================================
prompt
create table TD_TRAVELSPEED_RESULT_NEW
(
  id         VARCHAR2(32),
  route_id   VARCHAR2(30),
  cal_time   DATE,
  velocity   NUMBER(11,2),
  samplesize NUMBER
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
comment on table TD_TRAVELSPEED_RESULT_NEW
  is '行程车速结果表';
comment on column TD_TRAVELSPEED_RESULT_NEW.route_id
  is '路段id';
comment on column TD_TRAVELSPEED_RESULT_NEW.cal_time
  is '计算时间';
comment on column TD_TRAVELSPEED_RESULT_NEW.velocity
  is '平均速度';
comment on column TD_TRAVELSPEED_RESULT_NEW.samplesize
  is '样本量';

prompt
prompt Creating table TEMPLATE_ELEMENT_INFO
prompt ====================================
prompt
create table TEMPLATE_ELEMENT_INFO
(
  uuid         VARCHAR2(32) not null,
  templateid   VARCHAR2(32),
  elementclass VARCHAR2(50),
  elementname  VARCHAR2(100),
  datatype     VARCHAR2(1),
  demand       VARCHAR2(200),
  class_weight VARCHAR2(2),
  name_weight  VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TEMPLATE_ELEMENT_INFO
  is '模板要素信息表';
comment on column TEMPLATE_ELEMENT_INFO.uuid
  is '序号，主键(UUID)';
comment on column TEMPLATE_ELEMENT_INFO.templateid
  is '模板主键';
comment on column TEMPLATE_ELEMENT_INFO.elementclass
  is '一级表层 （模版类型）';
comment on column TEMPLATE_ELEMENT_INFO.elementname
  is '二级表层(模板要素名称)';
comment on column TEMPLATE_ELEMENT_INFO.datatype
  is '要素类型(1-文本，2-数字)';
comment on column TEMPLATE_ELEMENT_INFO.demand
  is '统计要求';
comment on column TEMPLATE_ELEMENT_INFO.class_weight
  is '一级表层 权重';
comment on column TEMPLATE_ELEMENT_INFO.name_weight
  is '二级表层权重';
alter table TEMPLATE_ELEMENT_INFO
  add constraint TEMPLATE_ELEMENT_INFO_KEY primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TEMPLATE_ELEMENT_VALUE
prompt =====================================
prompt
create table TEMPLATE_ELEMENT_VALUE
(
  xh               VARCHAR2(32) not null,
  uuid             VARCHAR2(32),
  elementid        VARCHAR2(32),
  elementvalue     VARCHAR2(500),
  reportdepartment VARCHAR2(15),
  reportperson     VARCHAR2(10),
  reporttime       DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TEMPLATE_ELEMENT_VALUE
  is '要素详细数据表';
comment on column TEMPLATE_ELEMENT_VALUE.uuid
  is '元素批号，本字段相同的数据是一组数据';
comment on column TEMPLATE_ELEMENT_VALUE.elementid
  is '模板要素主键';
comment on column TEMPLATE_ELEMENT_VALUE.elementvalue
  is '要素值';
comment on column TEMPLATE_ELEMENT_VALUE.reportdepartment
  is '上报部门';
comment on column TEMPLATE_ELEMENT_VALUE.reportperson
  is '上报人';
comment on column TEMPLATE_ELEMENT_VALUE.reporttime
  is '上报时间';
alter table TEMPLATE_ELEMENT_VALUE
  add constraint TEMPLATE_ELEMENT_VALUE_KEY primary key (XH)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_ELEMENT
prompt ==============================
prompt
create table TGS_VMS_ELEMENT
(
  id            VARCHAR2(32) not null,
  element_title VARCHAR2(512),
  font_color    NUMBER(1),
  font_size     NUMBER(3),
  font_family   VARCHAR2(32),
  element_url   VARCHAR2(256),
  element_type  CHAR(2),
  element_text  VARCHAR2(2048),
  duration      NUMBER(10),
  is_temp       CHAR(1),
  extcol        VARCHAR2(512),
  showstyle     VARCHAR2(2),
  program_type  VARCHAR2(32),
  vms_type      VARCHAR2(2),
  element_value VARCHAR2(2048),
  content_type  CHAR(1),
  vms_size      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_ELEMENT
  is '节目表';
comment on column TGS_VMS_ELEMENT.element_title
  is '节目主题';
comment on column TGS_VMS_ELEMENT.font_color
  is '字体颜色： 1-红色2-黄色3-绿色';
comment on column TGS_VMS_ELEMENT.font_size
  is '字体大小';
comment on column TGS_VMS_ELEMENT.font_family
  is '字体类型';
comment on column TGS_VMS_ELEMENT.element_url
  is 'URL地址';
comment on column TGS_VMS_ELEMENT.element_type
  is '节目类型 1文字2图片3路况4视频';
comment on column TGS_VMS_ELEMENT.element_text
  is '信息报文
';
comment on column TGS_VMS_ELEMENT.duration
  is '单次发布持续时长
';
comment on column TGS_VMS_ELEMENT.is_temp
  is '暂时节目：用于定时删除';
comment on column TGS_VMS_ELEMENT.extcol
  is '条形屏文本
';
comment on column TGS_VMS_ELEMENT.showstyle
  is '条形屏显示方式 枚举2011';
comment on column TGS_VMS_ELEMENT.program_type
  is '节目类别  关联VMS_ELEMENT_TYPE表';
comment on column TGS_VMS_ELEMENT.vms_type
  is '节目适用的诱导屏类型：2-双基色 7-条形屏 3-全彩';
comment on column TGS_VMS_ELEMENT.element_value
  is '文本编辑器中生成的内容';
comment on column TGS_VMS_ELEMENT.content_type
  is '更加详细的格式，1-文字 2-图片 3-路况 4-文字路况 5-视频 6-竖屏文字  ELEMENT_TYPE字段的细类';
comment on column TGS_VMS_ELEMENT.vms_size
  is '节目尺寸，根据诱导屏尺寸选择节目尺寸';
alter table TGS_VMS_ELEMENT
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_ELEMENT_LIST
prompt ===================================
prompt
create table TGS_VMS_ELEMENT_LIST
(
  id          VARCHAR2(32) not null,
  list_name   VARCHAR2(100),
  vms_type    VARCHAR2(1),
  element_id  VARCHAR2(1024),
  vms_xml     VARCHAR2(4000),
  createtime  DATE,
  lastusetime DATE,
  pubtype     VARCHAR2(1),
  vms_size    VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_ELEMENT_LIST
  is '节目单表';
comment on column TGS_VMS_ELEMENT_LIST.list_name
  is '节目单名称';
comment on column TGS_VMS_ELEMENT_LIST.vms_type
  is '诱导屏类型';
comment on column TGS_VMS_ELEMENT_LIST.element_id
  is '发布节目ID';
comment on column TGS_VMS_ELEMENT_LIST.vms_xml
  is '发布xml串';
comment on column TGS_VMS_ELEMENT_LIST.createtime
  is '创建时间';
comment on column TGS_VMS_ELEMENT_LIST.lastusetime
  is '最近使用时间';
comment on column TGS_VMS_ELEMENT_LIST.pubtype
  is '发布类型 1-交通预案   2-信息服务(旅行时间)3-违法告知4-警卫任务5-高速系统6-停车场7-警情处置';
comment on column TGS_VMS_ELEMENT_LIST.vms_size
  is '测试，临时添加';
alter table TGS_VMS_ELEMENT_LIST
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_ELEMENT_RE
prompt =================================
prompt
create table TGS_VMS_ELEMENT_RE
(
  id          VARCHAR2(32) not null,
  vms_id      VARCHAR2(32) not null,
  element_id  VARCHAR2(32) not null,
  create_time DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_ELEMENT_RE
  is '诱导屏与节目关联关系';
comment on column TGS_VMS_ELEMENT_RE.vms_id
  is '屏幕id';
comment on column TGS_VMS_ELEMENT_RE.element_id
  is '屏幕关联的节目，用,隔开';
comment on column TGS_VMS_ELEMENT_RE.create_time
  is '创建时间';
alter table TGS_VMS_ELEMENT_RE
  add constraint PK_ELEMENTVMS_RE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_GROUP_LIST
prompt =================================
prompt
create table TGS_VMS_GROUP_LIST
(
  id            VARCHAR2(32),
  group_title   VARCHAR2(512),
  deviceid_list VARCHAR2(2000)
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
comment on column TGS_VMS_GROUP_LIST.group_title
  is '分组列表主题';
comment on column TGS_VMS_GROUP_LIST.deviceid_list
  is '列表包含的诱导屏设备id列表，多个id间用逗号隔开';

prompt
prompt Creating table TGS_VMS_LISTELEMENT_RE
prompt =====================================
prompt
create table TGS_VMS_LISTELEMENT_RE
(
  list_id    VARCHAR2(32) not null,
  element_id VARCHAR2(32) not null,
  order_id   NUMBER not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_LISTELEMENT_RE
  is '节目单与节目关联表';
alter table TGS_VMS_LISTELEMENT_RE
  add constraint PK_BBBB primary key (LIST_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SCHEDULE
prompt ===============================
prompt
create table TGS_VMS_SCHEDULE
(
  vms_id             VARCHAR2(32) not null,
  day_solution_ids   VARCHAR2(330),
  week_solution_ids  VARCHAR2(330),
  month_solution_ids VARCHAR2(330),
  pubtype            VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SCHEDULE
  is '调度表';
comment on column TGS_VMS_SCHEDULE.vms_id
  is '屏幕ID';
comment on column TGS_VMS_SCHEDULE.day_solution_ids
  is '日发布方案ID';
comment on column TGS_VMS_SCHEDULE.week_solution_ids
  is '周发布方案ID ';
comment on column TGS_VMS_SCHEDULE.month_solution_ids
  is '月发布方案ID ';
comment on column TGS_VMS_SCHEDULE.pubtype
  is '发布方式：0:定时
1：立即
';
alter table TGS_VMS_SCHEDULE
  add primary key (VMS_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SCHEDULE_HIS
prompt ===================================
prompt
create table TGS_VMS_SCHEDULE_HIS
(
  id                 VARCHAR2(32) not null,
  vms_id             VARCHAR2(32) not null,
  day_solution_ids   VARCHAR2(320),
  week_solution_ids  VARCHAR2(320),
  month_solution_ids VARCHAR2(320),
  pubtype            VARCHAR2(1),
  create_time        DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SCHEDULE_HIS
  is '调度历史表';
comment on column TGS_VMS_SCHEDULE_HIS.vms_id
  is '屏幕ID';
comment on column TGS_VMS_SCHEDULE_HIS.day_solution_ids
  is '日发布节目单ID';
comment on column TGS_VMS_SCHEDULE_HIS.week_solution_ids
  is '周发布方案ID ';
comment on column TGS_VMS_SCHEDULE_HIS.month_solution_ids
  is '月发布方案ID ';
comment on column TGS_VMS_SCHEDULE_HIS.pubtype
  is '发布方式：0:定时
1：立即';
alter table TGS_VMS_SCHEDULE_HIS
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SCHEDULE_PLAN
prompt ====================================
prompt
create table TGS_VMS_SCHEDULE_PLAN
(
  id           VARCHAR2(32) not null,
  vms_id       VARCHAR2(32),
  vms_type     VARCHAR2(1),
  solution_id  VARCHAR2(1024),
  list_ids     VARCHAR2(1024),
  vms_xml      VARCHAR2(4000),
  pubtype      VARCHAR2(1024),
  pubstatus    VARCHAR2(1),
  begintime    DATE,
  endtime      DATE,
  source       CHAR(2),
  modifiedtime DATE,
  createtime   DATE,
  elementids   VARCHAR2(2000),
  pubflag      VARCHAR2(1) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SCHEDULE_PLAN
  is '调度计划表';
comment on column TGS_VMS_SCHEDULE_PLAN.vms_id
  is ' 诱导屏ID ';
comment on column TGS_VMS_SCHEDULE_PLAN.vms_type
  is ' 诱导屏类型 ';
comment on column TGS_VMS_SCHEDULE_PLAN.solution_id
  is ' 方案ID      为空代表插播任务或自动发布';
comment on column TGS_VMS_SCHEDULE_PLAN.list_ids
  is ' 节目单id串    用,隔开；';
comment on column TGS_VMS_SCHEDULE_PLAN.vms_xml
  is ' 报文';
comment on column TGS_VMS_SCHEDULE_PLAN.pubtype
  is ' 发布类型  1插播 空为默认，手动';
comment on column TGS_VMS_SCHEDULE_PLAN.pubstatus
  is ' 发布状态  0未发布 1:已发布  2:发布失败 3:独占 4:独占等待  5插播混合';
comment on column TGS_VMS_SCHEDULE_PLAN.begintime
  is ' 开始时间 ';
comment on column TGS_VMS_SCHEDULE_PLAN.endtime
  is ' 结束时间  ';
comment on column TGS_VMS_SCHEDULE_PLAN.source
  is '节目来源 1-平台方案;2-平台插播;3-警卫任务;4-交通预案;5-旅行时间;6-违停;7-停车场;8-平均速度;9-高速与城区一体化诱导发布使用;';
comment on column TGS_VMS_SCHEDULE_PLAN.modifiedtime
  is '修改时间，默认按照修改时间排序';
comment on column TGS_VMS_SCHEDULE_PLAN.createtime
  is '创建时间';
comment on column TGS_VMS_SCHEDULE_PLAN.elementids
  is '节目id列表，多个用,隔开';
comment on column TGS_VMS_SCHEDULE_PLAN.pubflag
  is '0失败1成功';
alter table TGS_VMS_SCHEDULE_PLAN
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SCHEDULE_PLAN_HIS
prompt ========================================
prompt
create table TGS_VMS_SCHEDULE_PLAN_HIS
(
  id            VARCHAR2(32) not null,
  vms_id        VARCHAR2(32),
  vms_type      VARCHAR2(1),
  solution_id   VARCHAR2(1024),
  list_ids      VARCHAR2(1024),
  vms_xml       VARCHAR2(4000),
  pubtype       VARCHAR2(1024),
  pubstatus     VARCHAR2(1),
  begintime     DATE,
  endtime       DATE,
  source        CHAR(2),
  createtime    DATE,
  modifiedtime  DATE,
  elementids    VARCHAR2(2000),
  pubflag       VARCHAR2(1),
  hiscreatetime DATE default SYSDATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SCHEDULE_PLAN_HIS
  is '调度计划历史表';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.vms_id
  is ' 诱导屏ID ';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.vms_type
  is ' 诱导屏类型 ';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.solution_id
  is ' 方案ID      为空代表插播任务或自动发布';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.list_ids
  is ' 节目单id串    用,隔开；为空时则为插播任务或自动发布';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.vms_xml
  is ' 报文';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.pubtype
  is ' 发布类型  1插播 空为默认，手动';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.pubstatus
  is ' 发布状态  0未发布 1:已发布  2:发布失败 3:独占 4:独占等待  5插播混合';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.begintime
  is ' 开始时间 ';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.endtime
  is ' 结束时间  ';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.source
  is '节目来源 1-文字;2-图片;3-视频;4-路况;5-旅行时间;6-违停;7-停车场;8-平均速度;9-高速与城区一体化诱导发布使用;';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.createtime
  is '计划插入时间 ';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.modifiedtime
  is '修改时间，默认按照修改时间排序';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.elementids
  is '节目id列表，多个用,隔开';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.pubflag
  is '0失败1成功';
comment on column TGS_VMS_SCHEDULE_PLAN_HIS.hiscreatetime
  is '历史数据插入时间';
alter table TGS_VMS_SCHEDULE_PLAN_HIS
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SHOWLIST
prompt ===============================
prompt
create table TGS_VMS_SHOWLIST
(
  vms_id       VARCHAR2(32) not null,
  element_ids  VARCHAR2(1024),
  extcol       VARCHAR2(512),
  vms_last_xml VARCHAR2(4000),
  createtime   DATE,
  modifiedtime DATE,
  resume_xml   VARCHAR2(512)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TGS_VMS_SHOWLIST.element_ids
  is '节目id';
comment on column TGS_VMS_SHOWLIST.extcol
  is '诱导屏类型';
comment on column TGS_VMS_SHOWLIST.vms_last_xml
  is '当前发布xml';
alter table TGS_VMS_SHOWLIST
  add primary key (VMS_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TGS_VMS_SOLULIST_RE
prompt ==================================
prompt
create table TGS_VMS_SOLULIST_RE
(
  solution_id VARCHAR2(32) not null,
  list_id     VARCHAR2(32) not null,
  begintime   VARCHAR2(4) not null,
  endtime     VARCHAR2(5) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SOLULIST_RE
  is '方案与节目单关联表';
comment on column TGS_VMS_SOLULIST_RE.solution_id
  is '方案ID';
comment on column TGS_VMS_SOLULIST_RE.list_id
  is '节目单ID';
comment on column TGS_VMS_SOLULIST_RE.begintime
  is '开始时间,HHMM';
comment on column TGS_VMS_SOLULIST_RE.endtime
  is '结束时间,HHMM';

prompt
prompt Creating table TGS_VMS_SOLUTION
prompt ===============================
prompt
create table TGS_VMS_SOLUTION
(
  id             VARCHAR2(32) not null,
  solution_name  VARCHAR2(100),
  list_id        VARCHAR2(1024),
  vms_type       VARCHAR2(1),
  solution_type  CHAR(2),
  pub_week_cycle VARCHAR2(16),
  pub_day_cycle  VARCHAR2(8),
  pub_day        VARCHAR2(200),
  begin_time     DATE,
  end_time       DATE,
  expir_time     DATE,
  vms_size       VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TGS_VMS_SOLUTION
  is '方案表';
comment on column TGS_VMS_SOLUTION.solution_name
  is '方案名称';
comment on column TGS_VMS_SOLUTION.list_id
  is '节目单id';
comment on column TGS_VMS_SOLUTION.vms_type
  is '屏幕类型';
comment on column TGS_VMS_SOLUTION.solution_type
  is '方案类型 0:日 1:月 2:周';
comment on column TGS_VMS_SOLUTION.pub_week_cycle
  is '周周期   1,2,3,4,5,6,7';
comment on column TGS_VMS_SOLUTION.pub_day_cycle
  is '日周期 20160203';
comment on column TGS_VMS_SOLUTION.pub_day
  is '月周期, 01,02,03,...10,11,12,...20,21,22 全选是0';
comment on column TGS_VMS_SOLUTION.begin_time
  is '生效时间';
comment on column TGS_VMS_SOLUTION.end_time
  is '失效时间';
comment on column TGS_VMS_SOLUTION.vms_size
  is '测试，临时添加';
alter table TGS_VMS_SOLUTION
  add primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TJ_6IN1IMP_ILLEGAL_DATA
prompt ======================================
prompt
create table TJ_6IN1IMP_ILLEGAL_DATA
(
  id                  VARCHAR2(32) default SYS_GUID() not null,
  ordernum            VARCHAR2(100),
  decisionnum         VARCHAR2(100),
  clicensetype        VARCHAR2(100),
  ccarnumber          VARCHAR2(100),
  transportationmode  VARCHAR2(10),
  syxz                CHAR(1),
  clpp                VARCHAR2(100),
  syr                 VARCHAR2(128),
  fzjg                VARCHAR2(500),
  dsr                 VARCHAR2(128),
  dillegaldate        DATE,
  coffense            VARCHAR2(6),
  fkje                VARCHAR2(100),
  cillegaladdress     VARCHAR2(200),
  uploaddate          DATE,
  ccollectionagencies VARCHAR2(100),
  cjfs                VARCHAR2(100),
  disposaldate        DATE,
  disposalagencies    VARCHAR2(100),
  disposalstatus      VARCHAR2(100),
  noticenum           VARCHAR2(100),
  paymentdate         DATE,
  chargeperson        VARCHAR2(100),
  ondutypolicenum     VARCHAR2(100),
  paymentmark         VARCHAR2(10)
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
comment on column TJ_6IN1IMP_ILLEGAL_DATA.id
  is 'UUID';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.ordernum
  is '序号';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.decisionnum
  is '决定书编号';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.clicensetype
  is '号牌种类';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.ccarnumber
  is '号牌号码';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.transportationmode
  is '交通方式';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.syxz
  is '使用性质';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.clpp
  is '车辆品牌';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.syr
  is '机动车所有人';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.fzjg
  is '发证机关';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.dsr
  is '当事人';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.dillegaldate
  is '违法时间';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.coffense
  is '违法行为';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.fkje
  is '罚款金额';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.cillegaladdress
  is '违法地址';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.uploaddate
  is '上传时间';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.ccollectionagencies
  is '采集机关';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.cjfs
  is '采集方式';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.disposaldate
  is '处理时间';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.disposalagencies
  is '处理机关';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.disposalstatus
  is '处理标记';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.noticenum
  is '通知书编号';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.paymentdate
  is '交款日期';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.chargeperson
  is '经办人';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.ondutypolicenum
  is '执勤民警';
comment on column TJ_6IN1IMP_ILLEGAL_DATA.paymentmark
  is '交款标记';

prompt
prompt Creating table TJ_OWNERSTATUS_HISTORY
prompt =====================================
prompt
create table TJ_OWNERSTATUS_HISTORY
(
  nid        VARCHAR2(32) default SYS_GUID() not null,
  ownerid    VARCHAR2(32),
  inserttime DATE,
  status     VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TJ_SVMS_NOTICEINFO
prompt =================================
prompt
create table TJ_SVMS_NOTICEINFO
(
  id           VARCHAR2(32) default SYS_GUID() not null,
  noticeid     VARCHAR2(64),
  createtime   DATE,
  begintime    DATE,
  endtime      DATE,
  ownerid      VARCHAR2(32),
  noticestatus VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TJ_SVMS_REGULARINSPECT
prompt =====================================
prompt
create table TJ_SVMS_REGULARINSPECT
(
  nid         VARCHAR2(32) default SYS_GUID() not null,
  warndate    DATE,
  warntype    VARCHAR2(32),
  warncontent VARCHAR2(200),
  rectifydate DATE,
  syrid       VARCHAR2(32),
  carnumber   VARCHAR2(32),
  drivername  VARCHAR2(32),
  status      VARCHAR2(32),
  issuetype   VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TJ_SVMS_VISITFEEDBACKLIST
prompt ========================================
prompt
create table TJ_SVMS_VISITFEEDBACKLIST
(
  visitfeedbackid   VARCHAR2(32) default SYS_GUID() not null,
  taskid            VARCHAR2(32),
  visitfeedbacktime DATE,
  feedbackpoliceid  VARCHAR2(32),
  feedbackdetail    VARCHAR2(200),
  pic1              VARCHAR2(100),
  pic2              VARCHAR2(100),
  pic3              VARCHAR2(100),
  insertime         DATE,
  autorevokeflag    VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TJ_SVMS_VISITLIST
prompt ================================
prompt
create table TJ_SVMS_VISITLIST
(
  taskid        VARCHAR2(32) default SYS_GUID() not null,
  tasktime      DATE,
  tasktype      VARCHAR2(32),
  ownerid       VARCHAR2(32),
  policeid      VARCHAR2(32),
  taskdetail    VARCHAR2(200),
  taskstatus    VARCHAR2(32),
  tasktimelimit DATE,
  insertime     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
/*
prompt
prompt Creating table TMP_HDVIEW_COMPONENT
prompt ===================================
prompt
create table TMP_HDVIEW_COMPONENT
(
  componentid      VARCHAR2(32) not null,
  name             VARCHAR2(30),
  description      VARCHAR2(300),
  type             CHAR(1),
  title            VARCHAR2(100),
  showborder       CHAR(1),
  transparent      VARCHAR2(20),
  refresh_interval NUMBER,
  datafuc          VARCHAR2(50),
  sceneid          VARCHAR2(30) not null,
  create_time      DATE,
  update_time      DATE,
  create_user      VARCHAR2(30),
  w                NUMBER,
  h                NUMBER,
  x                NUMBER,
  y                NUMBER,
  i                VARCHAR2(30),
  isditu           CHAR(1),
  basefont         NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TMP_HDVIEW_COMPONENT
  is '组件表';
comment on column TMP_HDVIEW_COMPONENT.name
  is '组件名称';
comment on column TMP_HDVIEW_COMPONENT.type
  is '1：专题组件
2：地图组件
3：指标组件
';
comment on column TMP_HDVIEW_COMPONENT.title
  is '默认标题';
comment on column TMP_HDVIEW_COMPONENT.showborder
  is '是否展示边框';
comment on column TMP_HDVIEW_COMPONENT.transparent
  is '背景透明度';
comment on column TMP_HDVIEW_COMPONENT.refresh_interval
  is '组件刷新间隔';
comment on column TMP_HDVIEW_COMPONENT.datafuc
  is '数据接口';
comment on column TMP_HDVIEW_COMPONENT.sceneid
  is '场景';
comment on column TMP_HDVIEW_COMPONENT.w
  is '默认宽';
comment on column TMP_HDVIEW_COMPONENT.h
  is '默认高';
comment on column TMP_HDVIEW_COMPONENT.x
  is '默认x轴';
comment on column TMP_HDVIEW_COMPONENT.y
  is '默认y轴';
comment on column TMP_HDVIEW_COMPONENT.i
  is '默认 COMPONENTID';
comment on column TMP_HDVIEW_COMPONENT.isditu
  is '默认是否底图(地图) 0:否 1 :是   ';
alter table TMP_HDVIEW_COMPONENT
  add constraint PK_HDVIEW_COMPONENT primary key (COMPONENTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TMP_HDVIEW_SCENE
prompt ===============================
prompt
create table TMP_HDVIEW_SCENE
(
  sceneid     VARCHAR2(32) not null,
  scenename   VARCHAR2(32) not null,
  description VARCHAR2(300),
  visiable    CHAR(1) default 1,
  create_time DATE,
  update_time DATE,
  create_user VARCHAR2(30)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TMP_HDVIEW_SCENE
  is '场景表';
comment on column TMP_HDVIEW_SCENE.visiable
  is '1:可见0：不可见';
alter table TMP_HDVIEW_SCENE
  add constraint PK_HDVIEW_SCENE primary key (SCENEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TMP_HDVIEW_THEME
prompt ===============================
prompt
create table TMP_HDVIEW_THEME
(
  themeid     VARCHAR2(32) not null,
  sceneid     VARCHAR2(32) not null,
  themename   VARCHAR2(100) not null,
  colortheme  VARCHAR2(20),
  basefont    NUMBER,
  adaptscreen VARCHAR2(10),
  isenable    CHAR(1),
  create_time DATE not null,
  update_time DATE,
  create_user VARCHAR2(30)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TMP_HDVIEW_THEME
  is '主题表';
comment on column TMP_HDVIEW_THEME.adaptscreen
  is 'screen-2k,screen-4k,screen-8k';
alter table TMP_HDVIEW_THEME
  add constraint PK_HDVIEW_THEME primary key (THEMEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TMP_HDVIEW_THEME_CONFIG
prompt ======================================
prompt
create table TMP_HDVIEW_THEME_CONFIG
(
  themeid     VARCHAR2(32) not null,
  componentid VARCHAR2(30) not null,
  name        VARCHAR2(40) not null,
  page        NUMBER,
  basefont    NUMBER,
  w           NUMBER,
  h           NUMBER,
  x           NUMBER,
  y           NUMBER,
  i           VARCHAR2(30) not null,
  status      CHAR(1),
  isditu      CHAR(1),
  creat_time  DATE,
  update_time DATE,
  create_user VARCHAR2(30),
  sceneid     VARCHAR2(32),
  id          VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TMP_HDVIEW_THEME_CONFIG
  is '场景主题配置表';
comment on column TMP_HDVIEW_THEME_CONFIG.w
  is '宽';
comment on column TMP_HDVIEW_THEME_CONFIG.h
  is '高';
comment on column TMP_HDVIEW_THEME_CONFIG.x
  is 'x轴';
comment on column TMP_HDVIEW_THEME_CONFIG.y
  is 'y轴';
comment on column TMP_HDVIEW_THEME_CONFIG.i
  is 'COMPONENTID';
comment on column TMP_HDVIEW_THEME_CONFIG.status
  is '0:不生效 1';
comment on column TMP_HDVIEW_THEME_CONFIG.isditu
  is '0:否 1 :是   是否底图(地图)';
alter table TMP_HDVIEW_THEME_CONFIG
  add constraint PK_HDVIEW_THEME_CONFIG primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table TMP_HDVIEW_THEME_CONFIG
  add constraint UNI_HDVIEW_THEME_CONFIG unique (THEMEID, SCENEID, I, PAGE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
*/
prompt
prompt Creating table TOC_LIMIT_RULES
prompt ==============================
prompt
create table TOC_LIMIT_RULES
(
  id                  VARCHAR2(32) not null,
  name                VARCHAR2(100),
  limit_type_id       VARCHAR2(10),
  limit_begin_time    DATE,
  limit_end_time      DATE,
  limit_duration_time VARCHAR2(200),
  law_begin_time      DATE,
  law_end_time        DATE,
  status              VARCHAR2(2),
  points              VARCHAR2(4000),
  map_coordiante      VARCHAR2(4000),
  ismodel             VARCHAR2(2),
  describe            VARCHAR2(4000),
  auditinfo           VARCHAR2(200),
  ifnewenergy         VARCHAR2(1)
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
comment on table TOC_LIMIT_RULES
  is '限行管理限行规则表';
comment on column TOC_LIMIT_RULES.id
  is '数据库唯一标志 (限行规则ID)';
comment on column TOC_LIMIT_RULES.name
  is '限行规则名称';
comment on column TOC_LIMIT_RULES.limit_type_id
  is '限行种类 (TOC_LIMIT_TYPE)';
comment on column TOC_LIMIT_RULES.limit_begin_time
  is '限行开始日期,YYYY-MM-DD';
comment on column TOC_LIMIT_RULES.limit_end_time
  is '限行结束日期,YYYY-MM-DD';
comment on column TOC_LIMIT_RULES.limit_duration_time
  is '限行时段  (多个用时段用逗号,拼接)';
comment on column TOC_LIMIT_RULES.law_begin_time
  is '执法开始日期';
comment on column TOC_LIMIT_RULES.law_end_time
  is '执法结束日期';
comment on column TOC_LIMIT_RULES.status
  is '状态;0待提交;1待审核 2审核通过 3审核不通过 4执行中  5停用 6已删除';
comment on column TOC_LIMIT_RULES.points
  is '限行点位编号 (多个用逗号拼接)';
comment on column TOC_LIMIT_RULES.map_coordiante
  is '圈选地图的范围';
comment on column TOC_LIMIT_RULES.ismodel
  is '是否模板; 1是,0否';
comment on column TOC_LIMIT_RULES.describe
  is '限行规则的描述';
comment on column TOC_LIMIT_RULES.auditinfo
  is '审核意见,审核通过可以为空';
comment on column TOC_LIMIT_RULES.ifnewenergy
  is '是否新能源车辆';
alter table TOC_LIMIT_RULES
  add constraint PRI_TOC_LIMIT_RULES primary key (ID)
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
prompt Creating table TOC_LIMIT_TYPE
prompt =============================
prompt
create table TOC_LIMIT_TYPE
(
  id         VARCHAR2(20) not null,
  name       VARCHAR2(100),
  type_level VARCHAR2(20),
  describe   VARCHAR2(100)
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
comment on table TOC_LIMIT_TYPE
  is '限行管理限行种类表';
comment on column TOC_LIMIT_TYPE.id
  is '限行种类id';
comment on column TOC_LIMIT_TYPE.name
  is '限行种类名称';
comment on column TOC_LIMIT_TYPE.type_level
  is '规则优先级 (1的优先等级最高, 增长类推，0表示没有启用该规则)';
comment on column TOC_LIMIT_TYPE.describe
  is '限行种类的详情描述';
alter table TOC_LIMIT_TYPE
  add constraint PRI_TOC_LIMIT_TYPE primary key (ID)
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
prompt Creating table TOC_LIMIT_TYPE_RELATION_CAR
prompt ==========================================
prompt
create table TOC_LIMIT_TYPE_RELATION_CAR
(
  id         VARCHAR2(20),
  name       VARCHAR2(100),
  relationid VARCHAR2(500)
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
comment on table TOC_LIMIT_TYPE_RELATION_CAR
  is '限行管理特殊车辆对应的限行种类表';
comment on column TOC_LIMIT_TYPE_RELATION_CAR.id
  is '特殊车辆的限行种类ID  (大类, 枚举17007)';
comment on column TOC_LIMIT_TYPE_RELATION_CAR.name
  is '特殊车辆的限行名称  (大类, 枚举17007)';
comment on column TOC_LIMIT_TYPE_RELATION_CAR.relationid
  is '关联TOC_LIMIT_TYPE的ID (小类, 逗号隔开)';

prompt
prompt Creating table TPMS_AREA
prompt ========================
prompt
create table TPMS_AREA
(
  id          VARCHAR2(32) not null,
  advanceid   VARCHAR2(32),
  coordinate  VARCHAR2(4000),
  areatype    VARCHAR2(16),
  description VARCHAR2(1024),
  createtime  DATE,
  createuser  VARCHAR2(16),
  areaname    VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_AREA.id
  is '区域编号';
comment on column TPMS_AREA.advanceid
  is '预案编号';
comment on column TPMS_AREA.coordinate
  is '区域坐标';
comment on column TPMS_AREA.areatype
  is '区域类型(枚举1117)';
comment on column TPMS_AREA.description
  is '区域描述';
comment on column TPMS_AREA.createtime
  is '创建时间';
comment on column TPMS_AREA.createuser
  is '创建人';
comment on column TPMS_AREA.areaname
  is '区域名称';
alter table TPMS_AREA
  add constraint XPKTPMS_AREA primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_DUTY
prompt ========================
prompt
create table TPMS_DUTY
(
  id               VARCHAR2(32) not null,
  advanceid        VARCHAR2(32),
  position_name    VARCHAR2(128),
  position_type    VARCHAR2(16),
  position_address VARCHAR2(256),
  peoplenum        NUMBER,
  responsibility   VARCHAR2(1024),
  coordinate       VARCHAR2(4000),
  dept_id          VARCHAR2(32),
  create_time      DATE,
  tpmslevel        VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_DUTY.id
  is '岗位编号';
comment on column TPMS_DUTY.advanceid
  is '预案编号';
comment on column TPMS_DUTY.position_name
  is '岗位名称';
comment on column TPMS_DUTY.position_type
  is '岗位类型(枚举1123)';
comment on column TPMS_DUTY.position_address
  is '岗位地点';
comment on column TPMS_DUTY.peoplenum
  is '岗位人数';
comment on column TPMS_DUTY.responsibility
  is '岗位职责';
comment on column TPMS_DUTY.coordinate
  is '岗位坐标';
comment on column TPMS_DUTY.dept_id
  is '岗位部门(select ''部门名称:''||t.cdepartmentname from department t where t.cdepartmentid=?)';
comment on column TPMS_DUTY.create_time
  is '创建时间';
comment on column TPMS_DUTY.tpmslevel
  is '岗位级别(枚举1028)';
alter table TPMS_DUTY
  add constraint XPKTPMS_DUTY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_DUTY_POLICE
prompt ===============================
prompt
create table TPMS_DUTY_POLICE
(
  id         VARCHAR2(32) not null,
  dutyid     VARCHAR2(32) not null,
  policeid   VARCHAR2(16),
  starttime  DATE,
  endtime    DATE,
  createuser VARCHAR2(16),
  createtime DATE,
  policeuuid VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_DUTY_POLICE.id
  is '岗位警员编号';
comment on column TPMS_DUTY_POLICE.dutyid
  is '岗位编号(select ''岗位名称:''||t.position_name from tpms_duty t where t.id=?)';
comment on column TPMS_DUTY_POLICE.policeid
  is '警员编号';
comment on column TPMS_DUTY_POLICE.starttime
  is '岗位开始时间';
comment on column TPMS_DUTY_POLICE.endtime
  is '岗位结束时间';
comment on column TPMS_DUTY_POLICE.createuser
  is '创建用户';
comment on column TPMS_DUTY_POLICE.createtime
  is '创建时间';
comment on column TPMS_DUTY_POLICE.policeuuid
  is '警员表主键(select ''姓名:''||policename from police where uuid=?)';
alter table TPMS_DUTY_POLICE
  add constraint XPKTPMS_DUTY_POLICE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EVALUATION
prompt ==============================
prompt
create table TPMS_EVALUATION
(
  id          VARCHAR2(32) not null,
  advanceid   VARCHAR2(32),
  userid      VARCHAR2(16),
  description VARCHAR2(1024),
  executetime DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_EVALUATION.id
  is '评价编号';
comment on column TPMS_EVALUATION.advanceid
  is '预案编号';
comment on column TPMS_EVALUATION.userid
  is '评价人';
comment on column TPMS_EVALUATION.description
  is '评价内容';
comment on column TPMS_EVALUATION.executetime
  is '评价时间';
alter table TPMS_EVALUATION
  add constraint XPKTPMS_EVALUATION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXCT
prompt ========================
prompt
create table TPMS_EXCT
(
  exctid    VARCHAR2(32) not null,
  advanceno VARCHAR2(32) not null,
  starttime DATE not null,
  endtime   DATE,
  userid    VARCHAR2(20),
  userip    VARCHAR2(32),
  username  NVARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_EXCT.exctid
  is '执行编号';
comment on column TPMS_EXCT.advanceno
  is '预案编号';
comment on column TPMS_EXCT.starttime
  is '开始时间';
comment on column TPMS_EXCT.endtime
  is '结束时间';
comment on column TPMS_EXCT.userid
  is '执行人';
comment on column TPMS_EXCT.userip
  is '执行ip';
comment on column TPMS_EXCT.username
  is '执行人名称';
alter table TPMS_EXCT
  add constraint XPKTPMS_EXCT primary key (EXCTID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXCT_CMD
prompt ============================
prompt
create table TPMS_EXCT_CMD
(
  cmdid          VARCHAR2(32) not null,
  exctsceneid    VARCHAR2(32) not null,
  content        VARCHAR2(1024),
  userid         VARCHAR2(20),
  createtime     DATE,
  feedbackstatus VARCHAR2(16) default 0 not null,
  receiver       VARCHAR2(20) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TPMS_EXCT_CMD
  is '指令记录表';
comment on column TPMS_EXCT_CMD.cmdid
  is '指令编号';
comment on column TPMS_EXCT_CMD.exctsceneid
  is '执行场景编号';
comment on column TPMS_EXCT_CMD.content
  is '指令内容';
comment on column TPMS_EXCT_CMD.userid
  is '发布人';
comment on column TPMS_EXCT_CMD.createtime
  is '发布时间';
comment on column TPMS_EXCT_CMD.feedbackstatus
  is '反馈情况(0:未反馈,1:已执行,2:暂不执行)';
comment on column TPMS_EXCT_CMD.receiver
  is '接收岗位';
alter table TPMS_EXCT_CMD
  add constraint XPKTPMS_EXCT_CMD primary key (CMDID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXCT_OPER
prompt =============================
prompt
create table TPMS_EXCT_OPER
(
  operid        VARCHAR2(32) not null,
  exctsceneid   VARCHAR2(32) not null,
  createtime    DATE,
  userid        VARCHAR2(20),
  isdelete      VARCHAR2(4),
  devicetype    VARCHAR2(20) not null,
  operationtype VARCHAR2(16) not null,
  userip        VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TPMS_EXCT_OPER
  is '预案操作日志表';
comment on column TPMS_EXCT_OPER.operid
  is '操作编号';
comment on column TPMS_EXCT_OPER.exctsceneid
  is '执行场景编号';
comment on column TPMS_EXCT_OPER.createtime
  is '创建时间';
comment on column TPMS_EXCT_OPER.userid
  is '创建人id';
comment on column TPMS_EXCT_OPER.isdelete
  is '是否删除';
comment on column TPMS_EXCT_OPER.devicetype
  is '操作设备类型 枚举1704';
comment on column TPMS_EXCT_OPER.operationtype
  is '操作类型 0 批量撤销 1批量执行 2单个撤销 3单个执行';
comment on column TPMS_EXCT_OPER.userip
  is '操作ip';
alter table TPMS_EXCT_OPER
  add constraint XPKTPMS_EXCT_OPER primary key (OPERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXCT_OPER_DETAIL
prompt ====================================
prompt
create table TPMS_EXCT_OPER_DETAIL
(
  detailid VARCHAR2(32) not null,
  operid   VARCHAR2(32),
  deviceid VARCHAR2(32),
  status   VARCHAR2(2),
  content  NVARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TPMS_EXCT_OPER_DETAIL
  is '预案操作日志详情表';
comment on column TPMS_EXCT_OPER_DETAIL.detailid
  is '设备日志编号';
comment on column TPMS_EXCT_OPER_DETAIL.operid
  is '操作编号';
comment on column TPMS_EXCT_OPER_DETAIL.deviceid
  is '设备id';
comment on column TPMS_EXCT_OPER_DETAIL.status
  is '执行状态,0执行失败 1 执行成功 2撤销失败 3撤销成功';
comment on column TPMS_EXCT_OPER_DETAIL.content
  is '操作描述';
alter table TPMS_EXCT_OPER_DETAIL
  add constraint XPKTPMS_EXCT_OPER_DETAIL primary key (DETAILID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXCT_SCENE
prompt ==============================
prompt
create table TPMS_EXCT_SCENE
(
  exctsceneid VARCHAR2(32) not null,
  exctid      VARCHAR2(32) not null,
  starttime   DATE,
  endtime     DATE,
  sceneid     VARCHAR2(32) not null,
  userid      VARCHAR2(20),
  executetype VARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_EXCT_SCENE.exctsceneid
  is '执行场景编号';
comment on column TPMS_EXCT_SCENE.exctid
  is '执行编号';
comment on column TPMS_EXCT_SCENE.starttime
  is '开始时间';
comment on column TPMS_EXCT_SCENE.endtime
  is '结束时间';
comment on column TPMS_EXCT_SCENE.sceneid
  is '场景编号';
comment on column TPMS_EXCT_SCENE.userid
  is '执行人';
comment on column TPMS_EXCT_SCENE.executetype
  is '执行类型（手动或自动）';
alter table TPMS_EXCT_SCENE
  add constraint XPKTPMS_EXCT_SCENE primary key (EXCTSCENEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_EXPRESSWAY_VMS_PLAN
prompt =======================================
prompt
create table TPMS_EXPRESSWAY_VMS_PLAN
(
  id             VARCHAR2(32) not null,
  vmsplanid      VARCHAR2(32),
  grouptype      VARCHAR2(8),
  groupnames     VARCHAR2(128),
  playcount      NUMBER,
  car_direction  VARCHAR2(20),
  road_number    NUMBER(2),
  relateid       VARCHAR2(80),
  elementgroupid VARCHAR2(2000),
  deviceid       VARCHAR2(32),
  elementids     VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_EXPRESSWAY_VMS_PLAN.id
  is 'ID';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.vmsplanid
  is '节目组计划id';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.grouptype
  is '诱导组类型';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.groupnames
  is '诱导组名称';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.playcount
  is '播放次数';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.car_direction
  is '行车方向';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.road_number
  is '车道数量';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.relateid
  is '设备关联ID(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.elementgroupid
  is '节目组编号';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.deviceid
  is '设备编号';
comment on column TPMS_EXPRESSWAY_VMS_PLAN.elementids
  is '节目编号';
alter table TPMS_EXPRESSWAY_VMS_PLAN
  add constraint XPKTPMS_EXPRESSWAY_VMS_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_FIELD
prompt =========================
prompt
create table TPMS_FIELD
(
  fieldid         VARCHAR2(32) not null,
  fieldname       VARCHAR2(128),
  fieldcoordinate VARCHAR2(4000),
  fieldtype       VARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_FIELD.fieldid
  is '场地编号';
comment on column TPMS_FIELD.fieldname
  is '场地名称';
comment on column TPMS_FIELD.fieldcoordinate
  is '场地坐标';
comment on column TPMS_FIELD.fieldtype
  is '场地类型';
alter table TPMS_FIELD
  add constraint XPKTPMS_FIELD primary key (FIELDID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_FILE
prompt ========================
prompt
create table TPMS_FILE
(
  id           VARCHAR2(32) not null,
  advanceid    VARCHAR2(32),
  filetype     VARCHAR2(16),
  filename     VARCHAR2(128),
  fileurl      VARCHAR2(128),
  coordinate   VARCHAR2(64),
  description  VARCHAR2(1024),
  filerealname VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_FILE.id
  is '资料编号';
comment on column TPMS_FILE.advanceid
  is '预案编号';
comment on column TPMS_FILE.filetype
  is '资料类型';
comment on column TPMS_FILE.filename
  is '资料名称';
comment on column TPMS_FILE.fileurl
  is '资料路径';
comment on column TPMS_FILE.coordinate
  is '坐标';
comment on column TPMS_FILE.description
  is '描述';
comment on column TPMS_FILE.filerealname
  is '文件真实名称';
alter table TPMS_FILE
  add constraint XPKTPMS_FILE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_FOG_MODELS
prompt ==============================
prompt
create table TPMS_FOG_MODELS
(
  modelid      VARCHAR2(32) not null,
  modeltype    VARCHAR2(16),
  modelname    VARCHAR2(128),
  thirdsyscode VARCHAR2(32),
  zlcdms       VARCHAR2(32),
  yjdpl        VARCHAR2(32),
  yddpl        VARCHAR2(32),
  yjdld        VARCHAR2(32),
  yddld        VARCHAR2(32),
  wjcd         VARCHAR2(32),
  kqdd         VARCHAR2(32),
  wjsj         VARCHAR2(32),
  cjq          VARCHAR2(32),
  updatetime   DATE,
  updateuser   VARCHAR2(32),
  cdjgids      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_FOG_MODELS.modelid
  is '模式ID';
comment on column TPMS_FOG_MODELS.modeltype
  is '模式类型';
comment on column TPMS_FOG_MODELS.modelname
  is '模式名称';
comment on column TPMS_FOG_MODELS.thirdsyscode
  is '第三方编号';
comment on column TPMS_FOG_MODELS.zlcdms
  is '指令传递模式';
comment on column TPMS_FOG_MODELS.yjdpl
  is '预警灯频率';
comment on column TPMS_FOG_MODELS.yddpl
  is '诱导灯频率';
comment on column TPMS_FOG_MODELS.yjdld
  is '预警灯亮度';
comment on column TPMS_FOG_MODELS.yddld
  is '诱导灯亮度';
comment on column TPMS_FOG_MODELS.wjcd
  is '尾迹长度';
comment on column TPMS_FOG_MODELS.kqdd
  is '开启道钉';
comment on column TPMS_FOG_MODELS.wjsj
  is '尾迹时间';
comment on column TPMS_FOG_MODELS.cjq
  is '车检器';
comment on column TPMS_FOG_MODELS.updatetime
  is '更新时间';
comment on column TPMS_FOG_MODELS.updateuser
  is '创建用户';
comment on column TPMS_FOG_MODELS.cdjgids
  is '传递间隔ID数';
alter table TPMS_FOG_MODELS
  add constraint XPKTPMS_FOG_MODELS primary key (MODELID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_FOG_MODELS_BACKUP
prompt =====================================
prompt
create table TPMS_FOG_MODELS_BACKUP
(
  modelid      VARCHAR2(32) not null,
  modeltype    VARCHAR2(16),
  modelname    VARCHAR2(128),
  thirdsyscode VARCHAR2(32),
  zlcdms       VARCHAR2(32),
  yjdpl        VARCHAR2(32),
  yddpl        VARCHAR2(32),
  yjdld        VARCHAR2(32),
  yddld        VARCHAR2(32),
  wjcd         VARCHAR2(32),
  kqdd         VARCHAR2(32),
  wjsj         VARCHAR2(32),
  cjq          VARCHAR2(32),
  updatetime   DATE,
  updateuser   VARCHAR2(32),
  fogplanid    VARCHAR2(32) not null,
  cdjgids      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_FOG_MODELS_BACKUP.modelid
  is '模式ID';
comment on column TPMS_FOG_MODELS_BACKUP.modeltype
  is '模式类型';
comment on column TPMS_FOG_MODELS_BACKUP.modelname
  is '模式名称';
comment on column TPMS_FOG_MODELS_BACKUP.thirdsyscode
  is '第三方编号';
comment on column TPMS_FOG_MODELS_BACKUP.zlcdms
  is '指令传递模式';
comment on column TPMS_FOG_MODELS_BACKUP.yjdpl
  is '预警灯频率';
comment on column TPMS_FOG_MODELS_BACKUP.yddpl
  is '诱导灯频率';
comment on column TPMS_FOG_MODELS_BACKUP.yjdld
  is '预警灯亮度';
comment on column TPMS_FOG_MODELS_BACKUP.yddld
  is '诱导灯亮度';
comment on column TPMS_FOG_MODELS_BACKUP.wjcd
  is '尾迹长度';
comment on column TPMS_FOG_MODELS_BACKUP.kqdd
  is '开启道钉';
comment on column TPMS_FOG_MODELS_BACKUP.wjsj
  is '尾迹时间';
comment on column TPMS_FOG_MODELS_BACKUP.cjq
  is '车检器';
comment on column TPMS_FOG_MODELS_BACKUP.updatetime
  is '更新时间';
comment on column TPMS_FOG_MODELS_BACKUP.updateuser
  is '创建用户';
comment on column TPMS_FOG_MODELS_BACKUP.fogplanid
  is 'tpms_fog_plan表主键';
comment on column TPMS_FOG_MODELS_BACKUP.cdjgids
  is '传递间隔ID数';
alter table TPMS_FOG_MODELS_BACKUP
  add constraint PRI_TPMSFOGMODELSBACKUPID primary key (FOGPLANID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_FOG_PLAN
prompt ============================
prompt
create table TPMS_FOG_PLAN
(
  id        VARCHAR2(32) not null,
  modeltype VARCHAR2(16),
  modelname VARCHAR2(128),
  modelid   VARCHAR2(32),
  relateid  VARCHAR2(80)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_FOG_PLAN.id
  is 'ID';
comment on column TPMS_FOG_PLAN.modeltype
  is '模式类型(1:预置模式,2:自定义模式）';
comment on column TPMS_FOG_PLAN.modelname
  is '模式名称';
comment on column TPMS_FOG_PLAN.modelid
  is '模式ID(select ''模式名称:''||t.modelname from tpms_fog_models t where t.modelid=?)';
comment on column TPMS_FOG_PLAN.relateid
  is '设备关联ID(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
alter table TPMS_FOG_PLAN
  add constraint XPKTPMS_FOG_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_PLAN_INFO
prompt =============================
prompt
create table TPMS_PLAN_INFO
(
  planid        VARCHAR2(32) not null,
  plantype      VARCHAR2(16),
  plansubtype   VARCHAR2(16),
  planname      VARCHAR2(128),
  planlevel     VARCHAR2(16),
  advancedetail VARCHAR2(1024),
  exrange       VARCHAR2(16),
  createtime    DATE,
  createuser    VARCHAR2(16),
  exstatus      VARCHAR2(16) default 0,
  tplid         VARCHAR2(32),
  fieldid       VARCHAR2(32),
  configtype    VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_PLAN_INFO.planid
  is '预案编号';
comment on column TPMS_PLAN_INFO.plantype
  is '预案种类(枚举1700)';
comment on column TPMS_PLAN_INFO.plansubtype
  is '预案类型(枚举410)';
comment on column TPMS_PLAN_INFO.planname
  is '预案名称';
comment on column TPMS_PLAN_INFO.planlevel
  is '预案级别(枚举1028)';
comment on column TPMS_PLAN_INFO.advancedetail
  is '预案描述';
comment on column TPMS_PLAN_INFO.exrange
  is '影响范围(枚举1701）';
comment on column TPMS_PLAN_INFO.createtime
  is '创建时间';
comment on column TPMS_PLAN_INFO.createuser
  is '创建人(select ''姓名:''||t.cusername from operator t where t.nuserid=?)';
comment on column TPMS_PLAN_INFO.exstatus
  is '预案执行状态(0:未执行, 1:待执行, 2:执行中)';
comment on column TPMS_PLAN_INFO.tplid
  is '模板编号';
comment on column TPMS_PLAN_INFO.fieldid
  is '预案场地(枚举1705)';
comment on column TPMS_PLAN_INFO.configtype
  is '可配置设备项(枚举1704)';
alter table TPMS_PLAN_INFO
  add constraint XPKTPMS_PLAN_INFO primary key (PLANID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_POLICE_SUPERVISION
prompt ======================================
prompt
create table TPMS_POLICE_SUPERVISION
(
  supervisionid  VARCHAR2(32) not null,
  duty_police_id VARCHAR2(32),
  workstatus     VARCHAR2(16),
  gpsradiono     VARCHAR2(50),
  telphone       VARCHAR2(16),
  userid         VARCHAR2(16),
  monitortime    DATE,
  flag           VARCHAR2(4),
  exctid         VARCHAR2(32),
  url            VARCHAR2(1000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_POLICE_SUPERVISION.supervisionid
  is '警力监督主键';
comment on column TPMS_POLICE_SUPERVISION.duty_police_id
  is '岗位警员编号';
comment on column TPMS_POLICE_SUPERVISION.workstatus
  is '状态,枚举1127';
comment on column TPMS_POLICE_SUPERVISION.gpsradiono
  is 'GPS呼号';
comment on column TPMS_POLICE_SUPERVISION.telphone
  is '电话';
comment on column TPMS_POLICE_SUPERVISION.userid
  is '监督人';
comment on column TPMS_POLICE_SUPERVISION.monitortime
  is '监督时间';
comment on column TPMS_POLICE_SUPERVISION.flag
  is '标识 1人工监督2自动计算';
comment on column TPMS_POLICE_SUPERVISION.exctid
  is '预案执行编号';
comment on column TPMS_POLICE_SUPERVISION.url
  is 'ftp地址';
alter table TPMS_POLICE_SUPERVISION
  add constraint XPKTPMS_POLICE_SUPERVISION primary key (SUPERVISIONID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_PRESETCMD
prompt =============================
prompt
create table TPMS_PRESETCMD
(
  presetid VARCHAR2(32) not null,
  content  VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_PRESETCMD.presetid
  is '指令编号';
comment on column TPMS_PRESETCMD.content
  is '指令内容';
alter table TPMS_PRESETCMD
  add constraint XPKTPMS_PRESETCMD primary key (PRESETID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_PROPAGANDA_ELEMENT
prompt ======================================
prompt
create table TPMS_PROPAGANDA_ELEMENT
(
  element_id    VARCHAR2(32) not null,
  element_title VARCHAR2(128),
  element_text  VARCHAR2(2048),
  program_type  VARCHAR2(32),
  extcol        VARCHAR2(512)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_PROPAGANDA_ELEMENT.element_id
  is '节目ID';
comment on column TPMS_PROPAGANDA_ELEMENT.element_title
  is '节目名称';
comment on column TPMS_PROPAGANDA_ELEMENT.element_text
  is '节目内容';
comment on column TPMS_PROPAGANDA_ELEMENT.program_type
  is '节目类别';
comment on column TPMS_PROPAGANDA_ELEMENT.extcol
  is '扩展字段';
alter table TPMS_PROPAGANDA_ELEMENT
  add constraint XPKTPMS_PROPAGANDA_ELEMENT primary key (ELEMENT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_PROPAGANDA_PLAN
prompt ===================================
prompt
create table TPMS_PROPAGANDA_PLAN
(
  id             VARCHAR2(32) not null,
  play_type      VARCHAR2(8),
  macid          VARCHAR2(32),
  macname        VARCHAR2(128),
  audioelementid VARCHAR2(32),
  voicename      VARCHAR2(2000),
  voicepath      VARCHAR2(128),
  method         VARCHAR2(16),
  duration       NUMBER(10),
  frequency      NUMBER(3),
  element_id     VARCHAR2(32),
  relateid       VARCHAR2(80)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_PROPAGANDA_PLAN.id
  is 'ID';
comment on column TPMS_PROPAGANDA_PLAN.play_type
  is '播放模式(1:麦克,2:音频,3:文字)';
comment on column TPMS_PROPAGANDA_PLAN.macid
  is '喊话麦克编号';
comment on column TPMS_PROPAGANDA_PLAN.macname
  is '喊话麦克名称';
comment on column TPMS_PROPAGANDA_PLAN.audioelementid
  is '音频设备编号';
comment on column TPMS_PROPAGANDA_PLAN.voicename
  is '音频文件名称';
comment on column TPMS_PROPAGANDA_PLAN.voicepath
  is '音频文件路径';
comment on column TPMS_PROPAGANDA_PLAN.method
  is '持续方式(1:播放时长,2:播放次数)';
comment on column TPMS_PROPAGANDA_PLAN.duration
  is '持续时长';
comment on column TPMS_PROPAGANDA_PLAN.frequency
  is '频率';
comment on column TPMS_PROPAGANDA_PLAN.element_id
  is '节目编号(select ''节目名称:''||t.element_title from tpms_propaganda_element t where t.element_id=?)';
comment on column TPMS_PROPAGANDA_PLAN.relateid
  is '设备关联编号(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
alter table TPMS_PROPAGANDA_PLAN
  add constraint XPKTPMS_PROPAGANDA_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_RELATE_DEVICE
prompt =================================
prompt
create table TPMS_RELATE_DEVICE
(
  id             VARCHAR2(80) not null,
  sceneid        VARCHAR2(32) not null,
  deviceid       VARCHAR2(32) not null,
  devicename     VARCHAR2(512),
  devicetype     VARCHAR2(16),
  thirdsyscode   VARCHAR2(32),
  ordernum       NUMBER,
  vms_type       VARCHAR2(16),
  vms_size       VARCHAR2(16),
  vms_direction  VARCHAR2(16),
  provider       VARCHAR2(16),
  status         VARCHAR2(16),
  devicestate    VARCHAR2(16),
  userid         VARCHAR2(16),
  createtime     DATE,
  departmentid   VARCHAR2(32),
  pointid        VARCHAR2(32),
  upvmsroad      VARCHAR2(128),
  downvmsroad    VARCHAR2(128),
  configstate    VARCHAR2(4) default 0,
  videotype      VARCHAR2(16),
  coordinate     VARCHAR2(32),
  departmentname VARCHAR2(128),
  pointname      VARCHAR2(128)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_RELATE_DEVICE.id
  is '设备关联ID';
comment on column TPMS_RELATE_DEVICE.sceneid
  is '场景编号(select ''预案名称:''||p.planname||'';场景名称:''||s.scenename from tpms_scene s,tpms_plan_info p where s.advanceid=p.planid and s.sceneid=?)';
comment on column TPMS_RELATE_DEVICE.deviceid
  is '设备编号';
comment on column TPMS_RELATE_DEVICE.devicename
  is '设备名称';
comment on column TPMS_RELATE_DEVICE.devicetype
  is '设备配置类型(枚举1704)';
comment on column TPMS_RELATE_DEVICE.thirdsyscode
  is '第三方编号';
comment on column TPMS_RELATE_DEVICE.ordernum
  is '视频序号';
comment on column TPMS_RELATE_DEVICE.vms_type
  is '诱导屏类型（枚举186）';
comment on column TPMS_RELATE_DEVICE.vms_size
  is '诱导屏尺寸';
comment on column TPMS_RELATE_DEVICE.vms_direction
  is '诱导屏方向（枚举149）';
comment on column TPMS_RELATE_DEVICE.provider
  is '诱导屏厂商（枚举902）';
comment on column TPMS_RELATE_DEVICE.status
  is '执行状态（-1:未执行, 0:执行失败, 1: 执行成功, 2:撤销失败, 3:撤销成功）';
comment on column TPMS_RELATE_DEVICE.devicestate
  is '设备状态（枚举100）';
comment on column TPMS_RELATE_DEVICE.userid
  is '制作人';
comment on column TPMS_RELATE_DEVICE.createtime
  is '制作时间';
comment on column TPMS_RELATE_DEVICE.departmentid
  is '所属部门';
comment on column TPMS_RELATE_DEVICE.pointid
  is '安装点';
comment on column TPMS_RELATE_DEVICE.upvmsroad
  is '雾区防撞上行诱导路段';
comment on column TPMS_RELATE_DEVICE.downvmsroad
  is '雾区防撞下行诱导路段';
comment on column TPMS_RELATE_DEVICE.configstate
  is '节目配置状态( 0:未配置, 1:已配置)';
comment on column TPMS_RELATE_DEVICE.videotype
  is '视频类型';
comment on column TPMS_RELATE_DEVICE.coordinate
  is '设备安装点坐标';
comment on column TPMS_RELATE_DEVICE.departmentname
  is '所属部门名称';
comment on column TPMS_RELATE_DEVICE.pointname
  is '安装点名称';
alter table TPMS_RELATE_DEVICE
  add constraint XPKTPMS_RELATE_DEVICE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_SCENE
prompt =========================
prompt
create table TPMS_SCENE
(
  sceneid          VARCHAR2(32) not null,
  advanceid        VARCHAR2(32),
  scenename        VARCHAR2(256),
  vmsconfig        VARCHAR2(4),
  videoconfig      VARCHAR2(4),
  utcconfig        VARCHAR2(4),
  propagandaconfig VARCHAR2(4),
  fogsetconfig     VARCHAR2(4),
  expwayvmsconfig  VARCHAR2(4),
  dutyconfig       VARCHAR2(4),
  videostatus      VARCHAR2(4),
  utcstatus        VARCHAR2(4),
  vmsstatus        VARCHAR2(4),
  expwayvmsstatus  VARCHAR2(4),
  fogstatus        VARCHAR2(4),
  propagandastatus VARCHAR2(4),
  ordernum         NUMBER,
  starttime        DATE,
  endtime          DATE,
  startconflag     VARCHAR2(4),
  tigtype          VARCHAR2(16),
  coordinate       VARCHAR2(4000),
  startflag        VARCHAR2(4),
  accident         VARCHAR2(16),
  eventtype        VARCHAR2(16),
  eventlevel       VARCHAR2(16),
  scenestatus      VARCHAR2(2) default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TPMS_SCENE
  is '预案场景表';
comment on column TPMS_SCENE.sceneid
  is '场景编号';
comment on column TPMS_SCENE.advanceid
  is '预案编号';
comment on column TPMS_SCENE.scenename
  is '场景名称';
comment on column TPMS_SCENE.vmsconfig
  is '诱导配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.videoconfig
  is '视频配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.utcconfig
  is '信号配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.propagandaconfig
  is '喊话系统配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.fogsetconfig
  is '雾区防撞配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.expwayvmsconfig
  is '限速诱导配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.dutyconfig
  is '岗位配置状态(0:未配置,1:已配置)';
comment on column TPMS_SCENE.videostatus
  is '视频执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.utcstatus
  is '信号执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.vmsstatus
  is '诱导执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.expwayvmsstatus
  is '限速诱导执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.fogstatus
  is '雾区防撞执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.propagandastatus
  is '喊话执行状态(0:未执行,1:已执行)';
comment on column TPMS_SCENE.ordernum
  is '场景序号排序';
comment on column TPMS_SCENE.starttime
  is '启动时间';
comment on column TPMS_SCENE.endtime
  is '结束时间';
comment on column TPMS_SCENE.startconflag
  is '启动条件标志(弃用)';
comment on column TPMS_SCENE.tigtype
  is '触发条件(1:手动, 2:按时间, 3:按事件)';
comment on column TPMS_SCENE.coordinate
  is '事件触发区域坐标';
comment on column TPMS_SCENE.startflag
  is '启动提示';
comment on column TPMS_SCENE.accident
  is '事件种类(弃用)';
comment on column TPMS_SCENE.eventtype
  is '事件类型(枚举1110)';
comment on column TPMS_SCENE.eventlevel
  is '事件级别（弃用）';
comment on column TPMS_SCENE.scenestatus
  is '场景执行状态（0:未执行，1:执行中）';
alter table TPMS_SCENE
  add constraint XPKTPMS_SCENE primary key (SCENEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_TEMPLATE
prompt ============================
prompt
create table TPMS_TEMPLATE
(
  tplid         VARCHAR2(32) not null,
  tpltype       VARCHAR2(16),
  tplsubtype    VARCHAR2(16),
  tplname       VARCHAR2(128),
  tpllevel      VARCHAR2(16),
  advancedetail VARCHAR2(1024),
  exrange       VARCHAR2(16),
  createtime    DATE,
  createuser    VARCHAR2(16),
  fieldid       VARCHAR2(32),
  configtype    VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_TEMPLATE.tplid
  is '模板编号';
comment on column TPMS_TEMPLATE.tpltype
  is '预案模板类型';
comment on column TPMS_TEMPLATE.tplsubtype
  is '预案模板子类型';
comment on column TPMS_TEMPLATE.tplname
  is '模板名称';
comment on column TPMS_TEMPLATE.tpllevel
  is '预案级别';
comment on column TPMS_TEMPLATE.advancedetail
  is '预案描述';
comment on column TPMS_TEMPLATE.exrange
  is '影响范围';
comment on column TPMS_TEMPLATE.createtime
  is '创建时间';
comment on column TPMS_TEMPLATE.createuser
  is '创建人';
comment on column TPMS_TEMPLATE.fieldid
  is '场地编号';
comment on column TPMS_TEMPLATE.configtype
  is '可配置设备项   1视频2信号3诱导4连续诱导5雾区6喊话7岗位   使用1,2,3代表可配置视频、信号、诱导';
alter table TPMS_TEMPLATE
  add constraint XPKTPMS_TEMPLATE primary key (TPLID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_UTC_PLAN
prompt ============================
prompt
create table TPMS_UTC_PLAN
(
  id           VARCHAR2(32) not null,
  utc_planno   VARCHAR2(16),
  utc_planname VARCHAR2(128),
  relateid     VARCHAR2(80)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_UTC_PLAN.id
  is 'ID';
comment on column TPMS_UTC_PLAN.utc_planno
  is '信号方案编号';
comment on column TPMS_UTC_PLAN.utc_planname
  is '信号方案名称';
comment on column TPMS_UTC_PLAN.relateid
  is '设备关联ID(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
alter table TPMS_UTC_PLAN
  add constraint XPKTPMS_UTC_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_VIDEO_PLAN
prompt ==============================
prompt
create table TPMS_VIDEO_PLAN
(
  id       VARCHAR2(32) not null,
  preset   VARCHAR2(16),
  relateid VARCHAR2(80)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_VIDEO_PLAN.id
  is 'ID';
comment on column TPMS_VIDEO_PLAN.preset
  is '预置位编号';
comment on column TPMS_VIDEO_PLAN.relateid
  is '设备关联ID(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
alter table TPMS_VIDEO_PLAN
  add constraint XPKTPMS_VIDEO_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_VMS_PLAN
prompt ============================
prompt
create table TPMS_VMS_PLAN
(
  id         VARCHAR2(32) not null,
  vmsplanid  VARCHAR2(32),
  relateid   VARCHAR2(80),
  elementids VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_VMS_PLAN.id
  is 'ID';
comment on column TPMS_VMS_PLAN.vmsplanid
  is '诱导发布计划编号';
comment on column TPMS_VMS_PLAN.relateid
  is '设备关联编号(select ''设备名称:''||t.devicename from tpms_relate_device t where t.id=?)';
comment on column TPMS_VMS_PLAN.elementids
  is '节目编号';
alter table TPMS_VMS_PLAN
  add constraint XPKTPMS_VMS_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TPMS_VMS_PLAN_BACKUP
prompt ===================================
prompt
create table TPMS_VMS_PLAN_BACKUP
(
  id         VARCHAR2(32) not null,
  vmsid      VARCHAR2(32),
  vmstype    VARCHAR2(16) not null,
  vmsplanid  VARCHAR2(32),
  createdate DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TPMS_VMS_PLAN_BACKUP.id
  is 'ID';
comment on column TPMS_VMS_PLAN_BACKUP.vmsid
  is '诱导设备id';
comment on column TPMS_VMS_PLAN_BACKUP.vmstype
  is '诱导屏类型';
comment on column TPMS_VMS_PLAN_BACKUP.vmsplanid
  is '诱导发布计划id';
comment on column TPMS_VMS_PLAN_BACKUP.createdate
  is '备份时间';
alter table TPMS_VMS_PLAN_BACKUP
  add constraint XPKTPMS_VMS_PLAN_BACKUP primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRAFFIC_EXPONENT
prompt ===============================
prompt
create table TRAFFIC_EXPONENT
(
  areaid   VARCHAR2(10) not null,
  exp      NUMBER(3,1),
  time     DATE,
  areaname NVARCHAR2(6)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table TRAFFIC_EXPONENT
  is '交通指数';
alter table TRAFFIC_EXPONENT
  add constraint AREAID primary key (AREAID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRAFFIC_INFO
prompt ===========================
prompt
create table TRAFFIC_INFO
(
  id               VARCHAR2(32) not null,
  code             VARCHAR2(20),
  name             NVARCHAR2(100),
  createid         VARCHAR2(20),
  createtime       DATE,
  updateid         VARCHAR2(20),
  updatetime       DATE,
  remark           NVARCHAR2(512),
  coordinates      VARCHAR2(1000),
  direction        VARCHAR2(12),
  dadept           VARCHAR2(16),
  zhongdept        VARCHAR2(16),
  auditor          VARCHAR2(20),
  audit_time       DATE,
  audit_suggestion NVARCHAR2(512),
  status           VARCHAR2(2),
  type             CHAR(2),
  dldm             VARCHAR2(50),
  startpoint       VARCHAR2(50),
  endpoint         VARCHAR2(50),
  lancount         INTEGER,
  length           INTEGER,
  lightflag        CHAR(1),
  pic1             VARCHAR2(200),
  pic2             VARCHAR2(200),
  gsgl             VARCHAR2(1000),
  servicelevel     CHAR(1),
  alleywaytype     CHAR(1),
  alleywaycode     VARCHAR2(20),
  alleywayto       NVARCHAR2(50),
  intollcount      INTEGER,
  outtollcount     INTEGER,
  etc              CHAR(1),
  delflag          VARCHAR2(1) default 0,
  managementdept   NVARCHAR2(50),
  pointcode        NVARCHAR2(16),
  indirection      VARCHAR2(2),
  outdirection     VARCHAR2(2),
  onstatus         CHAR(1),
  inlanecount      INTEGER,
  outlanecount     INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column TRAFFIC_INFO.id
  is '主键';
comment on column TRAFFIC_INFO.code
  is '隧道编号';
comment on column TRAFFIC_INFO.name
  is '隧道名称';
comment on column TRAFFIC_INFO.createid
  is '创建者';
comment on column TRAFFIC_INFO.createtime
  is '创建时间';
comment on column TRAFFIC_INFO.updateid
  is '更新者';
comment on column TRAFFIC_INFO.updatetime
  is '更新时间';
comment on column TRAFFIC_INFO.remark
  is '备注';
comment on column TRAFFIC_INFO.coordinates
  is '坐标值';
comment on column TRAFFIC_INFO.direction
  is '方向';
comment on column TRAFFIC_INFO.dadept
  is '所属大队';
comment on column TRAFFIC_INFO.zhongdept
  is '所属中队';
comment on column TRAFFIC_INFO.auditor
  is '审核人';
comment on column TRAFFIC_INFO.audit_time
  is '审核时间';
comment on column TRAFFIC_INFO.audit_suggestion
  is '审核意见';
comment on column TRAFFIC_INFO.status
  is '状态(3100,1正常2申请中9驳回)';
comment on column TRAFFIC_INFO.type
  is '交通基础信息类别';
comment on column TRAFFIC_INFO.dldm
  is '所属道路';
comment on column TRAFFIC_INFO.startpoint
  is '开始桩号';
comment on column TRAFFIC_INFO.endpoint
  is '结束桩号';
comment on column TRAFFIC_INFO.lancount
  is '车道数量';
comment on column TRAFFIC_INFO.length
  is '隧道长度(单位千米)';
comment on column TRAFFIC_INFO.lightflag
  is '照明设备(取值：0-有；1-无)';
comment on column TRAFFIC_INFO.pic1
  is '隧道照片1';
comment on column TRAFFIC_INFO.pic2
  is '隧道照片2';
comment on column TRAFFIC_INFO.gsgl
  is '连通的高速公路，道路基础信息表中的道路';
comment on column TRAFFIC_INFO.servicelevel
  is '服务区星级(取值：0-五星；1-四星；2-三星；3-无)';
comment on column TRAFFIC_INFO.alleywaytype
  is '出入口类别(取值：0-出口、1-入口)';
comment on column TRAFFIC_INFO.alleywaycode
  is '位置桩号';
comment on column TRAFFIC_INFO.alleywayto
  is '出入口通向地点';
comment on column TRAFFIC_INFO.intollcount
  is '进收费岛数量';
comment on column TRAFFIC_INFO.outtollcount
  is '出收费岛数量';
comment on column TRAFFIC_INFO.etc
  is 'ETC车道(取值：0-有；1-无)';
comment on column TRAFFIC_INFO.delflag
  is '删除标志位0代表未删除；1代表已删除';
comment on column TRAFFIC_INFO.managementdept
  is '所属管理单位';
comment on column TRAFFIC_INFO.inlanecount
  is '进口车道数';
comment on column TRAFFIC_INFO.outlanecount
  is '出口车道数';
alter table TRAFFIC_INFO
  add constraint PK_TRAFFIC_INFO_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table TRAFFIC_STATISTICS
prompt =================================
prompt
create table TRAFFIC_STATISTICS
(
  id           NVARCHAR2(32) not null,
  area_id      VARCHAR2(6) not null,
  averagespeed NUMBER(3,1),
  jamlength    NUMBER,
  computetime  DATE
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
comment on table TRAFFIC_STATISTICS
  is '交通平均速度和拥堵里程计算';
comment on column TRAFFIC_STATISTICS.area_id
  is '辖区编号';
comment on column TRAFFIC_STATISTICS.averagespeed
  is '平均速度';
comment on column TRAFFIC_STATISTICS.jamlength
  is '拥堵里程';
comment on column TRAFFIC_STATISTICS.computetime
  is '计算时间';
create index TRAFFICSTATISTICS_1 on TRAFFIC_STATISTICS (AREA_ID, COMPUTETIME)
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
alter table TRAFFIC_STATISTICS
  add constraint TRAFFICSTATISTICS primary key (ID)
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
prompt Creating table TRAFFIC_STATISTICS_ROAD
prompt ======================================
prompt
create table TRAFFIC_STATISTICS_ROAD
(
  area_id   VARCHAR2(12),
  link_id   VARCHAR2(12),
  area_name VARCHAR2(20),
  link_name VARCHAR2(200),
  sectionid VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table TRAFFIC_STATISTICS_ROAD_EM
prompt =========================================
prompt
create table TRAFFIC_STATISTICS_ROAD_EM
(
  area_id   VARCHAR2(12),
  link_id   VARCHAR2(12),
  area_name VARCHAR2(20),
  link_name VARCHAR2(200),
  sectionid VARCHAR2(12)
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
prompt Creating table TS_SPEED_HIERARCHY_DEVICE
prompt ========================================
prompt
create table TS_SPEED_HIERARCHY_DEVICE
(
  node_id   VARCHAR2(50) not null,
  device_id VARCHAR2(100) not null,
  length    NUMBER(8,2) not null,
  position  VARCHAR2(1),
  node_name NVARCHAR2(100),
  lon       NUMBER(10,6),
  lat       NUMBER(10,6)
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
comment on column TS_SPEED_HIERARCHY_DEVICE.node_id
  is '路段id';
comment on column TS_SPEED_HIERARCHY_DEVICE.device_id
  is '设备id';
comment on column TS_SPEED_HIERARCHY_DEVICE.length
  is '路段长度';
comment on column TS_SPEED_HIERARCHY_DEVICE.position
  is '0:开始，1:结束';
comment on column TS_SPEED_HIERARCHY_DEVICE.node_name
  is '路段名称';
comment on column TS_SPEED_HIERARCHY_DEVICE.lon
  is '经度';
comment on column TS_SPEED_HIERARCHY_DEVICE.lat
  is '纬度';

prompt
prompt Creating table T_TJSJTBPTGX_EVN_CJD
prompt ===================================
prompt
create table T_TJSJTBPTGX_EVN_CJD
(
  jjdbh                  VARCHAR2(24) not null,
  category               VARCHAR2(24),
  category2              VARCHAR2(24),
  create_date            VARCHAR2(20) not null,
  status                 NUMBER(5),
  evn_content            VARCHAR2(2000),
  xzqh                   VARCHAR2(6),
  cjdbh                  VARCHAR2(24) not null,
  org_code               VARCHAR2(12) not null,
  ghid                   VARCHAR2(20),
  op_name                VARCHAR2(60),
  sdate                  VARCHAR2(20),
  callid                 VARCHAR2(30),
  suggest                VARCHAR2(4000),
  police_org_code        VARCHAR2(12),
  police_id              VARCHAR2(200),
  police_name            VARCHAR2(40),
  police_org_code1       VARCHAR2(12),
  police_org_code2       VARCHAR2(12),
  police_org_code3       VARCHAR2(12),
  feedbk_bz              NUMBER(5),
  feedbk_limit           NUMBER(10),
  edate                  VARCHAR2(20),
  sdate_send             VARCHAR2(20),
  sdate_recv             VARCHAR2(20),
  upload_bz              NUMBER(5),
  update_date            VARCHAR2(20) not null,
  police_org_code_joint1 VARCHAR2(4000),
  police_org_code_joint2 VARCHAR2(4000),
  police_org_code_joint3 VARCHAR2(12),
  police_org_code_joint4 VARCHAR2(12),
  police_org_code_joint5 VARCHAR2(12),
  if_transfer            NUMBER(5),
  if_master              NUMBER(5),
  suggest1               VARCHAR2(4000),
  rflg                   VARCHAR2(52),
  if_listen_rec          NUMBER(5),
  if_login_org1          NUMBER(5),
  if_login_org2          NUMBER(5),
  if_feedbk_final        NUMBER(5),
  timeout_ltime          VARCHAR2(20),
  cjtbh                  VARCHAR2(4),
  cjtip                  VARCHAR2(23),
  cjdwlbdm               NUMBER(5),
  dhcjfs                 NUMBER(5),
  djjcjfs                NUMBER(5),
  wlcjfs                 NUMBER(5),
  dxxcjfs                NUMBER(5),
  police_org_code_name1  VARCHAR2(4000),
  status_td              VARCHAR2(5),
  return_option_memo     VARCHAR2(4000),
  return_option          VARCHAR2(200),
  gb_memo                VARCHAR2(4000),
  status_gb              NUMBER(5),
  jjdbh_rel              VARCHAR2(24),
  tel                    VARCHAR2(50),
  category3              VARCHAR2(24),
  category4              VARCHAR2(24),
  evn_addr               VARCHAR2(200),
  evn_type               VARCHAR2(50),
  pj_org_code            VARCHAR2(12),
  cjd_level              NUMBER(2),
  delete_flag            VARCHAR2(30),
  rksj_zyk               DATE
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
comment on column T_TJSJTBPTGX_EVN_CJD.jjdbh
  is '接警单代码';
comment on column T_TJSJTBPTGX_EVN_CJD.category
  is '报警类别  字典表DICT_CATEGORY';
comment on column T_TJSJTBPTGX_EVN_CJD.category2
  is '报警类型  字典表DICT_CATEGORY2';
comment on column T_TJSJTBPTGX_EVN_CJD.create_date
  is '入库时间';
comment on column T_TJSJTBPTGX_EVN_CJD.status
  is '警情状态  见字典表 CRM_CASE_STATUS';
comment on column T_TJSJTBPTGX_EVN_CJD.evn_content
  is '报警内容';
comment on column T_TJSJTBPTGX_EVN_CJD.xzqh
  is '行政区划';
comment on column T_TJSJTBPTGX_EVN_CJD.cjdbh
  is '处警单代码';
comment on column T_TJSJTBPTGX_EVN_CJD.org_code
  is '接警单位代码';
comment on column T_TJSJTBPTGX_EVN_CJD.ghid
  is '处警员工号';
comment on column T_TJSJTBPTGX_EVN_CJD.op_name
  is '处警员姓名';
comment on column T_TJSJTBPTGX_EVN_CJD.sdate
  is '处警时间';
comment on column T_TJSJTBPTGX_EVN_CJD.callid
  is '处警录音号';
comment on column T_TJSJTBPTGX_EVN_CJD.suggest
  is '处警意见';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code
  is '处警单所属单位';
comment on column T_TJSJTBPTGX_EVN_CJD.police_id
  is '出警员编号';
comment on column T_TJSJTBPTGX_EVN_CJD.police_name
  is '受警员姓名';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code1
  is '二级处警单位';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code2
  is '三级处警单位';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code3
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.feedbk_bz
  is '是否反馈  0-未反馈  1-反馈';
comment on column T_TJSJTBPTGX_EVN_CJD.feedbk_limit
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.edate
  is '处警结束时间';
comment on column T_TJSJTBPTGX_EVN_CJD.sdate_send
  is '派单到达时间';
comment on column T_TJSJTBPTGX_EVN_CJD.sdate_recv
  is '派单接收时间';
comment on column T_TJSJTBPTGX_EVN_CJD.upload_bz
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.update_date
  is '更新时间';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_joint1
  is '二级联动单位';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_joint2
  is '三级联动单位';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_joint3
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_joint4
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_joint5
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_transfer
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_master
  is '单位类别   0-处警,1-联动';
comment on column T_TJSJTBPTGX_EVN_CJD.suggest1
  is '处警措施';
comment on column T_TJSJTBPTGX_EVN_CJD.rflg
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_listen_rec
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_login_org1
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_login_org2
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.if_feedbk_final
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.timeout_ltime
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.cjtbh
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.cjtip
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.cjdwlbdm
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.dhcjfs
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.djjcjfs
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.wlcjfs
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.dxxcjfs
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.police_org_code_name1
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.status_td
  is '退单状态 1-二级退单待审核  2-二级退单驳回  3-三级退单待审核  4-三级退单驳回';
comment on column T_TJSJTBPTGX_EVN_CJD.return_option_memo
  is '退单情况';
comment on column T_TJSJTBPTGX_EVN_CJD.return_option
  is '退单理由';
comment on column T_TJSJTBPTGX_EVN_CJD.gb_memo
  is '重复警情归并情况';
comment on column T_TJSJTBPTGX_EVN_CJD.status_gb
  is '归并状态 1-三级申请归并待审核  2-三级申请归并未通过  3-二级申请归并待审核  4-二级申请归并未通过  5-二级申请归并通过';
comment on column T_TJSJTBPTGX_EVN_CJD.jjdbh_rel
  is '关联接警单号';
comment on column T_TJSJTBPTGX_EVN_CJD.tel
  is '报警电话';
comment on column T_TJSJTBPTGX_EVN_CJD.category3
  is '报警细类  字典表DICT_CATEGORY3';
comment on column T_TJSJTBPTGX_EVN_CJD.category4
  is '报警小类  字典表DICT_CATEGORY4';
comment on column T_TJSJTBPTGX_EVN_CJD.evn_addr
  is '事发地点';
comment on column T_TJSJTBPTGX_EVN_CJD.evn_type
  is '接警类型';
comment on column T_TJSJTBPTGX_EVN_CJD.pj_org_code
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.cjd_level
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_CJD.delete_flag
  is '主库删除标识';
alter table T_TJSJTBPTGX_EVN_CJD
  add constraint PRICJDBH primary key (CJDBH)
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
prompt Creating table T_TJSJTBPTGX_EVN_FKD
prompt ===================================
prompt
create table T_TJSJTBPTGX_EVN_FKD
(
  jjdbh                  VARCHAR2(24) not null,
  category               VARCHAR2(2),
  category2              VARCHAR2(8),
  create_date            VARCHAR2(20) not null,
  status                 NUMBER(5),
  evn_content            VARCHAR2(4000),
  xzqh                   VARCHAR2(6) not null,
  fkdbh                  VARCHAR2(20) not null,
  cjdbh                  VARCHAR2(20) not null,
  sdate                  VARCHAR2(20) not null,
  callid                 VARCHAR2(20),
  org_code_create        VARCHAR2(12),
  ghid                   VARCHAR2(20),
  op_name                VARCHAR2(40),
  org_code               VARCHAR2(12),
  police_name            VARCHAR2(50),
  category3              VARCHAR2(8),
  category4              VARCHAR2(8),
  evn_sdate              VARCHAR2(20),
  evn_edate              VARCHAR2(20),
  evn_level              NUMBER(5),
  evn_addr               VARCHAR2(200),
  police_date_go         VARCHAR2(20),
  police_date_reach      VARCHAR2(20),
  police_date_over       VARCHAR2(20),
  task_note              CLOB,
  result_code            NUMBER(5),
  result_note            VARCHAR2(4000),
  use_vehicles           NUMBER(5),
  use_persons            VARCHAR2(200),
  person_arrest          NUMBER(5),
  person_involve         VARCHAR2(200),
  person_saving          NUMBER(5),
  person_saving_memo     VARCHAR2(2000),
  person_escape          NUMBER(5),
  person_hurts           VARCHAR2(20),
  person_shurts          NUMBER(5),
  person_deaths          VARCHAR2(20),
  person_keeps           NUMBER(5),
  person_notfind         NUMBER(5),
  police_hurts           VARCHAR2(200),
  police_deaths          VARCHAR2(200),
  evn_loss               NUMBER(19,4),
  evn_loss_saving        NUMBER(19,4),
  is_solve               NUMBER(5),
  is_solve2              NUMBER(5),
  is_solve3              NUMBER(5),
  fire_level             NUMBER(5),
  fire_build_frame       NUMBER(5),
  fire_build_type        NUMBER(5),
  fire_reason            NUMBER(5),
  fire_accident_type     NUMBER(5),
  fire_object            NUMBER(5),
  fire_place             VARCHAR2(6),
  fire_date_putout       VARCHAR2(20),
  fire_date_leave        VARCHAR2(20),
  fire_scene_leader      VARCHAR2(100),
  fire_use_squirt        NUMBER(5),
  fire_is_imp_unit       NUMBER(5),
  fire_imp_unit_name     VARCHAR2(100),
  fire_area              VARCHAR2(100),
  e122_triffic_state     VARCHAR2(5),
  e122_triffic_reason    VARCHAR2(5),
  is_danger_vehicle      NUMBER(5),
  e122_road_type         VARCHAR2(5),
  e122_damage_motor      NUMBER(5),
  e122_damage_non_motor  NUMBER(5),
  crime_tool             VARCHAR2(800),
  upload_bz              NUMBER(5),
  update_date            VARCHAR2(20) not null,
  is_sw                  NUMBER(5),
  is_sj                  NUMBER(5),
  police_org_code        VARCHAR2(12),
  case_code              VARCHAR2(20),
  if_main_unit           NUMBER(5),
  escape_mode_memo       VARCHAR2(2000),
  if_person_casualty     NUMBER(5),
  commit_mode_memo       VARCHAR2(2000),
  commit_method_memo     VARCHAR2(100),
  person_abducted        VARCHAR2(200),
  crime_tool_memo        VARCHAR2(2000),
  loss_possessions_memo  VARCHAR2(2000),
  bank                   VARCHAR2(20),
  person_injured         VARCHAR2(200),
  drugs_involved         VARCHAR2(100),
  status_fk              NUMBER(5),
  commit_reason          NUMBER(5),
  commit_reason_memo     VARCHAR2(2000),
  lost_property          VARCHAR2(100),
  crime_tool_txt         VARCHAR2(200),
  steal_veh_brand        VARCHAR2(200),
  steal_veh_color        VARCHAR2(200),
  steal_veh_model        VARCHAR2(200),
  steal_veh_no           VARCHAR2(50),
  remiting_type_memo     VARCHAR2(2000),
  remiting_bank_memo     VARCHAR2(2000),
  remiting_platform_memo VARCHAR2(2000),
  acc_veh_cnt            VARCHAR2(50),
  acc_veh_type           VARCHAR2(50),
  acc_veh_hp             VARCHAR2(200),
  acc_veh_hp_no          VARCHAR2(50),
  acc_level              NUMBER(5),
  acc_deal_type          NUMBER(5),
  yd_level               NUMBER(5),
  yd_reason_type         NUMBER(5),
  deal_result_type       NUMBER(5),
  fire_object_matter     VARCHAR2(200),
  evn_reason             VARCHAR2(200),
  alarm_happen_date      VARCHAR2(50),
  category_alarm         VARCHAR2(2),
  category2_alarm        VARCHAR2(8),
  category3_alarm        VARCHAR2(8),
  category4_alarm        VARCHAR2(8),
  if_treat_cases         NUMBER(5),
  cases_situation        VARCHAR2(30),
  alarm_detailed_pos     VARCHAR2(200),
  end_feedback_reason    VARCHAR2(4000),
  edate_zj               VARCHAR2(20),
  police_org_code1       VARCHAR2(12),
  police_org_code2       VARCHAR2(12),
  police_id              VARCHAR2(200),
  police_org_code_joint1 CLOB,
  police_org_code_joint2 CLOB,
  police_org_code_name1  CLOB,
  pos_kind               VARCHAR2(10),
  pos_detailed_kind      VARCHAR2(10),
  community_name         VARCHAR2(100),
  newest_fkd             NUMBER(5),
  basic_parsonnel        NUMBER(5),
  status_jqfk            NUMBER(5),
  sdate_fk               VARCHAR2(25),
  status_fk_ex           NUMBER(5),
  unqualify_reson        VARCHAR2(4000),
  fkd_type               NUMBER(5),
  edate_fk               VARCHAR2(20),
  is_it_over             NUMBER(5),
  if_master              NUMBER(5),
  tel                    VARCHAR2(50),
  evn_type               VARCHAR2(50),
  pos_x_fk               VARCHAR2(20),
  pos_y_fk               VARCHAR2(20),
  if_anonymous           NUMBER(5),
  infring_object         NUMBER(5),
  evn_handle_type        NUMBER(5),
  currentghid            VARCHAR2(20),
  if_sw                  NUMBER(5),
  if_sq                  NUMBER(5),
  if_ma                  NUMBER(5),
  if_mzx                 NUMBER(5),
  if_md                  NUMBER(5),
  if_sj                  NUMBER(5),
  if_suspect             NUMBER(5),
  steal_veh_brand_tt     VARCHAR2(200),
  if_person_hurt         NUMBER(5),
  acc_deal_result        VARCHAR2(50),
  acc_car_info           VARCHAR2(50),
  if_sx                  NUMBER(5),
  related_per_infomation NUMBER(5),
  acc_reason             VARCHAR2(200),
  commit_mode            NUMBER(38),
  commit_method          VARCHAR2(1000),
  escape_mode            NUMBER(38),
  loss_possessions       NUMBER(38),
  evn_loss_type          NUMBER(38),
  remiting_type          NUMBER(38),
  remiting_bank          NUMBER(38),
  remiting_platform      NUMBER(38),
  casetype               NUMBER(5),
  bj_tel                 VARCHAR2(30),
  delete_flag            VARCHAR2(5),
  rksj_zyk               DATE,
  steal_veh_model_memo   VARCHAR2(1000),
  app_media              VARCHAR2(4000)
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
comment on column T_TJSJTBPTGX_EVN_FKD.jjdbh
  is '接警单编号';
comment on column T_TJSJTBPTGX_EVN_FKD.category
  is '警情类别';
comment on column T_TJSJTBPTGX_EVN_FKD.category2
  is '警情类型';
comment on column T_TJSJTBPTGX_EVN_FKD.create_date
  is '入库时间';
comment on column T_TJSJTBPTGX_EVN_FKD.status
  is '警情状态';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_content
  is '报警内容';
comment on column T_TJSJTBPTGX_EVN_FKD.xzqh
  is '行政区划';
comment on column T_TJSJTBPTGX_EVN_FKD.fkdbh
  is '反馈单编号';
comment on column T_TJSJTBPTGX_EVN_FKD.cjdbh
  is '处警单编号';
comment on column T_TJSJTBPTGX_EVN_FKD.sdate
  is '反馈时间';
comment on column T_TJSJTBPTGX_EVN_FKD.callid
  is '反馈录音号';
comment on column T_TJSJTBPTGX_EVN_FKD.org_code_create
  is '填写反馈单位代码';
comment on column T_TJSJTBPTGX_EVN_FKD.ghid
  is '反馈人编号';
comment on column T_TJSJTBPTGX_EVN_FKD.op_name
  is '反馈人姓名';
comment on column T_TJSJTBPTGX_EVN_FKD.org_code
  is '反馈单位代码';
comment on column T_TJSJTBPTGX_EVN_FKD.police_name
  is '出警人姓名';
comment on column T_TJSJTBPTGX_EVN_FKD.category3
  is '警情细类';
comment on column T_TJSJTBPTGX_EVN_FKD.category4
  is '警情小类';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_sdate
  is '警情发生时间';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_edate
  is '警情结束时间';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_level
  is '警情级别    字典表JQDJDMB';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_addr
  is '警情详细地点';
comment on column T_TJSJTBPTGX_EVN_FKD.police_date_go
  is '实际出警时间';
comment on column T_TJSJTBPTGX_EVN_FKD.police_date_reach
  is '到达现场时间';
comment on column T_TJSJTBPTGX_EVN_FKD.police_date_over
  is '处理完毕时间';
comment on column T_TJSJTBPTGX_EVN_FKD.task_note
  is '出警情况';
comment on column T_TJSJTBPTGX_EVN_FKD.result_code
  is '处理结果代码,字典表';
comment on column T_TJSJTBPTGX_EVN_FKD.result_note
  is '处理结果';
comment on column T_TJSJTBPTGX_EVN_FKD.use_vehicles
  is '出动车辆';
comment on column T_TJSJTBPTGX_EVN_FKD.use_persons
  is '出动人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_arrest
  is '抓获人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_involve
  is '作案人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_saving
  is '救助人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_saving_memo
  is '救助人数说明';
comment on column T_TJSJTBPTGX_EVN_FKD.person_escape
  is '逃跑人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_hurts
  is '轻伤人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_shurts
  is '重伤人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_deaths
  is '死亡人数';
comment on column T_TJSJTBPTGX_EVN_FKD.person_keeps
  is '留置审查人员';
comment on column T_TJSJTBPTGX_EVN_FKD.person_notfind
  is '下落不明人员';
comment on column T_TJSJTBPTGX_EVN_FKD.police_hurts
  is '出警人员受伤人数';
comment on column T_TJSJTBPTGX_EVN_FKD.police_deaths
  is '出警察人员死亡人数';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_loss
  is '经济损失';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_loss_saving
  is '挽回经济损失';
comment on column T_TJSJTBPTGX_EVN_FKD.is_solve
  is '是否破获刑事案件';
comment on column T_TJSJTBPTGX_EVN_FKD.is_solve2
  is '是否查处治安事件';
comment on column T_TJSJTBPTGX_EVN_FKD.is_solve3
  is '是否解决纠纷';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_level
  is '火灾等级';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_build_frame
  is '燃烧建筑结构代码';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_build_type
  is '建筑类别代码';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_reason
  is '火灾原因';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_accident_type
  is '火灾事故类型';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_object
  is '起火物';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_place
  is '火灾场所';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_date_putout
  is '预留字段-火场扑灭时间';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_date_leave
  is '预留字段-撤离时间';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_scene_leader
  is '预留字段-现场总指挥';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_use_squirt
  is '预留字段-出动水枪数';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_is_imp_unit
  is '预留字段-是否重点单位';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_imp_unit_name
  is '预留字段-重点单位名称';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_area
  is '过火面积';
comment on column T_TJSJTBPTGX_EVN_FKD.e122_triffic_state
  is '交通事故形态代码';
comment on column T_TJSJTBPTGX_EVN_FKD.e122_triffic_reason
  is '交通事故原因代码';
comment on column T_TJSJTBPTGX_EVN_FKD.is_danger_vehicle
  is '是否是危化车辆';
comment on column T_TJSJTBPTGX_EVN_FKD.e122_road_type
  is '道路类型代码';
comment on column T_TJSJTBPTGX_EVN_FKD.e122_damage_motor
  is '损坏机动车数';
comment on column T_TJSJTBPTGX_EVN_FKD.e122_damage_non_motor
  is '损坏非机动车数';
comment on column T_TJSJTBPTGX_EVN_FKD.crime_tool
  is '涉案(损失)物品';
comment on column T_TJSJTBPTGX_EVN_FKD.upload_bz
  is '预留字段-上传游标';
comment on column T_TJSJTBPTGX_EVN_FKD.update_date
  is '数据更新时间';
comment on column T_TJSJTBPTGX_EVN_FKD.is_sw
  is '预留字段-是否涉外';
comment on column T_TJSJTBPTGX_EVN_FKD.is_sj
  is '预留字段-是否涉警';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code
  is '责任单位';
comment on column T_TJSJTBPTGX_EVN_FKD.case_code
  is '案件编号字段';
comment on column T_TJSJTBPTGX_EVN_FKD.if_main_unit
  is '是否主责单位';
comment on column T_TJSJTBPTGX_EVN_FKD.escape_mode_memo
  is '逃跑方式备注';
comment on column T_TJSJTBPTGX_EVN_FKD.if_person_casualty
  is '人员伤亡';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_mode_memo
  is '作案方式备注';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_method_memo
  is '作案手段备注';
comment on column T_TJSJTBPTGX_EVN_FKD.person_abducted
  is '被劫持人员数量';
comment on column T_TJSJTBPTGX_EVN_FKD.crime_tool_memo
  is '作案工具';
comment on column T_TJSJTBPTGX_EVN_FKD.loss_possessions_memo
  is '损失财物(文本+勾选)';
comment on column T_TJSJTBPTGX_EVN_FKD.bank
  is '所属银行   ';
comment on column T_TJSJTBPTGX_EVN_FKD.person_injured
  is '受害人数(文本+勾选)';
comment on column T_TJSJTBPTGX_EVN_FKD.drugs_involved
  is '涉案毒品(文本框)';
comment on column T_TJSJTBPTGX_EVN_FKD.status_fk
  is '反馈状态  0-未反馈,1-三级反馈待审核,2-三级反馈被驳回,3-三级反馈通过,4-二级反馈待审核,5-二级反馈被驳回,6-市局审核反馈通过,7-三级解锁申请,8-三级解锁未反馈,9-三级解锁反馈待审核,10-三级解锁反馈被驳回,11-三级解锁反馈通过,12-三级解锁反馈市局待审核,13-三级解锁反馈市局驳回,14-市局审核解锁反馈通过,';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_reason
  is '作案原因-单选';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_reason_memo
  is '作案原因-文本';
comment on column T_TJSJTBPTGX_EVN_FKD.lost_property
  is '"损失财务(文本+勾选)"';
comment on column T_TJSJTBPTGX_EVN_FKD.crime_tool_txt
  is '作案工具 --文本';
comment on column T_TJSJTBPTGX_EVN_FKD.steal_veh_brand
  is '车辆品牌';
comment on column T_TJSJTBPTGX_EVN_FKD.steal_veh_color
  is '车辆颜色';
comment on column T_TJSJTBPTGX_EVN_FKD.steal_veh_model
  is '车辆车型';
comment on column T_TJSJTBPTGX_EVN_FKD.steal_veh_no
  is '车辆牌照';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_type_memo
  is '汇款方式备注';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_bank_memo
  is '汇款银行备注';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_platform_memo
  is '汇款平台备注';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_veh_cnt
  is '事故车辆数量 ';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_veh_type
  is '事故车辆类别';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_veh_hp
  is '事故号牌种类';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_veh_hp_no
  is '事故号牌号码';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_level
  is '事故级别';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_deal_type
  is '事故处置方式';
comment on column T_TJSJTBPTGX_EVN_FKD.yd_level
  is '拥堵程度';
comment on column T_TJSJTBPTGX_EVN_FKD.yd_reason_type
  is '拥堵原因分类';
comment on column T_TJSJTBPTGX_EVN_FKD.deal_result_type
  is '处置结果';
comment on column T_TJSJTBPTGX_EVN_FKD.fire_object_matter
  is '起火物';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_reason
  is '事件原因';
comment on column T_TJSJTBPTGX_EVN_FKD.alarm_happen_date
  is '警情发生时间';
comment on column T_TJSJTBPTGX_EVN_FKD.category_alarm
  is '警情类别';
comment on column T_TJSJTBPTGX_EVN_FKD.category2_alarm
  is '警情类型';
comment on column T_TJSJTBPTGX_EVN_FKD.category3_alarm
  is '警情细类';
comment on column T_TJSJTBPTGX_EVN_FKD.category4_alarm
  is '警情小类';
comment on column T_TJSJTBPTGX_EVN_FKD.if_treat_cases
  is '是否出警处置';
comment on column T_TJSJTBPTGX_EVN_FKD.cases_situation
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.alarm_detailed_pos
  is '警情详细地点';
comment on column T_TJSJTBPTGX_EVN_FKD.end_feedback_reason
  is '警情反馈终结解锁原因';
comment on column T_TJSJTBPTGX_EVN_FKD.edate_zj
  is '反馈终结时间';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code1
  is '出警单位所属分局代码';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code2
  is '出警单位所属派出所代码';
comment on column T_TJSJTBPTGX_EVN_FKD.police_id
  is '出警员编号';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code_joint1
  is '二级联动单位';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code_joint2
  is '三级联动单位';
comment on column T_TJSJTBPTGX_EVN_FKD.police_org_code_name1
  is '四级联动单位(警员)';
comment on column T_TJSJTBPTGX_EVN_FKD.pos_kind
  is '警情部位分类';
comment on column T_TJSJTBPTGX_EVN_FKD.pos_detailed_kind
  is '警情部位细类';
comment on column T_TJSJTBPTGX_EVN_FKD.community_name
  is '社区（警务区）名称';
comment on column T_TJSJTBPTGX_EVN_FKD.newest_fkd
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.basic_parsonnel
  is '人员基本信息  -表T_TJSJTBPTGX_BHXQ_EVN_FKD_ATTCH_INFO中查';
comment on column T_TJSJTBPTGX_EVN_FKD.status_jqfk
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.sdate_fk
  is '反馈结束时间';
comment on column T_TJSJTBPTGX_EVN_FKD.status_fk_ex
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.unqualify_reson
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.fkd_type
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.edate_fk
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.is_it_over
  is '是否警情反馈终结';
comment on column T_TJSJTBPTGX_EVN_FKD.if_master
  is '是否主单';
comment on column T_TJSJTBPTGX_EVN_FKD.tel
  is '报警电话';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_type
  is '接警类型';
comment on column T_TJSJTBPTGX_EVN_FKD.pos_x_fk
  is '反馈打点X坐标';
comment on column T_TJSJTBPTGX_EVN_FKD.pos_y_fk
  is '反馈打点Y坐标';
comment on column T_TJSJTBPTGX_EVN_FKD.if_anonymous
  is '处警员是否查看报警人信息   0-否  1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.infring_object
  is '侵害对象';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_handle_type
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.currentghid
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.if_sw
  is '是否涉外   0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_sq
  is '是否涉枪    0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_ma
  is '是否命案   0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_mzx
  is '是否民转刑   0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_md
  is '是否矛盾纠纷引发  0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_sj
  is '是否涉警 0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.if_suspect
  is '是否现场抓获犯罪嫌疑人 0-否 1-是';
comment on column T_TJSJTBPTGX_EVN_FKD.steal_veh_brand_tt
  is '摩托车、电动车、自行车车辆品牌  -表T_TJSJTBPTGX_BHXQ_EVN_FKD_ATTCH_INFO中查';
comment on column T_TJSJTBPTGX_EVN_FKD.if_person_hurt
  is '人员受伤';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_deal_result
  is '事故处置结果';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_car_info
  is '事故车辆信息';
comment on column T_TJSJTBPTGX_EVN_FKD.if_sx
  is '是否涉学';
comment on column T_TJSJTBPTGX_EVN_FKD.related_per_infomation
  is '相关人员信息';
comment on column T_TJSJTBPTGX_EVN_FKD.acc_reason
  is '事故原因';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_mode
  is '作案方式';
comment on column T_TJSJTBPTGX_EVN_FKD.commit_method
  is '作案手段';
comment on column T_TJSJTBPTGX_EVN_FKD.escape_mode
  is '逃跑方式';
comment on column T_TJSJTBPTGX_EVN_FKD.loss_possessions
  is '损失财物(多选)';
comment on column T_TJSJTBPTGX_EVN_FKD.evn_loss_type
  is '涉案价值';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_type
  is '汇款方式';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_bank
  is '汇款银行';
comment on column T_TJSJTBPTGX_EVN_FKD.remiting_platform
  is '汇款平台';
comment on column T_TJSJTBPTGX_EVN_FKD.casetype
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_FKD.delete_flag
  is '主库删除标识';
comment on column T_TJSJTBPTGX_EVN_FKD.app_media
  is '敬请综合反馈-多媒体';
alter table T_TJSJTBPTGX_EVN_FKD
  add constraint PRIFKDBH primary key (FKDBH)
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
prompt Creating table T_TJSJTBPTGX_EVN_JJD
prompt ===================================
prompt
create table T_TJSJTBPTGX_EVN_JJD
(
  jjdbh                  VARCHAR2(24) not null,
  category               VARCHAR2(2),
  category2              VARCHAR2(8),
  create_date            VARCHAR2(20) not null,
  status                 NUMBER(10),
  evn_from_info          VARCHAR2(20),
  evn_content            VARCHAR2(4000),
  pos_x_sec              VARCHAR2(20),
  pos_y_sec              VARCHAR2(20),
  sdate                  VARCHAR2(20) not null,
  tel                    VARCHAR2(50),
  bj_name                VARCHAR2(100),
  evn_addr               VARCHAR2(500),
  update_date            VARCHAR2(20) not null,
  xzqh                   VARCHAR2(6) not null,
  jjdbh_rel              VARCHAR2(24),
  jtype                  NUMBER(5) not null,
  org_code               VARCHAR2(12),
  ghid                   VARCHAR2(20),
  op_name                VARCHAR2(80),
  sdate_callin           VARCHAR2(20) not null,
  edate                  VARCHAR2(20),
  uname                  VARCHAR2(350),
  address                VARCHAR2(500),
  callid                 VARCHAR2(21),
  bj_sex                 NUMBER(5),
  bj_tel                 VARCHAR2(30),
  bj_addr                VARCHAR2(100),
  bj_id_card             VARCHAR2(20),
  evn_info               VARCHAR2(200),
  evn_level              NUMBER(5),
  evn_org_code           VARCHAR2(12),
  category3              VARCHAR2(8),
  category4              VARCHAR2(8),
  has_danger_goods       NUMBER(5),
  has_leak               NUMBER(5),
  is_sw                  NUMBER(5),
  vehicle_type           NUMBER(5),
  vehicle_no             VARCHAR2(50),
  is_escape              NUMBER(5),
  is_danger_vehicle      NUMBER(5),
  in_dangers             NUMBER(5),
  hurts                  NUMBER(5),
  deaths                 NUMBER(5),
  fire_level             NUMBER(5),
  fire_build_frame       NUMBER(5),
  fire_build_type        NUMBER(5),
  fire_reason            NUMBER(5),
  fire_object            NUMBER(5),
  fire_place             NUMBER(5),
  fire_area              VARCHAR2(10),
  fire_water_info        VARCHAR2(200),
  pos_x                  VARCHAR2(20),
  pos_y                  VARCHAR2(20),
  evn_content_ex         VARCHAR2(2000),
  upload_bz              NUMBER(5),
  rflg_ssyj              VARCHAR2(20),
  rflg_zj                VARCHAR2(20),
  rflag                  VARCHAR2(20),
  police_id              VARCHAR2(200),
  police_org_code1       VARCHAR2(50),
  police_org_code2       VARCHAR2(12),
  police_org_code_joint1 VARCHAR2(4000),
  police_org_code_joint2 VARCHAR2(4000),
  police_org_code_joint3 VARCHAR2(12),
  police_org_code_joint4 VARCHAR2(12),
  police_org_code_joint5 VARCHAR2(12),
  police_org_code_name1  VARCHAR2(4000),
  police_org_code_name2  VARCHAR2(4000),
  police_org_code_name3  VARCHAR2(40),
  police_org_code_name4  VARCHAR2(40),
  police_org_code_name5  VARCHAR2(40),
  if_anonymous           NUMBER(5),
  analy_result           VARCHAR2(100),
  is_top                 NUMBER(5),
  memo                   VARCHAR2(300),
  jjd_rel_type           NUMBER(5),
  pos_x_cj               VARCHAR2(20),
  pos_y_cj               VARCHAR2(20),
  pos_x_fk               VARCHAR2(20),
  pos_y_fk               VARCHAR2(20),
  caseid                 VARCHAR2(20),
  userid                 VARCHAR2(20),
  evn_type               VARCHAR2(40) not null,
  evn_handle_type        VARCHAR2(5),
  callid_all             VARCHAR2(50),
  evn_tag                VARCHAR2(20),
  sdate_submit           VARCHAR2(20),
  jjd_real_status        VARCHAR2(5),
  jjd_real_reason        VARCHAR2(500),
  evn_level_reason       VARCHAR2(200),
  jjd_real_sub           VARCHAR2(200),
  police_org_code        VARCHAR2(50),
  evn_from               VARCHAR2(10),
  currentghid            VARCHAR2(10),
  len_ring               NUMBER(5),
  len_talk               NUMBER(5),
  fd_len                 NUMBER(5),
  wrong_reason           VARCHAR2(100),
  wrong_timeout_len      VARCHAR2(10),
  casetype               NUMBER(5),
  casename               VARCHAR2(100),
  rksj_zyk               DATE
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
comment on column T_TJSJTBPTGX_EVN_JJD.jjdbh
  is '接警单编号--主键--组成方式:天津市号（3）+区号（3）+年月日（8）+hsm(6)+随机号（4）';
comment on column T_TJSJTBPTGX_EVN_JJD.category
  is '报警类别  DICT_CATEGORY 字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.category2
  is '报警类型  DICT_CATEGORY2 字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.create_date
  is '入库时间';
comment on column T_TJSJTBPTGX_EVN_JJD.status
  is '警情状态';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_from_info
  is '警情来源  DICT_CALL_FROM_INFO';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_content
  is '报警内容';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_x_sec
  is '事发地点X坐标';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_y_sec
  is '事发地点Y坐标';
comment on column T_TJSJTBPTGX_EVN_JJD.sdate
  is '报警时间';
comment on column T_TJSJTBPTGX_EVN_JJD.tel
  is '报警电话--三字段信息';
comment on column T_TJSJTBPTGX_EVN_JJD.bj_name
  is '报警人姓名';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_addr
  is '案发地点-PGIS';
comment on column T_TJSJTBPTGX_EVN_JJD.update_date
  is '更新时间';
comment on column T_TJSJTBPTGX_EVN_JJD.xzqh
  is '行政区划--代码见DICT_POLICE_ORG字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.jjdbh_rel
  is '接警单编号--10处旧编号';
comment on column T_TJSJTBPTGX_EVN_JJD.jtype
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.org_code
  is '接警单位代码--代码见DICT_POLICE_ORG字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.ghid
  is '接警员ID,同接警员工号';
comment on column T_TJSJTBPTGX_EVN_JJD.op_name
  is '接警员姓名';
comment on column T_TJSJTBPTGX_EVN_JJD.sdate_callin
  is '电话呼入时间';
comment on column T_TJSJTBPTGX_EVN_JJD.edate
  is '话终时间';
comment on column T_TJSJTBPTGX_EVN_JJD.uname
  is '用户名称--三字段信息';
comment on column T_TJSJTBPTGX_EVN_JJD.address
  is '用户地址--三字段信息';
comment on column T_TJSJTBPTGX_EVN_JJD.callid
  is '接警录音号';
comment on column T_TJSJTBPTGX_EVN_JJD.bj_sex
  is '报警人性别   1-男  2-女   3-未知 ';
comment on column T_TJSJTBPTGX_EVN_JJD.bj_tel
  is '处警联系电话';
comment on column T_TJSJTBPTGX_EVN_JJD.bj_addr
  is '报警人地点 -报警人来电最近的基站地址';
comment on column T_TJSJTBPTGX_EVN_JJD.bj_id_card
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_info
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_level
  is '警情级别 DICT_EVENT_LEVEL字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_org_code
  is '管辖单位代码';
comment on column T_TJSJTBPTGX_EVN_JJD.category3
  is '报警细类  DICT_CATEGOR3 字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.category4
  is '报警小类  DICT_CATEGORY4 字典表';
comment on column T_TJSJTBPTGX_EVN_JJD.has_danger_goods
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.has_leak
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.is_sw
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.vehicle_type
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.vehicle_no
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.is_escape
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.is_danger_vehicle
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.in_dangers
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.hurts
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.deaths
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_level
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_build_frame
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_build_type
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_reason
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_object
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_place
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_area
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fire_water_info
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_x
  is '报警人地点X坐标';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_y
  is '报警人地点Y坐标';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_content_ex
  is '遗留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.upload_bz
  is '遗留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.rflg_ssyj
  is '遗留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.rflg_zj
  is '遗留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.rflag
  is '遗留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_id
  is '处警员编号';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code1
  is '二级处警单位';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code2
  is '三级处警单位';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_joint1
  is '二级联动单位';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_joint2
  is '三级联动单位';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_joint3
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_joint4
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_joint5
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_name1
  is '四级联动单位';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_name2
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_name3
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_name4
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code_name5
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.if_anonymous
  is '处警员是否查看报警人信息   否 0    是 1 ';
comment on column T_TJSJTBPTGX_EVN_JJD.analy_result
  is 'APP分析结果';
comment on column T_TJSJTBPTGX_EVN_JJD.is_top
  is '预留字段-是否置顶';
comment on column T_TJSJTBPTGX_EVN_JJD.memo
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.jjd_rel_type
  is '重复报警类型';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_x_cj
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_y_cj
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_x_fk
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.pos_y_fk
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.caseid
  is '接警录音号';
comment on column T_TJSJTBPTGX_EVN_JJD.userid
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_type
  is '接警类型';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_handle_type
  is '处理类型  DICT_HANDLE_TYPE';
comment on column T_TJSJTBPTGX_EVN_JJD.callid_all
  is '接警回拨录音号';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_tag
  is '警情标示';
comment on column T_TJSJTBPTGX_EVN_JJD.sdate_submit
  is '接警单派发时间';
comment on column T_TJSJTBPTGX_EVN_JJD.jjd_real_status
  is '重复报警状态  0-非重复报警   1-标记为复打警情   2-撤销复打警情';
comment on column T_TJSJTBPTGX_EVN_JJD.jjd_real_reason
  is '复打警情撤销原因';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_level_reason
  is '调整警情级别原因';
comment on column T_TJSJTBPTGX_EVN_JJD.jjd_real_sub
  is '关联接警单号';
comment on column T_TJSJTBPTGX_EVN_JJD.police_org_code
  is '处警单位（接警单派二级单位时，为二级单位代码；派三级单位时，为三级单位代码）';
comment on column T_TJSJTBPTGX_EVN_JJD.evn_from
  is '报警方式  FLD_TYPE与警情来源字典表中的FLD_ID关联   DICT_CALL_FROM';
comment on column T_TJSJTBPTGX_EVN_JJD.currentghid
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.len_ring
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.len_talk
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.fd_len
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.wrong_reason
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.wrong_timeout_len
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.casetype
  is '预留字段';
comment on column T_TJSJTBPTGX_EVN_JJD.casename
  is '预留字段';
alter table T_TJSJTBPTGX_EVN_JJD
  add constraint PRIJJDBHEVNNEW primary key (JJDBH)
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
prompt Creating table T_USER_LOGIN_HISTORY
prompt ===================================
prompt
create table T_USER_LOGIN_HISTORY
(
  cusername   NVARCHAR2(20) not null,
  cuserpwd    VARCHAR2(32),
  checkip     NVARCHAR2(16),
  login_day   VARCHAR2(10),
  last_update DATE,
  create_time DATE,
  login_count NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table T_USER_LOGIN_HISTORY
  is '用户登录历史表';
comment on column T_USER_LOGIN_HISTORY.checkip
  is 'ip';

prompt
prompt Creating table USER_DOWNLOAD_VIDEO_PATH
prompt =======================================
prompt
create table USER_DOWNLOAD_VIDEO_PATH
(
  id            CHAR(32) not null,
  userid        CHAR(6) not null,
  realvideopath NVARCHAR2(1000),
  hisvideopath  NVARCHAR2(1000)
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
comment on column USER_DOWNLOAD_VIDEO_PATH.id
  is 'uuid';
comment on column USER_DOWNLOAD_VIDEO_PATH.realvideopath
  is '实时视频存放路径';
comment on column USER_DOWNLOAD_VIDEO_PATH.hisvideopath
  is '历史视频存放路径';
alter table USER_DOWNLOAD_VIDEO_PATH
  add constraint PRIMARY_USER_DOWNLOAD_VIDEO primary key (ID)
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
prompt Creating table USER_FAVOR_LAYER
prompt ===============================
prompt
create table USER_FAVOR_LAYER
(
  userid    NVARCHAR2(40) not null,
  layerid   INTEGER not null,
  showorder INTEGER default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table USER_FAVOR_LAYER
  is '用户优选图层表';
comment on column USER_FAVOR_LAYER.userid
  is '用户编号';
comment on column USER_FAVOR_LAYER.layerid
  is '图层编号';
comment on column USER_FAVOR_LAYER.showorder
  is '显示次序';
alter table USER_FAVOR_LAYER
  add primary key (USERID, LAYERID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table USER_HOTKEY
prompt ==========================
prompt
create table USER_HOTKEY
(
  nid         VARCHAR2(32) not null,
  userid      CHAR(6),
  pagename    VARCHAR2(20),
  pageelement VARCHAR2(30),
  hotkey      VARCHAR2(100)
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
comment on table USER_HOTKEY
  is '用户快捷键信息表';
comment on column USER_HOTKEY.nid
  is 'nid';
comment on column USER_HOTKEY.userid
  is '用户id';
comment on column USER_HOTKEY.pagename
  is '所属页面';
comment on column USER_HOTKEY.pageelement
  is '页面元素';
comment on column USER_HOTKEY.hotkey
  is '快捷键（A开头表示ALT键,数字代码键位ascii值）';

prompt
prompt Creating table USER_LOGINFAIL_HISTORY
prompt =====================================
prompt
create table USER_LOGINFAIL_HISTORY
(
  nuserid     NVARCHAR2(20) not null,
  dateflag    VARCHAR2(10) not null,
  last_update DATE,
  create_time DATE,
  fail_count  NUMBER
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
comment on table USER_LOGINFAIL_HISTORY
  is '用户登录密码输错次数统计';
comment on column USER_LOGINFAIL_HISTORY.nuserid
  is '账号ID';
comment on column USER_LOGINFAIL_HISTORY.dateflag
  is '日期标志';
comment on column USER_LOGINFAIL_HISTORY.last_update
  is '最后更新时间';
comment on column USER_LOGINFAIL_HISTORY.create_time
  is '创建时间';
comment on column USER_LOGINFAIL_HISTORY.fail_count
  is '密码输错次数';
alter table USER_LOGINFAIL_HISTORY
  add constraint SYS_SUER_LOGINFAIL_HISTORY_1 primary key (NUSERID, DATEFLAG)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table USER_ROLE_RELATION
prompt =================================
prompt
create table USER_ROLE_RELATION
(
  nuserid      CHAR(6) not null,
  roleid       VARCHAR2(32) not null,
  authorizable CHAR(1) default '0'
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table USER_ROLE_RELATION
  is '用户角色权限关联表';
comment on column USER_ROLE_RELATION.nuserid
  is '用户ID';
comment on column USER_ROLE_RELATION.roleid
  is '角色ID';
comment on column USER_ROLE_RELATION.authorizable
  is '0：不可授权，1：可授权';
create index INDEXNUSERID on USER_ROLE_RELATION (NUSERID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table USER_ROLE_RELATION
  add constraint OPERATOR_ROLE_ID primary key (NUSERID, ROLEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table UTC_CONTROL_RECORD
prompt =================================
prompt
create table UTC_CONTROL_RECORD
(
  id                VARCHAR2(32) not null,
  utc_id            NVARCHAR2(6) not null,
  utc_name          NVARCHAR2(100),
  who_control       VARCHAR2(15),
  request_time      VARCHAR2(50),
  control_type      VARCHAR2(1),
  duaration_seconds VARCHAR2(10),
  lane_direction    VARCHAR2(10),
  times             VARCHAR2(10),
  if_controlling    VARCHAR2(1) default '1',
  device_id         VARCHAR2(18),
  times_requested   VARCHAR2(10) default '0',
  times_succeed     VARCHAR2(10) default '0',
  result_desc       VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table UTC_CONTROL_RECORD
  is '信号机控制记录';
comment on column UTC_CONTROL_RECORD.id
  is '主键';
comment on column UTC_CONTROL_RECORD.utc_id
  is '信号机/路口编号';
comment on column UTC_CONTROL_RECORD.utc_name
  is '信号机/路口名称';
comment on column UTC_CONTROL_RECORD.who_control
  is '控制者（通常是请求端的IP）';
comment on column UTC_CONTROL_RECORD.request_time
  is '请求控制时间';
comment on column UTC_CONTROL_RECORD.control_type
  is '控制方式
0-全红控制
1-加放控制
';
comment on column UTC_CONTROL_RECORD.duaration_seconds
  is '控制时长
全红控制-控制时长
加放控制-每周期控制时长
';
comment on column UTC_CONTROL_RECORD.lane_direction
  is '控制方向，加放控制用到';
comment on column UTC_CONTROL_RECORD.times
  is '控制次数，加放控制用到';
comment on column UTC_CONTROL_RECORD.if_controlling
  is '是否正在被控制：0-否，1-是';
comment on column UTC_CONTROL_RECORD.device_id
  is '信号机在管控平台的设备编号';
comment on column UTC_CONTROL_RECORD.times_requested
  is '已请求控制次数';
comment on column UTC_CONTROL_RECORD.times_succeed
  is '已请求控制次数中成功次数';
comment on column UTC_CONTROL_RECORD.result_desc
  is '执行结果描述（如第一次加放失败，原因信号凭条3秒内无响应）';
alter table UTC_CONTROL_RECORD
  add constraint UTC_CONTROL_RECORD_PK_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VEHICAL_RUN_ROUTE
prompt ================================
prompt
create table VEHICAL_RUN_ROUTE
(
  ccarnumber       VARCHAR2(16),
  clicensetype     VARCHAR2(2),
  startaddresscode VARCHAR2(12),
  endaddresscode   VARCHAR2(12),
  starttime        VARCHAR2(5),
  endtime          VARCHAR2(5),
  route            VARCHAR2(1000),
  routetime        VARCHAR2(500),
  regular          VARCHAR2(20),
  computertime     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VEHICAL_RUN_ROUTE
  is '车辆行驶轨迹分析数据';
comment on column VEHICAL_RUN_ROUTE.ccarnumber
  is '号牌号码';
comment on column VEHICAL_RUN_ROUTE.clicensetype
  is '号牌种类';
comment on column VEHICAL_RUN_ROUTE.startaddresscode
  is '起始点编号';
comment on column VEHICAL_RUN_ROUTE.endaddresscode
  is '终止点编号';
comment on column VEHICAL_RUN_ROUTE.starttime
  is '出发时刻';
comment on column VEHICAL_RUN_ROUTE.endtime
  is '到达时刻';
comment on column VEHICAL_RUN_ROUTE.route
  is '规律路径（不包含起始点）';
comment on column VEHICAL_RUN_ROUTE.routetime
  is '规律时刻（不包含起始点时刻）';
comment on column VEHICAL_RUN_ROUTE.regular
  is '规律';
comment on column VEHICAL_RUN_ROUTE.computertime
  is '计算时间';
create index IDX_ROUTE on VEHICAL_RUN_ROUTE (CCARNUMBER, CLICENSETYPE)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VEHICLE
prompt ======================
prompt
create table VEHICLE
(
  xh         CHAR(14) not null,
  hpzl       CHAR(2) not null,
  hphm       VARCHAR2(15) not null,
  clpp1      VARCHAR2(32) not null,
  clxh       VARCHAR2(32) not null,
  clpp2      VARCHAR2(32),
  gcjk       CHAR(1) not null,
  zzg        CHAR(3) not null,
  zzcmc      VARCHAR2(64),
  clsbdh     VARCHAR2(25) not null,
  fdjh       VARCHAR2(30) not null,
  cllx       CHAR(3) not null,
  csys       VARCHAR2(5) not null,
  syxz       CHAR(1) not null,
  sfzmhm     VARCHAR2(18),
  sfzmmc     CHAR(1),
  syr        VARCHAR2(128) not null,
  syq        CHAR(1) not null,
  ccdjrq     DATE not null,
  djrq       DATE,
  yxqz       DATE,
  qzbfqz     DATE,
  fzjg       VARCHAR2(10) not null,
  glbm       VARCHAR2(12) not null,
  fprq       DATE,
  fzrq       DATE,
  fdjrq      DATE,
  fhgzrq     DATE,
  bxzzrq     DATE,
  bpcs       NUMBER(2),
  bzcs       NUMBER(2),
  bdjcs      NUMBER(2),
  djzsbh     VARCHAR2(15),
  zdjzshs    NUMBER(2),
  dabh       VARCHAR2(12),
  xzqh       VARCHAR2(10),
  zt         VARCHAR2(6) not null,
  dybj       CHAR(1),
  jbr        VARCHAR2(30),
  clly       CHAR(1),
  lsh        VARCHAR2(13),
  fdjxh      VARCHAR2(64),
  rlzl       VARCHAR2(3),
  pl         NUMBER(6),
  gl         NUMBER(5,1),
  zxxs       CHAR(1),
  cwkc       NUMBER(5),
  cwkk       NUMBER(4),
  cwkg       NUMBER(4),
  hxnbcd     NUMBER(5),
  hxnbkd     NUMBER(4),
  hxnbgd     NUMBER(4),
  gbthps     NUMBER(3),
  zs         NUMBER(1) not null,
  zj         NUMBER(5) not null,
  qlj        NUMBER(4),
  hlj        NUMBER(4),
  ltgg       VARCHAR2(64),
  lts        NUMBER(2),
  zzl        NUMBER(8),
  zbzl       NUMBER(8),
  hdzzl      NUMBER(8),
  hdzk       NUMBER(3),
  zqyzl      NUMBER(8),
  qpzk       NUMBER(1),
  hpzk       NUMBER(2),
  hbdbqk     VARCHAR2(128),
  ccrq       DATE,
  hdfs       CHAR(1),
  llpz1      CHAR(1),
  pzbh1      VARCHAR2(20),
  llpz2      CHAR(1),
  pzbh2      VARCHAR2(20),
  xsdw       VARCHAR2(64),
  xsjg       NUMBER(8),
  xsrq       DATE,
  jkpz       CHAR(1),
  jkpzhm     VARCHAR2(20),
  hgzbh      VARCHAR2(20),
  nszm       CHAR(1),
  nszmbh     VARCHAR2(40),
  gxrq       DATE,
  xgzl       VARCHAR2(256),
  qmbh       VARCHAR2(15),
  hmbh       VARCHAR2(15),
  bz         VARCHAR2(128),
  jyw        VARCHAR2(256),
  zsxzqh     VARCHAR2(10),
  zsxxdz     VARCHAR2(128),
  yzbm1      VARCHAR2(6),
  lxdh       VARCHAR2(20),
  zzz        VARCHAR2(18),
  zzxzqh     VARCHAR2(10),
  zzxxdz     VARCHAR2(128),
  yzbm2      VARCHAR2(6),
  zdyzt      VARCHAR2(10),
  yxh        VARCHAR2(14),
  cyry       VARCHAR2(30),
  dphgzbh    VARCHAR2(20),
  sqdm       CHAR(12),
  clyt       CHAR(2),
  ytsx       CHAR(1),
  dzyx       VARCHAR2(32),
  xszbh      VARCHAR2(20),
  sjhm       VARCHAR2(20),
  jyhgbzbh   VARCHAR2(20),
  dwbh       VARCHAR2(14),
  syqsrq     DATE,
  yqjyqzbfqz DATE,
  yqjyqz2    DATE,
  fdjgs      NUMBER(2),
  sfyzhgn    CHAR(1),
  zzjglx     VARCHAR2(2),
  wxmbc      CHAR(1),
  ncdqsy     CHAR(1),
  hpqysj     DATE,
  dzbsxlh    VARCHAR2(20),
  sfxny      CHAR(1),
  xnyzl      CHAR(1),
  qddjxh     VARCHAR2(128),
  qddjh      VARCHAR2(128),
  qddjgl     NUMBER(6,2),
  cnzzzl     VARCHAR2(32),
  cnzzxs     NUMBER(3),
  cnzzzdl    NUMBER(10,2),
  cnzzzdy    NUMBER(10,2),
  cnzzdtdy   NUMBER(10,2),
  hdwjcd     CHAR(1),
  cdqdxslcgk NUMBER(10,2),
  cdqdxslcds NUMBER(10,2),
  ywjyw      VARCHAR2(1024)
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
comment on table VEHICLE
  is '机动车基本信息';
comment on column VEHICLE.xh
  is '机动车序号';
comment on column VEHICLE.hpzl
  is '号牌种类';
comment on column VEHICLE.hphm
  is '号牌号码';
comment on column VEHICLE.clpp1
  is '中文品牌';
comment on column VEHICLE.clxh
  is '车辆型号';
comment on column VEHICLE.clpp2
  is '英文品牌';
comment on column VEHICLE.gcjk
  is '国产/进口';
comment on column VEHICLE.zzg
  is '制造国';
comment on column VEHICLE.zzcmc
  is '制造厂名称';
comment on column VEHICLE.clsbdh
  is '车辆识别代号';
comment on column VEHICLE.fdjh
  is '发动机号';
comment on column VEHICLE.cllx
  is '车辆类型';
comment on column VEHICLE.csys
  is '车身颜色';
comment on column VEHICLE.syxz
  is '使用性质';
comment on column VEHICLE.sfzmhm
  is '身份证明号码';
comment on column VEHICLE.sfzmmc
  is '身份证明名称';
comment on column VEHICLE.syr
  is '机动车所有人';
comment on column VEHICLE.syq
  is '所有权';
comment on column VEHICLE.ccdjrq
  is '初次登记日期';
comment on column VEHICLE.djrq
  is '最近定检日期';
comment on column VEHICLE.yxqz
  is '检验有效期止';
comment on column VEHICLE.qzbfqz
  is '强制报废期止';
comment on column VEHICLE.fzjg
  is '发证机关';
comment on column VEHICLE.glbm
  is '管理部门';
comment on column VEHICLE.fprq
  is '发牌日期';
comment on column VEHICLE.fzrq
  is '发行驶证日期';
comment on column VEHICLE.fdjrq
  is '发登记证书日期';
comment on column VEHICLE.fhgzrq
  is '发合格证日期';
comment on column VEHICLE.bxzzrq
  is '保险终止日期';
comment on column VEHICLE.bpcs
  is '补领号牌次数';
comment on column VEHICLE.bzcs
  is '补领行驶证次数';
comment on column VEHICLE.bdjcs
  is '补/换领证书次数';
comment on column VEHICLE.djzsbh
  is '登记证书编号';
comment on column VEHICLE.zdjzshs
  is '制登记证书行数';
comment on column VEHICLE.dabh
  is '档案编号';
comment on column VEHICLE.xzqh
  is '管理辖区';
comment on column VEHICLE.zt
  is '机动车状态';
comment on column VEHICLE.dybj
  is '0-未抵押，1-已抵押';
comment on column VEHICLE.jbr
  is '经办人';
comment on column VEHICLE.clly
  is '1注册2转入3过户';
comment on column VEHICLE.lsh
  is '注册流水号';
comment on column VEHICLE.fdjxh
  is '发动机型号';
comment on column VEHICLE.rlzl
  is '燃料种类';
comment on column VEHICLE.pl
  is '排量';
comment on column VEHICLE.gl
  is '功率';
comment on column VEHICLE.zxxs
  is '转向形式';
comment on column VEHICLE.cwkc
  is '车外廓长';
comment on column VEHICLE.cwkk
  is '车外廓宽';
comment on column VEHICLE.cwkg
  is '车外廓高';
comment on column VEHICLE.hxnbcd
  is '货箱内部长度';
comment on column VEHICLE.hxnbkd
  is '货箱内部宽度';
comment on column VEHICLE.hxnbgd
  is '货箱内部高度';
comment on column VEHICLE.gbthps
  is '钢板弹簧片数';
comment on column VEHICLE.zs
  is '轴数';
comment on column VEHICLE.zj
  is '轴距';
comment on column VEHICLE.qlj
  is '前轮距';
comment on column VEHICLE.hlj
  is '后轮距';
comment on column VEHICLE.ltgg
  is '轮胎规格';
comment on column VEHICLE.lts
  is '轮胎数';
comment on column VEHICLE.zzl
  is '总质量';
comment on column VEHICLE.zbzl
  is '整备质量';
comment on column VEHICLE.hdzzl
  is '核定载质量';
comment on column VEHICLE.hdzk
  is '核定载客';
comment on column VEHICLE.zqyzl
  is '准牵引总质量';
comment on column VEHICLE.qpzk
  is '驾驶室前排载客人数';
comment on column VEHICLE.hpzk
  is '驾驶室后排载客人数';
comment on column VEHICLE.hbdbqk
  is '环保达标情况';
comment on column VEHICLE.ccrq
  is '出厂日期';
comment on column VEHICLE.hdfs
  is '获得方式';
comment on column VEHICLE.llpz1
  is '来历凭证1';
comment on column VEHICLE.pzbh1
  is '凭证编号1';
comment on column VEHICLE.llpz2
  is '来历凭证2';
comment on column VEHICLE.pzbh2
  is '凭证编号2';
comment on column VEHICLE.xsdw
  is '销售单位';
comment on column VEHICLE.xsjg
  is '销售价格';
comment on column VEHICLE.xsrq
  is '销售日期';
comment on column VEHICLE.jkpz
  is '进口凭证';
comment on column VEHICLE.jkpzhm
  is '进口凭证编号';
comment on column VEHICLE.hgzbh
  is '合格证编号';
comment on column VEHICLE.nszm
  is '纳税证明';
comment on column VEHICLE.nszmbh
  is '纳税证明编号';
comment on column VEHICLE.gxrq
  is '更新日期';
comment on column VEHICLE.xgzl
  is '相关资料';
comment on column VEHICLE.qmbh
  is '前膜编号';
comment on column VEHICLE.hmbh
  is '后膜编号';
comment on column VEHICLE.bz
  is '备注';
comment on column VEHICLE.jyw
  is '校验位';
comment on column VEHICLE.zsxzqh
  is '住所行政区划';
comment on column VEHICLE.zsxxdz
  is '住所详细地址';
comment on column VEHICLE.yzbm1
  is '住所邮政编码';
comment on column VEHICLE.lxdh
  is '联系电话';
comment on column VEHICLE.zzz
  is '暂住居住证明';
comment on column VEHICLE.zzxzqh
  is '暂住行政区划';
comment on column VEHICLE.zzxxdz
  is '暂住详细地址';
comment on column VEHICLE.yzbm2
  is '暂住邮政编码';
comment on column VEHICLE.zdyzt
  is '自定义状态';
comment on column VEHICLE.yxh
  is '原机动车序号';
comment on column VEHICLE.cyry
  is '查验人员';
comment on column VEHICLE.dphgzbh
  is '底盘合格证编号';
comment on column VEHICLE.sqdm
  is '社区代码';
comment on column VEHICLE.clyt
  is '车辆用途';
comment on column VEHICLE.ytsx
  is '用途属性';
comment on column VEHICLE.dzyx
  is '电子邮箱';
comment on column VEHICLE.xszbh
  is '行驶证证芯编号';
comment on column VEHICLE.sjhm
  is '手机号码';
comment on column VEHICLE.jyhgbzbh
  is '检验合格标志';
comment on column VEHICLE.dwbh
  is '单位编号';
comment on column VEHICLE.syqsrq
  is '使用起始日期';
comment on column VEHICLE.yqjyqzbfqz
  is '逾期检验强制报废期止';
comment on column VEHICLE.yqjyqz2
  is '逾期2个检验周期期止';
comment on column VEHICLE.fdjgs
  is '发动机缸数';
comment on column VEHICLE.sfyzhgn
  is '专项作业车是否有载货功能 1-是；2-否';
comment on column VEHICLE.zzjglx
  is '组织机构类型  code=0021';
comment on column VEHICLE.wxmbc
  is '是否为微型面包车 1-是；2-否';
comment on column VEHICLE.ncdqsy
  is '是否为农村地区使用 1-是；2-否';
comment on column VEHICLE.hpqysj
  is '违法业务处理号牌启用时间';
comment on column VEHICLE.dzbsxlh
  is '电子标识序列号';
comment on column VEHICLE.sfxny
  is '是否新能源汽车 1-是；2-否';
comment on column VEHICLE.xnyzl
  is '新能源汽车种类 xtlb=01 dmlb=0022';
comment on column VEHICLE.qddjxh
  is '驱动电机型号';
comment on column VEHICLE.qddjh
  is '驱动电机号';
comment on column VEHICLE.qddjgl
  is '驱动电机峰值功率';
comment on column VEHICLE.cnzzzl
  is '电动汽车储能装置种类';
comment on column VEHICLE.cnzzxs
  is '储能装置箱数';
comment on column VEHICLE.cnzzzdl
  is '储能装置总储电量';
comment on column VEHICLE.cnzzzdy
  is '储能装置总电压';
comment on column VEHICLE.cnzzdtdy
  is '储能装置单体电压';
comment on column VEHICLE.hdwjcd
  is '混合动力是否允许外接充电 1-是；2-否';
comment on column VEHICLE.cdqdxslcgk
  is '纯电驱动续驶里程（工况法）';
comment on column VEHICLE.cdqdxslcds
  is '纯电驱动续驶里程（等速法）';
comment on column VEHICLE.ywjyw
  is '业务校验位';
create index IDX_VEHICLE_GXRQ on VEHICLE (GXRQ)
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
prompt Creating table VEHICLE_BRAND
prompt ============================
prompt
create table VEHICLE_BRAND
(
  mainbrand     VARCHAR2(3) not null,
  subbrand      VARCHAR2(3) not null,
  yearmodel     VARCHAR2(2) not null,
  mainbranddesc VARCHAR2(100),
  subbranddesc  VARCHAR2(100),
  yearmodeldesc VARCHAR2(100),
  remark        NVARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VEHICLE_BRAND.yearmodel
  is '年款';
comment on column VEHICLE_BRAND.yearmodeldesc
  is '年款说明';
alter table VEHICLE_BRAND
  add constraint PK_BRAND_ID primary key (MAINBRAND, SUBBRAND, YEARMODEL)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VEHICLE_TYPE
prompt ===========================
prompt
create table VEHICLE_TYPE
(
  id        NUMBER not null,
  type_code VARCHAR2(5),
  type_name VARCHAR2(50),
  reamrk    VARCHAR2(50)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VEHICLE_TYPE
  is '车辆类型';
comment on column VEHICLE_TYPE.id
  is '主键';
comment on column VEHICLE_TYPE.type_code
  is '类型代码';
comment on column VEHICLE_TYPE.type_name
  is '类型名称';
comment on column VEHICLE_TYPE.reamrk
  is '备注';
alter table VEHICLE_TYPE
  add constraint VEHICLE_TYPE_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VEH_CODE
prompt =======================
prompt
create table VEH_CODE
(
  dmlb  NUMBER(3) not null,
  dmz   VARCHAR2(30) not null,
  dmsm1 VARCHAR2(200),
  dmsm2 VARCHAR2(200),
  dmsm3 VARCHAR2(200),
  dmsm4 VARCHAR2(200)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VEH_CODE
  is '代码信息表';
comment on column VEH_CODE.dmlb
  is '代码类别';
comment on column VEH_CODE.dmz
  is '代码值';
comment on column VEH_CODE.dmsm1
  is '代码说明1';
comment on column VEH_CODE.dmsm2
  is '代码说明2';
comment on column VEH_CODE.dmsm3
  is '代码说明3';
comment on column VEH_CODE.dmsm4
  is '代码说明4';
alter table VEH_CODE
  add constraint PRIMARYKEY_1 primary key (DMLB, DMZ)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VEH_INFO
prompt =======================
prompt
create table VEH_INFO
(
  xh         CHAR(14) not null,
  hpzl       CHAR(2) not null,
  hphm       VARCHAR2(15) not null,
  clpp1      VARCHAR2(32) not null,
  clxh       VARCHAR2(32) not null,
  clpp2      VARCHAR2(32),
  gcjk       CHAR(1) not null,
  zzg        CHAR(3) not null,
  zzcmc      VARCHAR2(64),
  clsbdh     VARCHAR2(25) not null,
  fdjh       VARCHAR2(30) not null,
  cllx       CHAR(3) not null,
  csys       VARCHAR2(5) not null,
  syxz       CHAR(1) not null,
  sfzmhm     VARCHAR2(18),
  sfzmmc     CHAR(1),
  syr        VARCHAR2(128) not null,
  syq        CHAR(1) not null,
  ccdjrq     DATE not null,
  djrq       DATE,
  yxqz       DATE,
  qzbfqz     DATE,
  fzjg       VARCHAR2(10) not null,
  glbm       VARCHAR2(12) not null,
  fprq       DATE,
  fzrq       DATE,
  fdjrq      DATE,
  fhgzrq     DATE,
  bxzzrq     DATE,
  bpcs       NUMBER(2),
  bzcs       NUMBER(2),
  bdjcs      NUMBER(2),
  djzsbh     VARCHAR2(15),
  zdjzshs    NUMBER(2),
  dabh       VARCHAR2(12),
  xzqh       VARCHAR2(10),
  zt         VARCHAR2(6) not null,
  dybj       CHAR(1),
  jbr        VARCHAR2(30),
  clly       CHAR(1),
  lsh        VARCHAR2(13),
  fdjxh      VARCHAR2(64),
  rlzl       VARCHAR2(3),
  pl         NUMBER(6),
  gl         NUMBER(5,1),
  zxxs       CHAR(1),
  cwkc       NUMBER(5),
  cwkk       NUMBER(4),
  cwkg       NUMBER(4),
  hxnbcd     NUMBER(5),
  hxnbkd     NUMBER(4),
  hxnbgd     NUMBER(4),
  gbthps     NUMBER(3),
  zs         NUMBER(1) not null,
  zj         NUMBER(5) not null,
  qlj        NUMBER(4),
  hlj        NUMBER(4),
  ltgg       VARCHAR2(64),
  lts        NUMBER(2),
  zzl        NUMBER(8),
  zbzl       NUMBER(8),
  hdzzl      NUMBER(8),
  hdzk       NUMBER(3),
  zqyzl      NUMBER(8),
  qpzk       NUMBER(1),
  hpzk       NUMBER(2),
  hbdbqk     VARCHAR2(128),
  ccrq       DATE,
  hdfs       CHAR(1),
  llpz1      CHAR(1),
  pzbh1      VARCHAR2(20),
  llpz2      CHAR(1),
  pzbh2      VARCHAR2(20),
  xsdw       VARCHAR2(64),
  xsjg       NUMBER(8),
  xsrq       DATE,
  jkpz       CHAR(1),
  jkpzhm     VARCHAR2(20),
  hgzbh      VARCHAR2(20),
  nszm       CHAR(1),
  nszmbh     VARCHAR2(20),
  gxrq       DATE,
  xgzl       VARCHAR2(256),
  qmbh       VARCHAR2(15),
  hmbh       VARCHAR2(15),
  bz         VARCHAR2(128),
  jyw        VARCHAR2(256),
  zsxzqh     VARCHAR2(10),
  zsxxdz     VARCHAR2(128),
  yzbm1      VARCHAR2(6),
  lxdh       VARCHAR2(20),
  zzz        VARCHAR2(18),
  zzxzqh     VARCHAR2(10),
  zzxxdz     VARCHAR2(128),
  yzbm2      VARCHAR2(6),
  zdyzt      VARCHAR2(10),
  yxh        VARCHAR2(14),
  cyry       VARCHAR2(30),
  dphgzbh    VARCHAR2(20),
  sqdm       CHAR(12),
  clyt       CHAR(2),
  ytsx       CHAR(1),
  dzyx       VARCHAR2(32),
  xszbh      VARCHAR2(20),
  sjhm       VARCHAR2(20),
  jyhgbzbh   VARCHAR2(20),
  dwbh       VARCHAR2(14),
  syqsrq     DATE,
  yqjyqzbfqz DATE,
  yqjyqz2    DATE,
  fdjgs      NUMBER(2),
  sfyzhgn    CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
nologging;

prompt
prompt Creating table VIDEOLINE
prompt ========================
prompt
create table VIDEOLINE
(
  nid                      NVARCHAR2(32) not null,
  userid                   NVARCHAR2(10),
  lineid                   NUMBER,
  linename                 NVARCHAR2(20),
  video_line_assortment_id VARCHAR2(32),
  createtime               DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIDEOLINE
  is '视频线路表';
alter table VIDEOLINE
  add constraint PK_LINE_ID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEOORDER
prompt =========================
prompt
create table VIDEOORDER
(
  nid        NVARCHAR2(32) not null,
  lineid     NUMBER,
  deviceid   NVARCHAR2(18),
  videoorder NUMBER,
  pointid    NVARCHAR2(16)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIDEOORDER
  is '视频线路顺序';
create index INDEX_LINEID on VIDEOORDER (LINEID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
create index INDEX_LINEID_ORDER on VIDEOORDER (LINEID, VIDEOORDER)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VIDEOORDER
  add constraint PK_ORDER_NID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_LINE_ASSORTMENT
prompt ====================================
prompt
create table VIDEO_LINE_ASSORTMENT
(
  nid             VARCHAR2(32) not null,
  assortment_name VARCHAR2(255),
  areaid          VARCHAR2(6),
  createrid       CHAR(6),
  updaterid       CHAR(6),
  remark          NVARCHAR2(255),
  createtime      DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIDEO_LINE_ASSORTMENT
  is '巡检线路分类表';
comment on column VIDEO_LINE_ASSORTMENT.nid
  is '主键';
comment on column VIDEO_LINE_ASSORTMENT.assortment_name
  is '分类名称';
comment on column VIDEO_LINE_ASSORTMENT.areaid
  is '所属辖区';
comment on column VIDEO_LINE_ASSORTMENT.createrid
  is '创建人id';
comment on column VIDEO_LINE_ASSORTMENT.updaterid
  is '修改人id';
comment on column VIDEO_LINE_ASSORTMENT.remark
  is '备注信息';
alter table VIDEO_LINE_ASSORTMENT
  add constraint PK_VIDEO_LINE_ASSORTMENT primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_PATROL_DETAIL
prompt ==================================
prompt
create table VIDEO_PATROL_DETAIL
(
  nid          NVARCHAR2(32) not null,
  deviceid     NVARCHAR2(18),
  btime        DATE,
  etime        DATE,
  picture      NVARCHAR2(100),
  isreport     NUMBER,
  userid       NVARCHAR2(10),
  is_recommend VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIDEO_PATROL_DETAIL
  is '视频巡检详情';
comment on column VIDEO_PATROL_DETAIL.nid
  is 'uuid记录操作的元信息';
comment on column VIDEO_PATROL_DETAIL.deviceid
  is '视频设备id';
comment on column VIDEO_PATROL_DETAIL.btime
  is '起始时间';
comment on column VIDEO_PATROL_DETAIL.etime
  is '结束时间';
comment on column VIDEO_PATROL_DETAIL.picture
  is '截图路径';
comment on column VIDEO_PATROL_DETAIL.isreport
  is '是否上报警情';
comment on column VIDEO_PATROL_DETAIL.userid
  is '用户ID';
comment on column VIDEO_PATROL_DETAIL.is_recommend
  is '是否为推荐视频（1-是 0-否）';
create index INDEX_BTIME on VIDEO_PATROL_DETAIL (BTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VIDEO_PATROL_DETAIL
  add constraint PK_DETAIL_PK primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_PATROL_DUTY
prompt ================================
prompt
create table VIDEO_PATROL_DUTY
(
  nid    NVARCHAR2(32) not null,
  userid NVARCHAR2(10),
  btime  DATE,
  etime  DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIDEO_PATROL_DUTY
  is '视频巡检勤务（上岗下岗）';
comment on column VIDEO_PATROL_DUTY.nid
  is '主键';
comment on column VIDEO_PATROL_DUTY.userid
  is '用户id';
comment on column VIDEO_PATROL_DUTY.btime
  is '上岗时间';
comment on column VIDEO_PATROL_DUTY.etime
  is '下岗时间';
alter table VIDEO_PATROL_DUTY
  add constraint PK_PATROL_DUTY_NID primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_RECOMMEND
prompt ==============================
prompt
create table VIDEO_RECOMMEND
(
  id                VARCHAR2(32) not null,
  video_device_id   VARCHAR2(32),
  video_device_name NVARCHAR2(1000),
  section_id        VARCHAR2(32),
  section_name      NVARCHAR2(1000),
  update_time       DATE,
  jam_time          NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIDEO_RECOMMEND.id
  is 'UUID';
comment on column VIDEO_RECOMMEND.video_device_id
  is '设备id';
comment on column VIDEO_RECOMMEND.video_device_name
  is '设备名称';
comment on column VIDEO_RECOMMEND.section_id
  is '关联路段id';
comment on column VIDEO_RECOMMEND.section_name
  is '关联路段名称';
comment on column VIDEO_RECOMMEND.update_time
  is '更新时间';
comment on column VIDEO_RECOMMEND.jam_time
  is '拥堵时长（分钟）';
alter table VIDEO_RECOMMEND
  add constraint VIDEO_RECOMMEND_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_RECOMMEND_STATISTICS
prompt =========================================
prompt
create table VIDEO_RECOMMEND_STATISTICS
(
  id              VARCHAR2(32) not null,
  recommend_times NUMBER,
  open_times      NUMBER,
  report_times    NUMBER,
  stay_time       NUMBER,
  update_time     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIDEO_RECOMMEND_STATISTICS.id
  is 'uuid';
comment on column VIDEO_RECOMMEND_STATISTICS.recommend_times
  is '推荐次数';
comment on column VIDEO_RECOMMEND_STATISTICS.open_times
  is '打开次数';
comment on column VIDEO_RECOMMEND_STATISTICS.report_times
  is '上报次数';
comment on column VIDEO_RECOMMEND_STATISTICS.stay_time
  is '停留时间(秒)';
comment on column VIDEO_RECOMMEND_STATISTICS.update_time
  is '更新时间';
alter table VIDEO_RECOMMEND_STATISTICS
  add constraint VIDEO_RECOMMEND_STATISTICS_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIDEO_RECOMMEND_TIMES
prompt ====================================
prompt
create table VIDEO_RECOMMEND_TIMES
(
  id              VARCHAR2(32) not null,
  userid          VARCHAR2(32),
  recommend_times NUMBER,
  update_time     DATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIDEO_RECOMMEND_TIMES.id
  is 'uuid';
comment on column VIDEO_RECOMMEND_TIMES.userid
  is '用户id';
comment on column VIDEO_RECOMMEND_TIMES.recommend_times
  is '推荐次数';
comment on column VIDEO_RECOMMEND_TIMES.update_time
  is '更新时间';
alter table VIDEO_RECOMMEND_TIMES
  add constraint VIDEO_RECOMMEND_TIMES_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIO_CODEROAD
prompt ===========================
prompt
create table VIO_CODEROAD
(
  dldm        VARCHAR2(5) not null,
  dlmc        NVARCHAR2(60) not null,
  lkh         VARCHAR2(4),
  bmdm        VARCHAR2(12) not null,
  nid         VARCHAR2(32) not null,
  xzqh        NVARCHAR2(200),
  dllx        NVARCHAR2(10),
  glxzdj      NVARCHAR2(10),
  dx          NVARCHAR2(10),
  dlxx        NVARCHAR2(10),
  lkldlx      NVARCHAR2(10),
  dlwlgl      NVARCHAR2(10),
  lmjg        NVARCHAR2(10),
  fhsslx      NVARCHAR2(10),
  bzdlqslc    NUMBER,
  bzdljslc    NUMBER,
  qs          NUMBER,
  js          NUMBER,
  xqlc        NUMBER,
  cjr         NVARCHAR2(10),
  cjsj        DATE,
  gxsj        DATE,
  jlzt        NVARCHAR2(10),
  qsmc        NVARCHAR2(30),
  jsmc        NVARCHAR2(30),
  xzqhxxlc    NVARCHAR2(2000),
  zyglss      NVARCHAR2(10),
  ssglbm      NVARCHAR2(20),
  bzdllx      NVARCHAR2(10),
  startpoint  VARCHAR2(50),
  endpoint    VARCHAR2(50),
  firstpinyin VARCHAR2(100),
  dlmp_image  VARCHAR2(1000),
  jtbz_image  VARCHAR2(1000),
  yxq         VARCHAR2(50),
  jtbz        VARCHAR2(50)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIO_CODEROAD
  is '道路表';
comment on column VIO_CODEROAD.dldm
  is '道路代码';
comment on column VIO_CODEROAD.dlmc
  is '道路名称';
comment on column VIO_CODEROAD.lkh
  is '路口号';
comment on column VIO_CODEROAD.bmdm
  is '部门代码';
comment on column VIO_CODEROAD.nid
  is '数据主键，在表中唯一即可';
comment on column VIO_CODEROAD.xzqh
  is '行政区划';
comment on column VIO_CODEROAD.dllx
  is '道路类型(3124)';
comment on column VIO_CODEROAD.glxzdj
  is '公路行政等级(3116)';
comment on column VIO_CODEROAD.dx
  is '道路地形(3110)';
comment on column VIO_CODEROAD.dlxx
  is '道路线型(3123)';
comment on column VIO_CODEROAD.lkldlx
  is '路口路段类型(3120)';
comment on column VIO_CODEROAD.dlwlgl
  is '道路物理隔离(3121)';
comment on column VIO_CODEROAD.lmjg
  is '路面结构(3119)';
comment on column VIO_CODEROAD.fhsslx
  is '防护设施类型(3127)';
comment on column VIO_CODEROAD.bzdlqslc
  is '标准道路起始里程';
comment on column VIO_CODEROAD.bzdljslc
  is '标准道路结束里程';
comment on column VIO_CODEROAD.qs
  is '里程起始';
comment on column VIO_CODEROAD.js
  is '里程结束';
comment on column VIO_CODEROAD.xqlc
  is '辖区里程';
comment on column VIO_CODEROAD.cjr
  is '创建人';
comment on column VIO_CODEROAD.cjsj
  is '创建时间';
comment on column VIO_CODEROAD.gxsj
  is '更新时间';
comment on column VIO_CODEROAD.jlzt
  is '记录状态 (3100)';
comment on column VIO_CODEROAD.qsmc
  is '起始名称';
comment on column VIO_CODEROAD.jsmc
  is '结束名称';
comment on column VIO_CODEROAD.xzqhxxlc
  is '行政区划详细里程';
comment on column VIO_CODEROAD.zyglss
  is '中央隔离设施(3134)';
comment on column VIO_CODEROAD.ssglbm
  is '所属管理部门';
comment on column VIO_CODEROAD.bzdllx
  is '标准道路类型 (3115)';
comment on column VIO_CODEROAD.startpoint
  is '开始桩号';
comment on column VIO_CODEROAD.endpoint
  is '结束桩号';
comment on column VIO_CODEROAD.firstpinyin
  is '拼音首字母缩写查询';
comment on column VIO_CODEROAD.dlmp_image
  is '道路名牌图片';
comment on column VIO_CODEROAD.jtbz_image
  is '禁停标志图片，单向一张图片，双向两张图片';
comment on column VIO_CODEROAD.yxq
  is '有效期止';
comment on column VIO_CODEROAD.jtbz
  is '禁停标志，1：单向；2：双向。';
alter table VIO_CODEROAD
  add constraint NID_COREROAD primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VIO_CODEROAD
  add constraint DLDM_COREROAD unique (DLDM)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIO_CODEROAD_GEOMETRY
prompt ====================================
prompt
create table VIO_CODEROAD_GEOMETRY
(
  dldm     VARCHAR2(5),
  geometry MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIO_CODEROAD_GEOMETRY
  is '道路地理信息表';

prompt
prompt Creating table VIO_ROADCROSS
prompt ============================
prompt
create table VIO_ROADCROSS
(
  nid                  VARCHAR2(32) not null,
  dldm                 VARCHAR2(5),
  lkdm                 VARCHAR2(4),
  lkmc                 VARCHAR2(90),
  bmdm                 VARCHAR2(12),
  longitudeandlatitude VARCHAR2(64),
  jcdl                 VARCHAR2(64)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VIO_ROADCROSS
  is '路口表';
comment on column VIO_ROADCROSS.nid
  is '主键id';
comment on column VIO_ROADCROSS.dldm
  is '道路代码';
comment on column VIO_ROADCROSS.lkdm
  is '路口代码';
comment on column VIO_ROADCROSS.lkmc
  is '路口名称';
comment on column VIO_ROADCROSS.bmdm
  is '部门代码';
comment on column VIO_ROADCROSS.longitudeandlatitude
  is '经纬度，通常通过平台地图选取来设置，如 120.37395,36.08159';
comment on column VIO_ROADCROSS.jcdl
  is '交叉道路，对应道路表所属道路道路代码，最多6个，多个道路之间用英文逗号(“,”)分隔';
alter table VIO_ROADCROSS
  add constraint VIO_ROADCROSS_NID_PK primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VIO_ROAD_APPLY
prompt =============================
prompt
create table VIO_ROAD_APPLY
(
  id          NVARCHAR2(32) not null,
  user_id     NVARCHAR2(32) not null,
  road_id     NVARCHAR2(5),
  reason      CHAR(1) not null,
  road_image  NVARCHAR2(1000),
  stop_image  NVARCHAR2(1000),
  road_name   NVARCHAR2(32) not null,
  create_time DATE default sysdate,
  status      NUMBER default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIO_ROAD_APPLY.user_id
  is '申请人id';
comment on column VIO_ROAD_APPLY.road_id
  is '道路代码';
comment on column VIO_ROAD_APPLY.reason
  is '申请原因, 0：无此道路，1：即将失效，2：失效';
comment on column VIO_ROAD_APPLY.road_image
  is '路名牌图片地址';
comment on column VIO_ROAD_APPLY.stop_image
  is '禁停标志图片地址';
comment on column VIO_ROAD_APPLY.road_name
  is '道路名称';
comment on column VIO_ROAD_APPLY.create_time
  is '申请时间';
comment on column VIO_ROAD_APPLY.status
  is '状态 0：未处理，1：已通过 2：已驳回';

prompt
prompt Creating table VIO_ROAD_HANDOVER
prompt ================================
prompt
create table VIO_ROAD_HANDOVER
(
  id            NVARCHAR2(32) not null,
  receiver      NVARCHAR2(1000),
  receive_time  DATE,
  receive_image NVARCHAR2(1000),
  road_nid      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIO_ROAD_HANDOVER.receiver
  is '接收人';
comment on column VIO_ROAD_HANDOVER.receive_time
  is '接收时间';
comment on column VIO_ROAD_HANDOVER.receive_image
  is '相关图片';
comment on column VIO_ROAD_HANDOVER.road_nid
  is '道路nid';

prompt
prompt Creating table VIO_ROAD_MAINTANCE
prompt =================================
prompt
create table VIO_ROAD_MAINTANCE
(
  id          NVARCHAR2(32) not null,
  update_type NVARCHAR2(1) not null,
  before      NVARCHAR2(100) not null,
  after       NVARCHAR2(100) not null,
  operator    NVARCHAR2(1000),
  update_time DATE,
  road_nid    VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIO_ROAD_MAINTANCE.update_type
  is '数据变更类型，0：新增道路 1：状态变更 2：道路代码修改 3：道路名称修改 4：删除道路';
comment on column VIO_ROAD_MAINTANCE.before
  is '变更前';
comment on column VIO_ROAD_MAINTANCE.after
  is '变更后';
comment on column VIO_ROAD_MAINTANCE.operator
  is '操作者';
comment on column VIO_ROAD_MAINTANCE.update_time
  is '更改时间';
comment on column VIO_ROAD_MAINTANCE.road_nid
  is '道路nid';

prompt
prompt Creating table VIO_ROAD_SUGGESTION
prompt ==================================
prompt
create table VIO_ROAD_SUGGESTION
(
  id                VARCHAR2(32) not null,
  orgnization       VARCHAR2(32),
  figures           VARCHAR2(1000),
  audit_suggestion  VARCHAR2(1000),
  contact           VARCHAR2(32),
  contact_telephone VARCHAR2(32),
  type              VARCHAR2(1),
  road              VARCHAR2(32),
  time              DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VIO_ROAD_SUGGESTION.id
  is '主键';
comment on column VIO_ROAD_SUGGESTION.orgnization
  is '业主单位';
comment on column VIO_ROAD_SUGGESTION.figures
  is '图纸资料（图片）';
comment on column VIO_ROAD_SUGGESTION.audit_suggestion
  is '审核意见';
comment on column VIO_ROAD_SUGGESTION.contact
  is '联系人';
comment on column VIO_ROAD_SUGGESTION.contact_telephone
  is '联系人电话';
comment on column VIO_ROAD_SUGGESTION.type
  is '改建或者新建两种类型 0：新建，1：改建';
comment on column VIO_ROAD_SUGGESTION.road
  is '道路名称';
comment on column VIO_ROAD_SUGGESTION.time
  is '时间';
alter table VIO_ROAD_SUGGESTION
  add constraint ID_ROADSUGGESTION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMSIMAGE_SECTIONS
prompt ================================
prompt
create table VMSIMAGE_SECTIONS
(
  id                VARCHAR2(32) not null,
  image_element_id  VARCHAR2(32),
  sectioncode       VARCHAR2(20),
  sectionname       NVARCHAR2(100),
  colorcode         VARCHAR2(7),
  coordinates       VARCHAR2(500),
  sectionstatus     VARCHAR2(2),
  sectionstatustemp VARCHAR2(2),
  updatetime        DATE,
  groupname         VARCHAR2(2),
  sectionlength     INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMSIMAGE_SECTIONS
  is '路网底图-路段对应关系表';
comment on column VMSIMAGE_SECTIONS.id
  is 'ID主键';
comment on column VMSIMAGE_SECTIONS.image_element_id
  is '路网底图的节目ID，对应vms_preset_element表的主键';
comment on column VMSIMAGE_SECTIONS.sectioncode
  is '路段编号';
comment on column VMSIMAGE_SECTIONS.sectionname
  is '路段名称';
comment on column VMSIMAGE_SECTIONS.colorcode
  is '路段在该诱导屏底图中对应的颜色值，如#00aabb，一个诱导屏底图中每条路段的颜色值能唯一确定一条路段';
comment on column VMSIMAGE_SECTIONS.coordinates
  is '坐标串，便于扩展使用';
comment on column VMSIMAGE_SECTIONS.sectionstatus
  is '发布成功的路段路况信息（1：红 2：黄 3：绿）';
comment on column VMSIMAGE_SECTIONS.sectionstatustemp
  is '临时路段路况信息（1：红 2：黄 3：绿）';
comment on column VMSIMAGE_SECTIONS.updatetime
  is '路况更新时间';
create index INDEX_VMSIMAGE_SECTIONS on VMSIMAGE_SECTIONS (IMAGE_ELEMENT_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VMSIMAGE_SECTIONS
  add constraint PRI_VMSIMAGE_SECTIONS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_COMMON_GROUP
prompt ===============================
prompt
create table VMS_COMMON_GROUP
(
  id         VARCHAR2(32) not null,
  group_name VARCHAR2(128),
  group_desc VARCHAR2(512),
  creat_time DATE,
  creat_user VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_COMMON_GROUP.group_name
  is '诱导组名称';
comment on column VMS_COMMON_GROUP.group_desc
  is '诱导组描述';
comment on column VMS_COMMON_GROUP.creat_time
  is '创建时间';
comment on column VMS_COMMON_GROUP.creat_user
  is '创建用户';
alter table VMS_COMMON_GROUP
  add constraint PK_VMS_COMMON_GROUP primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_CURRENT_PUBCAN_STATUS
prompt ========================================
prompt
create table VMS_CURRENT_PUBCAN_STATUS
(
  vms_id      VARCHAR2(32) not null,
  vms_type    VARCHAR2(1) not null,
  pub_time    DATE,
  pub_result  VARCHAR2(1),
  pub_vms_xml VARCHAR2(4000),
  pub_desc    VARCHAR2(1024),
  can_time    DATE,
  can_result  VARCHAR2(1),
  can_vms_xml VARCHAR2(4000),
  can_desc    VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_CURRENT_PUBCAN_STATUS.vms_id
  is '设备ID';
comment on column VMS_CURRENT_PUBCAN_STATUS.vms_type
  is '设备类型';
comment on column VMS_CURRENT_PUBCAN_STATUS.pub_time
  is '发布时间';
comment on column VMS_CURRENT_PUBCAN_STATUS.pub_result
  is '发布结果0失败1成功';
comment on column VMS_CURRENT_PUBCAN_STATUS.pub_vms_xml
  is '发布报文';
comment on column VMS_CURRENT_PUBCAN_STATUS.pub_desc
  is '发布备注';
comment on column VMS_CURRENT_PUBCAN_STATUS.can_time
  is '撤销时间';
comment on column VMS_CURRENT_PUBCAN_STATUS.can_result
  is '撤销结果0失败1成功';
comment on column VMS_CURRENT_PUBCAN_STATUS.can_vms_xml
  is '撤销报文';
comment on column VMS_CURRENT_PUBCAN_STATUS.can_desc
  is '撤销备注';
alter table VMS_CURRENT_PUBCAN_STATUS
  add constraint PK_VMS_CURRENT_PUBCAN_STATUS primary key (VMS_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_DEFAULT_PROGRAM
prompt ==================================
prompt
create table VMS_DEFAULT_PROGRAM
(
  vms_id      VARCHAR2(32),
  vms_type    VARCHAR2(1),
  element_ids VARCHAR2(1024),
  vms_xml     VARCHAR2(2048)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_DEFAULT_PROGRAM.vms_id
  is '设备ID';
comment on column VMS_DEFAULT_PROGRAM.vms_type
  is '诱导屏类型';
comment on column VMS_DEFAULT_PROGRAM.element_ids
  is '节目ID';
comment on column VMS_DEFAULT_PROGRAM.vms_xml
  is '节目报文';

prompt
prompt Creating table VMS_ELEMENT_TYPE
prompt ===============================
prompt
create table VMS_ELEMENT_TYPE
(
  id       VARCHAR2(32) not null,
  typename VARCHAR2(128),
  parentid VARCHAR2(32),
  orderid  NUMBER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_ELEMENT_TYPE.typename
  is '类别名称';
comment on column VMS_ELEMENT_TYPE.parentid
  is '上级类别';
comment on column VMS_ELEMENT_TYPE.orderid
  is '排序';
alter table VMS_ELEMENT_TYPE
  add constraint PK_VMS_ELEMENT_TYPE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_EXPRESSWAY_DEFAULT_ELEMENT
prompt =============================================
prompt
create table VMS_EXPRESSWAY_DEFAULT_ELEMENT
(
  id          VARCHAR2(32) not null,
  updatetime  DATE not null,
  userid      VARCHAR2(32) not null,
  vms_id      VARCHAR2(32) not null,
  vms_type    VARCHAR2(32) not null,
  element_ids VARCHAR2(2000) not null,
  vms_xml     VARCHAR2(2000) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_EXPRESSWAY_DEFAULT_ELEMENT
  is '高速内置节目信息表';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.id
  is '主键';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.updatetime
  is '更新时间';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.userid
  is '配置用户';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.vms_id
  is '诱导ID';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.vms_type
  is '诱导屏类型';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.element_ids
  is '节目ID串';
comment on column VMS_EXPRESSWAY_DEFAULT_ELEMENT.vms_xml
  is '节目报文';
alter table VMS_EXPRESSWAY_DEFAULT_ELEMENT
  add constraint PRI_IDS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_EXPRESSWAY_ELEMENT_GROUP
prompt ===========================================
prompt
create table VMS_EXPRESSWAY_ELEMENT_GROUP
(
  id         VARCHAR2(32) not null,
  group_name VARCHAR2(64) not null,
  group_type VARCHAR2(8),
  lane_num   NUMBER,
  updatetime DATE,
  userid     VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_EXPRESSWAY_ELEMENT_GROUP
  is '高速节目组表';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.id
  is '主键';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.group_name
  is '节目组名称';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.group_type
  is '节目组类型1301高速路诱导屏类型';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.lane_num
  is '车道数';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.updatetime
  is '更新时间';
comment on column VMS_EXPRESSWAY_ELEMENT_GROUP.userid
  is '配置用户';
alter table VMS_EXPRESSWAY_ELEMENT_GROUP
  add constraint PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_EXPRESSWAY_ELEMENT_LANE
prompt ==========================================
prompt
create table VMS_EXPRESSWAY_ELEMENT_LANE
(
  id        VARCHAR2(32) not null,
  laneno    VARCHAR2(2),
  elementid VARCHAR2(32),
  groupid   VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_EXPRESSWAY_ELEMENT_LANE
  is '节目组 车道与节目ID对应关系表';
comment on column VMS_EXPRESSWAY_ELEMENT_LANE.id
  is '主键';
comment on column VMS_EXPRESSWAY_ELEMENT_LANE.laneno
  is '车道号';
comment on column VMS_EXPRESSWAY_ELEMENT_LANE.elementid
  is '车道节目ID  ';
comment on column VMS_EXPRESSWAY_ELEMENT_LANE.groupid
  is '对应vms_expressway_element_group表主键';
alter table VMS_EXPRESSWAY_ELEMENT_LANE
  add constraint PKEY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_EXPRESSWAY_GROUP
prompt ===================================
prompt
create table VMS_EXPRESSWAY_GROUP
(
  id           VARCHAR2(32) not null,
  group_name   VARCHAR2(256),
  group_type   VARCHAR2(4),
  expressway   VARCHAR2(128),
  pileno_start VARCHAR2(32),
  pileno_end   VARCHAR2(32),
  direction    VARCHAR2(4),
  lane_num     NUMBER,
  updatetime   DATE,
  userid       VARCHAR2(32),
  travel       VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_EXPRESSWAY_GROUP
  is '高速诱导组合表';
comment on column VMS_EXPRESSWAY_GROUP.id
  is '主键';
comment on column VMS_EXPRESSWAY_GROUP.group_name
  is '组名';
comment on column VMS_EXPRESSWAY_GROUP.group_type
  is '1301高速路诱导屏类型';
comment on column VMS_EXPRESSWAY_GROUP.expressway
  is '高速路编号';
comment on column VMS_EXPRESSWAY_GROUP.pileno_start
  is '开始桩号';
comment on column VMS_EXPRESSWAY_GROUP.pileno_end
  is '结束桩号';
comment on column VMS_EXPRESSWAY_GROUP.direction
  is '149高速路诱导方向';
comment on column VMS_EXPRESSWAY_GROUP.lane_num
  is '车道数';
comment on column VMS_EXPRESSWAY_GROUP.updatetime
  is '更新时间';
comment on column VMS_EXPRESSWAY_GROUP.userid
  is '配置用户';
comment on column VMS_EXPRESSWAY_GROUP.travel
  is '1302高速诱导上下行';
alter table VMS_EXPRESSWAY_GROUP
  add constraint PK_IDS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_EXPRESSWAY_GROUP_DEVICE
prompt ==========================================
prompt
create table VMS_EXPRESSWAY_GROUP_DEVICE
(
  id          VARCHAR2(32) not null,
  group_id    VARCHAR2(32),
  device_type VARCHAR2(4),
  device_id   VARCHAR2(32),
  lane        NUMBER,
  updatetime  DATE,
  userid      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_EXPRESSWAY_GROUP_DEVICE
  is '高速诱导组设备关联表';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.id
  is '主键';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.group_id
  is '所属诱导组';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.device_type
  is '设备类型 1诱导屏 2超速设备';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.device_id
  is '设备ID';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.lane
  is '所属车道';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.updatetime
  is '更新时间';
comment on column VMS_EXPRESSWAY_GROUP_DEVICE.userid
  is '配置用户';
alter table VMS_EXPRESSWAY_GROUP_DEVICE
  add constraint PRI_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_GROUP_DEVICE
prompt ===============================
prompt
create table VMS_GROUP_DEVICE
(
  id       VARCHAR2(32) not null,
  group_id VARCHAR2(32),
  vms_id   VARCHAR2(32),
  vms_type VARCHAR2(4)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_GROUP_DEVICE.group_id
  is '诱导组ID';
comment on column VMS_GROUP_DEVICE.vms_id
  is '诱导屏ID';
comment on column VMS_GROUP_DEVICE.vms_type
  is '诱导屏类型';
alter table VMS_GROUP_DEVICE
  add constraint PK_VMS_GROUP_DEVICE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_IMAGE_RELATION
prompt =================================
prompt
create table VMS_IMAGE_RELATION
(
  id               VARCHAR2(32) not null,
  vms_id           VARCHAR2(20),
  image_element_id VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_IMAGE_RELATION
  is '屏与路网底图对应关系表';
comment on column VMS_IMAGE_RELATION.id
  is 'ID主键';
comment on column VMS_IMAGE_RELATION.vms_id
  is '诱导设备ID';
comment on column VMS_IMAGE_RELATION.image_element_id
  is '路网底图的节目ID，对应vms_preset_element表的主键';
create index INDEX_VMS_IMAGE_RELATION on VMS_IMAGE_RELATION (VMS_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VMS_IMAGE_RELATION
  add constraint PRI_VMS_IMAGE_RELATION primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_LOG
prompt ======================
prompt
create table VMS_LOG
(
  id             VARCHAR2(32) not null,
  vms_id         VARCHAR2(20),
  vms_type       VARCHAR2(1),
  logtime        DATE,
  operationtype  VARCHAR2(1),
  vms_xml        VARCHAR2(4000),
  userid         NVARCHAR2(6),
  username       NVARCHAR2(20),
  userip         NVARCHAR2(20),
  departmentid   NVARCHAR2(12),
  result         NVARCHAR2(1),
  logdescription VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_LOG
  is '发布日志表';
comment on column VMS_LOG.id
  is '主键';
comment on column VMS_LOG.vms_id
  is '诱导设备ID';
comment on column VMS_LOG.vms_type
  is '诱导类型';
comment on column VMS_LOG.logtime
  is '操作时间';
comment on column VMS_LOG.operationtype
  is '操作类型   发布或撤销  1 发布 2 撤销  3开屏  4关屏  5亮度调节';
comment on column VMS_LOG.vms_xml
  is '发布xml串';
comment on column VMS_LOG.userid
  is '用户ID';
comment on column VMS_LOG.username
  is '用户名称';
comment on column VMS_LOG.userip
  is '用户IP';
comment on column VMS_LOG.departmentid
  is '部门ID';
comment on column VMS_LOG.result
  is '结果  0 失败 1成功';
comment on column VMS_LOG.logdescription
  is '描述';
create index INDEX_VMSLOG_VMSID on VMS_LOG (VMS_ID, VMS_TYPE, LOGTIME, OPERATIONTYPE, RESULT)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table VMS_LOG
  add constraint PK_LOG primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_LOG_ELEMENT
prompt ==============================
prompt
create table VMS_LOG_ELEMENT
(
  id         VARCHAR2(32) not null,
  log_id     VARCHAR2(32),
  element_id VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_LOG_ELEMENT
  is '诱导日志节目单表';
comment on column VMS_LOG_ELEMENT.id
  is 'ID';
comment on column VMS_LOG_ELEMENT.log_id
  is 'vms_log表ID';
comment on column VMS_LOG_ELEMENT.element_id
  is '节目单ID';
alter table VMS_LOG_ELEMENT
  add constraint PRI_VMS_LOG_ELEMENT primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_OPEN_CYCLE
prompt =============================
prompt
create table VMS_OPEN_CYCLE
(
  id         VARCHAR2(32) not null,
  vmsid      VARCHAR2(32),
  vmstype    VARCHAR2(2),
  week       VARCHAR2(16),
  startdate  DATE,
  enddate    DATE,
  opentime   VARCHAR2(8),
  closetime  VARCHAR2(8),
  updatetime DATE,
  userid     VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_OPEN_CYCLE.id
  is '主键';
comment on column VMS_OPEN_CYCLE.vmsid
  is '设备ID';
comment on column VMS_OPEN_CYCLE.vmstype
  is '设备类型';
comment on column VMS_OPEN_CYCLE.week
  is '开关日 1到7';
comment on column VMS_OPEN_CYCLE.startdate
  is '开始日期';
comment on column VMS_OPEN_CYCLE.enddate
  is '结束日期';
comment on column VMS_OPEN_CYCLE.opentime
  is '开屏时间';
comment on column VMS_OPEN_CYCLE.closetime
  is '关屏时间';
comment on column VMS_OPEN_CYCLE.updatetime
  is '更新时间';
comment on column VMS_OPEN_CYCLE.userid
  is '更新用户';
alter table VMS_OPEN_CYCLE
  add constraint PK_VMS_OPNE_CYCLE primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_OPEN_MESSAGE
prompt ===============================
prompt
create table VMS_OPEN_MESSAGE
(
  username  VARCHAR2(16),
  userphone VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_OPEN_MESSAGE.username
  is '通知人姓名';
comment on column VMS_OPEN_MESSAGE.userphone
  is '通知人电话';

prompt
prompt Creating table VMS_OPEN_PLAN
prompt ============================
prompt
create table VMS_OPEN_PLAN
(
  id          VARCHAR2(32) not null,
  vmsid       VARCHAR2(32),
  vmstype     VARCHAR2(2),
  opentime    DATE,
  closetime   DATE,
  openstatus  VARCHAR2(2),
  closestatus VARCHAR2(2),
  createtime  DATE,
  updatetime  DATE,
  cycleid     VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VMS_OPEN_PLAN.id
  is '主键';
comment on column VMS_OPEN_PLAN.vmsid
  is '诱导屏ID';
comment on column VMS_OPEN_PLAN.vmstype
  is '诱导屏类型';
comment on column VMS_OPEN_PLAN.opentime
  is '开屏时间';
comment on column VMS_OPEN_PLAN.closetime
  is '关屏时间';
comment on column VMS_OPEN_PLAN.openstatus
  is '开屏状态  0未执行1已执行';
comment on column VMS_OPEN_PLAN.closestatus
  is '关屏状态  0未执行1已执行';
comment on column VMS_OPEN_PLAN.createtime
  is '创建时间';
comment on column VMS_OPEN_PLAN.updatetime
  is '更新时间';
comment on column VMS_OPEN_PLAN.cycleid
  is '定时开关计划id';
alter table VMS_OPEN_PLAN
  add constraint PK_VMS_OPNE_PLAN primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_PLAN
prompt =======================
prompt
create table VMS_PLAN
(
  id           VARCHAR2(32) not null,
  vms_id       VARCHAR2(20),
  vms_type     VARCHAR2(1),
  element_ids  VARCHAR2(1024),
  vms_xml      VARCHAR2(4000),
  pubstarttime DATE,
  pubendtime   DATE,
  pubstatus    VARCHAR2(1),
  createtime   DATE,
  modifiedtime DATE,
  pubtype      VARCHAR2(1),
  cycleid      VARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_PLAN
  is '发布计划表（立即、定时、周次都要存入该表）';
comment on column VMS_PLAN.id
  is '主键';
comment on column VMS_PLAN.vms_id
  is '诱导设备ID';
comment on column VMS_PLAN.vms_type
  is '诱导类型';
comment on column VMS_PLAN.element_ids
  is '发布节目ID串，逗号分隔';
comment on column VMS_PLAN.vms_xml
  is '发布xml串';
comment on column VMS_PLAN.pubstarttime
  is '发布开始时间';
comment on column VMS_PLAN.pubendtime
  is '发布结束时间';
comment on column VMS_PLAN.pubstatus
  is '发布状态  0 未发布（默认） 1发布中  2已过期';
comment on column VMS_PLAN.createtime
  is '创建时间';
comment on column VMS_PLAN.modifiedtime
  is '更新时间';
comment on column VMS_PLAN.pubtype
  is '发布类型   1 立即  2 定时 3周次  4高速预案 5旅行时间 6违停 ';
comment on column VMS_PLAN.cycleid
  is '周次发布id';
alter table VMS_PLAN
  add constraint PK_ primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_PLAN_HIS
prompt ===========================
prompt
create table VMS_PLAN_HIS
(
  id           VARCHAR2(32) not null,
  vms_id       VARCHAR2(20),
  vms_type     VARCHAR2(1),
  element_ids  VARCHAR2(1024),
  vms_xml      VARCHAR2(2048),
  pubstarttime DATE,
  pubendtime   DATE,
  pubstatus    VARCHAR2(1),
  createtime   DATE,
  modifiedtime DATE,
  pubtype      VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table VMS_PRESET_ELEMENT
prompt =================================
prompt
create table VMS_PRESET_ELEMENT
(
  element_id    VARCHAR2(32) not null,
  element_title VARCHAR2(512),
  vms_type      VARCHAR2(2),
  font_color    NUMBER(1),
  font_size     NUMBER(3),
  font_family   VARCHAR2(32),
  element_url   VARCHAR2(256),
  element_type  VARCHAR2(2),
  element_text  VARCHAR2(2048),
  element_value VARCHAR2(2048),
  duration      NUMBER(10),
  is_temp       CHAR(1),
  extcol        VARCHAR2(512),
  showstyle     VARCHAR2(2),
  program_type  VARCHAR2(10),
  playspeed     VARCHAR2(10),
  image_width   VARCHAR2(10),
  image_height  VARCHAR2(10),
  isaudit       VARCHAR2(1) default 0,
  auditor       VARCHAR2(20),
  auditdate     VARCHAR2(20),
  deltor        VARCHAR2(20),
  deldate       VARCHAR2(20),
  delflag       VARCHAR2(1) default 0,
  auditorname   VARCHAR2(100),
  vmsid         VARCHAR2(20)
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
comment on column VMS_PRESET_ELEMENT.vms_type
  is '诱导屏类型 枚举186';
comment on column VMS_PRESET_ELEMENT.element_type
  is '节目类型 枚举800047';
comment on column VMS_PRESET_ELEMENT.showstyle
  is '显示方式，枚举2021';
comment on column VMS_PRESET_ELEMENT.program_type
  is '节目类别，枚举1233';
comment on column VMS_PRESET_ELEMENT.playspeed
  is '动画速度  枚举800046';
comment on column VMS_PRESET_ELEMENT.image_width
  is '图片宽度';
comment on column VMS_PRESET_ELEMENT.image_height
  is '图片高度';
comment on column VMS_PRESET_ELEMENT.isaudit
  is '是否审核通过 0审核未通过1审核通过';
comment on column VMS_PRESET_ELEMENT.auditor
  is '审核人';
comment on column VMS_PRESET_ELEMENT.auditdate
  is '审核时间';
comment on column VMS_PRESET_ELEMENT.deltor
  is '删除人';
comment on column VMS_PRESET_ELEMENT.deldate
  is '删除时间';
comment on column VMS_PRESET_ELEMENT.delflag
  is '删除标志(0未删除1删除)不是真正删除';
comment on column VMS_PRESET_ELEMENT.auditorname
  is '审核人姓名';
comment on column VMS_PRESET_ELEMENT.vmsid
  is '设备id';
alter table VMS_PRESET_ELEMENT
  add primary key (ELEMENT_ID)
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
prompt Creating table VMS_PRESET_ELEMENT_ILL
prompt =====================================
prompt
create table VMS_PRESET_ELEMENT_ILL
(
  element_id    VARCHAR2(32) not null,
  element_title VARCHAR2(512),
  vms_type      CHAR(2),
  font_color    NUMBER(1),
  font_size     NUMBER(2),
  font_family   VARCHAR2(32),
  element_url   VARCHAR2(256),
  element_type  CHAR(2),
  element_text  VARCHAR2(2048),
  element_value VARCHAR2(2048),
  duration      NUMBER(10),
  is_temp       CHAR(1),
  extcol        VARCHAR2(512),
  showstyle     VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

prompt
prompt Creating table VMS_PUB_CYCLE
prompt ============================
prompt
create table VMS_PUB_CYCLE
(
  id           VARCHAR2(32) not null,
  vms_id       VARCHAR2(32) not null,
  vms_type     VARCHAR2(4) not null,
  week         VARCHAR2(16) not null,
  element_id   VARCHAR2(32) not null,
  vms_xml      VARCHAR2(1024) not null,
  pubstartdate DATE not null,
  pubenddate   DATE not null,
  pubstarttime VARCHAR2(16) not null,
  pubendtime   VARCHAR2(16) not null,
  updatetime   DATE,
  userid       VARCHAR2(12)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_PUB_CYCLE
  is '周期发布表';
comment on column VMS_PUB_CYCLE.id
  is '主键';
comment on column VMS_PUB_CYCLE.vms_id
  is '诱导屏ID';
comment on column VMS_PUB_CYCLE.vms_type
  is '诱导类型';
comment on column VMS_PUB_CYCLE.week
  is '发布日 1到7';
comment on column VMS_PUB_CYCLE.element_id
  is '节目ID';
comment on column VMS_PUB_CYCLE.vms_xml
  is '发布报文';
comment on column VMS_PUB_CYCLE.pubstartdate
  is '开始日期';
comment on column VMS_PUB_CYCLE.pubenddate
  is '结束日期';
comment on column VMS_PUB_CYCLE.pubstarttime
  is '开始发布时间';
comment on column VMS_PUB_CYCLE.pubendtime
  is '发布结束时间';
comment on column VMS_PUB_CYCLE.updatetime
  is '更新时间';
comment on column VMS_PUB_CYCLE.userid
  is '配置用户';
alter table VMS_PUB_CYCLE
  add constraint PKI_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_PUB_DEFAULT
prompt ==============================
prompt
create table VMS_PUB_DEFAULT
(
  eid      VARCHAR2(64) not null,
  etype    CHAR(1) not null,
  created  DATE not null,
  modified DATE not null,
  dstatus  CHAR(1) default 0,
  ed1      VARCHAR2(1024),
  ed2      VARCHAR2(1024),
  ed3      VARCHAR2(1024),
  ed4      VARCHAR2(1024),
  ed5      VARCHAR2(1024),
  ed6      VARCHAR2(1024),
  ed7      VARCHAR2(1024),
  xd1      VARCHAR2(1024),
  xd2      VARCHAR2(1024),
  xd3      VARCHAR2(1024),
  xd4      VARCHAR2(1024),
  xd5      VARCHAR2(1024),
  xd6      VARCHAR2(1024),
  xd7      VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_PUB_DEFAULT
  is '周次发布表';
comment on column VMS_PUB_DEFAULT.eid
  is '????ID??????';
comment on column VMS_PUB_DEFAULT.etype
  is '设备类型 1复合 2双基 3全彩';
comment on column VMS_PUB_DEFAULT.dstatus
  is '预留，暂不用';
comment on column VMS_PUB_DEFAULT.ed1
  is '节目ID串,周一';
comment on column VMS_PUB_DEFAULT.xd1
  is '报文，周一';
alter table VMS_PUB_DEFAULT
  add constraint VMS_PUB_DEFAULT_PK primary key (EID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_ROAD_STATUS_MONOPOLY
prompt =======================================
prompt
create table VMS_ROAD_STATUS_MONOPOLY
(
  id         VARCHAR2(32) not null,
  vmsid      VARCHAR2(32),
  begin_time DATE,
  end_time   DATE,
  flag       VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_ROAD_STATUS_MONOPOLY
  is '诱导屏路网状态设置限定表';
comment on column VMS_ROAD_STATUS_MONOPOLY.id
  is 'ID';
comment on column VMS_ROAD_STATUS_MONOPOLY.vmsid
  is '诱导屏设备ID';
comment on column VMS_ROAD_STATUS_MONOPOLY.begin_time
  is '有效期开始时间';
comment on column VMS_ROAD_STATUS_MONOPOLY.end_time
  is '有效期结束时间';
comment on column VMS_ROAD_STATUS_MONOPOLY.flag
  is '标记该限定的有效性 0：无效 1：有效 ';
alter table VMS_ROAD_STATUS_MONOPOLY
  add constraint PRI_VMS_ROAD_STATUS_MONOPOLY primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_ROAD_STATUS_MONOPOLY_INFO
prompt ============================================
prompt
create table VMS_ROAD_STATUS_MONOPOLY_INFO
(
  id         VARCHAR2(32) not null,
  vmsid      VARCHAR2(32),
  roadid     VARCHAR2(32),
  roadstatus VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_ROAD_STATUS_MONOPOLY_INFO
  is '诱导屏路网限定路段状态表';
comment on column VMS_ROAD_STATUS_MONOPOLY_INFO.id
  is 'ID';
comment on column VMS_ROAD_STATUS_MONOPOLY_INFO.vmsid
  is '诱导屏设备ID';
comment on column VMS_ROAD_STATUS_MONOPOLY_INFO.roadid
  is '路段ID';
comment on column VMS_ROAD_STATUS_MONOPOLY_INFO.roadstatus
  is '路段状态 1：绿 2：黄 3：红';
alter table VMS_ROAD_STATUS_MONOPOLY_INFO
  add constraint PRI_VMS_ROAD_MONOPOLY_INFO primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_ROAD_VIDEO_RELATION
prompt ======================================
prompt
create table VMS_ROAD_VIDEO_RELATION
(
  roadid       VARCHAR2(32) not null,
  videoid      VARCHAR2(32) not null,
  video_preset VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_ROAD_VIDEO_RELATION
  is '诱导屏路网视频关系表';
comment on column VMS_ROAD_VIDEO_RELATION.roadid
  is '路段编号';
comment on column VMS_ROAD_VIDEO_RELATION.videoid
  is '视频编号';
comment on column VMS_ROAD_VIDEO_RELATION.video_preset
  is '视频预置位';
alter table VMS_ROAD_VIDEO_RELATION
  add constraint PRI_VMS_ROAD_VIDEO_RELATION primary key (ROADID, VIDEOID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_SECTIONS
prompt ===========================
prompt
create table VMS_SECTIONS
(
  id                NUMBER(8) not null,
  equipmentid       NVARCHAR2(18) not null,
  sectioncode       NVARCHAR2(20),
  sectionname       NVARCHAR2(100),
  colorcode         CHAR(1),
  startx            NUMBER(4),
  starty            NUMBER(4),
  endx              NUMBER(4),
  endy              NUMBER(4),
  direction         NVARCHAR2(1000),
  colorvalue        NVARCHAR2(10),
  sectionstatustemp VARCHAR2(2)
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
comment on table VMS_SECTIONS
  is '诱导路段表';
comment on column VMS_SECTIONS.id
  is '自增长主键';
comment on column VMS_SECTIONS.equipmentid
  is '诱导屏设备ID';
comment on column VMS_SECTIONS.sectioncode
  is '路段编号';
comment on column VMS_SECTIONS.sectionname
  is '路段名称';
comment on column VMS_SECTIONS.colorcode
  is '颜色编号：1-绿色；2-黄色；3-红色；4-未知';
comment on column VMS_SECTIONS.startx
  is '路段起点X坐标';
comment on column VMS_SECTIONS.starty
  is '路段起点Y坐标';
comment on column VMS_SECTIONS.endx
  is '路段终点X坐标';
comment on column VMS_SECTIONS.endy
  is '路段终点Y坐标';
comment on column VMS_SECTIONS.direction
  is '诱导屏指示方向：东；西；南；北';
comment on column VMS_SECTIONS.colorvalue
  is '颜色值16进制';
comment on column VMS_SECTIONS.sectionstatustemp
  is '临时路段路况信息（1：绿 2：黄 3：红）';
alter table VMS_SECTIONS
  add constraint VMS_SECTIONS_ID primary key (ID)
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
prompt Creating table VMS_SECTION_EVENT_SET
prompt ====================================
prompt
create table VMS_SECTION_EVENT_SET
(
  id                  VARCHAR2(32) not null,
  vmsid               VARCHAR2(32) not null,
  vmstype             VARCHAR2(1) not null,
  sectionids          VARCHAR2(1024) not null,
  eventtype           VARCHAR2(32),
  congestionlevel     VARCHAR2(2),
  congestioncaselevel VARCHAR2(2),
  accidentcaselevel   VARCHAR2(2),
  starttime           VARCHAR2(8),
  endtime             VARCHAR2(8),
  duration            NUMBER(10),
  roadinfo            VARCHAR2(1024),
  digroadinfo         VARCHAR2(1024),
  constructinfo       VARCHAR2(1024),
  congestioncaseinfo  VARCHAR2(1024),
  accidentcaseinfo    VARCHAR2(1024)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_SECTION_EVENT_SET
  is '诱导监听路段事件配置表';
comment on column VMS_SECTION_EVENT_SET.id
  is '主键';
comment on column VMS_SECTION_EVENT_SET.vmsid
  is '诱导设备ID';
comment on column VMS_SECTION_EVENT_SET.vmstype
  is '诱导屏类型';
comment on column VMS_SECTION_EVENT_SET.sectionids
  is '配置路段ID列表，逗号分隔';
comment on column VMS_SECTION_EVENT_SET.eventtype
  is '配置事件类型，逗号分隔';
comment on column VMS_SECTION_EVENT_SET.congestionlevel
  is '路况拥堵等级，选择路况时有效';
comment on column VMS_SECTION_EVENT_SET.congestioncaselevel
  is '拥堵警情等级';
comment on column VMS_SECTION_EVENT_SET.accidentcaselevel
  is '事故警情等级';
comment on column VMS_SECTION_EVENT_SET.starttime
  is '监听开始时间';
comment on column VMS_SECTION_EVENT_SET.endtime
  is '监听结束时间';
comment on column VMS_SECTION_EVENT_SET.duration
  is '持续时长（分），选择施工、管制、警情时有效';
comment on column VMS_SECTION_EVENT_SET.roadinfo
  is '固定信息（路况）';
comment on column VMS_SECTION_EVENT_SET.digroadinfo
  is '固定信息（施工）';
comment on column VMS_SECTION_EVENT_SET.constructinfo
  is '固定信息（管制）';
comment on column VMS_SECTION_EVENT_SET.congestioncaseinfo
  is '固定信息（拥堵警情）';
comment on column VMS_SECTION_EVENT_SET.accidentcaseinfo
  is '固定信息（事故警情）';
alter table VMS_SECTION_EVENT_SET
  add constraint PK_SET primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_SECTION_TEXT
prompt ===============================
prompt
create table VMS_SECTION_TEXT
(
  id        VARCHAR2(32) not null,
  sectionid VARCHAR2(20),
  vmsid     VARCHAR2(20),
  pubtext   NVARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table VMS_SECTION_TEXT
  is '路况拥堵发布内容配置---条形屏';
comment on column VMS_SECTION_TEXT.id
  is '主键';
comment on column VMS_SECTION_TEXT.sectionid
  is '路段id';
comment on column VMS_SECTION_TEXT.vmsid
  is '设备id，指定路段拥堵时关联发布的诱导屏';
comment on column VMS_SECTION_TEXT.pubtext
  is '发布内容';
alter table VMS_SECTION_TEXT
  add constraint PRIMARYKEY_ID primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_SHOWCONTENT
prompt ==============================
prompt
create table VMS_SHOWCONTENT
(
  devid       NVARCHAR2(16) not null,
  content     VARCHAR2(999),
  successdate DATE,
  uuid        VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table VMS_SHOWCONTENT
  add constraint SHOWID primary key (UUID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_SHOWLIST
prompt ===========================
prompt
create table VMS_SHOWLIST
(
  vms_id             VARCHAR2(20) not null,
  element_ids        VARCHAR2(1024),
  extcol             VARCHAR2(512),
  vms_last_xml       VARCHAR2(4000),
  resume_time        DATE,
  resume_xml         VARCHAR2(2048),
  resume_status      CHAR(1),
  expired            DATE,
  modified           DATE,
  resume_element_ids VARCHAR2(1024),
  compoundurl        VARCHAR2(512)
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
comment on column VMS_SHOWLIST.element_ids
  is '节目id';
comment on column VMS_SHOWLIST.extcol
  is '诱导屏类型';
comment on column VMS_SHOWLIST.vms_last_xml
  is '当前发布xml';
comment on column VMS_SHOWLIST.compoundurl
  is '专门用用来存储复合屏底图url';
alter table VMS_SHOWLIST
  add primary key (VMS_ID)
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
prompt Creating table VMS_STATUS_CHECK
prompt ===============================
prompt
create table VMS_STATUS_CHECK
(
  deviceid VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table VMS_STATUS_CHECK
  add constraint PK_VMS_STATUS_CHECK primary key (DEVICEID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VMS_VIDEO_RELATION
prompt =================================
prompt
create table VMS_VIDEO_RELATION
(
  vmsid     NVARCHAR2(18) not null,
  vmstype   VARCHAR2(2) not null,
  vmsname   NVARCHAR2(100),
  videoid   NVARCHAR2(18) not null,
  videotype VARCHAR2(2),
  videoname NVARCHAR2(100),
  preset    VARCHAR2(30)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table VMS_VIDEO_RELATION
  add constraint PL_VMS_VIDEO_RELATION primary key (VMSID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table VOCATION
prompt =======================
prompt
create table VOCATION
(
  uuid              CHAR(32) not null,
  applicant         NVARCHAR2(20),
  applytime         DATE,
  vocationtype      VARCHAR2(20),
  othervocationtype NVARCHAR2(20),
  begintime         DATE,
  endtime           DATE,
  reason            NVARCHAR2(100),
  vocationdays      VARCHAR2(20),
  applicantid       VARCHAR2(6),
  deptid            VARCHAR2(15)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column VOCATION.uuid
  is 'uuid';
comment on column VOCATION.applicant
  is '申请人';
comment on column VOCATION.applytime
  is '申请时间';
comment on column VOCATION.vocationtype
  is '假期类型（0，婚嫁；1，丧假；2，产假；3，看护假；4，哺乳假；5，计划生育假；6，工伤假；7，事假，8，病假；9，带薪年假；10，其它）';
comment on column VOCATION.othervocationtype
  is '其它假期名称';
comment on column VOCATION.begintime
  is '假期开始时间';
comment on column VOCATION.endtime
  is '假期结束时间';
comment on column VOCATION.reason
  is '事由';
comment on column VOCATION.vocationdays
  is '休假天数';
comment on column VOCATION.applicantid
  is '申请人id';
comment on column VOCATION.deptid
  is '所属部门';

prompt
prompt Creating table WBC_CHARTS
prompt =========================
prompt
create table WBC_CHARTS
(
  id             VARCHAR2(32) not null,
  component_id   VARCHAR2(32),
  component_name VARCHAR2(100),
  type           CHAR(10),
  menu_id        VARCHAR2(32),
  menu_name      VARCHAR2(100),
  status         CHAR(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_CHARTS
  is '业务图表指标表';
comment on column WBC_CHARTS.component_id
  is '组件编号 对应前台控件';
comment on column WBC_CHARTS.component_name
  is '名称';
comment on column WBC_CHARTS.type
  is '类型 a区 AWORKBENCH，b区 BWORKBENCH';
comment on column WBC_CHARTS.menu_id
  is '是否有效 1:有效  0 无效';
alter table WBC_CHARTS
  add constraint PK_CHARTS primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_FAST_MENU
prompt ============================
prompt
create table WBC_FAST_MENU
(
  menu_id VARCHAR2(20) not null,
  user_id CHAR(6) not null,
  norder  NUMBER(10),
  url     VARCHAR2(500),
  icon    VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_FAST_MENU
  is '用户快捷菜单表';
comment on column WBC_FAST_MENU.menu_id
  is '菜单编号';
comment on column WBC_FAST_MENU.user_id
  is '用户编号';
comment on column WBC_FAST_MENU.norder
  is '顺序';
comment on column WBC_FAST_MENU.url
  is '菜单访问url';
comment on column WBC_FAST_MENU.icon
  is '图标';
alter table WBC_FAST_MENU
  add constraint PK_FAST_MENU primary key (USER_ID, MENU_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_MENU_CHART_RELATION
prompt ======================================
prompt
create table WBC_MENU_CHART_RELATION
(
  menu_id      VARCHAR2(32) not null,
  component_id VARCHAR2(32) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_MENU_CHART_RELATION
  is '菜单图表关系表';
comment on column WBC_MENU_CHART_RELATION.menu_id
  is '菜单编号';
comment on column WBC_MENU_CHART_RELATION.component_id
  is '组件编号';
alter table WBC_MENU_CHART_RELATION
  add constraint PK_MENU_CHART_RELATION primary key (MENU_ID, COMPONENT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_NOTICES
prompt ==========================
prompt
create table WBC_NOTICES
(
  notice_id   VARCHAR2(32),
  title       VARCHAR2(1000),
  type        VARCHAR2(1),
  content     VARCHAR2(3000),
  content_url VARCHAR2(1000),
  create_user CHAR(6),
  create_time DATE,
  reader_type CHAR(1),
  reader_list VARCHAR2(3000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_NOTICES
  is '通知公告总表';
comment on column WBC_NOTICES.notice_id
  is '通知编号';
comment on column WBC_NOTICES.title
  is '通知标题';
comment on column WBC_NOTICES.type
  is '通知类型 0：通知，1：阅读公告，2：签收公告';
comment on column WBC_NOTICES.content
  is '通知内容';
comment on column WBC_NOTICES.content_url
  is '详情链接';
comment on column WBC_NOTICES.create_user
  is '发布人';
comment on column WBC_NOTICES.create_time
  is '创建时间';
comment on column WBC_NOTICES.reader_type
  is '接收者类型,0:全局公告，部门接收 ，1：部门公告，人接收';

prompt
prompt Creating table WBC_NOTICES_USERS
prompt ================================
prompt
create table WBC_NOTICES_USERS
(
  user_id     CHAR(6) not null,
  notice_id   VARCHAR2(32) not null,
  is_read     NUMBER(1) default 0,
  signdept_id VARCHAR2(32),
  signer_id   CHAR(6),
  sign_time   DATE,
  is_signed   NUMBER default 0
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_NOTICES_USERS
  is '用户通知公告表';
comment on column WBC_NOTICES_USERS.user_id
  is '用户编号';
comment on column WBC_NOTICES_USERS.notice_id
  is '公告编号';
comment on column WBC_NOTICES_USERS.is_read
  is '是否已阅，0：未读，1：已读';
comment on column WBC_NOTICES_USERS.signdept_id
  is '签收部门id';
comment on column WBC_NOTICES_USERS.signer_id
  is '签收人id';
comment on column WBC_NOTICES_USERS.sign_time
  is '签收时间';
comment on column WBC_NOTICES_USERS.is_signed
  is '是否签收，0：未签收，1：已签收';
alter table WBC_NOTICES_USERS
  add constraint PK_NOTICE_USERS primary key (USER_ID, NOTICE_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_NOTICE_INFO
prompt ==============================
prompt
create table WBC_NOTICE_INFO
(
  id             VARCHAR2(32) not null,
  notice_id      VARCHAR2(32),
  notice_title   NVARCHAR2(40),
  notice_desc    CLOB,
  publisher      VARCHAR2(6),
  pubtime        DATE,
  browsetimes    NUMBER(5),
  notice_type    CHAR(1) default 0,
  content_url    VARCHAR2(1000),
  pub_department VARCHAR2(32),
  reader_type    CHAR(1) default 0,
  reader_list    VARCHAR2(2000)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_NOTICE_INFO
  is '公告信息表';
comment on column WBC_NOTICE_INFO.id
  is '唯一编号';
comment on column WBC_NOTICE_INFO.notice_id
  is '公告id';
comment on column WBC_NOTICE_INFO.notice_title
  is '公告标题';
comment on column WBC_NOTICE_INFO.notice_desc
  is '公告内容';
comment on column WBC_NOTICE_INFO.publisher
  is '发布人';
comment on column WBC_NOTICE_INFO.pubtime
  is '发布时间';
comment on column WBC_NOTICE_INFO.browsetimes
  is '浏览次数';
comment on column WBC_NOTICE_INFO.notice_type
  is '公告类型 0：阅读公告，1：签收公告，2：通知';
comment on column WBC_NOTICE_INFO.content_url
  is '内容链接';
comment on column WBC_NOTICE_INFO.pub_department
  is '发布部门';
comment on column WBC_NOTICE_INFO.reader_type
  is '签收人类型 0：全局公告，1：部门公告';
comment on column WBC_NOTICE_INFO.reader_list
  is '签收部门列表';
alter table WBC_NOTICE_INFO
  add constraint WBC_NOTICE_INFO_PIR primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_TODOS_TYPE
prompt =============================
prompt
create table WBC_TODOS_TYPE
(
  type         VARCHAR2(10),
  menu_onclick VARCHAR2(100),
  name         VARCHAR2(50),
  menu_id      VARCHAR2(10),
  menu_name    VARCHAR2(20)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column WBC_TODOS_TYPE.type
  is '待办事项类型';
comment on column WBC_TODOS_TYPE.menu_onclick
  is '点击跳转到的菜单点击事件';
comment on column WBC_TODOS_TYPE.name
  is '待办事项类型名称';
comment on column WBC_TODOS_TYPE.menu_id
  is '菜单ID';
comment on column WBC_TODOS_TYPE.menu_name
  is '菜单名称';

prompt
prompt Creating table WBC_TODOS_USERS
prompt ==============================
prompt
create table WBC_TODOS_USERS
(
  task_id     VARCHAR2(32) not null,
  task_title  VARCHAR2(1000) not null,
  task_type   VARCHAR2(2) not null,
  create_user CHAR(6) not null,
  create_time DATE,
  deal_user   CHAR(6) not null,
  content_url VARCHAR2(1000),
  finish_user CHAR(6),
  status      VARCHAR2(2) default '0',
  need_return CHAR(1) default '0'
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_TODOS_USERS
  is '待办事项表';
comment on column WBC_TODOS_USERS.task_id
  is '待办事项编号';
comment on column WBC_TODOS_USERS.task_title
  is '待办事项名字';
comment on column WBC_TODOS_USERS.task_type
  is '待办事项类型 00：审批事项';
comment on column WBC_TODOS_USERS.create_user
  is '待办事项创建人';
comment on column WBC_TODOS_USERS.create_time
  is '待办事项创建时间';
comment on column WBC_TODOS_USERS.deal_user
  is '待办人';
comment on column WBC_TODOS_USERS.content_url
  is '待办事项链接';
comment on column WBC_TODOS_USERS.finish_user
  is '结办人';
comment on column WBC_TODOS_USERS.status
  is '待办事项状态 0：未完成，1：已完成';
alter table WBC_TODOS_USERS
  add constraint PK_TODO_USERS primary key (TASK_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_USER_CHART
prompt =============================
prompt
create table WBC_USER_CHART
(
  user_id         CHAR(6) not null,
  component_id    VARCHAR2(32) not null,
  type            VARCHAR2(32),
  position        VARCHAR2(2),
  nsize           NUMBER(1),
  parameterconfig VARCHAR2(2000),
  component_name  VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table WBC_USER_CHART
  is '用户保存图表指标表';
comment on column WBC_USER_CHART.user_id
  is '用户编号';
comment on column WBC_USER_CHART.component_id
  is '图表组件编号';
comment on column WBC_USER_CHART.type
  is '区域 A或B';
comment on column WBC_USER_CHART.position
  is '位置';
comment on column WBC_USER_CHART.nsize
  is '大小，占几个格';
comment on column WBC_USER_CHART.parameterconfig
  is '图表配置文件，summarizeBy：单位；timeRange：日期。';
comment on column WBC_USER_CHART.component_name
  is '组件名称';
alter table WBC_USER_CHART
  add constraint PK_USER_CHART primary key (USER_ID, COMPONENT_ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WBC_USER_THEME
prompt =============================
prompt
create table WBC_USER_THEME
(
  userid    VARCHAR2(20),
  themeid   VARCHAR2(20),
  themename VARCHAR2(20),
  id        VARCHAR2(20) not null
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column WBC_USER_THEME.userid
  is '用户id';
comment on column WBC_USER_THEME.themeid
  is '主题id';
comment on column WBC_USER_THEME.themename
  is '主题名称';
comment on column WBC_USER_THEME.id
  is '主键';

prompt
prompt Creating table WECHAT_PUB_FEEDBACK
prompt ==================================
prompt
create table WECHAT_PUB_FEEDBACK
(
  id           VARCHAR2(32) not null,
  wechatid     VARCHAR2(32) not null,
  feedbackinfo NVARCHAR2(200),
  feedbacktime DATE,
  feedbackid   VARCHAR2(6)
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
comment on column WECHAT_PUB_FEEDBACK.id
  is '主键(uuid无意义)';
comment on column WECHAT_PUB_FEEDBACK.wechatid
  is '对应微信发布表主键';
comment on column WECHAT_PUB_FEEDBACK.feedbackinfo
  is '微信发布内容工作进展';
comment on column WECHAT_PUB_FEEDBACK.feedbacktime
  is '反馈时间对应wechat_pub表中的内容更新时间';
comment on column WECHAT_PUB_FEEDBACK.feedbackid
  is '反馈人编号';
alter table WECHAT_PUB_FEEDBACK
  add constraint PK_WECHAT_FEEDBACK primary key (ID)
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
prompt Creating table WHITELIST
prompt ========================
prompt
create table WHITELIST
(
  nid           NVARCHAR2(32) not null,
  ccarnumber    NVARCHAR2(16) not null,
  clicensetype  VARCHAR2(2) not null,
  dcreatedate   DATE,
  coperator     CHAR(6),
  cdepartmentid NVARCHAR2(12),
  remark        NVARCHAR2(1024),
  cassessor     CHAR(6),
  flag          CHAR(1),
  dbegindate    DATE,
  denddate      DATE,
  syr           VARCHAR2(12),
  period        VARCHAR2(100),
  roadline      NVARCHAR2(1024),
  passno        VARCHAR2(6),
  isgaofeng     VARCHAR2(1),
  cartype       VARCHAR2(12),
  passtype      VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
alter table WHITELIST
  add constraint PK_WHITELIST primary key (NID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

prompt
prompt Creating table WORKLOADSOURCE
prompt =============================
prompt
create table WORKLOADSOURCE
(
  id                VARCHAR2(32) default sys_guid() not null,
  datatype          VARCHAR2(2) not null,
  policeid          VARCHAR2(6) not null,
  illegalscore      VARCHAR2(5),
  illegalcode       VARCHAR2(5),
  handletime        DATE not null,
  inserttime        DATE default sysdate,
  punish_status     VARCHAR2(2) default 1,
  reconsider_status VARCHAR2(2) default 0,
  datasource        VARCHAR2(2) default 1
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
comment on column WORKLOADSOURCE.id
  is '唯一编号';
comment on column WORKLOADSOURCE.datatype
  is '1:现场执法 2:非现场执法 3:简易交通事故 4:强制措施';
comment on column WORKLOADSOURCE.policeid
  is '警员ID';
comment on column WORKLOADSOURCE.illegalscore
  is '违法记分';
comment on column WORKLOADSOURCE.illegalcode
  is '违法行为代码';
comment on column WORKLOADSOURCE.handletime
  is '违法时间 / 事故时间 / 强制措施时间';
comment on column WORKLOADSOURCE.inserttime
  is '数据入库时间';
comment on column WORKLOADSOURCE.punish_status
  is '现场及非现场处罚状态 1有效 0无效';
comment on column WORKLOADSOURCE.reconsider_status
  is '现场及非现场复议状态 1复议 0无复议';
comment on column WORKLOADSOURCE.datasource
  is '数据来源 1六合一库；2执法记录仪';
alter table WORKLOADSOURCE
  add constraint WORKLOADSOURCE_PRIMARY_ID primary key (ID)
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
prompt Creating table YELLO_SIGN_CAR
prompt =============================
prompt
create table YELLO_SIGN_CAR
(
  nid       VARCHAR2(32) not null,
  dq        VARCHAR2(40),
  shchzhd   VARCHAR2(200),
  ffshj     DATE default sysdate,
  hblb      VARCHAR2(20),
  chzh      VARCHAR2(200),
  chlzhcshj DATE,
  fblx      VARCHAR2(20),
  hbbzhh    VARCHAR2(100),
  chlxh     VARCHAR2(100),
  shb       VARCHAR2(50),
  chph      VARCHAR2(50),
  chpys     VARCHAR2(50),
  chllx     VARCHAR2(50),
  shfzf     VARCHAR2(20),
  hphm      VARCHAR2(15),
  hpzl      VARCHAR2(2),
  yxqz      DATE,
  ccdjrq    DATE,
  cblx      VARCHAR2(1)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on column YELLO_SIGN_CAR.nid
  is '数据库自动编号,非空';
comment on column YELLO_SIGN_CAR.dq
  is '地区';
comment on column YELLO_SIGN_CAR.shchzhd
  is '上传站点';
comment on column YELLO_SIGN_CAR.ffshj
  is '发放时间';
comment on column YELLO_SIGN_CAR.hblb
  is '环标类别';
comment on column YELLO_SIGN_CAR.chzh
  is '车主';
comment on column YELLO_SIGN_CAR.chlzhcshj
  is '车辆注册时间
';
comment on column YELLO_SIGN_CAR.fblx
  is '发标类型
';
comment on column YELLO_SIGN_CAR.hbbzhh
  is '环保标志号
';
comment on column YELLO_SIGN_CAR.chlxh
  is '车辆型号
';
comment on column YELLO_SIGN_CAR.shb
  is '商标
';
comment on column YELLO_SIGN_CAR.chph
  is '车牌号
';
comment on column YELLO_SIGN_CAR.chpys
  is '车牌颜色';
comment on column YELLO_SIGN_CAR.chllx
  is '车辆类型
';
comment on column YELLO_SIGN_CAR.shfzf
  is '是否作废
';
comment on column YELLO_SIGN_CAR.hphm
  is '号牌号码';
comment on column YELLO_SIGN_CAR.hpzl
  is '号牌种类';
comment on column YELLO_SIGN_CAR.yxqz
  is '有效期至';
comment on column YELLO_SIGN_CAR.ccdjrq
  is '初次登记日期';
comment on column YELLO_SIGN_CAR.cblx
  is '车标类型 1：黄标；2：绿标；3：无标';
create index INDEX_YELLO_CHPH_CHLLX on YELLO_SIGN_CAR (CHPH, CHLLX)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
alter table YELLO_SIGN_CAR
  add constraint PK_YELLO_NID primary key (NID)
  disable
  novalidate;

prompt
prompt Creating sequence BLACK_ALERT_FRONT_CONFIG_SEQ
prompt ==============================================
prompt
create sequence BLACK_ALERT_FRONT_CONFIG_SEQ
minvalue 1
maxvalue 99999
start with 882
increment by 1
cache 20
cycle;

prompt
prompt Creating sequence CONSTRUCTION_ID_SEQ
prompt =====================================
prompt
create sequence CONSTRUCTION_ID_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 320
increment by 1
cache 20;

prompt
prompt Creating sequence CONSTRUCTION_SEQ
prompt ==================================
prompt
create sequence CONSTRUCTION_SEQ
minvalue 1
maxvalue 9999999999999999999999999999
start with 51
increment by 1
cache 20;

prompt
prompt Creating sequence EQUIP_SERVICE_LEVEL_SEQ
prompt =========================================
prompt
create sequence EQUIP_SERVICE_LEVEL_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 581
increment by 1
cache 20;

prompt
prompt Creating sequence EQUIP_SERVICE_PROVIDER_SMS_SEQ
prompt ================================================
prompt
create sequence EQUIP_SERVICE_PROVIDER_SMS_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 3560
increment by 1
cache 20;

prompt
prompt Creating sequence LV_DIRVER_SEQ
prompt ===============================
prompt
create sequence LV_DIRVER_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1641
increment by 1
cache 20;

prompt
prompt Creating sequence LV_NLV_VIOLATION_SEQ
prompt ======================================
prompt
create sequence LV_NLV_VIOLATION_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1561
increment by 1
cache 20;

prompt
prompt Creating sequence LV_VEHICLE_SEQ
prompt ================================
prompt
create sequence LV_VEHICLE_SEQ
minvalue 1
maxvalue 999999999999999999999999999
start with 1641
increment by 1
cache 20;

prompt
prompt Creating sequence PASS_MGR_SEQ
prompt ==============================
prompt
create sequence PASS_MGR_SEQ
minvalue 1024
maxvalue 9999999
start with 1144
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_BLACK_LIST_MANAGE_RECORD
prompt ==============================================
prompt
create sequence SEQ_BLACK_LIST_MANAGE_RECORD
minvalue 1
maxvalue 9999999999999999999999999999
start with 17864306
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_MONITOR_SECTION_POINT
prompt ===========================================
prompt
create sequence SEQ_MONITOR_SECTION_POINT
minvalue 1
maxvalue 999999999999999999999999999
start with 13402
increment by 1
cache 20;

prompt
prompt Creating sequence SEQ_TD_TRAVELSPEED_RESULT_NEW
prompt ===============================================
prompt
create sequence SEQ_TD_TRAVELSPEED_RESULT_NEW
minvalue 1
maxvalue 9999999999999999999999999999
start with 31
increment by 1
cache 10;

prompt
prompt Creating sequence STAT_TRAFFIC_FLOW_DAY_SEQ
prompt ===========================================
prompt
create sequence STAT_TRAFFIC_FLOW_DAY_SEQ
minvalue 1
maxvalue 9999999999999999
start with 105452
increment by 1
cache 20;

prompt
prompt Creating sequence STAT_TRAFFIC_FLOW_HOUR_SEQ
prompt ============================================
prompt
create sequence STAT_TRAFFIC_FLOW_HOUR_SEQ
minvalue 1
maxvalue 999999999999999999
start with 25181973
increment by 1
cache 20;

prompt
prompt Creating view BLACK_LOW_ANALYSIS_DATA_VIEW
prompt ==========================================
prompt
create or replace force view black_low_analysis_data_view as
select t.id,t.bjdd,t.productdate,t.hour,
nvl(t.alarmtype01,0)+nvl(t.alarmtype02,0)+nvl(t.alarmtype03,0)+
nvl(t.alarmtype04,0)+nvl(t.alarmtype05,0)+nvl(t.alarmtype06,0)+
nvl(t.alarmtype07,0)+nvl(t.alarmtype08,0)+nvl(t.alarmtype09,0)+
nvl(t.alarmtype10,0)+nvl(t.alarmtype11,0)+nvl(t.alarmtype12,0)+
nvl(t.alarmtype13,0)+nvl(t.alarmtype14,0)+nvl(t.alarmtype15,0)+
nvl(t.alarmtype16,0)+nvl(t.alarmtype17,0)+nvl(t.alarmtype18,0)+
nvl(t.alarmtype19,0)+nvl(t.alarmtype20,0)+nvl(t.alarmtype21,0)+
nvl(t.alarmtype22,0)+nvl(t.alarmtype23,0)+nvl(t.alarmtype24,0)+
nvl(t.alarmtype15,0)+nvl(t.alarmtype26,0)+nvl(t.alarmtype27,0)+
nvl(t.alarmtype28,0)+nvl(t.alarmtype29,0)+nvl(t.alarmtype30,0) count
 from black_low_analysis_data t;

prompt
prompt Creating view GPS_NEW_DATA
prompt ==========================
prompt
create or replace force view gps_new_data as
select t."CVEHID",
       t."NVEHALARM",
       t."DTRECORDTIME",
       t."DECARLONG",
       t."DECARLAT",
       t."NCARSTATUS",
       t."NVEHSPEED",
       t."NDIRECTION",
       t."DATAUPLOADTIME",
       t."DATASAVETIME"
  from gps_data t, equipment_info e,police p
 where t.cvehid = e.thirdsyscode
   and p.deviceid = e.deviceid
   and e.devicetype = '12'
   and t.dtrecordtime > sysdate - 10 / 24 / 60
   and not exists (select 1
          from gps_data g
         where g.dtrecordtime > sysdate - 10 / 24 / 60
           and g.cvehid = t.cvehid
           and g.dtrecordtime > t.dtrecordtime);

prompt
prompt Creating view CAR_GPS_STATUS_VIEW
prompt =================================
prompt
create or replace force view car_gps_status_view as
select e.deviceid,e.departmentid,
case
  when t.DTRECORDTIME is not null
    then 1
      else 0
        end status
from equipment_info e left join gps_new_data t on t.CVEHID=e.thirdsyscode where e.devicetype='12' and e.gpstype='1'-- group by status
;

prompt
prompt Creating view CONFIG_CROSSING
prompt =============================
prompt
create or replace force view config_crossing as
select t.nid as CROSSING_ID,
       t.lkdm as CROSSING_CODE,
       t.lkmc as CROSSING_NAME,
     t.dldm as ROAD_ID
  from VIO_ROADCROSS t;

prompt
prompt Creating view CONFIG_ORG
prompt ========================
prompt
create or replace force view config_org as
select t.cdepartmentid as ORG_ID,
       t.cdepartmentname as ORG_NAME
  from DEPARTMENT t;

prompt
prompt Creating view CONFIG_ROADS
prompt ==========================
prompt
create or replace force view config_roads as
select t.nid as ROAD_ID,
       t.dldm as ROAD_CODE,
       t.dlmc as ROAD_NAME
  from VIO_CODEROAD t;

prompt
prompt Creating view DETECT_SPEED_DATA_HAIBO_VIEW
prompt ==========================================
prompt
CREATE OR REPLACE FORCE VIEW DETECT_SPEED_DATA_HAIBO_VIEW AS
SELECT M.POINTCODE    AS POINTCODE,
         M.POINTNAME    AS POINTNAME,
         M.POINTNAME    AS POINTADDRESS,
         M.PROVIDEDATE  AS POINTINSTALLTIME,
         E.DEPARTMENTID AS DEPARTMENTID,
         E.DEVICEID     AS DEVICECODE,
         E.DEVICENAME   AS DEVICENAME,
         E.DEVICETYPE   AS DEVICETYPE,
         E.DIRECTION    AS DIRECTION,
         E.STARTLAN     AS STARTLAN,
         E.LANENUM      AS LANENUM,
         E.PROVIDEDATE  AS DEVICEINSTALLTIME,
         E.DEVICESTATE  AS DEVICESTATE,
         M.LONGITUDE    AS LONGITUDE,
         M.LATITUDE     AS LATITUDE,
         M.ADMINIAREA   AS ADMINIAREA
    FROM EQUIPMENT_INFO E, MONITOR_POINT M
   WHERE E.POINTID = M.POINTCODE(+)
     AND (E.DEVICETYPE = '01' OR E.DEVICETYPE = '02' OR E.DEVICETYPE = '03');

prompt
prompt Creating view GPS_REAL_DATA
prompt ===========================
prompt
create or replace force view gps_real_data as
select e.deviceid,e.devicename,e.departmentid,e.gpstype,t.cvehid,t.dtrecordtime,t.decarlong,t.decarlat,t.ndirection
from gps_data t,equipment_info e where t.cvehid=e.thirdsyscode and t.dtrecordtime>sysdate-15/24/60
and not exists
 (select 1
          from gps_data g
         where g.dtrecordtime > sysdate-15/24/60
           and g.cvehid = t.cvehid
           and g.dtrecordtime > t.dtrecordtime
    );

prompt
prompt Creating view GPS_STATUS_VIEW
prompt =============================
prompt
create or replace force view gps_status_view as
select e.deviceid,
       e.departmentid,
       e.gpsradiono,
       e.gpstype,
       g.datatime,
       trunc((sysdate - g.datatime) * 24 * 60) timedist,
       case
         when g.datatime is null or
              trunc((sysdate - g.datatime) * 24 * 60) > 580 then
          0
         else
          1
       end status
  from equipment_info e
  left join gps_current_data g
    on e.deviceid = g.deviceid where e.devicetype = 12;

prompt
prompt Creating view HRV_GPS_VIEW_LASTED
prompt =================================
prompt
CREATE OR REPLACE FORCE VIEW HRV_GPS_VIEW_LASTED AS
SELECT I.DEVICEID AS ID,
       I.DEVICENAME,
       G.CVEHID,
       TO_CHAR(G.DECARLONG) AS LONGITUDE,
       TO_CHAR(G.DECARLAT) AS LATITUDE,
       TO_CHAR(G.NDIRECTION) AS NDIRECTION,
       TO_CHAR(G.DTRECORDTIME, 'yyyy-mm-dd hh24:mi:ss') AS DTRECORDTIME,
       I.GPSTYPE,
       E1.ENUMNAME AS GPSTYPENAME,
       T.DEPTSHORTNAME,
       I.GPSRADIONO,
       I.GPSCARNO,
       I.THIRDSYSCODE,
       T.CDEPARTMENTID,
       CASE OKR.REPORTSTATE
         WHEN '1' THEN
          '2'
         ELSE
          NVL2(G.CVEHID, '1', '0')
       END STATUS
       FROM EQUIPMENT_INFO I
  LEFT JOIN (SELECT E1.ENUMNAME, E1.ENUMVALUE
               FROM ENUM_TYPE E1
              WHERE E1.ENUMTYPEID = '734') E1
    ON E1.ENUMVALUE = I.GPSTYPE
  JOIN GPS_DATA G
    ON G.CVEHID = I.THIRDSYSCODE
  LEFT JOIN DEPARTMENT T
    ON T.CDEPARTMENTID = I.DEPARTMENTID
   LEFT JOIN (SELECT CARCODE, REPORTSTATE, MAX(REPORTTIME) AS REPORTTIME
               FROM ONEKEYREADY T
              WHERE T.REPORTTIME > TRUNC(SYSDATE)
                AND NOT EXISTS/*è￥??￡?±￡á?×?D?μ?*/
              (SELECT 1
                       FROM ONEKEYREADY R
                      WHERE R.CARCODE = T.CARCODE
                        AND R.REPORTTIME > TRUNC(SYSDATE)
                        AND R.REPORTTIME > T.REPORTTIME)
              GROUP BY CARCODE, REPORTSTATE) OKR
    ON OKR.CARCODE = SUBSTR(I.THIRDSYSCODE, 6)
 WHERE G.DTRECORDTIME >= /*GPS_ONLINE_TIME_INTERVAL ·??ó?úμ?*/
       SYSDATE -
       (SELECT NVL2(PARAM.PARAMVALUE, PARAM.PARAMVALUE, '5')
          FROM (SELECT T.PARAMVALUE
                  FROM SYSPARAMS T
                 WHERE T.PARAMCODE = 'GPS_ONLINE_TIME_INTERVAL') PARAM) / 1440
 AND (G.CVEHID || TO_CHAR(G.DTRECORDTIME, 'yyyy-mm-dd hh24:mi:ss')) IN
       ((SELECT GD.CVEHID ||
               TO_CHAR(MAX(GD.DTRECORDTIME), 'yyyy-mm-dd hh24:mi:ss')
          FROM GPS_DATA GD
         WHERE GD.DTRECORDTIME >
               SYSDATE -
               (SELECT NVL2(PARAM.PARAMVALUE, PARAM.PARAMVALUE, '5')
                  FROM (SELECT T.PARAMVALUE
                          FROM SYSPARAMS T
                         WHERE T.PARAMCODE = 'GPS_ONLINE_TIME_INTERVAL') PARAM) / 1440
         GROUP BY GD.CVEHID));

prompt
prompt Creating view gps_data_now
prompt ==============================
prompt
create or replace view gps_data_now as
select g.*
  from gps_data g
 where g.dtrecordtime > sysdate - 8 / 1440
   and not exists (select 1
          from gps_data d
         where d.cvehid = g.cvehid
           and d.dtrecordtime > g.dtrecordtime);


prompt
prompt Creating view HRV_GPS_DDM_VIEW
prompt ==============================
prompt
CREATE OR REPLACE FORCE VIEW HRV_GPS_DDM_VIEW AS
SELECT P.POLICENAME,
       CAST(P.POLICEID AS VARCHAR(6)) AS POLICEID,
      trim(p.uuid) policeuuid,
       P.POLICENAME AS TITLE,
       P.PHONE,
       P.DEVICEID,
       P.DEVICEID2,
       P.DEVICEID3,
       P.DEVICEID4,
    --   h."ID" deviceid,
       h."DEVICENAME",
       h."CVEHID",
       h."LONGITUDE",
       h."LATITUDE",
       to_char(h.LONGITUDE) || ',' || to_char(h.LATITUDE) as coordinate,
       h."NDIRECTION",
       h."DTRECORDTIME",
       h."GPSTYPE",
       h."GPSTYPENAME",
       h."DEPTSHORTNAME",
       h."GPSRADIONO",
       h."GPSCARNO",
       h."THIRDSYSCODE",
       h."CDEPARTMENTID",
       h."STATUS",
       '1' AS DEVICENUM,
       '1' AS EQUIPSOURCE,
       D.PARENTDEPARTMENT,
       D.NLEVEL
  FROM HRV_GPS_VIEW_LASTED H
  LEFT JOIN DEPARTMENT D ON H.CDEPARTMENTID=D.CDEPARTMENTID
  LEFT JOIN POLICE P
    ON P.DEVICEID = H.ID
 WHERE P.ISCLOSED = 1
   AND P.AUDITSTATE = '1'
   AND P.IS_EFFECTIVE = '1'
UNION ALL
SELECT P.POLICENAME,
       CAST(P.POLICEID AS VARCHAR(6)) AS POLICEID,
      trim(p.uuid) policeuuid,
       P.POLICENAME AS TITLE,
       P.PHONE,
       P.DEVICEID,
       P.DEVICEID2,
       P.DEVICEID3,
       P.DEVICEID4,
      -- h."ID" deviceid,
       h."DEVICENAME",
       h."CVEHID",
       h."LONGITUDE",
       h."LATITUDE",
       to_char(h.LONGITUDE) || ',' || to_char(h.LATITUDE) as coordinate,
       h."NDIRECTION",
       h."DTRECORDTIME",
       h."GPSTYPE",
       h."GPSTYPENAME",
       h."DEPTSHORTNAME",
       h."GPSRADIONO",
       h."GPSCARNO",
       h."THIRDSYSCODE",
       h."CDEPARTMENTID",
       h."STATUS",
       '2' AS DEVICENUM,
       '1' AS EQUIPSOURCE,
        D.PARENTDEPARTMENT,
       D.NLEVEL
  FROM HRV_GPS_VIEW_LASTED H
  LEFT JOIN DEPARTMENT D ON H.CDEPARTMENTID=D.CDEPARTMENTID
  LEFT JOIN POLICE P
    ON P.DEVICEID2 = H.ID
 WHERE P.ISCLOSED = 1
   AND P.AUDITSTATE = '1'
   AND P.IS_EFFECTIVE = '1'
UNION ALL
SELECT P.POLICENAME,
       CAST(P.POLICEID AS VARCHAR(6)) AS POLICEID,
      trim(p.uuid) policeuuid,
       P.POLICENAME AS TITLE,
       P.PHONE,
       P.DEVICEID,
       P.DEVICEID2,
       P.DEVICEID3,
       P.DEVICEID4,
    --   h."ID" deviceid,
       h."DEVICENAME",
       h."CVEHID",
       h."LONGITUDE",
       h."LATITUDE",
        to_char(h.LONGITUDE) || ',' || to_char(h.LATITUDE) as coordinate,
       h."NDIRECTION",
       h."DTRECORDTIME",
       h."GPSTYPE",
       h."GPSTYPENAME",
       h."DEPTSHORTNAME",
       h."GPSRADIONO",
       h."GPSCARNO",
       h."THIRDSYSCODE",
       h."CDEPARTMENTID",
       h."STATUS",
       '3' AS DEVICENUM,
       '1' AS EQUIPSOURCE,
         D.PARENTDEPARTMENT,
       D.NLEVEL
  FROM HRV_GPS_VIEW_LASTED H
  LEFT JOIN DEPARTMENT D ON H.CDEPARTMENTID=D.CDEPARTMENTID
  LEFT JOIN POLICE P
    ON P.DEVICEID3 = H.ID
 WHERE P.ISCLOSED = 1
   AND P.AUDITSTATE = '1'
   AND P.IS_EFFECTIVE = '1'
UNION ALL
SELECT P.POLICENAME,
       CAST(P.POLICEID AS VARCHAR(6)) AS POLICEID,
      trim(p.uuid) policeuuid,
       P.POLICENAME AS TITLE,
       P.PHONE,
       P.DEVICEID,
       P.DEVICEID2,
       P.DEVICEID3,
       P.DEVICEID4,
   --    h."ID" deviceid,
       h."DEVICENAME",
       h."CVEHID",
       h."LONGITUDE",
       h."LATITUDE",
        to_char(h.LONGITUDE) || ',' || to_char(h.LATITUDE) as coordinate,
       h."NDIRECTION",
       h."DTRECORDTIME",
       h."GPSTYPE",
       h."GPSTYPENAME",
       h."DEPTSHORTNAME",
       h."GPSRADIONO",
       h."GPSCARNO",
       h."THIRDSYSCODE",
       h."CDEPARTMENTID",
       h."STATUS",
       '4' AS DEVICENUM,
       '1' AS EQUIPSOURCE,
         D.PARENTDEPARTMENT,
       D.NLEVEL
  FROM HRV_GPS_VIEW_LASTED H
  LEFT JOIN DEPARTMENT D ON H.CDEPARTMENTID=D.CDEPARTMENTID
  LEFT JOIN POLICE P
    ON P.DEVICEID4 = H.ID
 WHERE P.ISCLOSED = 1
   AND P.AUDITSTATE = '1'
   AND P.IS_EFFECTIVE = '1'
;

prompt
prompt Creating view HRV_GPS_VIEW
prompt ==========================
prompt
CREATE OR REPLACE FORCE VIEW HRV_GPS_VIEW AS
SELECT "ORDERNUM","ID","POLICEID","DEVICENAME","CVEHID","LONGITUDE","LATITUDE","NDIRECTION","DTRECORDTIME","GPSTYPE","GPSTYPENAME","DEPTSHORTNAME","GPSRADIONO","GPSCARNO","THIRDSYSCODE","CDEPARTMENTID","STATUS","POLICENAME","TITLE","PHONE","DEVICEID","DEVICEID2","DEVICEID3","DEVICEID4","EQUIPSOURCE","DEVICENUM"
  FROM (SELECT ROW_NUMBER() OVER(PARTITION BY G.CVEHID ORDER BY G.DTRECORDTIME DESC) ORDERNUM,
               I.DEVICEID AS ID,
               CAST(P.POLICEID AS VARCHAR(6)) AS POLICEID,
               I.DEVICENAME,
               G.CVEHID,
               TO_CHAR(G.DECARLONG) AS LONGITUDE,
               TO_CHAR(G.DECARLAT) AS LATITUDE,
               TO_CHAR(G.NDIRECTION) AS NDIRECTION,
               TO_CHAR(G.DTRECORDTIME, 'yyyy-mm-dd hh24:mi:ss') AS DTRECORDTIME,
               I.GPSTYPE,
               E1.ENUMNAME AS GPSTYPENAME,
               T.DEPTSHORTNAME,
               I.GPSRADIONO,
               I.GPSCARNO,
               I.THIRDSYSCODE,
               T.CDEPARTMENTID,
               CASE OKR.REPORTSTATE
                 WHEN '1' THEN
                  '2'
                 ELSE
                  NVL2(G.CVEHID, '1', '0')
               END STATUS,
               P.POLICENAME,
               P.POLICENAME AS TITLE,
               P.PHONE,
               P.DEVICEID,
               P.DEVICEID2,
               P.DEVICEID3,
               P.DEVICEID4,
               CASE
                 WHEN P.DEVICEID = I.DEVICEID THEN
                  '1'
                 ELSE /*主设备*/
                  '2' /*附属设备*/
               END EQUIPSOURCE,
               CASE
                 WHEN P.DEVICEID = I.DEVICEID THEN
                  '1'
                 WHEN P.DEVICEID2 = I.DEVICEID THEN
                  '2'
                 WHEN P.DEVICEID3 = I.DEVICEID THEN
                  '3'
                 ELSE
                  '4'
               END DEVICENUM
          FROM EQUIPMENT_INFO I
          LEFT JOIN (SELECT E1.ENUMNAME, E1.ENUMVALUE
                      FROM ENUM_TYPE E1
                     WHERE E1.ENUMTYPEID = '734') E1
            ON E1.ENUMVALUE = I.GPSTYPE
          JOIN GPS_DATA G
            ON G.CVEHID = I.THIRDSYSCODE
          LEFT JOIN DEPARTMENT T
            ON T.CDEPARTMENTID = I.DEPARTMENTID
          JOIN (SELECT P.DEVICEID AS GPS, P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID IS NOT NULL
               UNION ALL
               SELECT P.DEVICEID2 AS GPS, P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID2 IS NOT NULL
               UNION ALL
               SELECT P.DEVICEID3 AS GPS, P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID3 IS NOT NULL
               UNION ALL
               SELECT P.DEVICEID4 AS GPS, P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID4 IS NOT NULL) P
            ON I.DEVICEID = P.GPS
          LEFT JOIN (SELECT CARCODE,
                           REPORTSTATE,
                           MAX(REPORTTIME) AS REPORTTIME
                      FROM ONEKEYREADY T
                     WHERE T.REPORTTIME > TRUNC(SYSDATE)
                       AND NOT EXISTS /*去重，保留最新的*/
                     (SELECT 1
                              FROM ONEKEYREADY R
                             WHERE R.CARCODE = T.CARCODE
                               AND R.REPORTTIME > TRUNC(SYSDATE)
                               AND R.REPORTTIME > T.REPORTTIME)
                     GROUP BY CARCODE, REPORTSTATE) OKR
            ON OKR.CARCODE = SUBSTR(I.THIRDSYSCODE, 6)
         WHERE G.DTRECORDTIME >= /*GPS_ONLINE_TIME_INTERVAL 分钟内的*/
               SYSDATE -
               (SELECT NVL2(PARAM.PARAMVALUE, PARAM.PARAMVALUE, '5')
                  FROM (SELECT T.PARAMVALUE
                          FROM SYSPARAMS T
                         WHERE T.PARAMCODE = 'GPS_ONLINE_TIME_INTERVAL') PARAM) / 1440)
 WHERE ORDERNUM = 1;

prompt
prompt Creating view HRV_SECTION_STATUS_VIEW
prompt =====================================
prompt
CREATE OR REPLACE FORCE VIEW HRV_SECTION_STATUS_VIEW AS
SELECT "RN","SECTIONID","DELAYTIME","AVSPEED","DELAYTIMERITO","COMPUTEDATE","INSERTDATE","STATUS","TRAFFICFLOW" FROM (
       SELECT ROW_NUMBER() OVER(PARTITION BY SECTIONID,COMPUTEDATE ORDER BY INSERTDATE DESC) RN, T.* FROM (
                select hss.SECTIONID,hss.DELAYTIME,hss.AVSPEED,hss.DELAYTIMERITO,hss.COMPUTEDATE,hss.INSERTDATE,ssc.status,sfds.trafficflow from hrv_section_status hss
                left join section_status_compute ssc on hss.sectionid = ssc.section_id and trunc(ssc.receivetime,'mi') = trunc(hss.computedate,'mi')
                left join section_flow_data_sum5 sfds on sfds.sectionid = hss.sectionid and trunc(sfds.computedate,'mi') = trunc(hss.computedate,'mi')
              ) T
              )
WHERE RN = 1;

prompt
prompt Creating view POLICE_GPS_RELATION_VIEW
prompt ======================================
prompt
CREATE OR REPLACE FORCE VIEW POLICE_GPS_RELATION_VIEW AS
SELECT I.DEVICEID,
       I.GPSCARNO,
       I.GPSRADIONO,
       I.DEPARTMENTID,
       GPS.ENUMVALUE,
       GPS.ENUMNAME,
       P.POLICENAME,
       nvl(p.isclosed,0) isclosed
  FROM EQUIPMENT_INFO I
  LEFT JOIN (SELECT E.ENUMVALUE, E.ENUMNAME
               FROM ENUM_TYPE E
              WHERE E.ENUMTYPEID = '734') GPS
    ON GPS.ENUMVALUE = I.GPSTYPE
  LEFT JOIN (SELECT P.DEVICEID AS GPS,P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID IS NOT NULL
               UNION ALL
              SELECT P.DEVICEID2 AS GPS,P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID2 IS NOT NULL
               UNION ALL
               SELECT P.DEVICEID3 AS GPS,P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID3 IS NOT NULL
               UNION ALL
               SELECT P.DEVICEID4 AS GPS,P.*
                 FROM POLICE P
                WHERE P.IS_EFFECTIVE = '1'
                  AND P.AUDITSTATE = '1'
                  AND P.ISCLOSED = '1'
                  AND P.DEVICEID4 IS NOT NULL) P
            ON i.DEVICEID = P.GPS
 WHERE I.DEVICETYPE = '12';

prompt
prompt Creating view POLICE_STATUS_VIEW
prompt ================================
prompt
create or replace force view police_status_view as
select p.uuid,p.depid,e.deviceid,e.devicename,e.thirdsyscode,
case okr.REPORTSTATE
 when '1' then '2' --报备
else
   nvl2(gg.cvehid,'1','0')
 end status,gg.cvehid,
  gg.decarlong,gg.decarlat,gg.ndirection,gg.dtrecordtime,e.gpstype
 from police p
left join equipment_info e  on p.deviceid=e.deviceid
left join (select carcode, reportstate, max(reporttime) as reporttime from onekeyready t where t.reporttime > trunc(sysdate) group by carcode, reportstate) okr --on okr.carcode=ltrim(e.thirdsyscode,'0')
on okr.carcode=substr(e.thirdsyscode, 6)
left join(select cvehid,decarlong,decarlat,ndirection,max(dtrecordtime) as dtrecordtime from gps_data g where g.dtrecordtime>sysdate-(select nvl2(param.paramvalue,param.paramvalue,'5') from  (select t.paramvalue from sysparams t where t.paramcode='GPS_ONLINE_TIME_INTERVAL') param)/60/24 group by cvehid,decarlong,decarlat,ndirection) gg on gg.cvehid = e.thirdsyscode
where p.hasgps='0' and p.AUDITSTATE='1'
and not exists(
select 1 from onekeyready r where r.carcode = okr.carcode and r.reporttime>trunc(sysdate) and r.reporttime>okr.reporttime
)
and not exists(
select 1 from gps_data g where g.cvehid=gg.cvehid and g.dtrecordtime>sysdate-(select nvl2(param.paramvalue,param.paramvalue,'5') from  (select t.paramvalue from sysparams t where t.paramcode='GPS_ONLINE_TIME_INTERVAL') param)/60/24 and g.dtrecordtime>gg.dtrecordtime)
;

prompt
prompt Creating view SECTION_STATUS_CURRENT
prompt ====================================
prompt
create or replace force view section_status_current as
select t.section_id,
       t.status,
       t.traveltime,
       d.commcount * 60 as volume,
       d.speed,
       t.computetime,
       d.laneid
  from section_status_present t
  left join (select ssd.sectionid,
                    ssd.laneid,
                    avg(ssd.commcount) as commcount,
                    round(avg(ssd.speed)) as speed
               from section_status_data ssd
              where ssd.stdtime > sysdate - 5 / 24 / 60
                and ssd.commcount > 0
                and ssd.speed > 0
                and not exists
              (select 1
                       from section_status_data s
                      where s.stdtime > sysdate - 5 / 24 / 60
                        and s.sectionid = ssd.sectionid
                        and s.stdtime > ssd.stdtime)
              group by ssd.sectionid, ssd.laneid) d
    on d.sectionid = t.section_id;

prompt
prompt Creating view SECTION_STATUS_PRESENT_VIEW
prompt =========================================
prompt
create or replace force view section_status_present_view as
select "ID","SECTION_ID","STATUS","TRAVELTIME","VOLUME","SPEED","COMPUTETIME","RECEIVETIME","INDEY" from SECTION_STATUS_PRESENT;

prompt
prompt Creating view SECTION_STATUS_VIEW
prompt =================================
prompt
create or replace force view section_status_view as
select t.section_id,t.status,t.computetime from section_status_compute t where t.computetime>sysdate-10/24/60
and  not exists
 (select 1
          from section_status_compute s
         where s.computetime > sysdate - 10 / 24 / 60
           and t.section_id = s.section_id
           and s.receivetime > t.receivetime
    );

prompt
prompt Creating view SECTION_VOLUME_VIEW
prompt =================================
prompt
create or replace force view section_volume_view as
select t.sectionid,t.sectionname,t.laneid,t.commcount*60 volume,t.speed,t.traveltime,t.stdtime,msp.positions
from section_status_data t left join monitor_section_positions msp on t.sectionid=msp.sectionid
where msp.zoomlevel=0 and t.stdtime>sysdate-10/24/60 and
 not exists
 (select 1
          from section_status_data s
         where s.stdtime > sysdate-10/24/60
           and t.sectionid = s.sectionid
           and s.stdtime > t.stdtime
    );

prompt
prompt Creating view SYSTEM_OPERATOR
prompt =============================
prompt
create or replace force view system_operator as
select t.NUSERID as OPERATOR_ID,
       t.NUSERID as USERNAME,
       t.CUSERPWD as PASSWORD,
  t.CUSERNAME as TRUENAME,
     t.CDEPARTMENTID as ORG_ID,
     d.roleid as DEPARTMENT_NAME,
     t.TELEPHONE as TELEPHONE
  from OPERATOR t
  left join USER_ROLE_RELATION d
    on t.NUSERID = d.NUSERID;

prompt
prompt Creating view TPMS_POLICE_DEVICE
prompt ================================
prompt
create or replace force view tpms_police_device as
select t1.uuid,t1.policeid,t1.deviceid deviceid,4 lv from police t1 where t1.deviceid is not null
union all
select t2.uuid,t2.policeid,t2.deviceid2 deviceid,3 lv from police t2 where t2.deviceid2 is not null
union all
select t3.uuid,t3.policeid,t3.deviceid3 deviceid,2 lv from police t3 where t3.deviceid3 is not null
union all
select t4.uuid,t4.policeid,t4.deviceid4 deviceid,1 lv from police t4 where t4.deviceid4 is not null;

prompt
prompt Creating view VEHICLE_BRAND_MAIN_SUB
prompt ====================================
prompt
create or replace force view vehicle_brand_main_sub as
select distinct t.mainbrand,t.subbrand,t.mainbranddesc,t.subbranddesc from vehicle_brand t;

prompt
prompt Creating view VEH_INFO_LOCAL
prompt ============================
prompt
create or replace force view veh_info_local as
select "XH","HPZL","HPHM","CLPP1","CLXH","CLPP2","GCJK","ZZG","ZZCMC","CLSBDH","FDJH","CLLX","CSYS","SYXZ","SFZMHM","SFZMMC","SYR","SYQ","CCDJRQ","DJRQ","YXQZ","QZBFQZ","FZJG","GLBM","FPRQ","FZRQ","FDJRQ","FHGZRQ","BXZZRQ","BPCS","BZCS","BDJCS","DJZSBH","ZDJZSHS","DABH","XZQH","ZT","DYBJ","JBR","CLLY","LSH","FDJXH","RLZL","PL","GL","ZXXS","CWKC","CWKK","CWKG","HXNBCD","HXNBKD","HXNBGD","GBTHPS","ZS","ZJ","QLJ","HLJ","LTGG","LTS","ZZL","ZBZL","HDZZL","HDZK","ZQYZL","QPZK","HPZK","HBDBQK","CCRQ","HDFS","LLPZ1","PZBH1","LLPZ2","PZBH2","XSDW","XSJG","XSRQ","JKPZ","JKPZHM","HGZBH","NSZM","NSZMBH","GXRQ","XGZL","QMBH","HMBH","BZ","JYW","ZSXZQH","ZSXXDZ","YZBM1","LXDH","ZZZ","ZZXZQH","ZZXXDZ","YZBM2","ZDYZT","YXH","CYRY","DPHGZBH","SQDM","CLYT","YTSX","DZYX","XSZBH","SJHM","JYHGBZBH","DWBH" from veh_info t;

prompt
prompt Creating view VEH_INFO_VIEW
prompt ===========================
prompt
create or replace force view veh_info_view as
select "XH","CP","SYR","LXDH","ZT" from (
select v.xh,'贵'||v.hphm cp,v.syr,v.lxdh,v.zt,v.hpzl
from veh_info v where v.zt='E' or v.zt='M') a
where not exists(select 1 from(
select v.xh,'贵'||v.hphm cp,v.syr,v.lxdh,v.zt,v.hpzl
from veh_info v where v.zt='E' or v.zt='M') b
where a.cp=b.cp and a.hpzl=b.hpzl and b.xh>a.xh);

prompt
prompt Creating view VEH_XH_VIEW
prompt =========================
prompt
create or replace force view veh_xh_view as
select "XH","CP","SYR","LXDH","ZT","YXQZ","HPZL" from (
select v.xh,'贵'||v.hphm cp,v.syr,v.lxdh,v.zt,v.yxqz,v.hpzl
from veh_info v) a
where not exists(select 1 from(
select v.xh,'贵'||v.hphm cp,v.syr,v.lxdh,v.zt,v.yxqz,v.hpzl
from veh_info v) b
where a.cp=b.cp and a.hpzl=b.hpzl and b.xh>a.xh);

prompt
prompt Creating package ADVANCE_SUPPORT_PKG
prompt ====================================
prompt
create or replace package advance_support_pkg is
  --点岗判断
  function is_contains_circle(p_x number, p_y number, p_point varchar2)
    return number;
  --巡逻岗判断
  function is_contains_range(p_point varchar2, p_points varchar2)
    return number;

  --查询是否到岗
  procedure check_position_on;
end advance_support_pkg;
/

prompt
prompt Creating package DATA_ANALYSIS_PKG
prompt ==================================
prompt
create or replace package DATA_ANALYSIS_PKG is
  /***************************************************************************************************

  最后修改时间:2016-10-11 13:53:42 维护人：FengXiaogang

  数据质量分析业务功能：对卡口或电警或流量每天的数据进行统计，统计内容包括：采集延时、入库延时、上传数、识别率等。
  此业务涉及四个表：
  1、过车临时表(detect_data_by_day，存储过车1-2天的临时数据)；
  2、流量临时表(volume_data_by_day，存储流量1-2天的临时数据)；
  3、违法临时表(illegal_data_by_day，存储违法7-8天的临时数据)；
  4、数据质量分析结果表(equip_data_analysis);

  一个方法
  1、根据历史数据判断设备是否降效(upload_low_efficiency)

  六个存储过程：分别为：
  1、过车数据质量分析(pass_analysis)；
  2、过车临时表分区删除(passbyday_partition_drop)；

  3、流量数据质量分析(volume_analysis)；
  4、流量临时表分区删除(volumebyday_partition_drop)；

  5、违法数据质量分析(police_analysis)；
  6、违法临时表分区删除(policebyday_partition_drop)；

  ***************************************************************************************************/

  /**************************************************************************************************
  方法：upload_low_efficiency
  根据某一设备在一个月内的历史数据判断该设备上传的过车/违法数据是否有波动 降效
  参数：
    target：设备某一天上传的过车/违法数据
    deviceid：设备编号
    pass_ill_flag：过车或违法降效判断,"pass"表示过车判断，其他表示违法判断
    eff_desc：输出参数，如果降效，降效描述通过该参数返回
  返回值：
    如果有波动降效则返回true，否则返回false
  ***************************************************************************************************/
  function upload_low_efficiency(target        number,
                                 deviceid      varchar2,
                                 pass_ill_flag varchar2,
                                 eff_desc      out varchar2) return boolean;

  /***************************************************************************************************
  存储过程：police_analysis
  设备违法数据质量分析
  每天00:10:00执行，参见定时任务 job_data_analysis_police
  ***************************************************************************************************/
  procedure police_analysis;
  /***************************************************************************************************
  存储过程：passbyday_partition_drop
  违法临时表（illegal_data_by_day）分区删除存储过程，删除两天前创建的分区，也就是删除两天之前的数据，防
  止临时表数据过大
  每天00:06:00执行，参见定时任务 job_data_analysis_policedrop
  ***************************************************************************************************/
  procedure policebyday_partition_drop;

  /***************************************************************************************************
  存储过程：upload_low_efficiency
  设备过车数据质量分析
  每天00:20:00执行，参见定时任务 job_data_analysis_pass
  ***************************************************************************************************/
  procedure pass_analysis;

  /***************************************************************************************************
  存储过程：passbyday_partition_drop
  过车临时表（detect_data_by_day）分区删除存储过程，删除两天前创建的分区，也就是删除两天之前的数据，防
  止临时表数据过大
  每天00:06:00执行，参见定时任务 job_data_analysis_passdrop,

  ***************************************************************************************************/
  procedure passbyday_partition_drop;

  /***************************************************************************************************
  存储过程：volume_analysis
  设备流量数据质量分析
  每天00:30:00执行，参见定时任务 job_data_analysis_volume,
  ***************************************************************************************************/
  procedure volume_analysis;

  /***************************************************************************************************
  存储过程：volumebyday_partition_drop
  流量临时表（volume_data_by_day）分区删除存储过程，删除两天前创建的分区，也就是删除两天之前的数据，防
  止临时表数据过大
  每天00:06:00执行，参见定时任务job_data_analysis_volumedrop
  ***************************************************************************************************/
  procedure volumebyday_partition_drop;

end DATA_ANALYSIS_PKG;
/

prompt
prompt Creating package DUTY3_AUDIT_AUTO_PKG
prompt =====================================
prompt
create or replace package duty3_audit_auto_pkg is

  --中队自动提交
  procedure submit_zho_auto;
  --大队自动审核、提交
  procedure check_big_auto;
  --支队自动审核
  procedure check_zhi_auto;

end duty3_audit_auto_pkg;
/

prompt
prompt Creating package DUTY3_AUDIT_AUTO_PKG2
prompt ======================================
prompt
create or replace package duty3_audit_auto_pkg2 is

  --中队自动提交
  procedure submit_zho_auto(p_d number);
  --大队自动审核、提交
  procedure check_big_auto(p_d number);
  --支队自动审核
  procedure check_zhi_auto(p_d number);


end duty3_audit_auto_pkg2;
/

prompt
prompt Creating package DUTY3_SUPPORT_PKG
prompt ==================================
prompt
create or replace package duty3_support_pkg is

  --判断该人次是否脱岗（0：在岗，1：脱岗）
  function is_out_duty(p_deploy_id varchar2, p_police_id varchar2)
    return number;
  --判断该人次是否迟到（0：未迟到，1：迟到）
  function is_late_duty(p_deploy_id varchar2, p_police_id varchar2)
    return number;
  --判断该人次是否早退（0：未早退，1：早退）
  function is_leave_early_duty(p_deploy_id varchar2, p_police_id varchar2)
    return number;
  --判断该人次是否上岗报备（0：未报备，1：已报备）
  function is_on_ready(p_deploy_id  varchar2,
                       p_police_id  varchar2,
                       p_gpsradiono varchar2) return number;
  --判断该人次是否撤岗报备（0：未报备，1：已报备）
  function is_out_ready(p_deploy_id  varchar2,
                        p_police_id  varchar2,
                        p_gpsradiono varchar2) return number;
  function get_pre_ready(p_duty_time_id             varchar2,
                         p_day                      date,
                         p_police_id                varchar2,
                         p_gpsradiono               varchar2,
                         p_before_first_deploy_time number,
                         p_before_begin_deploy_time number) return number;

  function get_aft_ready(p_duty_time_id           varchar2,
                         p_day                    date,
                         p_police_id              varchar2,
                         p_gpsradiono             varchar2,
                         p_after_last_deploy_time number,
                         p_after_end_deploy_time  number) return number;
  --获得上岗报备时间
  function get_on_ready_time(p_deploy_id  varchar2,
                             p_police_id  varchar2,
                             p_gpsradiono varchar2) return varchar2;
  --获得撤岗报备时间
  function get_out_ready_time(p_deploy_id  varchar2,
                              p_police_id  varchar2,
                              p_gpsradiono varchar2) return varchar2;
  --获得指定code参数的value值
  function getParamType(p_define_code varchar2, p_type_code varchar2)
    return varchar2;

  --判断是否连续岗位，0：否，1：是
  function is_continuous(p_ready_type varchar2,
                         p_deploy_id  varchar2,
                         p_police_id  varchar2) return number;
  --警员执勤报备情况计算（时间段）
  procedure deploy_police_ready(p_deploy_begin_date date,
                                p_deploy_end_date   date);
  --警员执勤报备情况计算（指定日期）
  procedure deploy_police_ready_by_date(p_deploy_date date);
  --警员执勤报备情况计算（前一天）
  procedure deploy_police_ready_auto;

  --警员执勤到岗情况计算（时间段）
  procedure deploy_police_duty(p_deploy_begin_date date,
                               p_deploy_end_date   date);
  --警员执勤到岗情况计算（指定日期）
  procedure deploy_police_duty_by_date(p_deploy_date date);
  --警员执勤到岗情况计算（前一天）
  procedure deploy_police_duty_auto;
  --警员执勤迟到早退情况计算（时间段）
  procedure deploy_police_late_le(p_deploy_begin_date date,
                               p_deploy_end_date   date);
  --警员执勤迟到早退情况计算（指定日期）
  procedure deploy_police_late_le_by_date(p_deploy_date date);
  --警员执勤迟到早退情况计算（前一天）
  procedure deploy_police_late_le_auto;
  --获得日勤级别
  function get_deploy_level(p_dept_id     varchar2,
                            p_deploy_date date,
                            p_type        varchar2) return number;
end duty3_support_pkg;
/

prompt
prompt Creating type TABLETYPE
prompt =======================
prompt
CREATE OR REPLACE TYPE "TABLETYPE"                                                                                                                                                   as table of VARCHAR2(32676)
/

prompt
prompt Creating type TT_06_AUTOREF_OID_COLL_TYPE
prompt =========================================
prompt
CREATE OR REPLACE TYPE TT_06_AUTOREF_OID_COLL_TYPE IS VARRAY (131072) OF VARCHAR2(38)
/

prompt
prompt Creating type ZH_CONCAT_IM
prompt ==========================
prompt
CREATE OR REPLACE TYPE zh_concat_im
AUTHID CURRENT_USER AS OBJECT
(
  CURR_STR VARCHAR2(32767),
  STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT zh_concat_im) RETURN NUMBER,
  MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT zh_concat_im,
               P1 IN VARCHAR2) RETURN NUMBER,
  MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN zh_concat_im,
                                 RETURNVALUE OUT VARCHAR2,
                                 FLAGS IN NUMBER)
                     RETURN NUMBER,
  MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT zh_concat_im,
                    SCTX2 IN  zh_concat_im) RETURN NUMBER
);
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
prompt Creating function F_TRANS_PINYIN_CAPITAL
prompt ========================================
prompt
CREATE OR REPLACE FUNCTION F_TRANS_PINYIN_CAPITAL(P_NAME IN VARCHAR2)
  RETURN VARCHAR2 AS
  V_COMPARE VARCHAR2(100);
  V_RETURN  VARCHAR2(4000);

  FUNCTION F_NLSSORT(P_WORD IN VARCHAR2) RETURN VARCHAR2 AS
  BEGIN
    RETURN NLSSORT(P_WORD, 'NLS_SORT=SCHINESE_PINYIN_M');
  END;
BEGIN
  FOR I IN 1 .. LENGTH(P_NAME) LOOP
    V_COMPARE := F_NLSSORT(SUBSTR(P_NAME, I, 1));
    IF V_COMPARE >= F_NLSSORT(' 吖 ') AND V_COMPARE <= F_NLSSORT('驁 ') THEN
      V_RETURN := V_RETURN || 'a';
    ELSIF V_COMPARE >= F_NLSSORT('八 ') AND V_COMPARE <= F_NLSSORT('簿 ') THEN
      V_RETURN := V_RETURN || 'b';
    ELSIF V_COMPARE >= F_NLSSORT('嚓 ') AND V_COMPARE <= F_NLSSORT('錯 ') THEN
      V_RETURN := V_RETURN || 'c';
    ELSIF V_COMPARE >= F_NLSSORT('咑 ') AND V_COMPARE <= F_NLSSORT('鵽 ') THEN
      V_RETURN := V_RETURN || 'd';
    ELSIF V_COMPARE >= F_NLSSORT('妸 ') AND V_COMPARE <= F_NLSSORT('樲 ') THEN
      V_RETURN := V_RETURN || 'e';
    ELSIF V_COMPARE >= F_NLSSORT('发 ') AND V_COMPARE <= F_NLSSORT('猤 ') THEN
      V_RETURN := V_RETURN || 'f';
    ELSIF V_COMPARE >= F_NLSSORT('旮 ') AND V_COMPARE <= F_NLSSORT('腂 ') THEN
      V_RETURN := V_RETURN || 'g';
    ELSIF V_COMPARE >= F_NLSSORT('妎 ') AND V_COMPARE <= F_NLSSORT('夻 ') THEN
      V_RETURN := V_RETURN || 'h';
    ELSIF V_COMPARE >= F_NLSSORT('丌 ') AND V_COMPARE <= F_NLSSORT('攈 ') THEN
      V_RETURN := V_RETURN || 'j';
    ELSIF V_COMPARE >= F_NLSSORT('咔 ') AND V_COMPARE <= F_NLSSORT('穒 ') THEN
      V_RETURN := V_RETURN || 'k';
    ELSIF V_COMPARE >= F_NLSSORT('垃 ') AND V_COMPARE <= F_NLSSORT('擽 ') THEN
      V_RETURN := V_RETURN || 'l';
    ELSIF V_COMPARE >= F_NLSSORT('嘸 ') AND V_COMPARE <= F_NLSSORT('椧 ') THEN
      V_RETURN := V_RETURN || 'm';
    ELSIF V_COMPARE >= F_NLSSORT('拏 ') AND V_COMPARE <= F_NLSSORT('瘧 ') THEN
      V_RETURN := V_RETURN || 'n';
    ELSIF V_COMPARE >= F_NLSSORT('筽 ') AND V_COMPARE <= F_NLSSORT('漚 ') THEN
      V_RETURN := V_RETURN || 'o';
    ELSIF V_COMPARE >= F_NLSSORT('妑 ') AND V_COMPARE <= F_NLSSORT('曝 ') THEN
      V_RETURN := V_RETURN || 'p';
    ELSIF V_COMPARE >= F_NLSSORT('七 ') AND V_COMPARE <= F_NLSSORT('裠 ') THEN
      V_RETURN := V_RETURN || 'q';
    ELSIF V_COMPARE >= F_NLSSORT('亽 ') AND V_COMPARE <= F_NLSSORT('鶸 ') THEN
      V_RETURN := V_RETURN || 'r';
    ELSIF V_COMPARE >= F_NLSSORT('仨 ') AND V_COMPARE <= F_NLSSORT('蜶 ') THEN
      V_RETURN := V_RETURN || 's';
    ELSIF V_COMPARE >= F_NLSSORT('侤 ') AND V_COMPARE <= F_NLSSORT('籜 ') THEN
      V_RETURN := V_RETURN || 't';
    ELSIF V_COMPARE >= F_NLSSORT('屲 ') AND V_COMPARE <= F_NLSSORT('鶩 ') THEN
      V_RETURN := V_RETURN || 'w';
    ELSIF V_COMPARE >= F_NLSSORT('夕 ') AND V_COMPARE <= F_NLSSORT('鑂 ') THEN
      V_RETURN := V_RETURN || 'x';
    ELSIF V_COMPARE >= F_NLSSORT('丫 ') AND V_COMPARE <= F_NLSSORT('韻 ') THEN
      V_RETURN := V_RETURN || 'y';
    ELSIF V_COMPARE >= F_NLSSORT('帀 ') AND V_COMPARE <= F_NLSSORT('咗 ') THEN
      V_RETURN := V_RETURN || 'z';
    END IF;
  END LOOP;
  RETURN V_RETURN;
END;
/

prompt
prompt Creating function F_TRANS_PINYIN_CAPITAL_H
prompt ==========================================
prompt
CREATE OR REPLACE FUNCTION F_TRANS_PINYIN_CAPITAL_H(P_NAME IN VARCHAR2) RETURN VARCHAR2 AS
V_COMPARE VARCHAR2(100);
V_RETURN VARCHAR2(4000);
tmp  integer;
FUNCTION F_NLSSORT(P_WORD IN VARCHAR2) RETURN VARCHAR2 AS
BEGIN
RETURN NLSSORT(P_WORD, 'NLS_SORT=SCHINESE_PINYIN_M');
END;
BEGIN
V_COMPARE := F_NLSSORT(SUBSTR(P_NAME, 1, 1));

select length(SUBSTR(P_NAME, 1, 1)) - lengthb(SUBSTR(P_NAME, 1, 1)) into tmp from dual;

IF tmp=0 then
V_RETURN :=   SUBSTR(P_NAME, 1, 1);
RETURN V_RETURN;
END IF;

IF V_COMPARE >= F_NLSSORT(' 吖 ') AND V_COMPARE <= F_NLSSORT('驁 ') THEN
V_RETURN := V_RETURN || 'A';
ELSIF V_COMPARE >= F_NLSSORT('八 ') AND V_COMPARE <= F_NLSSORT('簿 ') THEN
V_RETURN := V_RETURN || 'B';
ELSIF V_COMPARE >= F_NLSSORT('嚓 ') AND V_COMPARE <= F_NLSSORT('錯 ') THEN
V_RETURN := V_RETURN || 'C';
ELSIF V_COMPARE >= F_NLSSORT('咑 ') AND V_COMPARE <= F_NLSSORT('鵽 ') THEN
V_RETURN := V_RETURN || 'D';
ELSIF V_COMPARE >= F_NLSSORT('妸 ') AND V_COMPARE <= F_NLSSORT('樲 ') THEN
V_RETURN := V_RETURN || 'E';
ELSIF V_COMPARE >= F_NLSSORT('发 ') AND V_COMPARE <= F_NLSSORT('猤 ') THEN
V_RETURN := V_RETURN || 'F';
ELSIF V_COMPARE >= F_NLSSORT('旮 ') AND V_COMPARE <= F_NLSSORT('腂 ') THEN
V_RETURN := V_RETURN || 'G';
ELSIF V_COMPARE >= F_NLSSORT('妎 ') AND V_COMPARE <= F_NLSSORT('夻 ') THEN
V_RETURN := V_RETURN || 'H';
ELSIF V_COMPARE >= F_NLSSORT('丌 ') AND V_COMPARE <= F_NLSSORT('攈 ') THEN
V_RETURN := V_RETURN || 'J';
ELSIF V_COMPARE >= F_NLSSORT('咔 ') AND V_COMPARE <= F_NLSSORT('穒 ') THEN
V_RETURN := V_RETURN || 'K';
ELSIF V_COMPARE >= F_NLSSORT('垃 ') AND V_COMPARE <= F_NLSSORT('擽 ') THEN
V_RETURN := V_RETURN || 'L';
ELSIF V_COMPARE >= F_NLSSORT('嘸 ') AND V_COMPARE <= F_NLSSORT('椧 ') THEN
V_RETURN := V_RETURN || 'M';
ELSIF V_COMPARE >= F_NLSSORT('拏 ') AND V_COMPARE <= F_NLSSORT('瘧 ') THEN
V_RETURN := V_RETURN || 'N';
ELSIF V_COMPARE >= F_NLSSORT('筽 ') AND V_COMPARE <= F_NLSSORT('漚 ') THEN
V_RETURN := V_RETURN || 'O';
ELSIF V_COMPARE >= F_NLSSORT('妑 ') AND V_COMPARE <= F_NLSSORT('曝 ') THEN
V_RETURN := V_RETURN || 'P';
ELSIF V_COMPARE >= F_NLSSORT('七 ') AND V_COMPARE <= F_NLSSORT('裠 ') THEN
V_RETURN := V_RETURN || 'Q';
ELSIF V_COMPARE >= F_NLSSORT('亽 ') AND V_COMPARE <= F_NLSSORT('鶸 ') THEN
V_RETURN := V_RETURN || 'R';
ELSIF V_COMPARE >= F_NLSSORT('仨 ') AND V_COMPARE <= F_NLSSORT('蜶 ') THEN
V_RETURN := V_RETURN || 'S';
ELSIF V_COMPARE >= F_NLSSORT('侤 ') AND V_COMPARE <= F_NLSSORT('籜 ') THEN
V_RETURN := V_RETURN || 'T';
ELSIF V_COMPARE >= F_NLSSORT('屲 ') AND V_COMPARE <= F_NLSSORT('鶩 ') THEN
V_RETURN := V_RETURN || 'W';
ELSIF V_COMPARE >= F_NLSSORT('夕 ') AND V_COMPARE <= F_NLSSORT('鑂 ') THEN
V_RETURN := V_RETURN || 'X';
ELSIF V_COMPARE >= F_NLSSORT('丫 ') AND V_COMPARE <= F_NLSSORT('韻 ') THEN
V_RETURN := V_RETURN || 'Y';
ELSIF V_COMPARE >= F_NLSSORT('帀 ') AND V_COMPARE <= F_NLSSORT('咗 ') THEN
V_RETURN := V_RETURN || 'Z';
END IF;



RETURN V_RETURN;



END;
/

prompt
prompt Creating function GETEXPIRATEDAYS
prompt =================================
prompt
CREATE OR REPLACE FUNCTION getExpirateDays (
   expirationdate IN DATE
) RETURN INT IS
    var_count INT;
BEGIN
    SELECT
        ( COUNT(1) - 1 )
    INTO
        var_count
    FROM
        (
            SELECT
                expirationdate + ROWNUM - 1 D
            FROM
                dual
            CONNECT BY
                expirationdate + ROWNUM - 1 <= SYSDATE
            START WITH 1=1
        )
    WHERE
        TO_CHAR(d,'D') NOT IN (
            '1',
            '7'
        );
    RETURN var_count;
END getExpirateDays;
/

prompt
prompt Creating function GET_BURSTEVENT_DUTYTIME
prompt =========================================
prompt
create or replace function get_burstevent_dutytime(bt    in Date,
                                             et in Date,uid in varchar2)
  return numeric is

  type recordtype is record(
    btime  Date,
    etime Date);

  returnDate numeric default 0;

  type recordtable is table of recordtype index by binary_integer;
  mytable recordtable;

begin
  select e.btime,e.etime bulk collect
    into mytable
    from ALERTEVENT_DUTY  e
   where e.btime >= bt
     and e.etime<=et and e.etime is not null
   and e.userid=uid
   order by e.btime
   ;

  for x in 1 .. mytable.count loop
    if x>1 then
      returnDate:=returnDate+(mytable(x).etime-mytable(x).btime)*1440;
      if mytable(x).btime<mytable(x-1).etime then
        returnDate:=returnDate-(mytable(x-1).etime-mytable(x).btime)*1440;
      end if;
    else
      returnDate:=(mytable(x).etime-mytable(x).btime)*1440;
    end if;
  end loop;
  return round(returnDate,0);
end get_burstevent_dutytime;
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
prompt Creating function GET_DEVICE_NAME
prompt =================================
prompt
create or replace function get_device_name(deviceids varchar2) return varchar2 is
  Result varchar2(6000);
  devicename varchar2(1000);
  cursor pcur(cid varchar2)  is
  SELECT COLUMN_VALUE as id FROM table (split(cid));
begin
  RESULT:='';
  devicename:='';
  FOR cur in pcur(deviceids) LOOP
   select e.devicename into devicename from equipment_info e where e.deviceid=cur.id;
  RESULT:=RESULT || devicename;
  END LOOP;

  return(RESULT);
end get_device_name;
/

prompt
prompt Creating function GET_PREBYDEVICEID
prompt ===================================
prompt
create or replace function get_preByDeviceId(d_id    in varchar2,
                                             xx_id in varchar2)
  return varchar2 is

  type recordtype is record(
    pre_id         varchar2(20),
    pre_remaintime varchar2(20));

    returnStr varchar2(2000) default '';

  type recordtable is table of recordtype index by binary_integer;
  mytable recordtable;

begin
  select e.pre_id, e.playing_time bulk collect
    into mytable
    from common_position_preset e
   where e.deviceid = '' || d_id || ''
     and e.line_id = '' || xx_id || ''
   order by e.sort_number;

  for x in 1 .. mytable.count loop

    returnStr := returnStr || mytable(x).pre_id || ':' || mytable(x)
                .pre_remaintime || ',';

  end loop;
  returnStr := substr(returnStr, 0, length(returnStr) - 1);
  return returnStr;
end get_preByDeviceId;
/

prompt
prompt Creating function GPS_OFFSET_LENGTH
prompt ===================================
prompt
create or replace function gps_offset_length(p1_longi number,p1_lati number,p2_longi number,p2_lati number) return number is
  Result number;
begin
 declare c_p number :=0.0174532925199432957692222222222;
    dlon number :=(p2_longi - p1_longi)*c_p;
    dlat number :=(p2_lati - p1_lati)* c_p;
    a number;
 begin
    a := sin(0.5 * dlat) * sin(0.5 * dlat) + cos(p1_lati * c_p) * cos(p2_lati * c_p) * (sin(0.5 * dlon) * sin(0.5 * dlon));
    a := abs(a);
    if a >1 then
       Result:= 0;
    else
       Result:= 2*atan2(sqrt(a),sqrt(1-a))*6371008.77141506;
    end if;
 end;
 return Result;
end gps_offset_length;
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

prompt
prompt Creating function ZH_CONCAT
prompt ===========================
prompt
CREATE OR REPLACE FUNCTION zh_concat(P1 VARCHAR2)
RETURN VARCHAR2 AGGREGATE USING zh_concat_im;
/

prompt
prompt Creating procedure ADDCONTROLTYPE
prompt =================================
prompt
CREATE OR REPLACE PROCEDURE AddControlType(no in VARCHAR2,name in NVARCHAR2,isdelete in CHAR)
AS
       maxid varchar2(100);
BEGIN
insert into enum_type(enumtypeid,enumvalue,enumname) values(1101,no,name);

select lpad(max(to_number(t.id))+1,8,'0') into maxid from OPERATE_COMPONENT t where t.menu_id='020401';
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id)
values (maxid, '020401', name||'撤控', name||'撤控', null);
insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002',maxid);
insert into control_type_param(controltypeno,allowdelete,operationid) values(no,isdelete,maxid);
commit;
END;
/

prompt
prompt Creating procedure ADDCONTROLTYPEINIT
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE AddControlTypeINIT(no in VARCHAR2,name in NVARCHAR2,isdelete in

CHAR)
AS
       maxid varchar2(100);
BEGIN
--insert into enum_type(enumtypeid,enumvalue,enumname) values(1101,no,name);

select lpad(max(to_number(t.id))+1,8,'0') into maxid from OPERATE_COMPONENT t where

t.menu_id='020401';
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id)
values (maxid, '020401', name||'撤控', name||'撤控', null);
insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002',maxid);
insert into control_type_param(controltypeno,allowdelete,operationid) values(no,isdelete,maxid);
commit;
END;
/

prompt
prompt Creating procedure ALERT_ANALYSIS_MIDDLE_DATA
prompt =============================================
prompt
CREATE OR REPLACE PROCEDURE ALERT_ANALYSIS_MIDDLE_DATA
AS
BEGIN
insert into black_low_analysis_mid_data
select
t1.bjdd,
TRUNC(SYSDATE-1),
sum(case t1.controltype when '01' then 1 else 0 end) Sgty,
sum(case t1.controltype when '02' then 1 else 0 end) Tpc,
sum(case t1.controltype when '03' then 1 else 0 end) Jpc,
sum(case t1.controltype when '04' then 1 else 0 end) Yqwnj,
sum(case t1.controltype when '05' then 1 else 0 end) Bfc,
sum(case t1.controltype when '06' then 1 else 0 end) Wfwcl,
sum(case t1.controltype when '07' then 1 else 0 end) Dcwfwcl,
sum(case t1.controltype when '21' then 1 else 0 end) Xsaj,
sum(case t1.controltype when '22' then 1 else 0 end) Zdzaaj,
sum(case t1.controltype when '23' then 1 else 0 end) Wffzxyjtgj,
sum(case t1.controltype when '24' then 1 else 0 end) Bdq,
sum(case t1.controltype when '25' then 1 else 0 end) Zactgk,
sum(case t1.controltype when '27' then 1 else 0 end) Hbbfc,
sum(case t1.controltype when '28' then 1 else 0 end) Whpcl,
sum(case t1.controltype when '29' then 1 else 0 end) Gswfwfj
from  black_alert_info t1
where T1.BJSJ>=TRUNC(SYSDATE-1)
AND T1.BJSJ<TRUNC(SYSDATE)
group by t1.bjdd;
end;
/

prompt
prompt Creating procedure ANALYSIS_SUM5_SECTION_FLOW_PRO
prompt =================================================
prompt
CREATE OR REPLACE PROCEDURE ANALYSIS_SUM5_SECTION_FLOW_PRO is
--路段流量5分钟粒度汇总存储过程
  v_table_ori varchar2(30); --被汇总的表
  v_table_sum varchar2(30); --汇总结果表

  v_ins_sql varchar2(1000); --执行新增的sql语句
  v_sum_sql varchar2(1000); --执行汇总的sql语句

  v_sum_sql_time  varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句

  startDate date default sysdate-30/1440;

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  --select sysdate  into startDate   from dual;

    --从1分钟粒度路段流量表里汇总5分钟粒度的流量数据
    v_sum_sql_where := ' where speed<100 and speed>=0 and occupancy <= 1 and  stdtime < to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and stdtime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 5 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'SECTION_FLOW_DATA'; --1分钟粒度路段流量数据表
      v_table_sum := 'ANLYS_SECTION_STATUS_DATA_5MIN'; --5分钟粒度路段流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,pointid,laneid,volume,speed,occupancy,stdtime,datasource)';

      v_sum_sql := 'select sectionid,pointid, laneid, sum(nvl(commcount,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ',8 from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by sectionid, pointid, laneid,DATASOURCE having count(1)=5';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总5分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

end ANALYSIS_SUM5_SECTION_FLOW_PRO;
/

prompt
prompt Creating procedure ANALYSIS_SUM_CROSS_FLOW_PRO
prompt ==============================================
prompt
CREATE OR REPLACE PROCEDURE ANALYSIS_SUM_CROSS_FLOW_PRO is
--路口流量逐级汇总存储过程
  v_table_ori varchar2(30); --被汇总的表
  v_table_sum varchar2(30); --汇总结果表

  v_ins_sql varchar2(1000); --执行新增的sql语句
  v_sum_sql varchar2(1000); --执行汇总的sql语句

  v_sum_sql_time  varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句

  startDate date;
  v_minute  number default 1;
  v_hour number default 1;

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息
--因信号机上传数据流量延迟+数据融合和补偿耗时。
BEGIN
  select sysdate - 75/1440, to_number(to_char(sysdate - 75/1440, 'mi')), to_number(to_char(sysdate - 75/1440, 'hh24'))
    into startDate, v_minute,v_hour
    from dual;

--  v_minute := 0;
--  v_hour:=0;

  if mod(v_minute, 15) = 0 then
    --从5分钟粒度路口流量表里汇总15分钟粒度的流量数据
    v_sum_sql_where := ' where  deoccupancy>=0 and deoccupancy<=1 and(nvolume!=0 or deoccupancy=0) and(nvolume>=10 or deoccupancy<=0.3) and nlaneno!=0 and dtcollecttime<to_date('||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and dtcollecttime >=to_date(' ||
                       chr(39) ||
                       to_char(startDate - 15/1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'INTERSECTION_STATUS_DATA'; --5分钟粒度路口流量数据表
      v_table_sum := 'ANLYS_INTS_STATUS_DATA_15MI'; --15分钟粒度路口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(cintsid,napproachdirection,nlaneno,volume,speed,occupancy,collectiontime)';

      v_sum_sql := 'select cintsid,napproachdirection, nlaneno, sum(nvl(nvolume,0)),trunc(avg(despeed),2),trunc(avg(deoccupancy),2),' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by cintsid,napproachdirection,nlaneno';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总15分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 30) = 0 then
    --从15分钟粒度路口流量表里汇总30分钟粒度的流量数据

    v_sum_sql_where := ' where nlaneno!=0 and COLLECTIONTIME<= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and COLLECTIONTIME >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 16/1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_INTS_STATUS_DATA_15MI'; --15分钟粒度路口流量数据表
      v_table_sum := 'ANLYS_INTS_STATUS_DATA_30MI'; --30分钟粒度路口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(cintsid,napproachdirection,nlaneno,volume,speed,occupancy,collectiontime)';

      v_sum_sql := 'select cintsid,napproachdirection, nlaneno, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by cintsid,napproachdirection,nlaneno';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总30分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 60) = 0 then
    --从30分钟粒度路口流量表里汇总1小时粒度的流量数据

    v_sum_sql_where := ' where nlaneno!=0 and COLLECTIONTIME<= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and COLLECTIONTIME >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 31/1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_INTS_STATUS_DATA_30MI'; --30分钟粒度路口流量数据表
      v_table_sum := 'ANLYS_INTS_STATUS_DATA_HOUR'; --1小时粒度路口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(cintsid,napproachdirection,nlaneno,volume,speed,occupancy,collectiontime)';

      v_sum_sql := 'select cintsid,napproachdirection, nlaneno, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by cintsid,napproachdirection,nlaneno';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1小时粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

    if (v_minute=0 and v_hour=0) then
    --从1小时粒度路口流量表里汇总1天粒度的流量数据

    v_sum_sql_where := ' where nlaneno!=0 and COLLECTIONTIME<= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and COLLECTIONTIME >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 1385/1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate-1, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_INTS_STATUS_DATA_HOUR'; --1小时粒度路口流量数据表
      v_table_sum := 'ANLYS_INTS_STATUS_DATA_DAY'; --1天粒度路口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(cintsid,napproachdirection,nlaneno,volume,speed,occupancy,collectiontime)';

      v_sum_sql := 'select cintsid,napproachdirection, nlaneno, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by cintsid,napproachdirection,nlaneno';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1天粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

end ANALYSIS_SUM_CROSS_FLOW_PRO;
/

prompt
prompt Creating procedure ANALYSIS_SUM_SECTION_FLOW_PRO
prompt ================================================
prompt
CREATE OR REPLACE PROCEDURE ANALYSIS_SUM_SECTION_FLOW_PRO is
--路段流量逐级汇总存储过程
  v_table_ori varchar2(30); --被汇总的表
  v_table_sum varchar2(30); --汇总结果表

  v_ins_sql varchar2(1000); --执行新增的sql语句
  v_sum_sql varchar2(1000); --执行汇总的sql语句

  v_sum_sql_time  varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句

  startDate date;
  v_minute  number default 1;
  v_hour number default 1;

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  select sysdate - 45 / 1440, to_number(to_char(sysdate - 45 / 1440, 'mi')), to_number(to_char(sysdate - 45 / 1440, 'hh24'))
    into startDate, v_minute,v_hour
    from dual;

 --v_minute := 0;
 --v_hour:=0;

  if mod(v_minute, 15) = 0 then
    --从5分钟粒度路段流量表里汇总15分钟粒度的流量数据
    v_sum_sql_where := ' where speed<100 and speed>=0 and occupancy <= 1 and  stdtime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and stdtime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 11 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_SECTION_STATUS_DATA_5MIN'; --5分钟粒度路段流量数据表
      v_table_sum := 'ANLYS_SECTION_STATUS_DATA_15MI'; --15分钟粒度路段流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,pointid,laneid,volume,speed,occupancy,stdtime,datasource)';

      v_sum_sql := 'select sectionid,pointid, laneid, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ',8 from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by sectionid, pointid, laneid';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总15分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 30) = 0 then
   --从15分钟粒度路段流量表里汇总30分钟粒度的流量数据
    v_sum_sql_where := ' where speed<100 and speed>=0 and occupancy <= 1 and  stdtime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and stdtime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 16 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_SECTION_STATUS_DATA_15MI'; --15分钟粒度路段流量数据表
      v_table_sum := 'ANLYS_SECTION_STATUS_DATA_30MI'; --30分钟粒度路段流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,pointid,laneid,volume,speed,occupancy,stdtime,datasource)';

      v_sum_sql := 'select sectionid,pointid, laneid, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ',8 from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by sectionid, pointid, laneid';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总30分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 60) = 0 then
    --从30分钟粒度路段流量表里汇总1小时粒度的流量数据

    v_sum_sql_where := ' where speed<100 and speed>=0 and occupancy <= 1 and  stdtime <=to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd  HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd  HH24:MI' ||
                       chr(39) || ') and stdtime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 31 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_SECTION_STATUS_DATA_30MI'; --30分钟粒度路段流量数据表
      v_table_sum := 'ANLYS_SECTION_STATUS_DATA_HOUR'; --1小时粒度路段流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,pointid,laneid,volume,speed,occupancy,collectiontime,datasource)';

      v_sum_sql := 'select sectionid,pointid, laneid, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ',8 from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by sectionid, pointid, laneid';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1小时粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

    if (v_minute=0 and v_hour=0) then
    --从1小时粒度路段流量表里汇总1天粒度的流量数据
    v_sum_sql_where := ' where speed<100 and speed>=0 and occupancy <= 1 and  collectiontime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd' ||
                       chr(39) || ') and collectiontime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 1385/1440, 'yyyy-MM-dd') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate-1, 'yyyy-MM-dd') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd' || chr(39) || ')';
    --dbms_output.put_line(v_sum_sql_where);
    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_SECTION_STATUS_DATA_HOUR'; --1小时粒度路段流量数据表
      v_table_sum := 'ANLYS_SECTION_STATUS_DATA_DAY'; --1天粒度路段流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,pointid,laneid,volume,speed,occupancy,stdtime,datasource)';

      v_sum_sql := 'select sectionid,pointid, laneid, sum(nvl(volume,0)),trunc(avg(speed),2),trunc(avg(occupancy),2),' ||
                   v_sum_sql_time || ',8 from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by sectionid, pointid, laneid';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1天粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

end ANALYSIS_SUM_SECTION_FLOW_PRO;
/

prompt
prompt Creating procedure ANLYS_HIGHSECTION_COMPUTE_PRO
prompt ================================================
prompt
CREATE OR REPLACE PROCEDURE ANLYS_HighSECTION_compute_PRO is
--高速路段路况5分钟粒度汇总存储过程
  v_table_ori varchar2(30); --被汇总的表
  v_table_sum varchar2(30); --汇总结果表

  v_ins_sql varchar2(1000); --执行新增的sql语句
  v_sum_sql varchar2(1000); --执行汇总的sql语句

  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句

  startDate date;
  v_minute  number default 1;
  v_hour number default 1;

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  select sysdate - 30 / 1440, to_number(to_char(sysdate - 30 / 1440, 'mi')), to_number(to_char(sysdate - 30 / 1440, 'hh24'))
    into startDate, v_minute,v_hour
    from dual;


/*   select to_date('2015/4/1 01:00', 'yyyy-MM-dd HH24:MI') - 30 / 1440, to_number(to_char(to_date('2015/4/1 01:00', 'yyyy-MM-dd HH24:MI') - 30 / 1440, 'mi')), to_number(to_char(to_date('2015/4/1 01:00', 'yyyy-MM-dd HH24:MI') - 30 / 1440, 'hh24'))
   into startDate, v_minute,v_hour
   from dual; */

 --v_minute := 0;
 --v_hour:=0;

  if mod(v_minute, 5) = 0 then
    --从路段路况原表汇总5分钟粒度的高速路段路况
    v_sum_sql_where := ' where m.sectionlevel=''0''  and  s.computetime = to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') ';

    --进行汇总统计和入库
    begin
      v_table_ori := 'section_status_compute'; --路段路况原表
      v_table_sum := 'ANLYS_GS_SECTION_COMPUTE'; --高速路段路况5分钟粒度

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(sectionid,STATUS,TRAVELTIME,INDEY,RUNNINGSPEED,COMPUTETIME)';

      v_sum_sql := 'select s.section_id,s.status, s.traveltime,s.indey,' ||
                   'case when s.traveltime>0 then round(m.length/s.traveltime*3.6,2) else 0 end ,s.computetime from ' ;
      v_sum_sql := v_sum_sql || v_table_ori || ' s left join monitor_section m on m.sectionid=s.section_id ' || v_sum_sql_where;

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      dbms_output.put_line(v_ins_sql);
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总5分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

end ANLYS_HighSECTION_compute_PRO;
/

prompt
prompt Creating procedure ANLYS_KAKOU_FLOW_PRO
prompt =======================================
prompt
CREATE OR REPLACE PROCEDURE ANLYS_KAKOU_FLOW_PRO is
--高速公路卡口流量逐级汇总存储过程
  v_table_ori varchar2(1000); --被汇总的表
  v_table_sum varchar2(30); --汇总结果表
  v_kakou_data varchar2(1000);--高速公路卡口数据

  v_ins_sql varchar2(3000); --执行新增的sql语句
  v_sum_sql varchar2(3000); --执行汇总的sql语句

  v_sum_sql_time  varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句

  startDate date;
  v_minute  number default 1;
  v_hour number default 1;

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  select sysdate - 45 / 1440, to_number(to_char(sysdate - 45 / 1440, 'mi')), to_number(to_char(sysdate - 45 / 1440, 'hh24'))
    into startDate, v_minute,v_hour
    from dual;

/*      select to_date('2015/5/4 11:00','yyyy-mm-dd hh24:mi') - 45 / 1440, to_number(to_char(to_date('2015/5/4 11:00','yyyy-mm-dd hh24:mi') - 45 / 1440, 'mi')), to_number(to_char(to_date('2015/5/4 11:00','yyyy-mm-dd hh24:mi') - 45 / 1440, 'hh24'))
    into startDate, v_minute,v_hour
    from dual;*/

  if mod(v_minute, 5) = 0 then
    --从1分钟粒度卡口流量源表里汇总5分钟粒度的流量数据
    v_sum_sql_where := ' where dsd.counttime < to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and dsd.counttime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 5 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';


    --进行汇总统计和入库
    begin
      v_table_ori := ' select dsd.devicecode, dsd.laneno, sum(flux) flux from detect_speed_data_flux dsd'; --1分钟粒度卡口流量数据表
      v_table_ori := v_table_ori || v_sum_sql_where || ' group by dsd.devicecode, dsd.laneno';

      v_table_sum := 'ANLYS_KAKOU_STATUS_DATA_5MIN'; --5分钟粒度卡口流量数据表

      v_kakou_data := ' select * from (select distinct m.pointcode, e.direction,e.deviceid,e.startlan,e.lanenum from monitor_point m'||
                      ' join equipment_info e on m.pointcode = e.pointid and (e.devicetype in (''01'', ''02'') or (e.devicetype = ''03'' and e.passfunc = 1))' ||
                      ' where (m.funcitems like ''%02%'' or m.funcitems like ''%01%'' or m.funcitems like ''%03%'') '||
                      ' and m.departmentid in(select et.enumvalue from enum_type et where et.enumtypeid = 99)) ';

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(POINTID,DEVICEID,DIRECTION,LANEID,VOLUME,COUNTTIME)';

      v_sum_sql := 'select p.pointid,p.deviceid,p.direction,p.laneid,nvl(q.flux, -1) volume,' ||
                   v_sum_sql_time || ' counttime from (' ||
                   ' select s.pointcode pointid,s.deviceid,s.direction,s.startlan - 1 + rn laneid from (' ||
                   ' select * from (' || v_kakou_data || '),(select rownum rn from (' || v_kakou_data || '))' ||
                   ' where lanenum >= rn ) s) p';
      v_sum_sql := v_sum_sql || ' left join (' || v_table_ori || ') q on p.deviceid = q.devicecode and p.laneid = q.laneno' ||
                   ' where nvl(q.flux, -1) != -1';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

/*      dbms_output.put_line(substr(v_ins_sql,0,1000));
      dbms_output.put_line(substr(v_ins_sql,1001,2000));
       dbms_output.put_line(substr(v_ins_sql,2001,3000));*/
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总5分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 15) = 0 then
    --从5分钟粒度卡口流量表里汇总15分钟粒度的流量数据
    v_sum_sql_where := ' where counttime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and counttime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 11 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';

    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_KAKOU_STATUS_DATA_5MIN'; --5分钟粒度卡口流量数据表
      v_table_sum := 'ANLYS_KAKOU_STATUS_DATA_15MIN'; --15分钟粒度卡口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(POINTID,DEVICEID,DIRECTION,LANEID,VOLUME,COUNTTIME)';

      v_sum_sql := 'select POINTID,DEVICEID,DIRECTION,LANEID,sum(nvl(volume,0)) VOLUME,' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by POINTID,DEVICEID,DIRECTION,LANEID';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

     /* dbms_output.put_line(v_ins_sql);*/
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总15分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 30) = 0 then
   --从15分钟粒度卡口流量表里汇总30分钟粒度的流量数据
    v_sum_sql_where := ' where counttime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ') and counttime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 16 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';

    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_KAKOU_STATUS_DATA_15MIN'; --15分钟粒度卡口流量数据表
      v_table_sum := 'ANLYS_KAKOU_STATUS_DATA_30MIN'; --30分钟粒度卡口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(POINTID,DEVICEID,DIRECTION,LANEID,VOLUME,COUNTTIME)';

      v_sum_sql := 'select POINTID,DEVICEID,DIRECTION,LANEID,sum(nvl(volume,0)) VOLUME,' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by POINTID,DEVICEID,DIRECTION,LANEID';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

/*      dbms_output.put_line(v_ins_sql);*/
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总30分钟粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;
  end if;

  if mod(v_minute, 60) = 0 then
    --从30分钟粒度卡口流量表里汇总1小时粒度的流量数据

    v_sum_sql_where := ' where counttime <=to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd  HH24:MI') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd  HH24:MI' ||
                       chr(39) || ') and counttime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 31 / 1440, 'yyyy-MM-dd HH24:MI') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd HH24:MI' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate, 'yyyy-MM-dd HH24:MI') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd HH24:MI' || chr(39) || ')';

    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_KAKOU_STATUS_DATA_30MIN'; --30分钟粒度卡口流量数据表
      v_table_sum := 'ANLYS_KAKOU_STATUS_DATA_HOUR'; --1小时粒度卡口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(POINTID,DEVICEID,DIRECTION,LANEID,VOLUME,COUNTTIME)';

      v_sum_sql := 'select POINTID,DEVICEID,DIRECTION,LANEID,sum(nvl(volume,0)) VOLUME,' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by POINTID,DEVICEID,DIRECTION,LANEID';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

      /*dbms_output.put_line(v_ins_sql);*/
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1小时粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

    if (v_minute=0 and v_hour=0) then
    --从1小时粒度卡口流量表里汇总1天粒度的流量数据
    v_sum_sql_where := ' where counttime <= to_date(' ||
                       chr(39) || to_char(startDate, 'yyyy-MM-dd') ||
                       chr(39) || ',' || chr(39) || 'yyyy-MM-dd' ||
                       chr(39) || ') and counttime >= to_date(' ||
                       chr(39) ||
                       to_char(startDate - 1385/1440, 'yyyy-MM-dd') ||
                       chr(39) || ', ' || chr(39) || 'yyyy-MM-dd' ||
                       chr(39) || ')';
    v_sum_sql_time  := 'to_date(' || chr(39) ||
                       to_char(startDate-1, 'yyyy-MM-dd') || chr(39) || ', ' ||
                       chr(39) || 'yyyy-MM-dd' || chr(39) || ')';

    --进行汇总统计和入库
    begin
      v_table_ori := 'ANLYS_KAKOU_STATUS_DATA_HOUR'; --1小时粒度卡口流量数据表
      v_table_sum := 'ANLYS_KAKOU_STATUS_DATA_DAY'; --1天粒度卡口流量数据表

      v_ins_sql := 'insert into ' || v_table_sum ||
                   '(POINTID,DEVICEID,DIRECTION,LANEID,VOLUME,COUNTTIME)';

      v_sum_sql := 'select POINTID,DEVICEID,DIRECTION,LANEID,sum(nvl(volume,0)) VOLUME,' ||
                   v_sum_sql_time || ' from ';
      v_sum_sql := v_sum_sql || v_table_ori || v_sum_sql_where ||
                   ' group by POINTID,DEVICEID,DIRECTION,LANEID';

      v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

    /*  dbms_output.put_line(v_ins_sql);*/
      execute immediate v_ins_sql;
      commit;

      dbms_output.put_line(to_char(startDate, 'yyyy-mm-dd hh24:mi:ss'));
      dbms_output.put_line('汇总1天粒度');

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg  := SQLERRM;

        dbms_output.put_line(v_errCode || v_errMsg);
    end;

  end if;

end ANLYS_KAKOU_FLOW_PRO;
/

prompt
prompt Creating procedure APROC1
prompt =========================
prompt
CREATE OR REPLACE PROCEDURE aproc1 AS
BEGIN

 dbms_output.put_line('Hello ');


end;
/

prompt
prompt Creating procedure APROC2
prompt =========================
prompt
CREATE OR REPLACE PROCEDURE aproc2
as
begin
  aproc1;
end;
/

prompt
prompt Creating procedure ARRANGE_ALERT_POINT_COUNT
prompt ============================================
prompt
CREATE OR REPLACE PROCEDURE arrange_alert_point_count
AS
   thresvalue varchar2(4);
BEGIN
select s.paramvalue into thresvalue from sysparams s where s.paramcode='ALERT_POINT_COUNT_THRESHOLDVALUE';
insert into black_alert_point_count
select sys_guid(),
       t.hphm,
       t.hpzl,
       trunc(sysdate)-1,
       count(1) count,
       t.controltype,
       t.bjdd,
       t.xsfx
  from black_alert_info t
  where trunc(t.bjsj) = trunc(sysdate) - 1
 group by t.hphm, t.hpzl, t.controltype,t.bjdd having count(1)> to_number(thresvalue);
 commit;
END;
/

prompt
prompt Creating procedure ARRANGE_BLACK_ALERT_COUNT
prompt ============================================
prompt
CREATE OR REPLACE PROCEDURE arrange_black_alert_count
AS
 thresvalue varchar2(4);
BEGIN
select s.paramvalue into thresvalue from sysparams s where s.paramcode='ALERT_COUNT_THRESHOLDVALUE';
insert into black_alert_count
select sys_guid(),
       t.hphm,
       t.hpzl,
       trunc(sysdate)-1,
       count(1) count,
       t.controltype,
       m.departmentid,
       t.xsfx
  from black_alert_info t,monitor_point m
  where trunc(t.bjsj) = trunc(sysdate) - 1 and t.bjdd=m.pointcode
 group by t.hphm, t.hpzl, t.controltype,m.departmentid having count(1)>to_number(thresvalue);
 commit;
END;
/

prompt
prompt Creating procedure UPDATE_LOW_ANALYSIS_RELATION
prompt ===============================================
prompt
CREATE OR REPLACE PROCEDURE update_low_analysis_relation is
begin
  declare
    cursor enumCur is
      select t1.*
        from enum_type t1
        left join low_analysis_relation t2 on t1.enumvalue = t2.enumvalue
       where t2.enumvalue is null
         and t1.enumtypeid = 1101
       order by t1.enumvalue;
    cursor relationCur is
      select *
        from low_analysis_relation t3
       where t3.enumvalue is null
       order by t3.columnname;
    enum_row     enumCur%rowtype;
    relation_row relationCur%rowtype;
  begin
    open enumCur;
    open relationCur;
    fetch enumCur
      into enum_row;
    if enumCur%found then
      fetch relationCur
        into relation_row;
      if relationCur%found then
        while enumCur%found and relationCur%found loop
          update low_analysis_relation t4
             set t4.enumvalue = enum_row.enumvalue
           where t4.columnname = relation_row.columnname;
          fetch enumCur
            into enum_row;
          fetch relationCur
            into relation_row;
        end loop;
      end if;
    end if;
    close relationCur;
    close enumCur;
    commit;
  end;
end;
/

prompt
prompt Creating procedure ARRANGE_LOW_ANALYSIS
prompt =======================================
prompt
CREATE OR REPLACE PROCEDURE arrange_low_analysis
AS
  sqlstr1 varchar2(32767);
  sqlstr2 varchar2(32767);
  sqlstr varchar2(32767);
BEGIN
declare  cursor relationCur is
      select *
        from low_analysis_relation t3
       where t3.enumvalue is not null
       order by t3.columnname;
       relation_row relationCur%rowtype;
begin
       update_low_analysis_relation();
       sqlstr1:='insert into black_low_analysis_data(id,bjdd,channel,xsfx,productdate,hour';
       sqlstr2:='select sys_guid(),t1.bjdd,t1.clanenumber,xsfx,TRUNC(SYSDATE-1),to_number(to_char(t1.bjsj,''hh24''))';
       open relationCur;
        fetch relationCur
        into relation_row;
      if relationCur%found then
        while relationCur%found loop
          sqlstr1:=sqlstr1||','||relation_row.columnname;
          sqlstr2:=sqlstr2||',sum(case t1.controltype when '''||relation_row.enumvalue||''' then 1 else 0 end) '||relation_row.columnname;
          fetch relationCur
            into relation_row;
        end loop;
      end if;
      close relationCur;
      sqlstr1:=sqlstr1||') ';
      sqlstr2:=sqlstr2||' from  black_alert_info t1 where T1.BJSJ>=TRUNC(sysdate-1) AND T1.BJSJ<TRUNC(sysdate) group by t1.bjdd,t1.clanenumber,t1.xsfx,to_number(to_char(t1.bjsj,''hh24''))';
      sqlstr := sqlstr1||sqlstr2;
     -- dbms_output.put_line(sqlstr);
      EXECUTE IMMEDIATE sqlstr;
      commit;
end;
end;
/

prompt
prompt Creating procedure ARRANGE_LOW_ANALYSIS_MONTH
prompt =============================================
prompt
CREATE OR REPLACE PROCEDURE arrange_low_analysis_month
AS
  sqlstr1 varchar2(32767);
  sqlstr2 varchar2(32767);
  sqlstr varchar2(32767);
BEGIN
declare  cursor relationCur is
      select *
        from low_analysis_relation t3
       where t3.enumvalue is not null
       order by t3.columnname;
       relation_row relationCur%rowtype;
begin
       sqlstr1:='insert into black_low_analysis_month_data(id,bjdd,productdate';
       sqlstr2:='select sys_guid(),t.bjdd,trunc(trunc(sysdate, ''mm'') - 1, ''mm'')';
       open relationCur;
        fetch relationCur
        into relation_row;
      if relationCur%found then
         while relationCur%found loop
          sqlstr1:=sqlstr1||','||relation_row.columnname;
          sqlstr2:=sqlstr2||',sum(t.'||relation_row.columnname||')';
          fetch relationCur
            into relation_row;
        end loop;
      end if;
      close relationCur;
      sqlstr1:=sqlstr1||') ';
      sqlstr2:=sqlstr2||' from black_low_analysis_data t where t.productdate >= trunc(trunc(sysdate, ''mm'') - 1, ''mm'') and t.productdate < trunc(sysdate, ''mm'') group by t.bjdd';
      sqlstr := sqlstr1||sqlstr2;
      --dbms_output.put_line(sqlstr);
      EXECUTE IMMEDIATE sqlstr;
      commit;
end;
end;
/

prompt
prompt Creating procedure BLACK_LIST_MANAGE_RECORD_DEL
prompt ===============================================
prompt
create or replace procedure black_list_manage_record_del is
begin
  delete from black_list_manage_record t where t.changetime < sysdate - 10/60/60/24;
  commit;
end black_list_manage_record_del;
/

prompt
prompt Creating procedure CHANGECONTROLTYPE
prompt ====================================
prompt
CREATE OR REPLACE PROCEDURE ChangeControlType(no in VARCHAR2,newname in NVARCHAR2,isdelete in CHAR)
AS
      limitId varchar2(100);
BEGIN
update enum_type t1 set t1.enumname=newname where t1.enumvalue=no and t1.enumtypeid=1101;
update control_type_param t2 set t2.allowdelete=isdelete where t2.controltypeno=no;
select t2.operationid into limitId from control_type_param t2 where t2.controltypeno=no;
update OPERATE_COMPONENT t3 set t3.name=newname||'撤控',t3.title=newname||'撤控' where t3.id=limitId;
commit;
END;
/

prompt
prompt Creating procedure CONTROLTYPEINIT
prompt ==================================
prompt
CREATE OR REPLACE PROCEDURE ControlTypeINIT
AS

BEGIN
   declare  cursor enumCur is
   select * from enum_type t where t.enumtypeid=1101 order by t.enumvalue;
   enum_row enumCur%rowtype;
   begin
     open enumCur;
          fetch enumCur
          into enum_row;
        if enumCur%found then
          while enumCur%found loop
            addcontroltypeinit(enum_row.enumvalue,enum_row.enumname,'0');
           -- deletecontroltype(enum_row.enumvalue);
            fetch enumCur
              into enum_row;
          end loop;
        end if;
        close enumCur;
   end;
END;
/

prompt
prompt Creating procedure DELETECONTROLTYPE
prompt ====================================
prompt
CREATE OR REPLACE PROCEDURE DeleteControlType(no in VARCHAR2)
AS
       limitId varchar2(100);
BEGIN
delete from enum_type t1 where t1.enumtypeid=1101 and t1.enumvalue=no;
select t2.operationid into limitId from control_type_param t2 where t2.controltypeno=no;
delete from OPERATE_COMPONENT t3 where t3.id=limitId;
delete from role_operation_relation t4 where t4.operationid=limitId;
delete from control_type_param t2 where t2.controltypeno=no;
commit;
END;
/

prompt
prompt Creating procedure DEL_NOUSE
prompt ============================
prompt
create or replace procedure DEL_NOUSE(name varchar2) is
lv_name varchar2(20);
begin
  lv_name :='cc';
end DEL_NOUSE;
/

prompt
prompt Creating procedure GETUPDATETIME_TEST
prompt =====================================
prompt
CREATE OR REPLACE PROCEDURE getupdatetime_test AS
 sqlstr1 varchar2(32767);
BEGIN
 for map in (select t.table_name from user_tables t) loop
 begin
      sqlstr1 := 'insert into getupdatetime select '''||map.table_name||''', to_date(to_char(scn_to_timestamp(nvl(max(ora_rowscn),0)),''yyyy-mm-dd hh24:mi:ss''),''yyyy-mm-dd hh24:mi:ss'') from '||map.table_name;
      EXECUTE IMMEDIATE sqlstr1;
     commit;
 exception
     when others then
     dbms_output.put_line('a');
 end;
 end loop;
end;
/

prompt
prompt Creating procedure IMPORTBLACKLIST
prompt ==================================
prompt
create or replace procedure importblacklist is
  count1 number;
  count2 number;
  count3 number;
  carno1 nvarchar2(16);
  carno2 nvarchar2(16);
  carno3 nvarchar2(16);
begin
 execute immediate 'alter table black_list_manage disable all triggers';
  --savepoint clearAll;
  ------------------------------>>>首先将黑名单表中的属性为10：已布控的记录 ，布控类型修改成30：自动布控
   --update black_list_manage set infostatus = '30' where source='20' and infostatus='10';
   --commit;
  ----------------------------->>> 遍历black_list_mapping表中的违法未处理记录重复数据超过五条的转变成一条多次违法未处理记录，判断黑名单中有无该数据，有的话不做操作删除black_list_mapping相关数据，没有的话插入黑名单表，布控类型设置为30
--alter table black_list_manage disable all triggers;
 for map in (SELECT count(blm.carno), blm.carno, blm.cartype
                FROM BLACK_LIST_MAPPING blm
               where blm.source = '20'
                 and blm.controltype = '06'
               group by blm.carno, blm.cartype
              having count(blm.carno) > 5) loop
     if(length(map.carno)=6) then
       carno3 := '鲁' || map.carno;
    else
       carno3 := map.carno;
    end if;
    select count(*)
      into count1
      from black_list_manage bl1
     where
       --and bl1.infostatus = '30'
        bl1.controltype = '07'
       and bl1.carno = carno3
       and bl1.cartype = map.cartype;
    if (count1 > 0) then
      --黑名单中有该数据时只删除black_list_mapping表中对应数据，不做其他操作
      delete from black_list_mapping m
       where m.carno = map.carno
         and m.cartype = map.cartype
         and m.controltype = '06';
    else
         begin
      --黑名单中没有该数据时向黑名单中插入数据并删除black_list_mapping表中对应数据
      insert into Black_List_Manage
        SELECT A.id,
               A.carno,
               A.cartype,
               A.carbrand,
               A.carcolor,
               A.source,
               A.controllevel,
               case
                 when A.CONTROLTYPE = '06' then
                  '07'
               end as controltype,
               A.controlprop,
               A.controlscope,
               A.btime,
               A.etime,
               '10',
               A.alarmstatus,
               A.contact,
               A.telphone,
               A.pushphone,
               A.puship,
               '0',
               A.pushdptmt,
               A.charcpic1,
               A.charcpic2,
               A.charcpic3,
               A.charcdesc,
               A.matterdetail,
               A.createuserid,
               A.createtime,
               A.revokeuserid,
               A.revoketime,
               A.revokereason,
               A.interceptflag,
               A.illegaltime,
               A.illegaladdress,
               A.illegaltype,
               A.abandontime,
               A.updatetime,
               A.annualexaminetime,
               '',''
          FROM (SELECT A.id,
                       A.carno,
                       A.cartype,
                       A.carbrand,
                       A.carcolor,
                       A.source,
                       A.controllevel,
                       A.CONTROLTYPE,
                       A.controlprop,
                       A.controlscope,
                       A.btime,
                       A.etime,
                       A.infostatus,
                       A.alarmstatus,
                       A.contact,
                       A.telphone,
                       A.pushphone,
                       A.puship,
                       A.pushuser,
                       A.pushdptmt,
                       A.charcpic1,
                       A.charcpic2,
                       A.charcpic3,
                       A.charcdesc,
                       A.matterdetail,
                       A.createuserid,
                       A.createtime,
                       A.revokeuserid,
                       A.revoketime,
                       A.revokereason,
                       A.interceptflag,
                       A.illegaltime,
                       A.illegaladdress,
                       A.illegaltype,
                       A.abandontime,
                       A.updatetime,
                       A.annualexaminetime,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A) A
         where RN = 1
           and A.source = '20'
           and A.controltype = '06'
           and A.carno = map.carno
           and A.cartype = map.cartype
           and length(A.carno) = 7;
      ----------
      insert into Black_List_Manage
        SELECT A.id,
               '鲁' || A.carno,
               A.cartype,
               A.carbrand,
               A.carcolor,
               A.source,
               A.controllevel,
               case
                 when A.CONTROLTYPE = '06' then
                  '07'
               end as controltype,
               A.controlprop,
               A.controlscope,
               A.btime,
               A.etime,
               '10',
               A.alarmstatus,
               A.contact,
               A.telphone,
               A.pushphone,
               A.puship,
               '0',
               A.pushdptmt,
               A.charcpic1,
               A.charcpic2,
               A.charcpic3,
               A.charcdesc,
               A.matterdetail,
               A.createuserid,
               A.createtime,
               A.revokeuserid,
               A.revoketime,
               A.revokereason,
               A.interceptflag,
               A.illegaltime,
               A.illegaladdress,
               A.illegaltype,
               A.abandontime,
               A.updatetime,
               A.annualexaminetime,
                '',''
          FROM (SELECT A.id,
                       A.carno,
                       A.cartype,
                       A.carbrand,
                       A.carcolor,
                       A.source,
                       A.controllevel,
                       A.CONTROLTYPE,
                       A.controlprop,
                       A.controlscope,
                       A.btime,
                       A.etime,
                       A.infostatus,
                       A.alarmstatus,
                       A.contact,
                       A.telphone,
                       A.pushphone,
                       A.puship,
                       A.pushuser,
                       A.pushdptmt,
                       A.charcpic1,
                       A.charcpic2,
                       A.charcpic3,
                       A.charcdesc,
                       A.matterdetail,
                       A.createuserid,
                       A.createtime,
                       A.revokeuserid,
                       A.revoketime,
                       A.revokereason,
                       A.interceptflag,
                       A.illegaltime,
                       A.illegaladdress,
                       A.illegaltype,
                       A.abandontime,
                       A.updatetime,
                       A.annualexaminetime,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A) A
         where RN = 1
           and A.source = '20'
           and A.controltype = '06'
           and A.carno = map.carno
           and A.cartype = map.cartype
           and length(A.carno) = 6;
      ---删除black_list_mapping对应数据
      delete from black_list_mapping m
       where m.carno = map.carno
         and m.cartype = map.cartype
         and m.controltype = '06';
       exception
           when others then
           --dbms_output.put_line('异常');
           null;
        end;
    end if;
  end loop;
  commit;
    --------------------------->>>遍历black_list_mapping,查找除违法未处理类型的类型，在黑名单中查找对应数据，没有找到该数据则向黑名单中插入该数据
  for map2 in (SELECT blm2.id, blm2.carno, blm2.cartype, blm2.controltype
                 FROM BLACK_LIST_MAPPING blm2
                where blm2.source = '20'
                  and blm2.controltype != '06') loop
    if(length(map2.carno)=6) then
       carno2 := '鲁' || map2.carno;
    else
       carno2 := map2.carno;
    end if;
    select count(*)
      into count3
      from black_list_manage bl3
     where
       --and bl3.infostatus = '30'
        bl3.controltype = map2.controltype
       and bl3.carno = carno2
       and bl3.cartype = map2.cartype;
       --and bl3.id !=map2.id;
    if (count3 > 0) then
       continue;
    else
    begin
      insert into Black_List_Manage
        SELECT id,
               '鲁' || carno,
               cartype,
               carbrand,
               carcolor,
               source,
               controllevel,
               controltype,
               controlprop,
               controlscope,
               btime,
               etime,
               '10',
               alarmstatus,
               contact,
               telphone,
               pushphone,
               puship,
               '0',
               pushdptmt,
               charcpic1,
               charcpic2,
               charcpic3,
               charcdesc,
               matterdetail,
               createuserid,
               createtime,
               revokeuserid,
               revoketime,
               revokereason,
               interceptflag,
               illegaltime,
               illegaladdress,
               illegaltype,
               abandontime,
               updatetime,
               annualexaminetime, '',''
        ------------
          FROM (SELECT A.*,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A)
         WHERE RN = 1
           and source = '20'
           and controltype = map2.controltype
           and carno = map2.carno
           and cartype = map2.cartype
           and length(carno) = 6;
      -----------
      insert into Black_List_Manage
        SELECT id,
               carno,
               cartype,
               carbrand,
               carcolor,
               source,
               controllevel,
               controltype,
               controlprop,
               controlscope,
               btime,
               etime,
               '10',
               alarmstatus,
               contact,
               telphone,
               pushphone,
               puship,
               '0',
               pushdptmt,
               charcpic1,
               charcpic2,
               charcpic3,
               charcdesc,
               matterdetail,
               createuserid,
               createtime,
               revokeuserid,
               revoketime,
               revokereason,
               interceptflag,
               illegaltime,
               illegaladdress,
               illegaltype,
               abandontime,
               updatetime,
               annualexaminetime, '',''
        -----
          FROM (SELECT A.*,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A)
         WHERE RN = 1
           and source = '20'
           and controltype = map2.controltype
           and carno = map2.carno
           and cartype = map2.cartype
           and length(carno) = 7;
          exception
           when others then
           --dbms_output.put_line('异常');
           null;
        end;
    end if;
  end loop;
  commit;
  --------------------------->>>遍历black_list_mapping，查找违法未处理类型的数据，在黑名单表中查找对应数据，没有找到该数据则向黑名单中添加对应数据
 for map1 in (SELECT blm1.id, blm1.carno, blm1.cartype
                 FROM BLACK_LIST_MAPPING blm1
                where blm1.source = '20'
                  and blm1.controltype = '06') loop
    if(length(map1.carno)=6) then
       carno1 := '鲁' || map1.carno;
    else
       carno1 := map1.carno;
    end if;
    select count(*)
      into count2
      from black_list_manage bl2
     where
       --and bl2.infostatus = '30'
       bl2.controltype = '06'
       and bl2.carno = carno1
       and bl2.cartype = map1.cartype;
       --and bl2.id != map1.id;
    if (count2 > 0) then
    continue;
    else
      begin
      insert into Black_List_Manage
        SELECT id,
               '鲁' || carno,
               cartype,
               carbrand,
               carcolor,
               source,
               controllevel,
               controltype,
               controlprop,
               controlscope,
               btime,
               etime,
               '10',
               alarmstatus,
               contact,
               telphone,
               pushphone,
               puship,
               '0',
               pushdptmt,
               charcpic1,
               charcpic2,
               charcpic3,
               charcdesc,
               matterdetail,
               createuserid,
               createtime,
               revokeuserid,
               revoketime,
               revokereason,
               interceptflag,
               illegaltime,
               illegaladdress,
               illegaltype,
               abandontime,
               updatetime,
               annualexaminetime,
                '',''
          FROM (SELECT A.*,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A)
         WHERE RN = 1
           and source = '20'
           and controltype = '06'
           and carno = map1.carno
           and cartype = map1.cartype
           and length(carno) = 6;
      insert into Black_List_Manage
        SELECT id,
               carno,
               cartype,
               carbrand,
               carcolor,
               source,
               controllevel,
               controltype,
               controlprop,
               controlscope,
               btime,
               etime,
               '10',
               alarmstatus,
               contact,
               telphone,
               pushphone,
               puship,
               '0',
               pushdptmt,
               charcpic1,
               charcpic2,
               charcpic3,
               charcdesc,
               matterdetail,
               createuserid,
               createtime,
               revokeuserid,
               revoketime,
               revokereason,
               interceptflag,
               illegaltime,
               illegaladdress,
               illegaltype,
               abandontime,
               updatetime,
               annualexaminetime, '',''
          FROM (SELECT A.*,
                       ROW_NUMBER() OVER(PARTITION BY A.carno, A.cartype, A.controltype ORDER BY A.btime desc) RN
                  FROM BLACK_LIST_MAPPING A)
         WHERE RN = 1
           and source = '20'
           and controltype = '06'
           and carno = map1.carno
           and cartype = map1.cartype
           and length(carno) = 7;
         exception
           when others then
           --dbms_output.put_line('异常');
           null;
        end;
    end if;
  end loop;
  commit;
  --将black_list_mapping中删除的数据更新为已撤控
  update black_list_manage t set t.infostatus = 20 where t.id in
  (select t1.id from black_list_manage t1 left join black_list_mapping t2
  on t1.carno=(case
                  when length(t2.carno)=6 then '鲁'||t2.carno
                  else t2.carno
               end)
  and t1.cartype=t2.cartype and t1.controltype=t2.controltype and t1.source=t2.source
  where t2.id is null and t1.controltype!='06' and t1.source='20');
  commit;
  execute immediate 'alter table black_list_manage enable all triggers';
  ------------------------>>>数据处理完毕后，将所有黑名单中字段属性为30：自动撤控，修改成10:已布控状态
   --update black_list_manage set infostatus = '10' where source='20' and infostatus='30';
  --commit;
  /*exception
  when others then
    rollback to clearAll;*/
end;
/

prompt
prompt Creating procedure INSERT_INTO_TRAFFIC_STATISTICS
prompt =================================================
prompt
CREATE OR REPLACE PROCEDURE Insert_into_traffic_statistics IS BEGIN insert into traffic_statistics

select sys_guid(),a.area_id,
case when
avg(a.speed)
is null then
0
else
avg(a.speed)
end speed
,sum(a.length),trunc(sysdate, 'mi') time  from
(
 select tt.sectionid,
        tt.sectionname,
        tt.area_id,
        ttt.status,
        case
          when ttt.status is null or ttt.status <> 3 then
           0
          else
           tt.length
        end length,
        case when tttt.speed is null then null else tttt.speed end speed
   from monitor_section tt
left   join
(
select ttt.section_id,ttt.status from
section_status_compute ttt,traffic_statistics_road tsr where ttt.section_id=tsr.sectionid
  and ttt.receivetime > sysdate-5/60/24 and
 not exists
 (select 1
          from section_status_compute ssc1
         where ssc1.receivetime > sysdate-5/24/60
           and ttt.section_id = ssc1.section_id
           and ssc1.receivetime > ttt.receivetime
    )
) ttt
on  tt.sectionid = ttt.section_id
left join
(
     select ssd.sectionid,avg(ssd.speed) speed from section_status_data ssd,traffic_statistics_road_em tsr1
     where ssd.sectionid=tsr1.sectionid and ssd.stdtime > sysdate-5/24/60 and ssd.speed>0 and
     not exists
     (select 1
          from section_status_data ssd1
         where ssd1.stdtime > sysdate-5/24/60
           and ssd.sectionid = ssd1.sectionid
           and ssd1.stdtime > ssd.stdtime
     )
     group by ssd.sectionid
) tttt
on tt.sectionid = tttt.sectionid

where tt.area_id is not null and tt.length is not null and tt.area_id <> -1
)
 a group by a.area_id;
end Insert_into_traffic_statistics;
/

prompt
prompt Creating procedure INSPECTACCOUNTMIDDLEDATA
prompt ===========================================
prompt
CREATE OR REPLACE PROCEDURE INSPECTACCOUNTMIDDLEDATA
AS
BEGIN
INSERT INTO BLACK_ALERT_MID_DATA
SELECT NVL(A.DEPARTMENTID,B.DEPARTMENTID) DEPARTMENTID,
NVL(A.CONTROLTYPE,B.MONITORTYPE) CONTROLTYPE,TRUNC(SYSDATE-1) PRDUDATE,
NVL(A.BAOJING,0),NVL(B.CHUJING,0),NVL(LANJIE,0),NVL(A.GUOCHE,0)
 FROM (
SELECT M.DEPARTMENTID,
       T1.CONTROLTYPE,
       COUNT(1) BAOJING,
       COUNT(DISTINCT T1.HPHM || T1.HPZL) GUOCHE
  FROM BLACK_ALERT_INFO T1, MONITOR_POINT M
 WHERE T1.BJDD = M.POINTCODE
 AND T1.BJSJ>=TRUNC(SYSDATE-1)
 AND T1.BJSJ<TRUNC(SYSDATE)
 GROUP BY M.DEPARTMENTID, T1.CONTROLTYPE
) A full JOIN
(
 SELECT
    CASE TO_CHAR(SUBSTR(T2.CDEPARTMENTID,0,6))
         WHEN '370295' THEN
              '370295000010'
         WHEN '370296' THEN
              '370296000010'
         WHEN '370297' THEN
              '370297000010'
         WHEN '370298' THEN
              '370298000010'
         ELSE  TO_CHAR(SUBSTR(T2.CDEPARTMENTID,0,6))||'000000'
    END DEPARTMENTID,
    T1.MONITORTYPE,
    SUM(CASE WHEN T1.CLZT = '40' THEN 1 ELSE 0 END) CHUJING,
    SUM(CASE WHEN T1.CLZT = '40' AND T1.LJBZ='2' THEN 1 ELSE 0 END) LANJIE
  FROM BLACK_ALERT_USER_INFO T1,OPERATOR T2
    WHERE T1.USER_ID = T2.NUSERID
    AND T1.BJSJ>=TRUNC(SYSDATE-1)
    AND T1.BJSJ<TRUNC(SYSDATE)
    GROUP BY
    CASE TO_CHAR(SUBSTR(T2.CDEPARTMENTID,0,6))
         WHEN '370295' THEN
              '370295000010'
         WHEN '370296' THEN
              '370296000010'
         WHEN '370297' THEN
              '370297000010'
         WHEN '370298' THEN
              '370298000010'
         ELSE  TO_CHAR(SUBSTR(T2.CDEPARTMENTID,0,6))||'000000'
    END,
    T1.MONITORTYPE
) B ON A.DEPARTMENTID=B.DEPARTMENTID AND B.MONITORTYPE=A.CONTROLTYPE;
commit;
END;
/

prompt
prompt Creating procedure PASS_MGR_INFO_PRO
prompt ====================================
prompt
create or replace procedure pass_mgr_info_pro is

BEGIN
  --通行证状态更新存储过程
  --如果通行证的结束时间小于今天，将其更新为1；   0有效 1过期
  update pass_mgr_info t
     set t.timestate = '1'
   where to_char(t.end_date, 'yyyy-mm-dd') < to_char(sysdate, 'yyyy-mm-dd')
     and t.timestate = '0';
  commit;
END pass_mgr_info_pro;
/

prompt
prompt Creating procedure PROC_DROP_DETECT_PATITION
prompt ============================================
prompt
CREATE OR REPLACE PROCEDURE PROC_DROP_DETECT_PATITION(beforeDays NUMBER) As
  v_SqlExec VARCHAR2(2000);
  v_err_num NUMBER;
  v_err_msg VARCHAR2(100);

  cursor cursor_cpu_info_part is
    select t.SUBOBJECT_NAME partition_name
      from user_objects t
     where object_name = upper('DETECT_SPEED_DATA')
       and t.OBJECT_TYPE = 'TABLE PARTITION'
       and t.GENERATED = 'Y'
       and t.CREATED < sysdate - beforeDays;
  record_cpu_info_oldpart cursor_cpu_info_part%rowType;

BEGIN
  open cursor_cpu_info_part;
  loop
    fetch cursor_cpu_info_part
      into record_cpu_info_oldpart;
    exit when cursor_cpu_info_part%notfound;
    --删除 DETECT_SPEED_DATA 表分区
    v_SqlExec := 'ALTER TABLE DETECT_SPEED_DATA DROP PARTITION ' ||
                 record_cpu_info_oldpart.partition_name;
    dbms_output.put_line('删除DETECT_SPEED_DATA表分区=' || v_SqlExec);
    DBMS_Utility.Exec_DDL_Statement(v_SqlExec);
  end loop;
  close cursor_cpu_info_part;

EXCEPTION
  WHEN OTHERS THEN
    v_err_num := SQLCODE;
    v_err_msg := SUBSTR(SQLERRM, 1, 100);
    dbms_output.put_line('PROC_DROP_DETECT_PATITION执行出现异常,错误码=' ||
                         v_err_num || '错误描述=' || v_err_msg);
END PROC_DROP_DETECT_PATITION;
/

prompt
prompt Creating procedure PROC_DSD_SUM
prompt ===============================
prompt
create or replace procedure PROC_DSD_SUM(
          p_table_ori_suffix in varchar2,
          p_table_sum_suffix in varchar2) IS

  v_table_name  varchar2(30) := 'DETECT_SPEED_DATA'; --
  v_table_ori varchar2(30) ;--
  v_table_sum varchar2(30) ;--

  v_ins_sql  varchar2(1000);  --          sql
  v_sum_sql  varchar2(1000);  --          sql

  v_sum_sql_time varchar2(1000); --                    select
  v_sum_sql_where  varchar2(1000);  --          sql    where
  v_sum_sql_from varchar2(1000);--from hour,day,month
  v_sum_fun  varchar2(30) := 'SUM(t.PASS_AMOUNT)'; --

  v_errCode VARCHAR2(100); --sql
  v_errMsg  VARCHAR2(1000); --sql

BEGIN
  --                      sql
  if(upper(p_table_sum_suffix) = '_HOUR') then
     v_sum_sql_where := ' where caddresscode is not null and dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd HH24' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';
     v_sum_fun := 'COUNT(*)'; --

     v_sum_sql_from:= ' (select CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,';
     v_sum_sql_from := v_sum_sql_from || 'decode(substr(ccarnumber, 1, 2),'|| chr(39) ||'青O'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'青A'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'OVR'|| chr(39) ||') LOC ';
     v_sum_sql_from := v_sum_sql_from ||' from ' || v_table_name || '' ||v_sum_sql_where || ') t ';
     v_table_name := 'ANLYS_'|| v_table_name;

  elsif (upper(p_table_sum_suffix) = '_DAY') then
     v_table_name := 'ANLYS_'|| v_table_name;
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';

     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  elsif (upper(p_table_sum_suffix) = '_MONTH') then
     v_table_name := 'ANLYS_'|| v_table_name;
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM' ||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' month, '||chr(39)||'yyyy-MM'||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' month, '||chr(39)||'yyyy-MM'||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||')';

     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  elsif (upper(p_table_sum_suffix) = '_YEAR') then
     v_table_name := 'ANLYS_'|| v_table_name;
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where extract(year from dcollectiondate) = extract(year from sysdate) - 1';
     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  end if;

  --
  begin
     v_table_sum := v_table_name || p_table_sum_suffix;

     v_ins_sql := 'insert into ' || v_table_sum || '(NID,CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,LOC,DCOLLECTIONDATE,PASS_AMOUNT)';

     v_sum_sql := 'select sys_guid(),t.CADDRESSCODE,t.NDERICTRION,t.CLANENUMBER,t.CLICENSETYPE,t.LOC,'|| v_sum_sql_time || ',' || v_sum_fun ||' from ';
     v_sum_sql := v_sum_sql || v_sum_sql_from || 'group by t.CADDRESSCODE, t.NDERICTRION, t.CLANENUMBER, t.CLICENSETYPE, t.LOC';

     v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

     dbms_output.put_line(v_ins_sql);

     execute immediate v_ins_sql;
      commit;

   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
       --insert into PC_DSD_SUM_ERROR values(sys_guid(),sysdate, v_errCode, v_errMsg);
      -- commit;
   end;


end PROC_DSD_SUM;
/

prompt
prompt Creating procedure PROC_DVS_CARNUM_ONWAY_SUM
prompt ============================================
prompt
create or replace procedure PROC_DVS_CARNUM_ONWAY_SUM(
          n_saveDay          in number,
          n_intervalMin      in number) IS

  v_table_name  varchar2(20) := 'detect_speed_data';--汇总原表
  v_table_sum varchar2(20) := 'DVS_CARNUM_ONWAY';--汇总结果表

  v_ins_sql  varchar2(1000);--插入sql
  v_sum_sql_allcar  varchar2(1000);--计算在途机动车总数sql
  v_sum_sql_foreigncar  varchar2(1000);--计算外地车总数sql
  v_sum_sql_servicecar  varchar2(1000);--计算营运机动车（出租车）总数sql
  v_sum_sql_from varchar2(1000);
  v_sum_sql_where  varchar2(1000);
  v_del_sql VARCHAR2(100);--删除sql
  v_sum_sql_shibie varchar2(1000);--计算识别车辆总数sql
  v_sum_sql_alldsdnum varchar2(1000);--计算过车总数sql
  v_sum_sql_where_all varchar2(1000);

  n_allcarnum number;--在途机动车总数
  n_foreigncarnum number;--外地车总数
  n_servicecarnum number;--营运机动车（出租车）总数
  n_shibiecarnum number;--识别车辆总数
  n_alldsdcarnum number;--过车总数

  d_basicDate  Date;
  d_beginDate  Date;
  d_endDate    Date;
  d_saveMaxDate Date;--小于此日期的数据会被删除

  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  d_basicDate := to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi'), 'yyyy-mm-dd hh24:mi');
  d_beginDate := d_basicDate - numtodsinterval(n_intervalMin,'minute');
  d_endDate := d_basicDate;
  d_saveMaxDate := d_basicDate - numtodsinterval(n_saveDay,'day');

  v_sum_sql_where_all := ' where t.dcollectiondate >= :1 and t.dcollectiondate < :2 and t.ccollectionagencies in ('||chr(39)||'370202000000'||chr(39)||','||chr(39)||'370203000000'||chr(39)||','||chr(39)||'370213000000'||chr(39)||') ';
  v_sum_sql_where := v_sum_sql_where_all || ' and t.clicensetype != '||chr(39)||'41'||chr(39)||' and t.clicensetype != '||chr(39)||'99'||chr(39)||'';
  v_sum_sql_from := ' select distinct t.ccarnumber,t.clicensetype from '|| v_table_name ||' t ' || v_sum_sql_where;
  v_sum_sql_shibie := ' select count(1) from '|| v_table_name ||' t ' || v_sum_sql_where;
  v_sum_sql_alldsdnum := ' select count(1) from '|| v_table_name ||' t ' || v_sum_sql_where_all;

  begin

    v_sum_sql_allcar := 'select count(1) from ( ' || v_sum_sql_from || ')';

    v_sum_sql_foreigncar := ' select nvl(sum(decode(substr(ccarnumber, 1, 2),'||chr(39)||'鲁U'||chr(39)||',0,'||chr(39)||'鲁B'||chr(39)||',0,1)),0) from (' || v_sum_sql_from || ')';

    v_sum_sql_servicecar := ' select nvl(sum(decode(substr(ccarnumber, 1, 3),'||chr(39)||'鲁UT'||chr(39)||',1,'||chr(39)||'鲁BT'||chr(39)||',1,0)),0) from (' || v_sum_sql_from || ')';

    dbms_output.put_line(v_sum_sql_allcar);
    dbms_output.put_line(v_sum_sql_foreigncar);
    dbms_output.put_line(v_sum_sql_servicecar);
    dbms_output.put_line(v_sum_sql_shibie);
    dbms_output.put_line(v_sum_sql_alldsdnum);

    execute immediate v_sum_sql_allcar into n_allcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_foreigncar into n_foreigncarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_servicecar into n_servicecarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_shibie into n_shibiecarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_alldsdnum into n_alldsdcarnum using d_beginDate, d_endDate;

    --在途车总数/识别率
    if (n_shibiecarnum != 0) then
        n_allcarnum := n_allcarnum / n_shibiecarnum * n_alldsdcarnum;
        n_foreigncarnum := n_foreigncarnum / n_shibiecarnum * n_alldsdcarnum;
        n_servicecarnum := n_servicecarnum / n_shibiecarnum * n_alldsdcarnum;
    end if;

    v_ins_sql := 'insert into ' || v_table_sum || '(computedate,allcarnum,foreigncarnum,servicecarnum)';
    v_ins_sql := v_ins_sql || ' values(:1, ' || n_allcarnum || ', ' || n_foreigncarnum ||','||n_servicecarnum||' )';

    --每天0点删除超期数据
    if (to_char(d_basicDate, 'HH24') = '00') then
         v_del_sql := 'delete from DVS_CARNUM_ONWAY t where t.computedate < :1' ;
         dbms_output.put_line(v_del_sql);
         execute immediate v_del_sql using d_saveMaxDate;
         commit;
    end if;

    dbms_output.put_line(v_ins_sql);
    execute immediate v_ins_sql using d_basicDate;
    commit;

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;

END PROC_DVS_CARNUM_ONWAY_SUM;
/

prompt
prompt Creating procedure PROC_DVS_GS_CARNUM_ONWAY_SUM
prompt ===============================================
prompt
create or replace procedure PROC_DVS_GS_CARNUM_ONWAY_SUM(
          n_saveDay          in number) IS

  v_del_sql VARCHAR2(100);--删除sql

  d_basicDate  Date;
  d_saveMaxDate Date;--小于此日期的数据会被删除

  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  d_basicDate := trunc(sysdate, 'mi');
  d_saveMaxDate := d_basicDate - numtodsinterval(n_saveDay,'day');--n_saveDay=100


  begin

    --每天0点删除超期数据
    if (to_char(d_basicDate, 'HH24') = '00') then
         v_del_sql := 'delete from DVS_GS_CARNUM_ONWAY t where t.computedate < :1' ;
         dbms_output.put_line(v_del_sql);
         execute immediate v_del_sql using d_saveMaxDate;
         commit;
    end if;

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;

END PROC_DVS_GS_CARNUM_ONWAY_SUM;
/

prompt
prompt Creating procedure PROC_DVS_INOUTCITY_FLOW_SUM
prompt ==============================================
prompt
create or replace procedure PROC_DVS_INOUTCITY_FLOW_SUM(
          n_saveDay          in number,
          n_intervalMin      in number) IS

  v_table_name  varchar2(20) := 'detect_speed_data';--卡口换算汇总原表
  v_table_sum varchar2(20) := 'DVS_INOUTCITY_FLOW';--汇总结果表

  v_ins_sql  varchar2(1000);--插入sql
  v_ins_sql_in  varchar2(1000);--插入sql
  v_ins_sql_out  varchar2(1000);--插入sql

  v_sum_sql varchar2(1000);
  v_sum_sql_in  varchar2(1000);--进城sql
  v_sum_sql_out  varchar2(1000);--出城sql

  v_sum_sql_allin varchar2(1000);--进城车流总数sql
  v_sum_sql_allout varchar2(1000);--出城车流总数sql

  v_where varchar2(1000);
  v_where_in_comm varchar2(1000);--进城where公用条件
  v_where_in  varchar2(1000);--进城where条件
  v_where_out_comm varchar2(1000);--出城where公用条件
  v_where_out  varchar2(1000);--出城where条件

  v_where_in_forbigcar varchar2(1000);--进城 外地车中的大型车where条件
  v_sum_sql_in_forbigcar varchar2(1000);--进城 外地车中的大型车sql
  n_in_forbigcarnum number;--进城 外地车中的大型车数

  v_where_out_forbigcar varchar2(1000);--出城 外地车中的大型车where条件
  v_sum_sql_out_forbigcar varchar2(1000);--出城 外地车中的大型车sql
  n_out_forbigcarnum number;--出城 外地车中的大型车数

  v_where_in_bigforcar varchar2(1000);--进城 大型车中的外地车where条件
  v_sum_sql_in_bigforcar varchar2(1000);--进城 大型车中的外地车sql
  n_in_bigforcarnum number;--进城 大型车中的外地车数

  v_where_out_bigforcar varchar2(1000);--出城 大型车中的外地车where条件
  v_sum_sql_out_bigforcar varchar2(1000);--出城 大型车中的外地车sql
  n_out_bigforcarnum number;--出城 大型车中的外地车数

  n_in_allcarnum number;--进城 车流总数
  n_in_foreigncarnum number;--进城 外地车总数
  n_in_bigcarnum number;--进城 大型车总数
  n_in_forothercarnum number;--进城 外地车中的其他车型总数
  n_out_forothercarnum number;--出城 外地车中的其他车型总数

  n_out_allcarnum number;--出城 车流总数
  n_out_foreigncarnum number;--出城 外地车总数
  n_out_bigcarnum number;--出城 大型车总数
  n_out_bigloccarnum number;--出城 大型车中的本地车总数
  n_in_bigloccarnum number;--进城 大型车中的本地车总数


  v_del_sql VARCHAR2(100);--删除sql

  d_basicDate  Date;
  d_beginDate  Date;
  d_endDate    Date;
  d_saveMaxDate Date;--小于此日期的数据会被删除

  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  d_basicDate := trunc(sysdate, 'mi');
  d_beginDate := d_basicDate - numtodsinterval(n_intervalMin,'minute');
  d_endDate := d_basicDate;
  d_saveMaxDate := d_basicDate - numtodsinterval(n_saveDay,'day');

  v_where := ' and t.clicensetype != '||chr(39)||'41'||chr(39)||' and t.clicensetype != '||chr(39)||'99'||chr(39)||' and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';
  v_where_in_comm := ' where (t.caddresscode,t.nderictrion) in (select pointcode, ninderictrion from anlys_monitor_point_inout) ';
  v_where_in := v_where_in_comm || v_where;

  v_where_out_comm := ' where (t.caddresscode,t.nderictrion) in (select pointcode, noutderictrion from anlys_monitor_point_inout) ';
  v_where_out := v_where_out_comm || v_where;

  v_where_in_forbigcar := v_where_in || ' and substr(ccarnumber, 1, 2) != '||chr(39)||'鲁U'||chr(39)||' and substr(ccarnumber, 1, 2) != '||chr(39)||'鲁B'||chr(39)||' ';
  v_where_out_forbigcar := v_where_out || ' and substr(ccarnumber, 1, 2) != '||chr(39)||'鲁U'||chr(39)||' and substr(ccarnumber, 1, 2) != '||chr(39)||'鲁B'||chr(39)||' ';

  v_where_in_bigforcar := v_where_in_comm || ' and t.clicensetype = '||chr(39)||'01'||chr(39)||' and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';
  v_where_out_bigforcar := v_where_out_comm || ' and t.clicensetype = '||chr(39)||'01'||chr(39)||' and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';

  begin

    v_sum_sql := ' nvl(sum(decode(substr(ccarnumber, 1, 2),'||chr(39)||'鲁U'||chr(39)||',0,'||chr(39)||'鲁B'||chr(39)||',0,1)),0), nvl(sum(decode(clicensetype,'||chr(39)||'01'||chr(39)||',1,0)),0) ';

    v_sum_sql_in := ' select ' || v_sum_sql || ' from  ' || v_table_name || ' t ' || v_where_in;
    v_sum_sql_out :=' select ' || v_sum_sql || ' from  ' || v_table_name || ' t ' || v_where_out;

    v_sum_sql_allin := ' select count(1) from ' || v_table_name || ' t ' || v_where_in_comm || ' and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';
    v_sum_sql_allout := ' select count(1) from ' || v_table_name || ' t ' || v_where_out_comm || ' and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';

    v_sum_sql_in_forbigcar := 'select nvl(sum(decode(clicensetype,'||chr(39)||'01'||chr(39)||',1,0)),0) from ' || v_table_name || ' t ' || v_where_in_forbigcar;
    v_sum_sql_out_forbigcar := 'select nvl(sum(decode(clicensetype,'||chr(39)||'01'||chr(39)||',1,0)),0) from ' || v_table_name || ' t ' || v_where_out_forbigcar;

    v_sum_sql_in_bigforcar := 'select nvl(sum(decode(substr(ccarnumber, 1, 2),'||chr(39)||'鲁U'||chr(39)||',0,'||chr(39)||'鲁B'||chr(39)||',0,1)),0) from '|| v_table_name || ' t ' || v_where_in_bigforcar;
    v_sum_sql_out_bigforcar := 'select nvl(sum(decode(substr(ccarnumber, 1, 2),'||chr(39)||'鲁U'||chr(39)||',0,'||chr(39)||'鲁B'||chr(39)||',0,1)),0) from '|| v_table_name || ' t ' || v_where_out_bigforcar;

    dbms_output.put_line(v_sum_sql_in);
    dbms_output.put_line(v_sum_sql_out);

    dbms_output.put_line(v_sum_sql_allin);
    dbms_output.put_line(v_sum_sql_allout);

    dbms_output.put_line(v_sum_sql_in_forbigcar);
    dbms_output.put_line(v_sum_sql_out_forbigcar);

    dbms_output.put_line(v_sum_sql_in_bigforcar);
    dbms_output.put_line(v_sum_sql_out_bigforcar);

    execute immediate v_sum_sql_in into n_in_foreigncarnum,n_in_bigcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_out into n_out_foreigncarnum,n_out_bigcarnum using d_beginDate, d_endDate;

    execute immediate v_sum_sql_allin into n_in_allcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_allout into n_out_allcarnum using d_beginDate, d_endDate;

    execute immediate v_sum_sql_in_forbigcar into n_in_forbigcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_out_forbigcar into n_out_forbigcarnum using d_beginDate, d_endDate;

    execute immediate v_sum_sql_in_bigforcar into n_in_bigforcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_out_bigforcar into n_out_bigforcarnum using d_beginDate, d_endDate;

    n_in_forothercarnum := n_in_foreigncarnum - n_in_forbigcarnum;
    n_out_forothercarnum := n_out_foreigncarnum - n_out_forbigcarnum;
    n_in_bigloccarnum := n_in_bigcarnum - n_in_bigforcarnum;
    n_out_bigloccarnum := n_out_bigcarnum - n_out_bigforcarnum;


    v_ins_sql := 'insert into ' || v_table_sum || '(Inoutflag,Allcarnum,Foreigncarnum,forbigcarnum, forothercarnum,Bigcarnum,bigloccarnum, bigforcarnum,Computedate)';
    --v_ins_sql_in := v_ins_sql || v_sum_sql_in;
    --v_ins_sql_out := v_ins_sql || v_sum_sql_out;
    v_ins_sql_in := v_ins_sql || ' values('||chr(39)||'0'||chr(39)||','|| n_in_allcarnum ||','|| n_in_foreigncarnum ||','|| n_in_forbigcarnum ||','|| n_in_forothercarnum||','|| n_in_bigcarnum||','|| n_in_bigloccarnum||','|| n_in_bigforcarnum||',:1)';
    v_ins_sql_out := v_ins_sql || ' values('||chr(39)||'1'||chr(39)||','|| n_out_allcarnum||','|| n_out_foreigncarnum||','|| n_out_forbigcarnum||','|| n_out_forothercarnum||','|| n_out_bigcarnum||','|| n_out_bigloccarnum||','|| n_out_bigforcarnum||',:1)';

    --每天0点删除超期数据
    if (to_char(d_basicDate, 'HH24') = '00') then
         v_del_sql := 'delete from DVS_INOUTCITY_FLOW t where t.computedate < :1' ;
         dbms_output.put_line(v_del_sql);
         execute immediate v_del_sql using d_saveMaxDate;
         commit;
    end if;

    dbms_output.put_line(v_ins_sql_in);
    dbms_output.put_line(v_ins_sql_out);
   -- execute immediate v_ins_sql_in using d_endDate, d_beginDate, d_endDate;
   -- execute immediate v_ins_sql_out using d_endDate, d_beginDate, d_endDate;
   execute immediate v_ins_sql_in using d_endDate;
    execute immediate v_ins_sql_out using d_endDate;
    commit;

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;

END PROC_DVS_INOUTCITY_FLOW_SUM;
/

prompt
prompt Creating procedure PROC_DVS_INOUTGS_FLOW_SUM
prompt ============================================
prompt
create or replace procedure PROC_DVS_INOUTGS_FLOW_SUM(
          n_saveDay          in number,
          n_intervalMin      in number) IS

  v_table_name_dsd  varchar2(20) := 'detect_speed_data';--卡口换算汇总原表
  v_table_name_sfd  varchar2(20) := 'section_flow_data';---流量累加汇总原表
  v_table_sum varchar2(20) := 'DVS_INOUTGS_FLOW';--汇总结果表

  v_ins_sql  varchar2(1000);--插入sql
  v_sum_sql_in_dsd  varchar2(1000);--卡口换算驶入高速流量sql
  v_sum_sql_out_dsd  varchar2(1000);--卡口换算驶出高速流量sql
  v_sum_sql_in_sfd  varchar2(1000);--流量检测累加驶入高速流量sql
  v_sum_sql_out_sfd  varchar2(1000);--流量检测累加驶出高速流量sql

  v_where_in_dsd  varchar2(1000);--卡口换算进高速where条件
  v_where_out_dsd  varchar2(1000);--卡口换算出高速where条件
  v_where_in_sfd  varchar2(1000);--流量检测累加进高速where条件
  v_where_out_sfd  varchar2(1000);--流量检测累加出高速where条件
  v_del_sql VARCHAR2(100);--删除sql

  n_innum_dsd number;--驶入高速流量-卡口换算
  n_outnum_dsd number;--驶出高速流量-卡口换算
  n_innum_sfd number;--驶入高速流量-流量检测累加
  n_outnum_sfd number;--驶出高速流量-流量检测累加
  n_innum number;--驶入高速流量
  n_outnum number;--驶出高速流量

  d_basicDate  Date;
  d_beginDate  Date;
  d_endDate    Date;
  d_saveMaxDate Date;--小于此日期的数据会被删除

  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  d_basicDate := trunc(sysdate, 'mi');
  d_beginDate := d_basicDate - numtodsinterval(n_intervalMin,'minute');
  d_endDate := d_basicDate;
  d_saveMaxDate := d_basicDate - numtodsinterval(n_saveDay,'day');

  v_where_in_dsd := ' where (t.caddresscode,t.nderictrion) in (select pointcode, nindirection from MONITOR_POINT_INOUT_GS g where g.nindirection>0 and g.type='|| chr(39) ||'0'|| chr(39) ||') and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';
  v_where_out_dsd := ' where (t.caddresscode,t.nderictrion) in (select pointcode, noutdirection from MONITOR_POINT_INOUT_GS g where g.noutdirection>0 and g.type='|| chr(39) ||'0'|| chr(39) ||') and t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';

  v_where_in_sfd := ' where (s.pointid,s.directionid) in (select pointcode, nindirection from MONITOR_POINT_INOUT_GS g where g.nindirection>0 and g.type='|| chr(39) ||'1'|| chr(39) ||') and s.stdtime >= :1 and s.stdtime < :2';
  v_where_out_sfd := ' where (s.pointid,s.directionid) in (select pointcode, noutdirection from MONITOR_POINT_INOUT_GS g where g.noutdirection>0 and g.type='|| chr(39) ||'1'|| chr(39) ||') and s.stdtime >= :1 and s.stdtime < :2';

  begin

    v_sum_sql_in_dsd := 'select count(1) from  ' || v_table_name_dsd || ' t ' || v_where_in_dsd;
    v_sum_sql_out_dsd :='select count(1) from  ' || v_table_name_dsd || ' t ' || v_where_out_dsd;

    v_sum_sql_in_sfd := 'select nvl(sum(s.commcount),0) from ' || v_table_name_sfd || ' s ' || v_where_in_sfd;
    v_sum_sql_out_sfd := 'select nvl(sum(s.commcount),0) from ' || v_table_name_sfd || ' s ' || v_where_out_sfd;

    dbms_output.put_line(v_sum_sql_in_dsd);
    dbms_output.put_line(v_sum_sql_out_dsd);

    dbms_output.put_line(v_sum_sql_in_sfd);
    dbms_output.put_line(v_sum_sql_out_sfd);

    execute immediate v_sum_sql_in_dsd into n_innum_dsd using d_beginDate, d_endDate;
    execute immediate v_sum_sql_out_dsd into n_outnum_dsd using d_beginDate, d_endDate;

    execute immediate v_sum_sql_in_sfd into n_innum_sfd using d_beginDate, d_endDate;
    execute immediate v_sum_sql_out_sfd into n_outnum_sfd using d_beginDate, d_endDate;

    n_innum := n_innum_dsd + n_innum_sfd;
    n_outnum := n_outnum_dsd + n_outnum_sfd;

    v_ins_sql := 'insert into ' || v_table_sum || '(computedate,innum,outnum)';
    v_ins_sql := v_ins_sql || ' values(:1, ' || n_innum || ', ' || n_outnum ||' )';

    --每天0点删除超期数据
    if (to_char(d_basicDate, 'HH24') = '00') then
         v_del_sql := 'delete from DVS_INOUTGS_FLOW t where t.computedate < :1' ;
         dbms_output.put_line(v_del_sql);
         execute immediate v_del_sql using d_saveMaxDate;
         commit;
    end if;

    dbms_output.put_line(v_ins_sql);
    execute immediate v_ins_sql using d_basicDate;
    commit;

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;

END PROC_DVS_INOUTGS_FLOW_SUM;
/

prompt
prompt Creating procedure PROC_GS_DROPOVERDUEDATA
prompt ==========================================
prompt
create or replace procedure proc_gs_dropoverduedata is

begin
 delete from black_list_manage t where t.controltype =29 and t.etime<sysdate;
 commit;
 end;
/

prompt
prompt Creating procedure PROC_HRV_CARNUM_ONWAY_SUM
prompt ============================================
prompt
create or replace procedure PROC_HRV_CARNUM_ONWAY_SUM(
          n_saveDay          in number,
          n_intervalMin      in number) IS

  v_table_name  varchar2(20) := 'detect_speed_data';--汇总原表
  v_table_sum varchar2(30) := 'hrv_monitor_car_onway';--在途车汇总结果表
  v_table_sum_belong varchar2(30) := 'hrv_monitor_car_belonging';--在途车归属地汇总结果表

  v_ins_sql  varchar2(1000);--插入sql
  v_ins_sql_belong  varchar2(1000);--在途车归属地插入sql
 -- v_sum_sql_allcar  varchar2(1000);--计算在途机动车总数sql
  v_sum_sql_othernums varchar2(1000);--计算外省车、本市车、大型车、小型车
  v_sum_sql_belong varchar2(1000);--计算本省车、外省车、本市车及其归属地

  v_sum_sql_from varchar2(1000);
  v_sum_sql_where  varchar2(1000);
  v_del_sql VARCHAR2(100);--删除sql
  v_del_sql_belong VARCHAR2(100);--删除sql
  v_sum_sql_shibie varchar2(1000);--计算识别车辆总数sql
  v_sum_sql_alldsdnum varchar2(1000);--计算过车总数sql
  v_sum_sql_where_all varchar2(1000);

  n_allcarnum number;--在途机动车总数
  n_otherprovincenum number;--外省车总数
  n_foreignnum number;--本省外地车总数
  n_localnum number;--本市车总数
  n_bigcarnum number;--大型车总数
  n_smallcarnum number;--小型车总数

  n_shibiecarnum number;--识别车辆总数
  n_alldsdcarnum number;--过车总数

  d_basicDate  Date;
  d_beginDate  Date;
  d_endDate    Date;
  d_saveMaxDate Date;--小于此日期的数据会被删除

  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  d_basicDate := to_date(to_char(sysdate, 'yyyy-mm-dd hh24:mi'), 'yyyy-mm-dd hh24:mi');
  d_beginDate := d_basicDate - numtodsinterval(n_intervalMin,'minute');
  d_endDate := d_basicDate;
  d_saveMaxDate := d_basicDate - numtodsinterval(n_saveDay,'day');

  v_sum_sql_where_all := ' where t.dcollectiondate >= :1 and t.dcollectiondate < :2 ';
  v_sum_sql_where := v_sum_sql_where_all || ' and t.clicensetype != '||chr(39)||'41'||chr(39)||' and t.clicensetype != '||chr(39)||'99'||chr(39)||'';
  v_sum_sql_from := ' select distinct t.ccarnumber,t.clicensetype from '|| v_table_name ||' t ' || v_sum_sql_where;
  v_sum_sql_shibie := ' select count(1) from '|| v_table_name ||' t ' || v_sum_sql_where;
  v_sum_sql_alldsdnum := ' select count(1) from '|| v_table_name ||' t ' || v_sum_sql_where_all;

  begin

    /*在途车表hrv_monitor_car_onway汇总数据start*/
    --v_sum_sql_allcar := 'select count(1) from ( ' || v_sum_sql_from || ')';

    --外省车、本市车、大型车、小型车
    v_sum_sql_othernums := ' select count(1),nvl(sum(decode(substr(ccarnumber, 1, 1),'||chr(39)||'鲁'||chr(39)||',0,1)),0), ';
    v_sum_sql_othernums := v_sum_sql_othernums || ' nvl(sum(decode(substr(ccarnumber, 1, 2),'||chr(39)||'鲁U'||chr(39)||',1,'||chr(39)||'鲁B'||chr(39)||',1,0)),0), ';
    v_sum_sql_othernums := v_sum_sql_othernums || ' nvl(sum(decode(clicensetype,'||chr(39)||'01'||chr(39)||',1,0)),0), ';
    v_sum_sql_othernums := v_sum_sql_othernums || ' nvl(sum(decode(clicensetype,'||chr(39)||'02'||chr(39)||',1,0)),0) ';
    v_sum_sql_othernums := v_sum_sql_othernums || ' from (' || v_sum_sql_from || ') ';

    --dbms_output.put_line(v_sum_sql_allcar);
    dbms_output.put_line(v_sum_sql_othernums);
    dbms_output.put_line(v_sum_sql_shibie);
    dbms_output.put_line(v_sum_sql_alldsdnum);

   -- execute immediate v_sum_sql_allcar into n_allcarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_othernums into n_allcarnum, n_otherprovincenum, n_localnum, n_bigcarnum, n_smallcarnum  using d_beginDate, d_endDate;
    execute immediate v_sum_sql_shibie into n_shibiecarnum using d_beginDate, d_endDate;
    execute immediate v_sum_sql_alldsdnum into n_alldsdcarnum using d_beginDate, d_endDate;
    /*在途车表hrv_monitor_car_onway汇总数据end*/


    /*在途车归属地表hrv_monitor_car_belonging汇总数据start*/

    --计算在途车数、外省车、本省外地车、本市车及其归属地
    v_sum_sql_belong := ' select ownprovincenum + otherprovincenum allcarnum, otherprovincenum, ownprovincenum - localnum foreignnum, localnum, pointid,:3,sysdate from (';
    v_sum_sql_belong := v_sum_sql_belong || ' select nvl(sum(decode(substr(ccarnumber, 1, 1), '||chr(39)||'鲁'||chr(39)||', 1, 0)), 0) ownprovincenum,';
    v_sum_sql_belong := v_sum_sql_belong || ' nvl(sum(decode(substr(ccarnumber, 1, 1), '||chr(39)||'鲁'||chr(39)||', 0, 1)), 0) otherprovincenum,';
    v_sum_sql_belong := v_sum_sql_belong || ' nvl(sum(decode(substr(ccarnumber, 1, 2), '||chr(39)||'鲁U'||chr(39)||', 1, '||chr(39)||'鲁B'||chr(39)||', 1, 0)), 0) localnum,';
    v_sum_sql_belong := v_sum_sql_belong || ' pointid from (select distinct t.ccarnumber, t.clicensetype, e.pointid from detect_speed_data t';
    v_sum_sql_belong := v_sum_sql_belong || ' left join equipment_info e on t.cdevicecode = e.deviceid' || v_sum_sql_where;
    v_sum_sql_belong := v_sum_sql_belong || ' and e.pointid is not null ) group by pointid)';

    /*在途车归属地表hrv_monitor_car_belonging汇总数据end*/

    --在途车总数/识别率
    if (n_shibiecarnum != 0) then
        n_allcarnum := round(n_allcarnum / n_shibiecarnum * n_alldsdcarnum);
        n_otherprovincenum := round(n_otherprovincenum / n_shibiecarnum * n_alldsdcarnum);
        n_localnum := round(n_localnum / n_shibiecarnum * n_alldsdcarnum);
        n_bigcarnum := round(n_bigcarnum / n_shibiecarnum * n_alldsdcarnum);
        n_smallcarnum := round(n_smallcarnum / n_shibiecarnum * n_alldsdcarnum);

        --计算在途车数、外省车、本省外地车、本市车及其归属地
        v_sum_sql_belong := ' select ownprovincenum + otherprovincenum allcarnum, otherprovincenum, ownprovincenum - localnum foreignnum, localnum, pointid,:3,sysdate from (';
        v_sum_sql_belong := v_sum_sql_belong || ' select round(nvl(sum(decode(substr(ccarnumber, 1, 1), '||chr(39)||'鲁'||chr(39)||', 1, 0)), 0) /'|| n_shibiecarnum||' * '||n_alldsdcarnum||') ownprovincenum,';
        v_sum_sql_belong := v_sum_sql_belong || ' round(nvl(sum(decode(substr(ccarnumber, 1, 1), '||chr(39)||'鲁'||chr(39)||', 0, 1)), 0) /'|| n_shibiecarnum||' * '||n_alldsdcarnum||') otherprovincenum,';
        v_sum_sql_belong := v_sum_sql_belong || ' round(nvl(sum(decode(substr(ccarnumber, 1, 2), '||chr(39)||'鲁U'||chr(39)||', 1, '||chr(39)||'鲁B'||chr(39)||', 1, 0)), 0) /'|| n_shibiecarnum||' * '||n_alldsdcarnum||') localnum,';
        v_sum_sql_belong := v_sum_sql_belong || ' pointid from (select distinct t.ccarnumber, t.clicensetype, e.pointid from detect_speed_data t';
        v_sum_sql_belong := v_sum_sql_belong || ' left join equipment_info e on t.cdevicecode = e.deviceid' || v_sum_sql_where;
        v_sum_sql_belong := v_sum_sql_belong || ' and e.pointid is not null ) group by pointid)';

    end if;

    --本省外地车=在途车总数-外省车-本市车
    n_foreignnum := n_allcarnum - n_otherprovincenum - n_localnum;

    v_ins_sql := 'insert into ' || v_table_sum || '(computedate, allcarnum, otherprovincenum, foreignnum, localnum, bigcar, smallcar,  insertdate)';
    v_ins_sql := v_ins_sql || ' values(:1, ' || n_allcarnum || ', ' || n_otherprovincenum ||','||n_foreignnum||','|| n_localnum ||','|| n_bigcarnum ||','|| n_smallcarnum ||' ,sysdate)';

    dbms_output.put_line(v_sum_sql_belong);

    v_ins_sql_belong := 'insert into ' || v_table_sum_belong || '(allcarnum, otherprovincenum, foreignnum, localnum, pointcode, computedate, insertdate)';
    v_ins_sql_belong := v_ins_sql_belong || v_sum_sql_belong;


    --每周一0点删除超期数据
    if(to_char(d_basicDate,'d')) = 2 then
      if (to_char(d_basicDate, 'HH24') = '00') then
           v_del_sql := 'delete from hrv_monitor_car_onway t where t.computedate < :1' ;
           v_del_sql_belong := 'delete from hrv_monitor_car_belonging where computedate < :1';

           dbms_output.put_line(v_del_sql);
           dbms_output.put_line(v_del_sql_belong);
           execute immediate v_del_sql using d_saveMaxDate;
           commit;
           execute immediate v_del_sql_belong using d_saveMaxDate;
           commit;

      end if;
    end if;

    dbms_output.put_line(v_ins_sql);
    execute immediate v_ins_sql using d_basicDate;
    commit;

    dbms_output.put_line(v_ins_sql_belong);
    execute immediate v_ins_sql_belong using d_basicDate, d_beginDate, d_endDate;
    commit;

    exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;

END PROC_HRV_CARNUM_ONWAY_SUM;
/

prompt
prompt Creating procedure PROC_IDG_SUM
prompt ===============================
prompt
create or replace procedure PROC_IDG_SUM(
          p_table_ori_suffix in varchar2,
          p_table_sum_suffix in varchar2) IS

  v_table_name  varchar2(30) := 'illegal_data'; --违法业务表的名称
  v_table_sum varchar2(30) ;--汇总结果表

  v_ins_sql  varchar2(1000);  --执行新增的sql语句
  v_sum_sql  varchar2(1000);  --执行汇总的sql语句

  v_sum_sql_time varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where  varchar2(1000);  --执行汇总的sql语句where条件语句
  v_sum_sql_from varchar2(1000);--from hour,day,month
  v_sum_fun  varchar2(30) := 'SUM(t.ILL_NUM),SUM(t.FKJE_SUM)'; --汇总函数

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  --根据汇总时间范围初始化sql片段

     v_sum_sql_where := ' where t.cselectstatus!=2 and t.caddresscode=t1.pointcode and t.DILLEGALDATE < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||') and t.DILLEGALDATE >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';
     v_sum_fun := 'COUNT(*)'; --汇总函数


  --进行汇总统计和入库
  begin
     v_table_sum :='ILLEGAL_DATA_GEOMETRY';

     v_ins_sql := 'insert into ' || v_table_sum  ;

     v_sum_sql := 'select t.caddresscode,MDSYS.SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(t1.longitude,t1.latitude, null), NULL, NULL) ,count(*) counts,trunc(t.dillegaldate)illegaldate from illegal_data t,monitor_point t1 ' ;
     v_sum_sql := v_sum_sql || v_sum_sql_where || 'group by t.caddresscode,trunc(t.dillegaldate),t1.longitude,t1.latitude  ';

     v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

     dbms_output.put_line(v_ins_sql);

     execute immediate v_ins_sql;
      commit;

   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;


end PROC_IDG_SUM;
/

prompt
prompt Creating procedure PROC_INOUTCITY_SUM
prompt =====================================
prompt
create or replace procedure PROC_inoutcity_SUM(
          p_table_ori_suffix in varchar2,
          p_table_sum_suffix in varchar2) IS

  v_table_name  varchar2(30) := 'DETECT_SPEED_DATA';
  v_table_ori varchar2(30) ;
  v_table_sum varchar2(30) ;

  v_ins_sql  varchar2(1000);
  v_sum_sql  varchar2(1000);

  v_sum_sql_time varchar2(1000);
  v_sum_sql_where  varchar2(1000);
  v_sum_sql_from varchar2(1000);--from hour,day,month
  v_sum_fun  varchar2(30) := 'SUM(t.PASS_AMOUNT)';

  v_del_sql_where  varchar2(1000);
  v_sum_sql_where_del  varchar2(1000);
  v_sum_sql_time_del varchar2(1000);
  v_sum_fun_del varchar2(30) := 'SUM(t.PASS_AMOUNT)';
  v_sum_sql_from_del varchar2(1000);
  v_ins_sql_del  varchar2(1000);
  v_sum_sql_del  varchar2(1000);
  v_del_sql   varchar2(1000);
  v_errCode VARCHAR2(100);
  v_errMsg  VARCHAR2(1000);

BEGIN

  if(upper(p_table_sum_suffix) = '_HOUR') then
     v_sum_sql_where := ' where caddresscode in (select pointcode from anlys_monitor_point_inout) and dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd HH24' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';
     v_sum_fun := 'COUNT(*)';

     v_sum_sql_from:= ' (select CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,';
     v_sum_sql_from := v_sum_sql_from || 'decode(substr(ccarnumber, 1, 2),'|| chr(39) ||'鲁U'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'鲁B'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'OVR'|| chr(39) ||') LOC ';
     v_sum_sql_from := v_sum_sql_from ||' from ' || v_table_name || '' ||v_sum_sql_where || ') t ';
 --    v_table_name := 'ANLYS_'|| v_table_name;
     v_table_name := 'ANLYS_inout_city';

	 --解决由于数据接入延时造成出入城车流分析没有数据的情况
	 --将ANLYS_INOUT_CITY_HOUR表中往前第12个小时的数据清空后重新生成
	 v_sum_sql_where_del := ' where caddresscode in (select pointcode from anlys_monitor_point_inout) and dcollectiondate < to_date(to_char(sysdate - interval '|| chr(39) || '11' || chr(39) ||' hour,' || chr(39)||'yyyy-MM-dd HH24' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '12' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';

	 v_sum_sql_time_del:= 'to_date(to_char(sysdate - interval '|| chr(39) || '12' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';
     v_sum_fun_del := 'COUNT(*)';

     v_sum_sql_from_del:= ' (select CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,';
     v_sum_sql_from_del := v_sum_sql_from_del || 'decode(substr(ccarnumber, 1, 2),'|| chr(39) ||'鲁U'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'鲁B'|| chr(39) ||','|| chr(39) ||'LOC'|| chr(39) ||','|| chr(39) ||'OVR'|| chr(39) ||') LOC ';
     v_sum_sql_from_del := v_sum_sql_from_del ||' from DETECT_SPEED_DATA ' ||v_sum_sql_where_del || ') t ';

	 v_del_sql_where :='  where DCOLLECTIONDATE < to_date(to_char(sysdate - interval '|| chr(39) || '11' || chr(39) ||' hour, '
	 || chr(39)||'yyyy-MM-dd HH24' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '12' || chr(39) ||' hour, '||chr(39)||'yyyy-MM-dd HH24'||chr(39)||'),'||chr(39)||'yyyy-MM-dd HH24'||chr(39)||')';

  elsif (upper(p_table_sum_suffix) = '_DAY') then
    -- v_table_name := 'ANLYS_'|| v_table_name;
     v_table_name := 'ANLYS_inout_city';
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';

     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  elsif (upper(p_table_sum_suffix) = '_MONTH') then
    -- v_table_name := 'ANLYS_'|| v_table_name;
     v_table_name := 'ANLYS_inout_city';
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where dcollectiondate < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM' ||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||') and dcollectiondate >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' month, '||chr(39)||'yyyy-MM'||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||')';
     v_sum_sql_time:= 'to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' month, '||chr(39)||'yyyy-MM'||chr(39)||'),'||chr(39)||'yyyy-MM'||chr(39)||')';

     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  elsif (upper(p_table_sum_suffix) = '_YEAR') then
    -- v_table_name := 'ANLYS_'|| v_table_name;
     v_table_name := 'ANLYS_inout_city';
     v_table_ori := v_table_name || p_table_ori_suffix;

     v_sum_sql_where := ' where extract(year from dcollectiondate) = extract(year from sysdate) - 1';
     v_sum_sql_from:= v_table_ori || ' t' || v_sum_sql_where || ' ';

  end if;


  begin
     v_table_sum := v_table_name || p_table_sum_suffix;


     v_ins_sql := 'insert into ' || v_table_sum || '(NID,CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,LOC,DCOLLECTIONDATE,PASS_AMOUNT)';

     v_sum_sql := 'select sys_guid(),t.CADDRESSCODE,t.NDERICTRION,t.CLANENUMBER,t.CLICENSETYPE,t.LOC,'|| v_sum_sql_time || ',' || v_sum_fun ||' from ';
     v_sum_sql := v_sum_sql || v_sum_sql_from || 'group by t.CADDRESSCODE, t.NDERICTRION, t.CLANENUMBER, t.CLICENSETYPE, t.LOC';

     v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

     dbms_output.put_line(v_ins_sql);

     execute immediate v_ins_sql;
     commit;

    --解决由于数据接入延时造成出入城车流分析没有数据的情况
	 --将ANLYS_INOUT_CITY_HOUR表中往前第12个小时的数据清空后重新生成
	 if(upper(p_table_sum_suffix) = '_HOUR') then

	     v_ins_sql_del := 'insert into ' || v_table_sum || '(NID,CADDRESSCODE,NDERICTRION,CLANENUMBER,CLICENSETYPE,LOC,DCOLLECTIONDATE,PASS_AMOUNT)';

         v_sum_sql_del := 'select sys_guid(),t.CADDRESSCODE,t.NDERICTRION,t.CLANENUMBER,t.CLICENSETYPE,t.LOC,'|| v_sum_sql_time_del || ',' || v_sum_fun_del ||' from ';
         v_sum_sql_del := v_sum_sql_del || v_sum_sql_from_del || 'group by t.CADDRESSCODE, t.NDERICTRION, t.CLANENUMBER, t.CLICENSETYPE, t.LOC';

         v_ins_sql_del := v_ins_sql_del || ' ' || v_sum_sql_del;



	     v_del_sql := 'delete from ' || v_table_sum || v_del_sql_where;
     dbms_output.put_line(v_del_sql);
     execute immediate v_del_sql;
     commit;

     dbms_output.put_line(v_ins_sql_del);

     execute immediate v_ins_sql_del;
     commit;
   end if;
   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
       --insert into PC_DSD_SUM_ERROR values(sys_guid(),sysdate, v_errCode, v_errMsg);
      -- commit;
   end;


end PROC_inoutcity_SUM;
/

prompt
prompt Creating procedure PROC_PCG_SUM
prompt ===============================
prompt
create or replace procedure PROC_PCG_SUM(
          p_table_ori_suffix in varchar2,
          p_table_sum_suffix in varchar2) IS

  v_table_name  varchar2(30) := 'POLICE_CASE';
  v_table_sum varchar2(30) ;--汇总结果表

  v_ins_sql  varchar2(1000);  --执行新增的sql语句
  v_sum_sql  varchar2(1000);  --执行汇总的sql语句

  v_sum_sql_time varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where  varchar2(1000);  --执行汇总的sql语句where条件语句
  v_sum_sql_from varchar2(1000);--from hour,day,month
  v_sum_fun  varchar2(30) := 'SUM(t.ILL_NUM),SUM(t.FKJE_SUM)'; --汇总函数

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  --根据汇总时间范围初始化sql片段

     v_sum_sql_where := ' where  t.START_TIME < to_date(to_char(sysdate,' || chr(39)||'yyyy-MM-dd' ||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||') and t.START_TIME >= to_date(to_char(sysdate - interval '|| chr(39) || '1' || chr(39) ||' day, '||chr(39)||'yyyy-MM-dd'||chr(39)||'),'||chr(39)||'yyyy-MM-dd'||chr(39)||')';
     v_sum_fun := 'COUNT(*)'; --汇总函数


  --进行汇总统计和入库
  begin
     v_table_sum :='POLICE_CASE_GEOMETRY';

     v_ins_sql := 'insert into ' || v_table_sum  ;

     v_sum_sql := 'select substr(t.area_id,0,6), MDSYS.SDO_GEOMETRY(2001, 8307, SDO_POINT_TYPE(t.longitude,t.latitude, null), NULL, NULL) ,t.case_category,count(*) counts,trunc(t.start_time)start_time,t.area_id from police_case t ' ;
     v_sum_sql := v_sum_sql || v_sum_sql_where || 'group by substr(t.area_id,0,6), t.area_id,t.case_category,t.longitude,t.latitude,trunc(t.start_time)  ';

     v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

     dbms_output.put_line(v_ins_sql);

     execute immediate v_ins_sql;
      commit;

   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;

        dbms_output.put_line(v_errCode||v_errMsg);
   end;


end PROC_PCG_SUM;
/

prompt
prompt Creating procedure PROC_PC_SUM
prompt ==============================
prompt
create or replace procedure PROC_PC_SUM(p_table_ori_suffix in varchar2,
                                         p_table_sum_suffix in varchar2) IS

  v_table_name varchar2(30) := 'POLICE_CASE'; --警情数据源表的名称
  v_table_ori  varchar2(30); --被汇总的表
  v_table_sum  varchar2(30); --汇总结果表

  v_ins_sql varchar2(1000); --执行新增的sql语句
  v_sum_sql varchar2(1000); --执行汇总的sql语句

  v_sum_sql_time  varchar2(1000); --根据汇总时间范围不同select的时间精准度不同
  v_sum_sql_where varchar2(1000); --执行汇总的sql语句where条件语句
  v_sum_sql_from  varchar2(1000); --from hour,day,month
  v_sum_fun       varchar2(30) := 'SUM(t.PASS_AMOUNT)'; --汇总函数

  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息

BEGIN
  --根据汇总时间范围初始化sql片段
  if (upper(p_table_sum_suffix) = '_HOUR') then
    v_sum_sql_where := ' where start_time < to_date(to_char(sysdate,' ||
                       chr(39) || 'yyyy-MM-dd HH24' || chr(39) || '),' ||
                       chr(39) || 'yyyy-MM-dd HH24' || chr(39) ||
                       ') and start_time >= to_date(to_char(sysdate - interval ' ||
                       chr(39) || '1' || chr(39) || ' hour, ' || chr(39) ||
                       'yyyy-MM-dd HH24' || chr(39) || '),' || chr(39) ||
                       'yyyy-MM-dd HH24' || chr(39) || ')';
    v_sum_sql_time  := 'to_date(to_char(sysdate - interval ' || chr(39) || '1' ||
                       chr(39) || ' hour, ' || chr(39) || 'yyyy-MM-dd HH24' ||
                       chr(39) || '),' || chr(39) || 'yyyy-MM-dd HH24' ||
                       chr(39) || ')';
    v_sum_fun       := 'COUNT(*)'; --汇总函数

    v_sum_sql_from := ' (select CASE_CATEGORY,CONCRETE_TYPE,AREA_ID';

    v_sum_sql_from := v_sum_sql_from || ' from ' || v_table_name || '' ||
                      v_sum_sql_where || ') t ';
    v_table_name   := 'ANLYS_' || v_table_name;

  end if;

  --进行汇总统计和入库
  begin
    v_table_sum := v_table_name || p_table_sum_suffix;

    v_ins_sql := 'insert into ' || v_table_sum ||
                 '(NID,CASE_CATEGORY,CONCRETE_TYPE,AREA_ID,CASE_TIME,ALARM_AMOUBT)';

    v_sum_sql := 'select sys_guid(),t.CASE_CATEGORY,t.CONCRETE_TYPE,t.AREA_ID,' ||
                 v_sum_sql_time || ',' || v_sum_fun || ' from ';
    v_sum_sql := v_sum_sql || v_sum_sql_from ||
                 'group by t.CASE_CATEGORY, t.CONCRETE_TYPE,  t.AREA_ID';

    v_ins_sql := v_ins_sql || ' ' || v_sum_sql;

    dbms_output.put_line(v_ins_sql);

    execute immediate v_ins_sql;
    commit;

  exception
    when others then
      v_errCode := TO_CHAR(SQLCODE);
      v_errMsg  := SQLERRM;

      dbms_output.put_line(v_errCode || v_errMsg);
      end;
end PROC_PC_SUM;
/

prompt
prompt Creating procedure PROC_SSC_AVG_PRE
prompt ===================================
prompt
create or replace procedure PROC_SSC_AVG_PRE(
      day_begin in Integer,
          day_end in Integer--汇总天数 如果要汇总昨天，穿1即可
) IS

  v_table_from  varchar2(30) := 'SECTION_STATUS_COMPUTE'; --流量数据源表的名称
  v_table_to varchar2(50) := 'AN_'||v_table_from||'_AVG';--汇总结果表 testestestest
  --插入语句
  v_ins_sql  varchar2(1000);  --执行新增的sql语句
  --查询语句
  v_sel_sql  varchar2(1000);
  --分组语句
  v_grp_sql varchar2(1000):=' group by section_id';
  v_where_sql varchar2(2000);  --where条件语句
  --总语句
  v_sum_sql  varchar2(10000);
  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息
  v_curtime date;--每天第一分钟
  v_btime date;
  v_etime date;
  v1 int;--5分钟间隔

BEGIN
  v_curtime:= to_date(to_char(sysdate,'yyyy-MM-dd')||' 00:00','yyyy-MM-dd HH24:MI');
  begin
    --清除90天之前的数据
    delete from an_section_status_compute_avg where stdtime<sysdate-90-1;
    commit;
    for id_cur in(
        select distinct section_id from SECTION_STATUS_COMPUTE where RECEIVETIME>sysdate-1   and TRAVELTIME is not null and TRAVELTIME>0
    ) loop
      for v2 in day_begin..day_end loop
        --循环分钟数
        v1:=4;--20150114
        while v1<1440 loop
           --取5分钟,每天
           v_btime:=v_curtime+(v1-4)/1440-v2;--开区间
           v_etime:=v_curtime+v1/1440-v2;--开区间
           v_sel_sql := ' select SECTION_ID,ROUND(AVG(TRAVELTIME)) TRAVELTIME, to_date('||chr(39)||to_char(v_etime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  STDTIME,'||chr(39)||to_char(v_etime,'HH24:MI')||chr(39)||' stdmi,'||chr(39)||to_char(v_etime,'D')||chr(39)||' stdweek from ';
           v_ins_sql := 'insert into ' || v_table_to || '(SECTIONID,TRAVELTIME,STDTIME,stdmi,stdweek)';

           --【0，5），[5,10) 保证取到5分钟的数据
           v_where_sql:='  WHERE section_id='||chr(39)||id_cur.section_id||chr(39)||' and RECEIVETIME < to_date('||chr(39)||to_char(v_etime+1/1440,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  and RECEIVETIME >= to_date('||chr(39)||to_char(v_btime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||') ';
           --只取有旅行时间的路段
           v_where_sql :=v_where_sql|| '  and TRAVELTIME is not null and TRAVELTIME>0   ' ;

           --插入
           v_sum_sql := v_ins_sql|| v_sel_sql || v_table_from || v_where_sql||v_grp_sql ;
           --dbms_output.put_line(v_sum_sql);
           execute immediate v_sum_sql;

           v1:=v1+5;
        end loop;
        --减少提交的次数
        commit;
      end loop;
    end loop;
   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;
        dbms_output.put_line(v_errCode||v_errMsg);

   end;
end PROC_SSC_AVG_PRE;
/

prompt
prompt Creating procedure PROC_SSD_AVG_PRE
prompt ===================================
prompt
create or replace procedure PROC_SSD_AVG_PRE(
          p_day in Integer--汇总天数 如果要汇总昨天，穿1即可
) IS

  v_table_from  varchar2(30) := 'SECTION_STATUS_DATA'; --流量数据源表的名称
  v_table_to varchar2(50) := 'AN_'||v_table_from||'_AVG1';--汇总结果表
  --插入语句
  v_ins_sql  varchar2(1000);  --执行新增的sql语句
  --查询语句
  v_sel_sql  varchar2(1000);
  --分组语句
  v_grp_sql varchar2(1000):=' group by sectionid';
  v_where_sql varchar2(2000);  --where条件语句
  --总语句
  v_sum_sql  varchar2(10000);
  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息
  v_curtime date;--每天第一分钟
  v_btime date;
  v_etime date;
  v1 int;--5分钟间隔

BEGIN
  v_curtime:= to_date(to_char(sysdate,'yyyy-MM-dd')||' 00:00','yyyy-MM-dd HH24:MI');
  begin
    --清除31天之前的数据
    delete from an_section_status_data_avg1 where stdtime<sysdate-90-1;
    commit;
    for v2 in 1..p_day loop
      --循环分钟数
      --v1:=2;
      v1:=4;--20150114
      while v1<1440 loop
         --取5分钟,每天
         v_btime:=v_curtime+(v1-4)/1440-v2;--开区间
         v_etime:=v_curtime+v1/1440-v2;--开区间
         v_sel_sql := ' select SECTIONID,SUM( COMMCOUNT)  COMMCOUNT,round(AVG(SPEED),2) SPEED,round(AVG(OCCUPANCY),4) OCCUPANCY, to_date('||chr(39)||to_char(v_etime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  STDTIME,'||chr(39)||to_char(v_etime,'HH24:MI')||chr(39)||' stdmi,'||chr(39)||to_char(v_etime,'D')||chr(39)||' stdweek from ';
         v_ins_sql := 'insert into ' || v_table_to || '(SECTIONID, COMMCOUNT,SPEED,OCCUPANCY,STDTIME,stdmi,stdweek)';
         v_where_sql := ' where datasource != ' || chr(39)|| '5' || chr(39);

         --time-4<= <=time
         --v_where_sql:=v_where_sql||'  and STDTIME <= to_date('||chr(39)||to_char(v_etime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  and STDTIME >= to_date('||chr(39)||to_char(v_btime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||') ';
         --【0，5），[5,10) 保证取到5分钟的数据
         v_where_sql:=v_where_sql||'  and STDTIME < to_date('||chr(39)||to_char(v_etime+1/1440,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  and STDTIME >= to_date('||chr(39)||to_char(v_btime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||') ';
         --范围判断 占有率数据已经筛选，不会出错 速度0-255 流量0-30
         v_where_sql :=v_where_sql|| '  and (speed<=255 and speed>0  and   commcount>0 and commcount<=30 and occupancy>0 and occupancy<1)   ' ;
         --加入完全停车
         --v_where_sql :=v_where_sql|| ' or (occupancy=1 and speed=0 and commcount=0) )';
         --插入
         v_sum_sql := v_ins_sql|| v_sel_sql || v_table_from || v_where_sql||v_grp_sql ;
         --dbms_output.put_line(v_sum_sql);
         execute immediate v_sum_sql;
         --每次插入之后都提交
         commit;
         v1:=v1+5;
      end loop;
    end loop;
   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;
        dbms_output.put_line(v_errCode||v_errMsg);

   end;
end PROC_SSD_AVG_PRE;
/

prompt
prompt Creating procedure PROC_SSD_AVG_PRE2
prompt ====================================
prompt
create or replace procedure PROC_SSD_AVG_PRE2(
          p_begin in Integer,--开始日期
          p_day in Integer--结束时间 从today -p_begin到today-p_day
) IS

  v_table_from  varchar2(30) := 'SECTION_STATUS_DATA'; --流量数据源表的名称
  v_table_to varchar2(50) := 'AN_'||v_table_from||'_AVG2';--汇总结果表
  --插入语句
  v_ins_sql  varchar2(1000);  --执行新增的sql语句
  --查询语句
  v_sel_sql  varchar2(1000);
  --分组语句
  v_grp_sql varchar2(1000):=' group by sectionid';
  v_where_sql varchar2(2000);  --where条件语句
  --总语句
  v_sum_sql  varchar2(10000);
  v_errCode VARCHAR2(100); --sql执行产生的错误代码
  v_errMsg  VARCHAR2(1000); --sql执行产生的错误信息
  v_curtime date;--每天第一分钟
  v_btime date;
  v_etime date;
  v1 int;--5分钟间隔
  v2 int;--5分钟间隔

BEGIN
  v_curtime:= to_date(to_char(sysdate,'yyyy-MM-dd')||' 00:00','yyyy-MM-dd HH24:MI');
  begin
    --清除31天之前的数据
    delete from an_section_status_data_avg1 where stdtime<sysdate-90-1;
    commit;
    v2:=p_begin;
    while v2<=p_day loop
      --循环分钟数
      --v1:=2;
      v1:=4;--20150114
      while v1<1440 loop
         --取5分钟,每天
         v_btime:=v_curtime+(v1-4)/1440-v2;--开区间
         v_etime:=v_curtime+v1/1440-v2;--开区间
         v_sel_sql := ' select SECTIONID,SUM( COMMCOUNT)  COMMCOUNT,round(AVG(SPEED),2) SPEED,round(AVG(OCCUPANCY),4) OCCUPANCY, to_date('||chr(39)||to_char(v_etime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  STDTIME,'||chr(39)||to_char(v_etime,'HH24:MI')||chr(39)||' stdmi,'||chr(39)||to_char(v_etime,'D')||chr(39)||' stdweek from ';
         v_ins_sql := 'insert into ' || v_table_to || '(SECTIONID, COMMCOUNT,SPEED,OCCUPANCY,STDTIME,stdmi,stdweek)';
         v_where_sql := ' where datasource != ' || chr(39)|| '5' || chr(39);

         --time-4<= <=time
         v_where_sql:=v_where_sql||'  and STDTIME <= to_date('||chr(39)||to_char(v_etime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||')  and STDTIME >= to_date('||chr(39)||to_char(v_btime,'yyyy-MM-dd HH24:MI')||chr(39)||','||chr(39)||'yyyy-MM-dd HH24:MI'||chr(39)||') ';
         --范围判断 占有率数据已经筛选，不会出错 速度0-255 流量0-30
         v_where_sql :=v_where_sql|| '  and (speed<=255 and speed>0  and   commcount>0 and commcount<=30 and occupancy>0 and occupancy<1)   ' ;
         --加入完全停车
         --v_where_sql :=v_where_sql|| ' or (occupancy=1 and speed=0 and commcount=0) )';
         --插入
         v_sum_sql := v_ins_sql|| v_sel_sql || v_table_from || v_where_sql||v_grp_sql ;
         --dbms_output.put_line(v_sum_sql);
         execute immediate v_sum_sql;
         --每次插入之后都提交
         commit;
         v1:=v1+5;
      end loop;
      v2:=v2+1;
    end loop;
   exception
      when others then
        v_errCode := TO_CHAR(SQLCODE);
        v_errMsg := SQLERRM ;
        dbms_output.put_line(v_errCode||v_errMsg);

   end;
end PROC_SSD_AVG_PRE2;
/

prompt
prompt Creating procedure RSEQ
prompt =======================
prompt
create or replace procedure rseq(seqname varchar2) as

 n number(38);

t_sql varchar2(1000);

 begin

 execute immediate 'select '||seqname||'.nextval from dual' into n;

  n:=-(n-1);

 t_sql :='alter sequence '||seqname||' increment by '|| n;

  execute immediate t_sql ;

 execute immediate 'select '||seqname||'.nextval from dual' into n;

  t_sql :='alter sequence '||seqname||' increment by 1 ';

 execute immediate t_sql ;

 end rseq;
/

prompt
prompt Creating procedure STAT_ILLEGAL_DEPT_PRO_NEW
prompt ============================================
prompt
create or replace procedure stat_illegal_dept_pro_new is
begin
  ---违法时间 TYPE  VARCHAR2(1)  Y      1：写入违法时间，2：写入审核时间  /*+index(d, IDX_ILL_ADDR_ORDER)*/
  delete from stat_illegal_behavior_dept
   where to_char(ILLEGALDATE, 'yyyy-mm-dd') between
         to_char(sysdate - 42, 'yyyy-mm-dd') and
         to_char(sysdate- 1, 'yyyy-mm-dd')
     and ILLEGALDATE is not null;
  declare
    CURSOR illegal_data_cursor is

      SELECT  TO_DATE(TO_CHAR(d.DILLEGALDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd') AS ILLEGALDATE,
             d.ccollectionagencies as departmentid,
             COUNT(1) AS total,
             d.cselectstatus
        from illegal_data d
       where d.DILLEGALDATE >=
             TO_DATE(TO_CHAR(sysdate - 42, 'yyyy-mm-dd') || '00:00:00',
                     'yyyy-mm-dd  hh24:mi:ss')
         and d.DILLEGALDATE <=
             TO_DATE(TO_CHAR(sysdate- 1, 'yyyy-mm-dd') || '23:59:59',
                     'yyyy-mm-dd hh24:mi:ss')
          and d.cdevicecode in
             (select e.deviceid
                from equipment_info e
               where e.build_status = '3'
               --and (e.devicetype='01' or e.devicetype='03')
               )
       GROUP BY TO_DATE(TO_CHAR(d.DILLEGALDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd'),

                d.ccollectionagencies,
                d.cselectstatus;

  begin
    FOR illegal IN illegal_data_cursor loop
      insert into stat_illegal_behavior_dept
      values
        (sys_guid(),
         illegal.ILLEGALDATE,
         illegal.departmentid,
         illegal.total,
         '3',
         illegal.cselectstatus,

         null,
         '1');
    end loop;
    commit;
  end;
  ---审核时间
  delete from stat_illegal_behavior_dept
   where to_char(selecttime, 'yyyy-mm-dd') between
         to_char(sysdate - 42, 'yyyy-mm-dd') and
         to_char(sysdate - 1, 'yyyy-mm-dd')
     and selecttime is not null;
  declare
    CURSOR illegal_data_cursor is

      SELECT d.ccollectionagencies as departmentid,
             COUNT(1) AS total,
             d.cselectstatus,
             TO_DATE(TO_CHAR(d.dselecttime, 'yyyy-mm-dd'), 'yyyy-mm-dd') as selecttime
        from illegal_data d
       where d.dselecttime >=
             TO_DATE(TO_CHAR(sysdate - 42, 'yyyy-mm-dd') || '00:00:00',
                     'yyyy-mm-dd  hh24:mi:ss')
         and d.dselecttime <=
             TO_DATE(TO_CHAR(sysdate - 1, 'yyyy-mm-dd') || '23:59:59',
                     'yyyy-mm-dd hh24:mi:ss')
           AND D.SHRYID IS NOT NULL
          and d.cdevicecode in
             (select e.deviceid
                from equipment_info e
               where e.build_status = '3')
       GROUP BY TO_DATE(TO_CHAR(d.dselecttime, 'yyyy-mm-dd'), 'yyyy-mm-dd'),
                d.ccollectionagencies,
                d.cselectstatus;

  begin
    FOR illegal IN illegal_data_cursor loop
      insert into stat_illegal_behavior_dept
      values
        (sys_guid(),

         null,
         illegal.departmentid,
         illegal.total,
         '3',
         illegal.cselectstatus,
         illegal.selecttime,
         '2');
    end loop;
    commit;
  end;
end;
/

prompt
prompt Creating procedure STAT_ILLEGAL_OPER_PRO
prompt ========================================
prompt
create or replace procedure stat_illegal_oper_pro is
begin
  delete from STAT_ILLEGAL_BEHAVIOR_OPER
   where to_char(dselecttime, 'yyyy-mm-dd') between
         to_char(sysdate - 42, 'yyyy-mm-dd') and
         to_char(sysdate - 1, 'yyyy-mm-dd');
  declare
    CURSOR illegal_data_cursor is
      SELECT TO_DATE(TO_CHAR(d.DILLEGALDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd') AS ILLEGALDATE,
             TO_DATE(TO_CHAR(d.dselecttime, 'yyyy-mm-dd'), 'yyyy-mm-dd') AS dselecttime,
             d.ccollectionagencies departmentid,
             d.shryid,
             d.fsryid,
             d.cselectstatus,
             COUNT(1) AS total
        from illegal_data d
       where d.cselectstatus >= '1'
         and d.dselecttime >=
             TO_DATE(TO_CHAR(sysdate - 42, 'yyyy-mm-dd') || '00:00:00',
                     'yyyy-mm-dd hh24:mi:ss')
         AND D.SHRYID IS NOT NULL
         and d.cdevicecode in
             (select e.deviceid
                from equipment_info e
               where e.build_status = '3'
                 --and e.devicetype in ('01', '03')
                 )
       GROUP BY TO_DATE(TO_CHAR(d.DILLEGALDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd'),
                TO_DATE(TO_CHAR(d.dselecttime, 'yyyy-mm-dd'), 'yyyy-mm-dd'),
                d.ccollectionagencies,
                d.shryid,
                d.fsryid,
                d.cselectstatus
       ORDER BY TO_DATE(TO_CHAR(d.DILLEGALDATE, 'yyyy-mm-dd'), 'yyyy-mm-dd'),
                d.ccollectionagencies,
                d.cselectstatus;

  begin
    FOR illegal IN illegal_data_cursor loop
      insert into STAT_ILLEGAL_BEHAVIOR_OPER
      values
        (sys_guid(), --他默认的是一个序列，我先用UUID来测一下
         illegal.ILLEGALDATE,
         illegal.dselecttime,
         illegal.departmentid,
         illegal.shryid,
         illegal.fsryid,
         illegal.cselectstatus,
         illegal.total);
    end loop;
    commit;
  end;
end;
/

prompt
prompt Creating procedure WORKLOAD_STAT_BY_DEPT
prompt ========================================
prompt
create or replace procedure WORKLOAD_STAT_BY_DEPT is
begin

  declare
    cursor ILLEGAL_SQU_CURSOR is
      SELECT i.ccollectionagencies AS DEPTID,
             COUNT(I.CCARNUMBER) AS ILLEGALTOTAL,
             D.NLEVEL AS NLEVEL,
             I.CSELECTSTATUS AS CSELECTSTATUS,
             TRUNC(I.DSELECTTIME) AS SELECTTIME
        FROM ILLEGAL_DATA I,  DEPARTMENT D
       WHERE i.ccollectionagencies = D.CDEPARTMENTID
         AND (D.NLEVEL = '3' OR D.NLEVEL = '4')
         AND I.cdevicecode IN
             (SELECT E.deviceid
                FROM EQUIPMENT_INFO E
               WHERE E.BUILD_STATUS = '3')
         AND I.SHRYID IS NOT NULL
         AND I.DSELECTTIME >= TRUNC(SYSDATE - 42)
         AND I.DSELECTTIME < TRUNC(SYSDATE)
       GROUP BY TRUNC(I.DSELECTTIME),
                 i.ccollectionagencies,
                I.CSELECTSTATUS,
                D.NLEVEL;
  begin
    DELETE FROM STAT_ILLEGAL_BEHAVIOR_DEPT1 S
     WHERE S.SELECTTIME >= TRUNC(SYSDATE - 42)
       AND S.SELECTTIME IS NOT NULL;
    for SQU in ILLEGAL_SQU_CURSOR loop
      INSERT INTO STAT_ILLEGAL_BEHAVIOR_DEPT1
      VALUES
        (SYS_GUID(),
         null,
         SQU.DEPTID,
         SQU.ILLEGALTOTAL,
         SQU.NLEVEL,
         SQU.CSELECTSTATUS,
         SQU.SELECTTIME,
         '2');
    end loop;
    COMMIT;
  end;

  declare
    cursor ILLEGAL_DRI_CURSOR is
      SELECT TRUNC(I.DILLEGALDATE) AS ILLEGALDATE,
             I.CCOLLECTIONAGENCIES AS DEPTID,
             COUNT(I.CCARNUMBER) AS ILLEGALTOTAL,
             D.NLEVEL AS NLEVEL
        FROM ILLEGAL_DATA I, DEPARTMENT D
       WHERE I.CCOLLECTIONAGENCIES = D.CDEPARTMENTID
         AND I.CSELECTSTATUS = '0'
         AND I.cdevicecode IN
             (SELECT E.deviceid
                FROM EQUIPMENT_INFO E
               WHERE E.BUILD_STATUS = '3')
         AND I.DILLEGALDATE >= TRUNC(SYSDATE - 42)
         AND I.DILLEGALDATE < TRUNC(SYSDATE)
       GROUP BY TRUNC(I.DILLEGALDATE), I.CCOLLECTIONAGENCIES, D.NLEVEL;

  begin
    DELETE FROM STAT_ILLEGAL_BEHAVIOR_DEPT1 S
     WHERE S.ILLEGALDATE >= TRUNC(SYSDATE - 42)
       AND S.ILLEGALDATE IS NOT NULL;
    for DRI in ILLEGAL_DRI_CURSOR loop
      INSERT INTO STAT_ILLEGAL_BEHAVIOR_DEPT1
      VALUES
        (SYS_GUID(),
         DRI.ILLEGALDATE,
         DRI.DEPTID,
         DRI.ILLEGALTOTAL,
         DRI.NLEVEL,
         '0',
         null,
         '1');
    end loop;
    COMMIT;
  end;

end WORKLOAD_STAT_BY_DEPT;
/

prompt
prompt Creating procedure ZONGDUI_CJG_IMPORT
prompt =====================================
prompt
create or replace procedure zongdui_cjg_import  is

begin
  --第一步 采用创建表的方式将总队车管表导入本地VEH_INFO_TEMP1
 execute immediate 'create table VEH_INFO_TEMP1 nologging parallel(degree 2) as select * from TRFF_APP.VEHICLE@DBLINK_CJG_NEW';
  --commit;

  --将VEH_INFO重新命名成VEH_INFO_TEMP2
  execute immediate 'alter table VEH_INFO rename to VEH_INFO_TEMP2';
  --将VEH_INFO_TEMP1重新命名成VEH_INFO
  execute immediate 'alter table VEH_INFO_TEMP1 rename to VEH_INFO';
  --删除VEH_INFO_TEMP2
  execute immediate 'drop table VEH_INFO_TEMP2';
  --增加主键及索引
 execute immediate ' alter table VEH_INFO add constraint PK_HPZL_VEH_INFO_TEMP11 primary key(HPZL,
                                                                                HPHM)
    using index tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 128M next 1M
                                                                               minextents 1
                                                                               maxextents
                                                                               unlimited)';
  -- Create/Recreate indexes
 execute immediate ' create index IN_HPZL_HPHM_CLLX_TEMP1 on VEH_INFO(HPZL, HPHM, CLLX) tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 120M next 1M
                                                                                                                                          minextents 1
                                                                                                                                          maxextents
                                                                                                                                          unlimited)';
  execute immediate 'create index IN_HPZL_HPHM_HDZK_TEMP1 on VEH_INFO(HPZL, HPHM, HDZK) tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 64K next 1M
                                                                                                                                          minextents 1
                                                                                                                                          maxextents
                                                                                                                                          unlimited)';
  execute immediate 'create index IN_HPZL_HPHM_SYR_TEMP1 on VEH_INFO(HPZL, HPHM, SYR) tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 64K next 1M
                                                                                                                                        minextents 1
                                                                                                                                        maxextents
                                                                                                                                        unlimited)';
  execute immediate 'create index IN_XH_VHE_INFO_TEMP1 on VEH_INFO(XH) tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 160M next 1M
                                                                                                                         minextents 1
                                                                                                                         maxextents
                                                                                                                         unlimited)';
  execute immediate 'create index IN_YXQZ_VHE_INFO_TEMP1 on VEH_INFO(HPZL, HPHM, YXQZ) tablespace HIATMPTS pctfree 10 initrans 2 maxtrans 255 storage(initial 152M next 1M
                                                                                                                                         minextents 1
                                                                                                                                         maxextents
                                                                                                                                         unlimited)';

  --END;
  --execute immediate 'alter table VEH_INFO rename to VEH_INFO_TEMP2';
  commit;
end zongdui_cjg_import;
/

prompt
prompt Creating type body ZH_CONCAT_IM
prompt ===============================
prompt
CREATE OR REPLACE TYPE BODY zh_concat_im
IS
  STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT zh_concat_im)
  RETURN NUMBER
  IS
  BEGIN
    SCTX := zh_concat_im(NULL) ;
    RETURN ODCICONST.SUCCESS;
  END;
  MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT zh_concat_im,
          P1 IN VARCHAR2)
  RETURN NUMBER
  IS
  BEGIN
    IF(CURR_STR IS NOT NULL) THEN
      CURR_STR := CURR_STR || ':' || P1;
    ELSE
      CURR_STR := P1;
    END IF;
    RETURN ODCICONST.SUCCESS;
  END;
  MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN zh_concat_im,
                                 RETURNVALUE OUT VARCHAR2,
                                 FLAGS IN NUMBER)
    RETURN NUMBER
  IS
  BEGIN
    RETURNVALUE := CURR_STR ;
    RETURN ODCICONST.SUCCESS;
  END;
  MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT zh_concat_im,
                                   SCTX2 IN zh_concat_im)
  RETURN NUMBER
  IS
  BEGIN
    IF(SCTX2.CURR_STR IS NOT NULL) THEN
      SELF.CURR_STR := SELF.CURR_STR || ':' || SCTX2.CURR_STR ;
    END IF;
    RETURN ODCICONST.SUCCESS;
  END;
END;
/

prompt
prompt Creating trigger TRIGGER_BLACK_LIST_INSERT
prompt ==========================================
prompt
create or replace trigger trigger_black_list_insert
  after insert on black_list_manage
  for each row
begin
  insert into black_list_manage_record
  values
    (seq_black_list_manage_record.nextval,
     '1',
     :new.ID,
     :new.CARNO,
     :new.CARTYPE,
     :new.CONTROLTYPE,
     :new.CONTROLLEVEL,
     :new.PUSHIP,
     :new.PUSHDPTMT,
     :new.PUSHUSER,
     :new.PUSHPHONE,
     :new.CONTACT,
     :new.MATTERDETAIL,
     :new.CHARCPIC1,
     :new.CHARCPIC2,
     :new.CHARCPIC3,
     :new.ALARMSTATUS,
     :new.INFOSTATUS,
     :new.BTIME,
     :new.ETIME,
     sysdate,
     :new.CONTROLSCOPE);
end;
/

prompt
prompt Creating trigger TRIGGER_BLACK_LIST_UPDATE
prompt ==========================================
prompt
create or replace trigger trigger_black_list_update
  after update on black_list_manage
  for each row
begin
  insert into black_list_manage_record
  values
    (seq_black_list_manage_record.nextval,
     '0',
     :old.ID,
     :old.CARNO,
     :old.CARTYPE,
     :old.CONTROLTYPE,
     :old.CONTROLLEVEL,
     :old.PUSHIP,
     :old.PUSHDPTMT,
     :old.PUSHUSER,
     :old.PUSHPHONE,
     :old.CONTACT,
     :old.MATTERDETAIL,
     :old.CHARCPIC1,
     :old.CHARCPIC2,
     :old.CHARCPIC3,
     :old.ALARMSTATUS,
     :old.INFOSTATUS,
     :old.BTIME,
     :old.ETIME,
     sysdate,
     :old.CONTROLSCOPE);
  insert into black_list_manage_record
  values
    (seq_black_list_manage_record.nextval,
     '1',
     :new.ID,
     :new.CARNO,
     :new.CARTYPE,
     :new.CONTROLTYPE,
     :new.CONTROLLEVEL,
     :new.PUSHIP,
     :new.PUSHDPTMT,
     :new.PUSHUSER,
     :new.PUSHPHONE,
     :new.CONTACT,
     :new.MATTERDETAIL,
     :new.CHARCPIC1,
     :new.CHARCPIC2,
     :new.CHARCPIC3,
     :new.ALARMSTATUS,
     :new.INFOSTATUS,
     :new.BTIME,
     :new.ETIME,
     sysdate,
     :new.CONTROLSCOPE);
end;
/

prompt
prompt Creating trigger TRIGGER_FRONT_CONFIG_DELETE
prompt ============================================
prompt
create or replace trigger trigger_front_config_delete
  after delete on black_alert_front_config
  for each row
begin
  delete from black_alert_config c where c.owner = :old.OWNER;
  delete from black_config_point p where p.owner = :old.OWNER;
end;
/

prompt
prompt Creating trigger TRIGGER_FRONT_CONFIG_INSERT
prompt ============================================
prompt
create or replace trigger trigger_front_config_insert
  after insert on black_alert_front_config
  for each row
begin
  insert into black_alert_config
    (owner, receivetype, receivescope)
  values
    (:new.OWNER, :new.RECEIVE_TYPE, '30');
  insert into black_config_point
    (owner, pointid)
  values
    (:new.OWNER, :new.POINT_ID);
end;
/

prompt
prompt Creating trigger TRIGGER_FRONT_CONFIG_UPDATE
prompt ============================================
prompt
create or replace trigger trigger_front_config_update
  after update on black_alert_front_config
  for each row
begin
  update black_alert_config c
     set c.receivetype = :new.RECEIVE_TYPE
   where c.owner = :new.OWNER;
  update black_config_point p
     set p.pointid = :new.POINT_ID
   where p.owner = :new.OWNER;
end;
/

prompt
prompt Creating trigger TR_SEC_SSD
prompt ===========================
prompt
CREATE OR REPLACE TRIGGER TR_SEC_SSD
  AFTER INSERT ON SECTION_STATUS_DATA
  FOR EACH ROW

when (NEW.DATASOURCE != '5' and NEW.LANEID != '0')
BEGIN
  insert into section_flow_data
    (nid,
     sectionid,
     sectionname,
     pointid,
     pointname,
     deviceid,
     devicename,
     directionid,
     laneid,
     COMMCOUNT,
     occupancy,
     speed,
     volumestate,
     occupancystate,
     speedstate,
     stdtime,
     datasource)
  VALUES
    (:NEW.nid,
     :NEW.sectionid,
     :NEW.sectionname,
     :NEW.pointid,
     :NEW.pointname,
     :NEW.deviceid,
     :NEW.devicename,
     :NEW.directionid,
     :NEW.laneid,
     :NEW.COMMCOUNT,
     :NEW.occupancy,
     :NEW.speed,
     1,
     1,
     1,
     :NEW.stdtime,
     :NEW.datasource);

END;
/

-------------job----------------------------
begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_INSPECTACCOUNTMIDDLEDATA',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'INSPECTACCOUNTMIDDLEDATA',
                                start_date          => to_date('16-08-2016 00:00:30', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     => 'TRUNC(SYSDATE+1)+3/24',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/

begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_IMPORTBLACKLIST',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'ImportBLackList',
                                start_date          => to_date('16-08-2016 00:00:30', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     => 'TRUNC(sysdate)+1+2/(24)',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/

begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_arrange_alert_point_count',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'arrange_alert_point_count',
                                start_date          => to_date('16-08-2016 00:00:30', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     =>'TRUNC(SYSDATE+1)+3/24',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/


begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_arrange_black_alert_count',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'arrange_black_alert_count',
                                start_date          => to_date('16-08-2016 00:00:30', 'dd-mm-yyyy hh24:mi:ss'),
                                repeat_interval     =>'TRUNC(SYSDATE+1)+3/24',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => true,
                                auto_drop           => false,
                                comments            => '');
end;
/

begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_HRV_CARNUM_ONWAY_SUM',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'PROC_HRV_CARNUM_ONWAY_SUM',
                                number_of_arguments => 2,
                                start_date          => to_date('18-10-2018 9:00:40', 'dd-mm-yyyy hh24:mi:ss'),--根据实际填写，分钟必须是5的整数倍
                                repeat_interval     => 'Freq=Minutely;Interval=5',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => false,
                                auto_drop           => false,
                                comments            => '');
  sys.dbms_scheduler.set_job_argument_value(job_name          => 'JOB_HRV_CARNUM_ONWAY_SUM',
                                            argument_position => 1,
                                            argument_value    => '10');
  sys.dbms_scheduler.set_job_argument_value(job_name          => 'JOB_HRV_CARNUM_ONWAY_SUM',
                                            argument_position => 2,
                                            argument_value    => '5');                                          
  sys.dbms_scheduler.enable(name => 'JOB_HRV_CARNUM_ONWAY_SUM');
end;
/


begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_DVS_INOUTCITY_FLOW_SUM',
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'PROC_DVS_INOUTCITY_FLOW_SUM',
                                number_of_arguments => 2,
                                start_date          => to_date('22-06-2017 16:15:40', 'dd-mm-yyyy hh24:mi:ss'),--根据实际填写，分钟必须是15的整数倍
                                repeat_interval     => 'Freq=Minutely;Interval=15',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => false,
                                auto_drop           => false,
                                comments            => '');
  sys.dbms_scheduler.set_job_argument_value(job_name          => 'JOB_DVS_INOUTCITY_FLOW_SUM',
                                            argument_position => 1,
                                            argument_value    => '370');
  sys.dbms_scheduler.set_job_argument_value(job_name          => 'JOB_DVS_INOUTCITY_FLOW_SUM',
                                            argument_position => 2,
                                            argument_value    => '15');                                          
  sys.dbms_scheduler.enable(name => 'JOB_DVS_INOUTCITY_FLOW_SUM');
end;
/


begin
  sys.dbms_scheduler.create_job(job_name            => 'JOB_traffic_statistics',--新建一个JOB名字
                                job_type            => 'STORED_PROCEDURE',
                                job_action          => 'insert_into_traffic_statistics',--要调用的存储过程
                                number_of_arguments => 0,
                                start_date          => to_date('29-04-2019 18:02:25', 'dd-mm-yyyy hh24:mi:ss'),--根据实际填写
                                repeat_interval     => 'Freq=Minutely;Interval=5',
                                end_date            => to_date(null),
                                job_class           => 'DEFAULT_JOB_CLASS',
                                enabled             => false,
                                auto_drop           => false,
                                comments            => '');                 
  sys.dbms_scheduler.enable(name => 'JOB_traffic_statistics');--新建一个JOB名字，与上面保持一致
end;
/

spool off
