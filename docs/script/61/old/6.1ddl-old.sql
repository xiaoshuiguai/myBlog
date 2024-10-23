
--------------------------------6.1 start --------------------------------
--------------------A1-----------------------------


prompt
prompt Creating table FACE_AREA
prompt ========================
prompt
create table FACE_AREA
(
  area_id                 VARCHAR2(32) not null,
  area_name               NVARCHAR2(100),
  coordinates             CLOB,
  area_model              VARCHAR2(6),
  area_type               VARCHAR2(2),
  area_length             NUMBER,
  ishisanalyse            CHAR(1),
  date_flag               VARCHAR2(1),
  low_frequency_threshold NUMBER default 3,
  create_time             DATE default sysdate
)
;
comment on table FACE_AREA
  is '区域表';
comment on column FACE_AREA.area_id
  is '区域编号，UUID，主键';
comment on column FACE_AREA.area_name
  is '区域名称';
comment on column FACE_AREA.coordinates
  is '坐标集  用分号分隔多个多边形';
comment on column FACE_AREA.area_model
  is '所属模块  1信号计算拥堵区域 2 重点区域 3行政辖区 4大队管辖范围 5全城 6拥堵区域';
comment on column FACE_AREA.area_type
  is '区域类型 枚举6109';
comment on column FACE_AREA.area_length
  is '区域总里程';
comment on column FACE_AREA.ishisanalyse
  is '是否分析历史规律  1-分析 0-不分析';
comment on column FACE_AREA.date_flag
  is '1-全年 2-节假日';
comment on column FACE_AREA.low_frequency_threshold
  is '低频车频次阈值，默认3次';
comment on column FACE_AREA.create_time
  is '初次插入时间';
alter table FACE_AREA
  add constraint FACE_AREA_PK primary key (AREA_ID);

prompt
prompt Creating table FACE_AREA_BAK
prompt ============================
prompt
create table FACE_AREA_BAK
(
  area_id                 VARCHAR2(32) not null,
  area_name               NVARCHAR2(100),
  coordinates             CLOB,
  area_model              VARCHAR2(6),
  area_type               VARCHAR2(2),
  area_length             NUMBER,
  ishisanalyse            CHAR(1),
  date_flag               VARCHAR2(1),
  low_frequency_threshold NUMBER
)
;

prompt
prompt Creating table FACE_AREA_CROSSING
prompt =================================
prompt
create table FACE_AREA_CROSSING
(
  crossing_id    VARCHAR2(32) default sys_guid() not null,
  crossing_code  VARCHAR2(32),
  area_id        VARCHAR2(32),
  isboundary     CHAR(1),
  coordinate     VARCHAR2(300),
  in_directions  VARCHAR2(50),
  out_directions VARCHAR2(50)
)
;
comment on table FACE_AREA_CROSSING
  is '重点区域路口表';
comment on column FACE_AREA_CROSSING.crossing_id
  is 'ID';
comment on column FACE_AREA_CROSSING.crossing_code
  is '路口关联编号';
comment on column FACE_AREA_CROSSING.area_id
  is '区域编号';
comment on column FACE_AREA_CROSSING.isboundary
  is '是否边界路口 1-是  0-不是';
comment on column FACE_AREA_CROSSING.coordinate
  is '坐标';
comment on column FACE_AREA_CROSSING.in_directions
  is ' 驶入方向 逗号分隔 枚举6111';
comment on column FACE_AREA_CROSSING.out_directions
  is ' 驶出方向 逗号分隔枚举6111';
alter table FACE_AREA_CROSSING
  add constraint FACE_AREA_CROSSING primary key (CROSSING_ID);

prompt
prompt Creating table FACE_AREA_CROSSING_DEV
prompt =====================================
prompt
create table FACE_AREA_CROSSING_DEV
(
  dev_id       VARCHAR2(32) not null,
  direction_id VARCHAR2(32),
  device_code  VARCHAR2(32)
)
;
comment on table FACE_AREA_CROSSING_DEV
  is '进出城设备';
comment on column FACE_AREA_CROSSING_DEV.dev_id
  is '编号';
comment on column FACE_AREA_CROSSING_DEV.direction_id
  is '方向ID';
comment on column FACE_AREA_CROSSING_DEV.device_code
  is '设备id';
alter table FACE_AREA_CROSSING_DEV
  add constraint FACE_AREA_CROSSING_DEV_PK primary key (DEV_ID);

prompt
prompt Creating table FACE_AREA_CROSSING_DIRECTION
prompt ===========================================
prompt
create table FACE_AREA_CROSSING_DIRECTION
(
  direction_id   VARCHAR2(32) not null,
  inoutarea_type VARCHAR2(2),
  crossing_id    VARCHAR2(24),
  direction      VARCHAR2(8)
)
;
comment on table FACE_AREA_CROSSING_DIRECTION
  is '区域进出方向';
comment on column FACE_AREA_CROSSING_DIRECTION.direction_id
  is '编号';
comment on column FACE_AREA_CROSSING_DIRECTION.inoutarea_type
  is '进出类型';
comment on column FACE_AREA_CROSSING_DIRECTION.crossing_id
  is '路口编号';
comment on column FACE_AREA_CROSSING_DIRECTION.direction
  is '方向';
alter table FACE_AREA_CROSSING_DIRECTION
  add constraint AREA_CROSSING_DIRECTION_PK primary key (DIRECTION_ID);

prompt
prompt Creating table FACE_AREA_HOLIDAY
prompt ================================
prompt
create table FACE_AREA_HOLIDAY
(
  area_holiday_id VARCHAR2(32) default sys_guid() not null,
  holiday_id      VARCHAR2(32),
  area_id         VARCHAR2(32)
)
;
comment on table FACE_AREA_HOLIDAY
  is '区域节假日关联表';
comment on column FACE_AREA_HOLIDAY.holiday_id
  is '节假日表的主键';
comment on column FACE_AREA_HOLIDAY.area_id
  is '区域表的主键';
alter table FACE_AREA_HOLIDAY
  add constraint AREA_HOLIDAY_PK primary key (AREA_HOLIDAY_ID);

prompt
prompt Creating table FACE_AREA_INDEX
prompt ==============================
prompt
create table FACE_AREA_INDEX
(
  index_id                      VARCHAR2(32) not null,
  area_id                       VARCHAR2(32),
  collect_time                  DATE,
  congestion_len                NUMBER,
  tpi                           NUMBER,
  transit_vehicle_num           NUMBER,
  local_vehicle_num             NUMBER,
  nonlocal_vehicle_num          NUMBER,
  local_use_vehicle_num         NUMBER,
  large_vehicle_num             NUMBER,
  small_vehicle_num             NUMBER,
  intocity_vehicle_num          NUMBER,
  outcity_vehicle_num           NUMBER,
  intocity_nonlocal_vehicle_num NUMBER,
  intocity_local_vehicle_num    NUMBER,
  outcity_nonlocal_vehicle_num  NUMBER,
  outcity_local_vehicle_num     NUMBER,
  other_vehicle_num             NUMBER,
  inflow                        NUMBER,
  outflow                       NUMBER,
  freelen                       NUMBER,
  normallen                     NUMBER,
  jamlen                        NUMBER,
  seriouslen                    NUMBER,
  freerate                      NUMBER,
  normalrate                    NUMBER,
  jamrate                       NUMBER,
  seriousrate                   NUMBER,
  low_freq_prop                 NUMBER,
  taxi_prop                     NUMBER,
  ride_hailing_prop             NUMBER,
  parents_prop                  NUMBER,
  shopping_prop                 NUMBER,
  large_vehicle_prop            NUMBER,
  shuttle_num                   NUMBER,
  avgspeed                      NUMBER,
  history_tpi                   NUMBER,
  history_avg_speed             NUMBER,
  history_inflow                NUMBER,
  history_outflow               NUMBER,
  intocity_large_vehicle_num    NUMBER,
  intocity_small_vehicle_num    NUMBER,
  intocity_other_vehicle_num    NUMBER,
  outcity_large_vehicle_num     NUMBER,
  outcity_small_vehicle_num     NUMBER,
  outcity_other_vehicle_num     NUMBER
)
;
comment on table FACE_AREA_INDEX
  is '重点区域指数表';
comment on column FACE_AREA_INDEX.index_id
  is 'ID';
comment on column FACE_AREA_INDEX.area_id
  is '区域编号';
comment on column FACE_AREA_INDEX.collect_time
  is '收集时间';
comment on column FACE_AREA_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_AREA_INDEX.tpi
  is '拥堵指数';
comment on column FACE_AREA_INDEX.transit_vehicle_num
  is '在途车辆数';
comment on column FACE_AREA_INDEX.local_vehicle_num
  is '在途本地车数';
comment on column FACE_AREA_INDEX.nonlocal_vehicle_num
  is '在途外地车数';
comment on column FACE_AREA_INDEX.local_use_vehicle_num
  is '在途本地化使用外地车';
comment on column FACE_AREA_INDEX.large_vehicle_num
  is '在途大型车数';
comment on column FACE_AREA_INDEX.small_vehicle_num
  is '在途小型车数';
comment on column FACE_AREA_INDEX.intocity_vehicle_num
  is '进城车辆数';
comment on column FACE_AREA_INDEX.outcity_vehicle_num
  is '出城车辆数';
comment on column FACE_AREA_INDEX.intocity_nonlocal_vehicle_num
  is '进城车辆中外地车数';
comment on column FACE_AREA_INDEX.intocity_local_vehicle_num
  is '进城车辆中本地车数';
comment on column FACE_AREA_INDEX.outcity_nonlocal_vehicle_num
  is '出城车辆中外地车数';
comment on column FACE_AREA_INDEX.outcity_local_vehicle_num
  is '出城车辆中本地车数';
comment on column FACE_AREA_INDEX.other_vehicle_num
  is '其他车辆数';
comment on column FACE_AREA_INDEX.inflow
  is '驶入流量';
comment on column FACE_AREA_INDEX.outflow
  is '驶出流量';
comment on column FACE_AREA_INDEX.freelen
  is '	畅通路段里程';
comment on column FACE_AREA_INDEX.normallen
  is '	缓行路段里程';
comment on column FACE_AREA_INDEX.jamlen
  is '	拥堵路段里程';
comment on column FACE_AREA_INDEX.seriouslen
  is '	严重路段里程';
comment on column FACE_AREA_INDEX.freerate
  is '	畅通里程比例';
comment on column FACE_AREA_INDEX.normalrate
  is '	缓行里程比例';
comment on column FACE_AREA_INDEX.jamrate
  is '	拥堵里程比例';
comment on column FACE_AREA_INDEX.seriousrate
  is '	严重里程比例';
comment on column FACE_AREA_INDEX.low_freq_prop
  is '	区域低频车占比';
comment on column FACE_AREA_INDEX.taxi_prop
  is '	区域出租车占比	';
comment on column FACE_AREA_INDEX.ride_hailing_prop
  is '	区域网约车占比';
comment on column FACE_AREA_INDEX.parents_prop
  is '	区域疑似家长车占比';
comment on column FACE_AREA_INDEX.shopping_prop
  is '	区域疑似购物车占比';
comment on column FACE_AREA_INDEX.large_vehicle_prop
  is '区域大型车占比';
comment on column FACE_AREA_INDEX.shuttle_num
  is '在途通勤车辆数';
comment on column FACE_AREA_INDEX.avgspeed
  is '平均速度';
comment on column FACE_AREA_INDEX.history_tpi
  is '拥堵区域的四周平均拥堵指数';
comment on column FACE_AREA_INDEX.history_avg_speed
  is '拥堵区域的四周平均速度';
comment on column FACE_AREA_INDEX.history_inflow
  is '拥堵区域的四周平均驶入流量';
comment on column FACE_AREA_INDEX.history_outflow
  is '拥堵区域的四周平均驶出流量';
comment on column FACE_AREA_INDEX.intocity_large_vehicle_num
  is '进城车辆中大型车数';
comment on column FACE_AREA_INDEX.intocity_small_vehicle_num
  is '进城车辆中小型车数';
comment on column FACE_AREA_INDEX.intocity_other_vehicle_num
  is '进城车辆中其他车数';
comment on column FACE_AREA_INDEX.outcity_large_vehicle_num
  is '出城车辆中大型车数';
comment on column FACE_AREA_INDEX.outcity_small_vehicle_num
  is '出城车辆中小型车数';
comment on column FACE_AREA_INDEX.outcity_other_vehicle_num
  is '出城车辆中其他车数';
alter table FACE_AREA_INDEX
  add constraint FACE_AREA_INDEX_PK primary key (INDEX_ID);

prompt
prompt Creating table FACE_AREA_INDEX_BAK
prompt ==================================
prompt
create table FACE_AREA_INDEX_BAK
(
  index_id                VARCHAR2(32),
  area_id                 VARCHAR2(32),
  collent_time            DATE,
  isjam                   NUMBER,
  jampercent              NUMBER,
  jampercentbasis         NUMBER,
  jampercentchange        NUMBER,
  onroadcarnum            NUMBER,
  lowfrequencycarper      NUMBER,
  lowfrequencycarperbasis NUMBER,
  largecarper             NUMBER,
  largecarperbasis        NUMBER,
  taxiper                 NUMBER,
  taxiperbasis            NUMBER,
  carhailingper           NUMBER,
  carhailingperbasis      NUMBER,
  shoppingcarper          NUMBER,
  shoppingcarperbasis     NUMBER,
  parentcarper            NUMBER,
  parentcarperbasis       NUMBER,
  onroadcarnumchange      NUMBER,
  policecasenum           NUMBER,
  policenum               NUMBER,
  jamlength               NUMBER
)
;

prompt
prompt Creating table FACE_AREA_JAMSECTION
prompt ===================================
prompt
create table FACE_AREA_JAMSECTION
(
  id           VARCHAR2(32),
  section_code VARCHAR2(32) not null,
  jam_date     VARCHAR2(10),
  starttime    VARCHAR2(10),
  endtime      VARCHAR2(10),
  area_id      VARCHAR2(32),
  avg_speed    NUMBER,
  avg_jamindex NUMBER,
  type         VARCHAR2(1),
  line_id      VARCHAR2(32)
)
;
comment on column FACE_AREA_JAMSECTION.section_code
  is '路段编号';
comment on column FACE_AREA_JAMSECTION.jam_date
  is '拥堵日期';
comment on column FACE_AREA_JAMSECTION.starttime
  is '开始时间（时分）';
comment on column FACE_AREA_JAMSECTION.endtime
  is '结束时间（时分）';
comment on column FACE_AREA_JAMSECTION.area_id
  is '区域编号';
comment on column FACE_AREA_JAMSECTION.avg_speed
  is '平均速度（单位km/h）';
comment on column FACE_AREA_JAMSECTION.avg_jamindex
  is '平均拥堵指数';
comment on column FACE_AREA_JAMSECTION.type
  is '类型，0代表区域算出来的常发拥堵路段，1代表该路段在4天的拥堵历史';
comment on column FACE_AREA_JAMSECTION.line_id
  is '干线编号';

prompt
prompt Creating table FACE_AREA_PARKING
prompt ================================
prompt
create table FACE_AREA_PARKING
(
  ralation_id VARCHAR2(32) default sys_guid() not null,
  parking_id  VARCHAR2(32) not null,
  area_id     VARCHAR2(32) not null
)
;
comment on column FACE_AREA_PARKING.ralation_id
  is 'id';
comment on column FACE_AREA_PARKING.parking_id
  is '停车场编号';
comment on column FACE_AREA_PARKING.area_id
  is '区域编号';
alter table FACE_AREA_PARKING
  add constraint PK_AREA_PARK primary key (RALATION_ID);

prompt
prompt Creating table FACE_AREA_SECTION
prompt ================================
prompt
create table FACE_AREA_SECTION
(
  section_id   VARCHAR2(32) default sys_guid() not null,
  section_code VARCHAR2(32),
  area_id      VARCHAR2(32)
)
;
comment on table FACE_AREA_SECTION
  is '重点区域_路段关联表';
comment on column FACE_AREA_SECTION.section_id
  is 'ID';
comment on column FACE_AREA_SECTION.section_code
  is '路段编号';
comment on column FACE_AREA_SECTION.area_id
  is '区域编号';
alter table FACE_AREA_SECTION
  add constraint FACE_AREA_SECTION_PK primary key (SECTION_ID);

prompt
prompt Creating table FACE_AREA_TRAVELCHAIN
prompt ====================================
prompt
create table FACE_AREA_TRAVELCHAIN
(
  chain_id  VARCHAR2(32),
  chain_str VARCHAR2(2000) not null,
  type      VARCHAR2(4),
  area_id   VARCHAR2(32)
)
;
comment on column FACE_AREA_TRAVELCHAIN.chain_id
  is '出行链id';
comment on column FACE_AREA_TRAVELCHAIN.chain_str
  is '出行链内容';
comment on column FACE_AREA_TRAVELCHAIN.type
  is '出行链类型';
comment on column FACE_AREA_TRAVELCHAIN.area_id
  is '区域id';

prompt
prompt Creating table FACE_ATTR_ALIAS
prompt ==============================
prompt
create table FACE_ATTR_ALIAS
(
  attr_id    VARCHAR2(32) not null,
  attr_type  VARCHAR2(100),
  attr_name  NVARCHAR2(100),
  attr_alias NVARCHAR2(100),
  attr_flag  VARCHAR2(1) default 0
)
;
comment on table FACE_ATTR_ALIAS
  is '属性/关系别名表';
comment on column FACE_ATTR_ALIAS.attr_id
  is 'id，主键序号';
comment on column FACE_ATTR_ALIAS.attr_type
  is '实体类型';
comment on column FACE_ATTR_ALIAS.attr_name
  is '属性/关系名';
comment on column FACE_ATTR_ALIAS.attr_alias
  is '属性/关系别名';
comment on column FACE_ATTR_ALIAS.attr_flag
  is '属性/关系标志位 0 属性 1 关系';
alter table FACE_ATTR_ALIAS
  add constraint ATTR_ID_PK primary key (ATTR_ID);

prompt
prompt Creating table FACE_CASE_LABEL_DESC_CONFIG
prompt ==========================================
prompt
create table FACE_CASE_LABEL_DESC_CONFIG
(
  config_id   VARCHAR2(32) not null,
  label_type  VARCHAR2(2),
  config_type VARCHAR2(2),
  description NVARCHAR2(2000)
)
;
comment on table FACE_CASE_LABEL_DESC_CONFIG
  is '警情描述内容获取标签配置表';
comment on column FACE_CASE_LABEL_DESC_CONFIG.config_id
  is '配置编号';
comment on column FACE_CASE_LABEL_DESC_CONFIG.label_type
  is '标签类型，枚举值6101';
comment on column FACE_CASE_LABEL_DESC_CONFIG.config_type
  is '黑名单or白名单，1-黑名单；2-白名单';
comment on column FACE_CASE_LABEL_DESC_CONFIG.description
  is '警情描述';
alter table FACE_CASE_LABEL_DESC_CONFIG
  add constraint PRIMARY_KEY_CONFIG_ID primary key (CONFIG_ID);

prompt
prompt Creating table FACE_COMPONENT
prompt =============================
prompt
create table FACE_COMPONENT
(
  component_id   VARCHAR2(32) not null,
  component_name NVARCHAR2(32)
)
;
comment on column FACE_COMPONENT.component_id
  is '组件id';
comment on column FACE_COMPONENT.component_name
  is '组件名称';

prompt
prompt Creating table FACE_CROSSING_CARTYPE
prompt ====================================
prompt
create table FACE_CROSSING_CARTYPE
(
  cartype_id      VARCHAR2(32) not null,
  crossing_code   VARCHAR2(32),
  weekday         VARCHAR2(1),
  approach_dir    INTEGER,
  transit_num     NUMBER,
  destination_num NUMBER,
  start_num       NUMBER
)
;
comment on table FACE_CROSSING_CARTYPE
  is '路口车辆类型分析表';
comment on column FACE_CROSSING_CARTYPE.cartype_id
  is 'uuid';
comment on column FACE_CROSSING_CARTYPE.crossing_code
  is '路口编号';
comment on column FACE_CROSSING_CARTYPE.weekday
  is '周次  1-周一、2-周二...';
comment on column FACE_CROSSING_CARTYPE.approach_dir
  is '进口道方向';
comment on column FACE_CROSSING_CARTYPE.transit_num
  is '过境车数量';
comment on column FACE_CROSSING_CARTYPE.destination_num
  is '目的车数量';
comment on column FACE_CROSSING_CARTYPE.start_num
  is '始发车数量';
alter table FACE_CROSSING_CARTYPE
  add constraint CROSS_CARTYPE_PK primary key (CARTYPE_ID);

prompt
prompt Creating table FACE_CROSSING_ROUTE
prompt ==================================
prompt
create table FACE_CROSSING_ROUTE
(
  route_id      VARCHAR2(32) not null,
  crossing_code VARCHAR2(32),
  weekday       VARCHAR2(1),
  analys_time   NUMBER,
  approach_dir  INTEGER,
  route_dir     NUMBER,
  section_code  VARCHAR2(18),
  section_flow  NUMBER
)
;
comment on table FACE_CROSSING_ROUTE
  is '路口路径分析表';
comment on column FACE_CROSSING_ROUTE.route_id
  is 'uuid';
comment on column FACE_CROSSING_ROUTE.crossing_code
  is '路口编号';
comment on column FACE_CROSSING_ROUTE.weekday
  is '周次  1-周一、2-周二...';
comment on column FACE_CROSSING_ROUTE.analys_time
  is '分析时间 1-早高峰 2-晚高峰';
comment on column FACE_CROSSING_ROUTE.approach_dir
  is '进口道方向 ，全部传-1';
comment on column FACE_CROSSING_ROUTE.route_dir
  is '车流方向1-来源 2-去向';
comment on column FACE_CROSSING_ROUTE.section_code
  is '路段编号';
comment on column FACE_CROSSING_ROUTE.section_flow
  is '路段流量';
alter table FACE_CROSSING_ROUTE
  add constraint CROSS_ROUTE_PK primary key (ROUTE_ID);

prompt
prompt Creating table FACE_CROSSING_SECTION_JAM
prompt ========================================
prompt
create table FACE_CROSSING_SECTION_JAM
(
  jam_id       VARCHAR2(32) default sys_guid() not null,
  weekday      VARCHAR2(1),
  section_code VARCHAR2(18),
  jam_duration NUMBER,
  inserttime   DATE default sysdate not null
)
;
comment on table FACE_CROSSING_SECTION_JAM
  is '常发拥堵路段表';
comment on column FACE_CROSSING_SECTION_JAM.jam_id
  is 'uuid';
comment on column FACE_CROSSING_SECTION_JAM.weekday
  is '周次  1-周一、2-周二...';
comment on column FACE_CROSSING_SECTION_JAM.section_code
  is '路段编号';
comment on column FACE_CROSSING_SECTION_JAM.jam_duration
  is '拥堵时长（分钟';
comment on column FACE_CROSSING_SECTION_JAM.inserttime
  is '入库时间';
alter table FACE_CROSSING_SECTION_JAM
  add constraint CROSS_SECTION_JAM_PK primary key (JAM_ID);

prompt
prompt Creating table FACE_CROSSING_WARNING
prompt ====================================
prompt
create table FACE_CROSSING_WARNING
(
  warning_id    VARCHAR2(32) default sys_guid() not null,
  crossing_code VARCHAR2(32),
  approach_dir  INTEGER,
  warning_type  VARCHAR2(1),
  warning_time  DATE
)
;
comment on table FACE_CROSSING_WARNING
  is '路口预警表';
comment on column FACE_CROSSING_WARNING.warning_id
  is 'uuid';
comment on column FACE_CROSSING_WARNING.crossing_code
  is '路口编号';
comment on column FACE_CROSSING_WARNING.approach_dir
  is '进口道方向，枚举6111；0-路口，不区分方向';
comment on column FACE_CROSSING_WARNING.warning_type
  is '预警类型1-过饱和、2-溢出、3-失衡';
comment on column FACE_CROSSING_WARNING.warning_time
  is '预警时间';
alter table FACE_CROSSING_WARNING
  add constraint CROSSING_WARN_PK primary key (WARNING_ID);

prompt
prompt Creating table FACE_CROSSING_WARNING_TEMP
prompt =========================================
prompt
create table FACE_CROSSING_WARNING_TEMP
(
  warning_id    VARCHAR2(32) default sys_guid() not null,
  crossing_code VARCHAR2(32),
  approach_dir  INTEGER,
  warning_type  VARCHAR2(1),
  warning_time  DATE
)
;
comment on table FACE_CROSSING_WARNING_TEMP
  is '路口预警表';
comment on column FACE_CROSSING_WARNING_TEMP.warning_id
  is 'uuid';
comment on column FACE_CROSSING_WARNING_TEMP.crossing_code
  is '路口编号';
comment on column FACE_CROSSING_WARNING_TEMP.approach_dir
  is '进口道方向，枚举6111；0-路口，不区分方向';
comment on column FACE_CROSSING_WARNING_TEMP.warning_type
  is '预警类型1-过饱和、2-溢出、3-失衡';
comment on column FACE_CROSSING_WARNING_TEMP.warning_time
  is '预警时间';
alter table FACE_CROSSING_WARNING_TEMP
  add constraint CROSSING_WARN_PK_TEMP primary key (WARNING_ID);

prompt
prompt Creating table FACE_CROSS_DIR_INDEX
prompt ===================================
prompt
create table FACE_CROSS_DIR_INDEX
(
  index_id        VARCHAR2(32) not null,
  ints_id         VARCHAR2(32),
  approach_dir    NUMBER,
  flow            NUMBER,
  complementflow  NUMBER,
  trafficcapacity NUMBER(18,2),
  tpi             NUMBER,
  collect_time    DATE,
  issaturation    INTEGER
)
;
comment on table FACE_CROSS_DIR_INDEX
  is '路口进口道指标表';
comment on column FACE_CROSS_DIR_INDEX.index_id
  is 'UUID';
comment on column FACE_CROSS_DIR_INDEX.ints_id
  is '路口编号';
comment on column FACE_CROSS_DIR_INDEX.approach_dir
  is '进口道编号';
comment on column FACE_CROSS_DIR_INDEX.flow
  is '进口道流量';
comment on column FACE_CROSS_DIR_INDEX.complementflow
  is '补全流量';
comment on column FACE_CROSS_DIR_INDEX.trafficcapacity
  is '通行能力';
comment on column FACE_CROSS_DIR_INDEX.tpi
  is '交通指数';
comment on column FACE_CROSS_DIR_INDEX.collect_time
  is '采集时间';
comment on column FACE_CROSS_DIR_INDEX.issaturation
  is '0-无状态， 1-过饱和，2-饱和溢出，3-取消报警';
alter table FACE_CROSS_DIR_INDEX
  add constraint CROSS_DIR_INDEX_PK primary key (INDEX_ID);

prompt
prompt Creating table FACE_CROSS_INDEX
prompt ===============================
prompt
create table FACE_CROSS_INDEX
(
  index_id            VARCHAR2(32) not null,
  ints_id             VARCHAR2(32),
  collect_time        DATE,
  flow                NUMBER,
  ubi                 NUMBER,
  queue_len           NUMBER,
  complement_flow     NUMBER,
  delay               NUMBER,
  max_flow            NUMBER,
  tpi                 NUMBER,
  congestion_len      NUMBER,
  green_waste         NUMBER,
  vehicle_avg_stop    NUMBER,
  saturation          NUMBER,
  traffic_status      NUMBER,
  pi                  NUMBER,
  dtd                 NUMBER,
  queue_len_indicator NUMBER,
  traffic_capacity    NUMBER,
  intensity           NUMBER,
  health_level        NUMBER,
  green_waste_lose    NUMBER,
  stop_lose           NUMBER,
  delay_lose          NUMBER,
  ub_lose             NUMBER,
  max_satturn         NUMBER,
  max_gwturn          NUMBER,
  max_queueturn       NUMBER,
  max_stopturn        NUMBER,
  max_delayturn       NUMBER,
  ubturn              NUMBER
)
;
comment on column FACE_CROSS_INDEX.index_id
  is 'ID';
comment on column FACE_CROSS_INDEX.ints_id
  is '路口编号';
comment on column FACE_CROSS_INDEX.collect_time
  is '收集时间';
comment on column FACE_CROSS_INDEX.flow
  is '路口流量';
comment on column FACE_CROSS_INDEX.ubi
  is '失衡指数';
comment on column FACE_CROSS_INDEX.queue_len
  is '排队长度';
comment on column FACE_CROSS_INDEX.complement_flow
  is '补全流量';
comment on column FACE_CROSS_INDEX.delay
  is '路口车均延误';
comment on column FACE_CROSS_INDEX.max_flow
  is '最大通行流量';
comment on column FACE_CROSS_INDEX.tpi
  is '交通指数';
comment on column FACE_CROSS_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_CROSS_INDEX.green_waste
  is '绿损时间';
comment on column FACE_CROSS_INDEX.vehicle_avg_stop
  is '车均停车次数';
comment on column FACE_CROSS_INDEX.saturation
  is '饱和度';
comment on column FACE_CROSS_INDEX.traffic_status
  is '交通状态';
comment on column FACE_CROSS_INDEX.pi
  is '延误指数';
comment on column FACE_CROSS_INDEX.dtd
  is '延误极差';
comment on column FACE_CROSS_INDEX.queue_len_indicator
  is '路口排队长度指数';
comment on column FACE_CROSS_INDEX.traffic_capacity
  is '通行能力';
comment on column FACE_CROSS_INDEX.intensity
  is '交通强度';
comment on column FACE_CROSS_INDEX.health_level
  is '健康指数';
comment on column FACE_CROSS_INDEX.green_waste_lose
  is '绿损丢分';
comment on column FACE_CROSS_INDEX.stop_lose
  is '停车丢分';
comment on column FACE_CROSS_INDEX.delay_lose
  is '延误丢分';
comment on column FACE_CROSS_INDEX.ub_lose
  is '失衡丢分';
comment on column FACE_CROSS_INDEX.max_satturn
  is '最大饱和度方向';
comment on column FACE_CROSS_INDEX.max_gwturn
  is '最大绿损方向';
comment on column FACE_CROSS_INDEX.max_queueturn
  is '最大排队方向';
comment on column FACE_CROSS_INDEX.max_stopturn
  is '最大停车次数方向';
comment on column FACE_CROSS_INDEX.max_delayturn
  is '最大延误方向';
comment on column FACE_CROSS_INDEX.ubturn
  is '失衡方向';
alter table FACE_CROSS_INDEX
  add constraint FACE_CROSS_INDEX_PK primary key (INDEX_ID);

prompt
prompt Creating table FACE_HOLIDAY
prompt ===========================
prompt
create table FACE_HOLIDAY
(
  holiday_id          VARCHAR2(32) default sys_guid() not null,
  holiday_name        NVARCHAR2(100),
  holiday_type        CHAR(1),
  holiday_type_detail VARCHAR2(3)
)
;
comment on table FACE_HOLIDAY
  is '节假日表';
comment on column FACE_HOLIDAY.holiday_id
  is '节假日编号，UUID';
comment on column FACE_HOLIDAY.holiday_name
  is '节假日名称';
comment on column FACE_HOLIDAY.holiday_type
  is '节假日类型 1-法定节假日  2-自定义';
comment on column FACE_HOLIDAY.holiday_type_detail
  is '节假日详细类型';
alter table FACE_HOLIDAY
  add constraint FACE_HOLIDAY_PK primary key (HOLIDAY_ID);

prompt
prompt Creating table FACE_HOLIDAYCAR_FORECAST
prompt =======================================
prompt
create table FACE_HOLIDAYCAR_FORECAST
(
  id                   VARCHAR2(32),
  forecast_time        DATE,
  intocity_vehicle_num NUMBER,
  outcity_vehicle_num  NUMBER,
  holiday_id           VARCHAR2(32),
  insert_time          DATE
)
;
comment on table FACE_HOLIDAYCAR_FORECAST
  is '节假日进出城车辆数预测';
comment on column FACE_HOLIDAYCAR_FORECAST.forecast_time
  is '预测时间';
comment on column FACE_HOLIDAYCAR_FORECAST.intocity_vehicle_num
  is '进城车辆数';
comment on column FACE_HOLIDAYCAR_FORECAST.outcity_vehicle_num
  is '出城车辆数';
comment on column FACE_HOLIDAYCAR_FORECAST.holiday_id
  is '节假日编号';
comment on column FACE_HOLIDAYCAR_FORECAST.insert_time
  is '插入时间';

prompt
prompt Creating table FACE_HOLIDAY_CONFIG
prompt ==================================
prompt
create table FACE_HOLIDAY_CONFIG
(
  config_id   VARCHAR2(32) default sys_guid() not null,
  holiday_id  VARCHAR2(32),
  year        VARCHAR2(4),
  start_date  DATE,
  end_date    DATE,
  workday_off VARCHAR2(50)
)
;
comment on table FACE_HOLIDAY_CONFIG
  is '节假日时段配置表';
comment on column FACE_HOLIDAY_CONFIG.config_id
  is '主键，UUID';
comment on column FACE_HOLIDAY_CONFIG.holiday_id
  is '节年份假日编号';
comment on column FACE_HOLIDAY_CONFIG.year
  is '年份';
comment on column FACE_HOLIDAY_CONFIG.start_date
  is '开始日期';
comment on column FACE_HOLIDAY_CONFIG.end_date
  is '结束日期';
comment on column FACE_HOLIDAY_CONFIG.workday_off
  is '补班日，多个日期用逗号连接';
alter table FACE_HOLIDAY_CONFIG
  add constraint FACE_HOLIDAY_CONFIG_PK primary key (CONFIG_ID);

prompt
prompt Creating table FACE_HOLIDAY_WARN
prompt ================================
prompt
create table FACE_HOLIDAY_WARN
(
  id            VARCHAR2(32),
  in_peak_time  DATE,
  out_peak_time DATE,
  holiday_id    NVARCHAR2(32),
  insert_time   DATE
)
;
comment on column FACE_HOLIDAY_WARN.in_peak_time
  is '进城高峰到来时间';
comment on column FACE_HOLIDAY_WARN.out_peak_time
  is '出城高峰到来时间';
comment on column FACE_HOLIDAY_WARN.holiday_id
  is '节假日编号';
comment on column FACE_HOLIDAY_WARN.insert_time
  is '插入时间';

prompt
prompt Creating table FACE_IMPORT_RELATION
prompt ===================================
prompt
create table FACE_IMPORT_RELATION
(
  import_id  VARCHAR2(32) not null,
  type       VARCHAR2(2) not null,
  reason     VARCHAR2(4000),
  case_id    VARCHAR2(32) not null,
  merge_time DATE
)
;
comment on table FACE_IMPORT_RELATION
  is '重要警情标记表';
comment on column FACE_IMPORT_RELATION.import_id
  is '编号';
comment on column FACE_IMPORT_RELATION.type
  is '标记类型';
comment on column FACE_IMPORT_RELATION.reason
  is '标记原因';
comment on column FACE_IMPORT_RELATION.case_id
  is '情报编号';
comment on column FACE_IMPORT_RELATION.merge_time
  is '入库时间';

prompt
prompt Creating table FACE_INOUTCITY_CROSSING
prompt ======================================
prompt
create table FACE_INOUTCITY_CROSSING
(
  crossing_code VARCHAR2(32),
  crossing_name NVARCHAR2(64) not null,
  crossing_type VARCHAR2(2) not null,
  coordinates   CLOB not null,
  maxflow       NUMBER,
  inoutcity_id  VARCHAR2(32) default sys_guid() not null
)
;
comment on column FACE_INOUTCITY_CROSSING.crossing_code
  is '编号';
comment on column FACE_INOUTCITY_CROSSING.crossing_name
  is '进出城路口名称';
comment on column FACE_INOUTCITY_CROSSING.crossing_type
  is '类型(01-高速收费站 02-国省道)';
comment on column FACE_INOUTCITY_CROSSING.coordinates
  is '坐标';
comment on column FACE_INOUTCITY_CROSSING.maxflow
  is '历史最大流量';
comment on column FACE_INOUTCITY_CROSSING.inoutcity_id
  is '主键';
alter table FACE_INOUTCITY_CROSSING
  add constraint INOUTCITY_CROSSING_PK primary key (INOUTCITY_ID);

prompt
prompt Creating table FACE_INOUTCITY_DEV
prompt =================================
prompt
create table FACE_INOUTCITY_DEV
(
  dev_id       VARCHAR2(32) not null,
  direction_id VARCHAR2(32),
  device_code  VARCHAR2(32)
)
;
comment on table FACE_INOUTCITY_DEV
  is '进出城设备';
comment on column FACE_INOUTCITY_DEV.dev_id
  is '编号';
comment on column FACE_INOUTCITY_DEV.direction_id
  is '方向ID';
comment on column FACE_INOUTCITY_DEV.device_code
  is '设备id';
alter table FACE_INOUTCITY_DEV
  add constraint FACE_INOUTCITY_DEV_PK primary key (DEV_ID);

prompt
prompt Creating table FACE_INOUTCITY_DIRECTION
prompt =======================================
prompt
create table FACE_INOUTCITY_DIRECTION
(
  direction_id   VARCHAR2(32) default sys_guid() not null,
  inoutcity_id   VARCHAR2(32),
  inoutcity_type VARCHAR2(2),
  direction      VARCHAR2(8),
  section_code   VARCHAR2(18),
  devices        CLOB
)
;
comment on table FACE_INOUTCITY_DIRECTION
  is '进出城方向';
comment on column FACE_INOUTCITY_DIRECTION.direction_id
  is '编号';
comment on column FACE_INOUTCITY_DIRECTION.inoutcity_id
  is '进出城编号';
comment on column FACE_INOUTCITY_DIRECTION.inoutcity_type
  is '进出类型,01-进城  02-出城';
comment on column FACE_INOUTCITY_DIRECTION.direction
  is '方向编码，枚举6111';
comment on column FACE_INOUTCITY_DIRECTION.section_code
  is '路段编码';
comment on column FACE_INOUTCITY_DIRECTION.devices
  is '关联设备编码，多个用逗号分隔';
alter table FACE_INOUTCITY_DIRECTION
  add constraint FACE_INOUTCITY_DIRECTION_PK primary key (DIRECTION_ID);

prompt
prompt Creating table FACE_INOUTCITY_INDEX
prompt ===================================
prompt
create table FACE_INOUTCITY_INDEX
(
  index_id            VARCHAR2(32) not null,
  total_carcnt        NUMBER not null,
  in_carcnt           NUMBER not null,
  out_carcnt          NUMBER not null,
  in_local_carcnt     NUMBER not null,
  in_foreign_carcnt   NUMBER not null,
  in_localize_carcnt  NUMBER not null,
  out_local_carcnt    NUMBER not null,
  out_foreign_carcnt  NUMBER not null,
  out_localize_carcnt NUMBER not null,
  crossing_code       VARCHAR2(32) not null,
  bigcar_rate         NUMBER not null,
  share_rate          NUMBER not null,
  collect_time        DATE not null
)
;
comment on column FACE_INOUTCITY_INDEX.index_id
  is '点位指标id';
comment on column FACE_INOUTCITY_INDEX.total_carcnt
  is '总车辆数';
comment on column FACE_INOUTCITY_INDEX.in_carcnt
  is '进城车辆数';
comment on column FACE_INOUTCITY_INDEX.out_carcnt
  is '出城车辆数';
comment on column FACE_INOUTCITY_INDEX.in_local_carcnt
  is '进城车中本地车辆数';
comment on column FACE_INOUTCITY_INDEX.in_foreign_carcnt
  is '进城车中外地车辆数';
comment on column FACE_INOUTCITY_INDEX.in_localize_carcnt
  is '进城车中本地化使用外地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_local_carcnt
  is '出城车中本地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_foreign_carcnt
  is '出城车中外地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_localize_carcnt
  is '出城车中本地化使用外地车辆数';
comment on column FACE_INOUTCITY_INDEX.crossing_code
  is '路口编号';
comment on column FACE_INOUTCITY_INDEX.bigcar_rate
  is '大型车占比';
comment on column FACE_INOUTCITY_INDEX.share_rate
  is '流量分担率';
comment on column FACE_INOUTCITY_INDEX.collect_time
  is '采集时间';

prompt
prompt Creating table FACE_INTS_PEAKDURATION
prompt =====================================
prompt
create table FACE_INTS_PEAKDURATION
(
  pk_ints_peakduration  VARCHAR2(40) not null,
  intsid                VARCHAR2(32),
  morning_peak_duration VARCHAR2(100),
  evening_peak_duration VARCHAR2(100),
  flow                  CLOB,
  tpi                   VARCHAR2(1500),
  isdata                VARCHAR2(1),
  inserttime            DATE
)
;
comment on table FACE_INTS_PEAKDURATION
  is '路口早晚高峰时段表';
comment on column FACE_INTS_PEAKDURATION.pk_ints_peakduration
  is '日期_路口编号';
comment on column FACE_INTS_PEAKDURATION.intsid
  is '路口编号';
comment on column FACE_INTS_PEAKDURATION.morning_peak_duration
  is '早高峰时段，格式07:00,09:00;09:10,09:35';
comment on column FACE_INTS_PEAKDURATION.evening_peak_duration
  is '晚高峰时段，格式17:00,19:00';
comment on column FACE_INTS_PEAKDURATION.flow
  is '流量json';
comment on column FACE_INTS_PEAKDURATION.tpi
  is '交通指数json';
comment on column FACE_INTS_PEAKDURATION.isdata
  is '0-数据不全 1-数据全';
comment on column FACE_INTS_PEAKDURATION.inserttime
  is '插入时间';
alter table FACE_INTS_PEAKDURATION
  add constraint INTS_PEAKDURATION_PK primary key (PK_INTS_PEAKDURATION);

prompt
prompt Creating table FACE_INTS_TIDECHARACTOR
prompt ======================================
prompt
create table FACE_INTS_TIDECHARACTOR
(
  pk_ints_tidecharactor   VARCHAR2(40) not null,
  intsid                  VARCHAR2(32),
  approach                VARCHAR2(30),
  approach_tide_charactor VARCHAR2(30),
  approach_tide_level     VARCHAR2(30),
  turn_tide_charactor     VARCHAR2(30),
  turn_tide_level         VARCHAR2(30),
  inserttime              DATE,
  approach_flow           CLOB,
  approach_tpi            CLOB,
  approach_speed          CLOB,
  approach_ubi            CLOB,
  turn_flow               CLOB,
  turn_tpi                CLOB,
  turn_speed              CLOB,
  turn_ubi                CLOB
)
;
comment on table FACE_INTS_TIDECHARACTOR
  is '路口潮汐表';
comment on column FACE_INTS_TIDECHARACTOR.pk_ints_tidecharactor
  is '日期_路口编号';
comment on column FACE_INTS_TIDECHARACTOR.intsid
  is '路口编号';
comment on column FACE_INTS_TIDECHARACTOR.approach
  is '方向';
comment on column FACE_INTS_TIDECHARACTOR.approach_tide_charactor
  is '各方向上是否有潮汐现象，0-无，1-有';
comment on column FACE_INTS_TIDECHARACTOR.approach_tide_level
  is '各方向上潮汐现象等级，0-无，1-轻微，2-中度，3-重度';
comment on column FACE_INTS_TIDECHARACTOR.turn_tide_charactor
  is '对应方向上是否有转向潮汐现在，0-无，1-有';
comment on column FACE_INTS_TIDECHARACTOR.turn_tide_level
  is '对应方向上转向潮汐等级，0-无，1-轻微，2-中度，3-重度';
comment on column FACE_INTS_TIDECHARACTOR.inserttime
  is '插入时间';
comment on column FACE_INTS_TIDECHARACTOR.approach_flow
  is '方向流量';
comment on column FACE_INTS_TIDECHARACTOR.approach_tpi
  is '方向拥堵指数';
comment on column FACE_INTS_TIDECHARACTOR.approach_speed
  is '方向平均速度';
comment on column FACE_INTS_TIDECHARACTOR.approach_ubi
  is '方向不均衡系数';
comment on column FACE_INTS_TIDECHARACTOR.turn_flow
  is '转向流量';
comment on column FACE_INTS_TIDECHARACTOR.turn_tpi
  is '转向拥堵指数';
comment on column FACE_INTS_TIDECHARACTOR.turn_speed
  is '转向平均速度';
comment on column FACE_INTS_TIDECHARACTOR.turn_ubi
  is '转向不均衡系数';
alter table FACE_INTS_TIDECHARACTOR
  add constraint INTS_TIDECHARACTOR_PK primary key (PK_INTS_TIDECHARACTOR);

prompt
prompt Creating table FACE_JAMSECTION
prompt ==============================
prompt
create table FACE_JAMSECTION
(
  id           VARCHAR2(32),
  section_code VARCHAR2(32) not null,
  starttime    VARCHAR2(10),
  endtime      VARCHAR2(10),
  analyse_id   VARCHAR2(32),
  analyse_type VARCHAR2(32),
  jam_cnt      NUMBER
)
;
comment on column FACE_JAMSECTION.section_code
  is '路段编号';
comment on column FACE_JAMSECTION.starttime
  is '开始时间（时分）';
comment on column FACE_JAMSECTION.endtime
  is '结束时间（时分）';
comment on column FACE_JAMSECTION.analyse_id
  is '区域或干线编号';
comment on column FACE_JAMSECTION.analyse_type
  is '分析类型 1区域，2干线';
comment on column FACE_JAMSECTION.jam_cnt
  is '拥堵次数';

prompt
prompt Creating table FACE_JAM_SECTION_DURATION
prompt ========================================
prompt
create table FACE_JAM_SECTION_DURATION
(
  rowkey    VARCHAR2(40) not null,
  sectionid VARCHAR2(32),
  duration  NUMBER
)
;
comment on table FACE_JAM_SECTION_DURATION
  is '路口分析拥堵路段时长';
comment on column FACE_JAM_SECTION_DURATION.rowkey
  is '日期_路口编号';
comment on column FACE_JAM_SECTION_DURATION.sectionid
  is '路口编号';
comment on column FACE_JAM_SECTION_DURATION.duration
  is '平均拥堵时长，单位分钟';
alter table FACE_JAM_SECTION_DURATION
  add constraint JAM_SECTION_DURATION_PK primary key (ROWKEY);

prompt
prompt Creating table FACE_LABELS
prompt ==========================
prompt
create table FACE_LABELS
(
  label_id   VARCHAR2(32) not null,
  label_name NVARCHAR2(20),
  label_type VARCHAR2(2) not null,
  label_code VARCHAR2(10),
  label_reg  NVARCHAR2(10)
)
;
comment on column FACE_LABELS.label_id
  is 'id';
comment on column FACE_LABELS.label_name
  is '标签名称';
comment on column FACE_LABELS.label_type
  is '标签类型 1统计类标签 2自定义标签';
comment on column FACE_LABELS.label_code
  is '标签代码 按照算法详设文档附录1.1 车辆固有标签 取序号';
comment on column FACE_LABELS.label_reg
  is '匹配正则';
alter table FACE_LABELS
  add constraint PK_FACE_LABELS primary key (LABEL_ID);

prompt
prompt Creating table FACE_LINE
prompt ========================
prompt
create table FACE_LINE
(
  line_id            VARCHAR2(32) not null,
  line_name          NVARCHAR2(64),
  line_model         VARCHAR2(16),
  line_type          VARCHAR2(8),
  line_len           VARCHAR2(50),
  coordinate         CLOB,
  up_crossing_code   VARCHAR2(32),
  down_crossing_code VARCHAR2(32),
  line_direction     VARCHAR2(1),
  lane_num           NUMBER,
  create_time        DATE default sysdate
)
;
comment on table FACE_LINE
  is '干线表';
comment on column FACE_LINE.line_id
  is '干线编号';
comment on column FACE_LINE.line_name
  is '干线名称';
comment on column FACE_LINE.line_model
  is '所属模块 1-交通规律分析 2-通勤干道监控 3-关键道路';
comment on column FACE_LINE.line_type
  is '干线类型，10 拥堵干线 11协调干线 20通勤干道 30高速 31隧道 32桥梁';
comment on column FACE_LINE.line_len
  is '干线总里程数';
comment on column FACE_LINE.coordinate
  is '干线坐标集';
comment on column FACE_LINE.up_crossing_code
  is '上游路口编号';
comment on column FACE_LINE.down_crossing_code
  is '下游路口编号';
comment on column FACE_LINE.line_direction
  is '干线方向， 1 单向 2双向';
comment on column FACE_LINE.lane_num
  is '车道数(关键道路预警用)';
comment on column FACE_LINE.create_time
  is '初次插入时间';
alter table FACE_LINE
  add constraint FACE_LINE_PK primary key (LINE_ID);

prompt
prompt Creating table FACE_LINE_CROSSING
prompt =================================
prompt
create table FACE_LINE_CROSSING
(
  line_crossing_id VARCHAR2(32) not null,
  line_id          VARCHAR2(32),
  crossing_code    VARCHAR2(32)
)
;
comment on table FACE_LINE_CROSSING
  is '干线路口表';
comment on column FACE_LINE_CROSSING.line_id
  is '干线编号';
comment on column FACE_LINE_CROSSING.crossing_code
  is '路口关联编号';
alter table FACE_LINE_CROSSING
  add constraint FACE_LINE_CROSSING_PK primary key (LINE_CROSSING_ID);

prompt
prompt Creating table FACE_LINE_SECTION
prompt ================================
prompt
create table FACE_LINE_SECTION
(
  line_section_id VARCHAR2(32) not null,
  line_id         VARCHAR2(32),
  order_num       NUMBER,
  section_code    VARCHAR2(18),
  section_type    VARCHAR2(1)
)
;
comment on table FACE_LINE_SECTION
  is '干线路段表';
comment on column FACE_LINE_SECTION.line_section_id
  is '编号';
comment on column FACE_LINE_SECTION.line_id
  is '干线编号';
comment on column FACE_LINE_SECTION.order_num
  is '路段序号';
comment on column FACE_LINE_SECTION.section_code
  is '路段编号';
comment on column FACE_LINE_SECTION.section_type
  is '路段类型，1-正向路段  2-反向路段';
alter table FACE_LINE_SECTION
  add constraint FACE_LINE_SECTION_PK primary key (LINE_SECTION_ID);

prompt
prompt Creating table FACE_LINE_TRACE_SOURCE
prompt =====================================
prompt
create table FACE_LINE_TRACE_SOURCE
(
  line_id     VARCHAR2(32) not null,
  total_flow  NUMBER,
  computetime DATE,
  inserttime  DATE default sysdate not null
)
;
comment on table FACE_LINE_TRACE_SOURCE
  is '干线溯源表';
comment on column FACE_LINE_TRACE_SOURCE.line_id
  is '干线编号';
comment on column FACE_LINE_TRACE_SOURCE.total_flow
  is '总流量';
comment on column FACE_LINE_TRACE_SOURCE.computetime
  is '计算时间';
comment on column FACE_LINE_TRACE_SOURCE.inserttime
  is '入库时间';
alter table FACE_LINE_TRACE_SOURCE
  add constraint LINE_SOURCE_PK primary key (LINE_ID);

prompt
prompt Creating table FACE_LOWFREQ_CONVERGE
prompt ====================================
prompt
create table FACE_LOWFREQ_CONVERGE
(
  join_id      VARCHAR2(32) not null,
  section_code VARCHAR2(32),
  section_cnt  NUMBER,
  point_code   VARCHAR2(32),
  lowfreq_rate NUMBER,
  warning_id   VARCHAR2(32) not null,
  coordinates  CLOB
)
;
comment on table FACE_LOWFREQ_CONVERGE
  is '低频车汇流';
comment on column FACE_LOWFREQ_CONVERGE.join_id
  is '汇流编号';
comment on column FACE_LOWFREQ_CONVERGE.section_code
  is '汇流路段编号';
comment on column FACE_LOWFREQ_CONVERGE.section_cnt
  is '汇流路径数';
comment on column FACE_LOWFREQ_CONVERGE.point_code
  is '汇流点位编号';
comment on column FACE_LOWFREQ_CONVERGE.lowfreq_rate
  is '汇流点位低频车占比';
comment on column FACE_LOWFREQ_CONVERGE.warning_id
  is '预警编号';
comment on column FACE_LOWFREQ_CONVERGE.coordinates
  is '汇流点、汇流路段坐标';
alter table FACE_LOWFREQ_CONVERGE
  add constraint PK_LOWFRE_CAR_JOIN primary key (JOIN_ID);

prompt
prompt Creating table FACE_MAINLINE
prompt ============================
prompt
create table FACE_MAINLINE
(
  line_id            VARCHAR2(32) not null,
  line_name          NVARCHAR2(64),
  line_type          VARCHAR2(8),
  line_len           VARCHAR2(16),
  line_model         VARCHAR2(16),
  line_attr          VARCHAR2(8),
  coordinate         CLOB,
  up_crossing_code   VARCHAR2(32),
  down_crossing_code VARCHAR2(32),
  lane_num           NUMBER
)
;
comment on table FACE_MAINLINE
  is '干线表';
comment on column FACE_MAINLINE.line_id
  is '编号';
comment on column FACE_MAINLINE.line_name
  is '关键路段名称';
comment on column FACE_MAINLINE.line_type
  is '关键道路类型';
comment on column FACE_MAINLINE.line_len
  is '总里程数';
comment on column FACE_MAINLINE.line_model
  is '所属模块';
comment on column FACE_MAINLINE.line_attr
  is '道路属性';
comment on column FACE_MAINLINE.coordinate
  is '坐标集';
comment on column FACE_MAINLINE.up_crossing_code
  is '上游路口编号';
comment on column FACE_MAINLINE.down_crossing_code
  is '下游路口编号';
comment on column FACE_MAINLINE.lane_num
  is '车道数（关键道路安全预警用）';
alter table FACE_MAINLINE
  add constraint FACE_MAINLINE_PK primary key (LINE_ID);

prompt
prompt Creating table FACE_MAINLINE_INDEX
prompt ==================================
prompt
create table FACE_MAINLINE_INDEX
(
  index_id              VARCHAR2(32) not null,
  line_id               VARCHAR2(32),
  collect_time          DATE,
  ptransit_vehicle_num  NUMBER,
  plocal_vehicle_num    NUMBER,
  pnonlocal_vehicle_num NUMBER,
  plarge_vehicle_num    NUMBER,
  psmall_vehicle_num    NUMBER,
  pspeed                NUMBER,
  nspeed                NUMBER,
  congestion_len        NUMBER,
  ntransit_commuter_num NUMBER,
  congestion_index      NUMBER,
  pcomplementflow       NUMBER,
  ncomplementflow       NUMBER,
  ptpi                  NUMBER,
  ntpi                  NUMBER,
  nhistory_avg_flow     NUMBER,
  phistory_avg_flow     NUMBER,
  nhistory_avg_speed    NUMBER,
  phistory_avg_speed    NUMBER,
  nhistory_tpi          NUMBER,
  phistory_tpi          NUMBER,
  ntransit_vehicle_num  NUMBER,
  nlocal_vehicle_num    NUMBER,
  nnonlocal_vehicle_num NUMBER,
  nlarge_vehicle_num    NUMBER,
  nsmall_vehicle_num    NUMBER,
  ptransit_commuter_num NUMBER
)
;
comment on table FACE_MAINLINE_INDEX
  is 'f干线指数表';
comment on column FACE_MAINLINE_INDEX.index_id
  is 'ID';
comment on column FACE_MAINLINE_INDEX.line_id
  is '干线编号';
comment on column FACE_MAINLINE_INDEX.collect_time
  is '收集时间';
comment on column FACE_MAINLINE_INDEX.ptransit_vehicle_num
  is '正向在途车辆数';
comment on column FACE_MAINLINE_INDEX.plocal_vehicle_num
  is '正向本地车辆数';
comment on column FACE_MAINLINE_INDEX.pnonlocal_vehicle_num
  is '正向外地车辆数';
comment on column FACE_MAINLINE_INDEX.plarge_vehicle_num
  is '正向大型车辆数';
comment on column FACE_MAINLINE_INDEX.psmall_vehicle_num
  is '正向小型车辆数';
comment on column FACE_MAINLINE_INDEX.pspeed
  is '正向行程速度';
comment on column FACE_MAINLINE_INDEX.nspeed
  is '反向行程速度';
comment on column FACE_MAINLINE_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_MAINLINE_INDEX.ntransit_commuter_num
  is '反向在途通勤车辆数';
comment on column FACE_MAINLINE_INDEX.congestion_index
  is '拥堵指数';
comment on column FACE_MAINLINE_INDEX.pcomplementflow
  is '正向干线流量';
comment on column FACE_MAINLINE_INDEX.ncomplementflow
  is '反向干线流量';
comment on column FACE_MAINLINE_INDEX.ptpi
  is '正向交通指数';
comment on column FACE_MAINLINE_INDEX.ntpi
  is '反向交通指数';
comment on column FACE_MAINLINE_INDEX.ntransit_vehicle_num
  is '反向在途车辆数';
comment on column FACE_MAINLINE_INDEX.nlocal_vehicle_num
  is '反向本地车辆数';
comment on column FACE_MAINLINE_INDEX.nnonlocal_vehicle_num
  is '反向外地车辆数';
comment on column FACE_MAINLINE_INDEX.nlarge_vehicle_num
  is '反向大型车辆数';
comment on column FACE_MAINLINE_INDEX.nsmall_vehicle_num
  is '反向小型车辆数';
comment on column FACE_MAINLINE_INDEX.ptransit_commuter_num
  is '正向在途通勤车辆数';
alter table FACE_MAINLINE_INDEX
  add constraint FACE_MAINLINE_INDEX_PK primary key (INDEX_ID);

prompt
prompt Creating table FACE_MAINLINE_INDEX_BAK
prompt ======================================
prompt
create table FACE_MAINLINE_INDEX_BAK
(
  index_id                   VARCHAR2(32) not null,
  line_id                    VARCHAR2(32),
  collect_time               DATE,
  time                       DATE,
  congestion_len             NUMBER,
  on_car_num                 NUMBER,
  local_car_num              NUMBER,
  nonlocal_car_num           NUMBER,
  big_car_num                NUMBER,
  small_car_num              NUMBER,
  on_commuter_num            NUMBER,
  traffic_flow               NUMBER,
  traffic_his_flow           NUMBER,
  speed                      NUMBER,
  his_speed                  NUMBER,
  congestion_index           NUMBER,
  congestion_his_index       NUMBER,
  forward_line_flow          NUMBER,
  reverse_line_flow          NUMBER,
  forward_traffic_index      NUMBER,
  reverse_traffic_index      NUMBER,
  forward_travel_time        NUMBER,
  reverse_travel_time        NUMBER,
  forward_travel_speed       NUMBER,
  reverse_travel_speed       NUMBER,
  forward_stop_num           NUMBER,
  reverse_stop_num           NUMBER,
  line_unbalance_coefficient NUMBER,
  forward_congestion_status  VARCHAR2(10),
  reverse_congestion_status  VARCHAR2(10),
  forward_line_single_flow   NUMBER,
  reverse_line_single_flow   NUMBER,
  forward_line_up_len        NUMBER,
  reverse_line_up_len        NUMBER,
  traffic_status             VARCHAR2(10),
  high_load                  VARCHAR2(10),
  forward_delay              NUMBER,
  reverse_delay              NUMBER,
  crossing_total_vehcnt      NUMBER,
  crossing_total_delay       NUMBER,
  crossing_average_delay     NUMBER,
  balance_coefficient        NUMBER,
  max_delay_crossing         NUMBER
)
;

prompt
prompt Creating table FACE_MAP_DRAW
prompt ============================
prompt
create table FACE_MAP_DRAW
(
  draw_id         VARCHAR2(32) not null,
  draw_name       NVARCHAR2(50) not null,
  center_location VARCHAR2(32) not null,
  zoom_level      VARCHAR2(2) not null,
  cre_user        VARCHAR2(6) not null,
  cre_date        TIMESTAMP(6) not null
)
;
comment on table FACE_MAP_DRAW
  is '地图标绘表';
comment on column FACE_MAP_DRAW.draw_id
  is '主键';
comment on column FACE_MAP_DRAW.draw_name
  is '标绘图名称';
comment on column FACE_MAP_DRAW.center_location
  is '地图中心点位级别';
comment on column FACE_MAP_DRAW.zoom_level
  is '地图放大级别';
comment on column FACE_MAP_DRAW.cre_user
  is '创建人';
comment on column FACE_MAP_DRAW.cre_date
  is '创建时间';
alter table FACE_MAP_DRAW
  add constraint FACE_MAP_DRAW_PRIMARY_KEY primary key (DRAW_ID);

prompt
prompt Creating table FACE_MAP_DRAW_ELEMENT
prompt ====================================
prompt
create table FACE_MAP_DRAW_ELEMENT
(
  element_id        VARCHAR2(32) not null,
  draw_id           VARCHAR2(32) not null,
  element_title     NVARCHAR2(50),
  element_locations CLOB not null,
  element_type      VARCHAR2(2) not null
)
;
comment on table FACE_MAP_DRAW_ELEMENT
  is '地图标绘元素表';
comment on column FACE_MAP_DRAW_ELEMENT.element_id
  is '主键';
comment on column FACE_MAP_DRAW_ELEMENT.draw_id
  is '关联标绘图主键';
comment on column FACE_MAP_DRAW_ELEMENT.element_title
  is '元素标题';
comment on column FACE_MAP_DRAW_ELEMENT.element_locations
  is '元素坐标';
comment on column FACE_MAP_DRAW_ELEMENT.element_type
  is '元素类型，枚举值6103';
create index DRAW_ID_INDEX on FACE_MAP_DRAW_ELEMENT (DRAW_ID);
alter table FACE_MAP_DRAW_ELEMENT
  add constraint DRAW_ELEMENT_PRIMARY_KEY primary key (ELEMENT_ID);

prompt
prompt Creating table FACE_MODE
prompt ========================
prompt
create table FACE_MODE
(
  mode_id            VARCHAR2(32),
  mode_name          NVARCHAR2(32),
  component_id_allow VARCHAR2(100)
)
;
comment on column FACE_MODE.mode_id
  is '模式编号';
comment on column FACE_MODE.mode_name
  is '模式名称';
comment on column FACE_MODE.component_id_allow
  is '允许配置的组件id';

prompt
prompt Creating table FACE_MODE_COM_RELATION
prompt =====================================
prompt
create table FACE_MODE_COM_RELATION
(
  mode_id      VARCHAR2(32) not null,
  component_id VARCHAR2(32) not null,
  com_order    VARCHAR2(4)
)
;
comment on column FACE_MODE_COM_RELATION.mode_id
  is '模式编号';
comment on column FACE_MODE_COM_RELATION.component_id
  is '组件编号';
comment on column FACE_MODE_COM_RELATION.com_order
  is '组件排放顺序';

prompt
prompt Creating table FACE_MORNEVENPEAK_FORECAST
prompt =========================================
prompt
create table FACE_MORNEVENPEAK_FORECAST
(
  id                  VARCHAR2(32),
  forecast_time       DATE,
  transit_vehicle_num NUMBER,
  shuttle_num         NUMBER,
  type                NVARCHAR2(1)
)
;
comment on table FACE_MORNEVENPEAK_FORECAST
  is '早晚高峰预测表';
comment on column FACE_MORNEVENPEAK_FORECAST.id
  is 'uuid';
comment on column FACE_MORNEVENPEAK_FORECAST.forecast_time
  is '时间';
comment on column FACE_MORNEVENPEAK_FORECAST.transit_vehicle_num
  is '在途车辆数';
comment on column FACE_MORNEVENPEAK_FORECAST.shuttle_num
  is '在途通勤车数';
comment on column FACE_MORNEVENPEAK_FORECAST.type
  is '0早高峰，1晚高峰';

prompt
prompt Creating table FACE_MORNEVENPEAK_WARN
prompt =====================================
prompt
create table FACE_MORNEVENPEAK_WARN
(
  id             VARCHAR2(32),
  morn_peak_time DATE,
  even_peak_time DATE,
  insert_time    DATE,
  range          NVARCHAR2(20),
  flag           VARCHAR2(1) default 0
)
;
comment on table FACE_MORNEVENPEAK_WARN
  is '早晚高峰提醒表';
comment on column FACE_MORNEVENPEAK_WARN.morn_peak_time
  is '预计早高峰到来时间
';
comment on column FACE_MORNEVENPEAK_WARN.even_peak_time
  is '预计晚高峰到来时间';
comment on column FACE_MORNEVENPEAK_WARN.insert_time
  is '插入时间';
comment on column FACE_MORNEVENPEAK_WARN.range
  is '范围（市南市北等范围）';
comment on column FACE_MORNEVENPEAK_WARN.flag
  is '0未提醒，1提醒';

prompt
prompt Creating table FACE_MULTI_DIALOG_START
prompt ======================================
prompt
create table FACE_MULTI_DIALOG_START
(
  set_id               VARCHAR2(32) not null,
  theme_id             VARCHAR2(32) not null,
  keyword_group        NVARCHAR2(100) not null,
  keyword_pinyin_group VARCHAR2(300) not null
)
;
comment on table FACE_MULTI_DIALOG_START
  is '固定多轮起始会话配置表';
comment on column FACE_MULTI_DIALOG_START.set_id
  is '配置编号';
comment on column FACE_MULTI_DIALOG_START.theme_id
  is '固定多轮主题表主键';
comment on column FACE_MULTI_DIALOG_START.keyword_group
  is '关键词组合';
comment on column FACE_MULTI_DIALOG_START.keyword_pinyin_group
  is '关键词拼音组合';
alter table FACE_MULTI_DIALOG_START
  add constraint FACE_MULTI_DIALOG_START_PK primary key (SET_ID);

prompt
prompt Creating table FACE_MULTI_DIALOG_TEMPLATE
prompt =========================================
prompt
create table FACE_MULTI_DIALOG_TEMPLATE
(
  question_id    VARCHAR2(32) not null,
  round_num      NUMBER(2) not null,
  theme_id       VARCHAR2(32) not null,
  guide_content  NVARCHAR2(300) not null,
  guide_nature   VARCHAR2(20) not null,
  class_name     VARCHAR2(100),
  function_name  VARCHAR2(200),
  function_param VARCHAR2(200),
  answer_id      VARCHAR2(32)
)
;
comment on table FACE_MULTI_DIALOG_TEMPLATE
  is '固定多轮模板表';
comment on column FACE_MULTI_DIALOG_TEMPLATE.question_id
  is '问句编号';
comment on column FACE_MULTI_DIALOG_TEMPLATE.round_num
  is '轮次';
comment on column FACE_MULTI_DIALOG_TEMPLATE.theme_id
  is '固定多轮主题表主键';
comment on column FACE_MULTI_DIALOG_TEMPLATE.guide_content
  is '引导问题内容';
comment on column FACE_MULTI_DIALOG_TEMPLATE.guide_nature
  is '引导问题回答内容词性';
comment on column FACE_MULTI_DIALOG_TEMPLATE.class_name
  is '方法所属类';
comment on column FACE_MULTI_DIALOG_TEMPLATE.function_name
  is '方法名';
comment on column FACE_MULTI_DIALOG_TEMPLATE.function_param
  is '方法名参数';
comment on column FACE_MULTI_DIALOG_TEMPLATE.answer_id
  is '答案模板表的主键';
alter table FACE_MULTI_DIALOG_TEMPLATE
  add constraint FACE_MULTI_DIALOG_TEMPLATE_PK primary key (QUESTION_ID);

prompt
prompt Creating table FACE_MULTI_THEME
prompt ===============================
prompt
create table FACE_MULTI_THEME
(
  theme_id      VARCHAR2(32) not null,
  theme_content NVARCHAR2(100) not null
)
;
comment on table FACE_MULTI_THEME
  is '固定多轮主题表';
comment on column FACE_MULTI_THEME.theme_id
  is '主题编号';
comment on column FACE_MULTI_THEME.theme_content
  is '主题内容';
alter table FACE_MULTI_THEME
  add constraint FACE_MULTI_THEME_PK primary key (THEME_ID);

prompt
prompt Creating table FACE_PARKINGLOT_GEOMETRY
prompt =======================================
prompt
create table FACE_PARKINGLOT_GEOMETRY
(
  pointcode VARCHAR2(16),
  geometry  MDSYS.SDO_GEOMETRY
)
;
comment on table FACE_PARKINGLOT_GEOMETRY
  is '停车场点位地理信息表';

prompt
prompt Creating table FACE_PLAN_CONFIG
prompt ===============================
prompt
create table FACE_PLAN_CONFIG
(
  plan_id    VARCHAR2(32),
  induce     VARCHAR2(2),
  signal     VARCHAR2(2),
  policesend VARCHAR2(2),
  jam        VARCHAR2(2),
  accident   VARCHAR2(2),
  badweather VARCHAR2(2),
  security   VARCHAR2(2),
  area       VARCHAR2(2),
  commuter   VARCHAR2(2)
)
;
comment on table FACE_PLAN_CONFIG
  is '处置措施方案配置表';
comment on column FACE_PLAN_CONFIG.plan_id
  is '方案编号';
comment on column FACE_PLAN_CONFIG.induce
  is '诱导';
comment on column FACE_PLAN_CONFIG.signal
  is '信号';
comment on column FACE_PLAN_CONFIG.policesend
  is '派警';
comment on column FACE_PLAN_CONFIG.jam
  is '拥堵';
comment on column FACE_PLAN_CONFIG.accident
  is '事故';
comment on column FACE_PLAN_CONFIG.badweather
  is '恶劣天气';
comment on column FACE_PLAN_CONFIG.security
  is '警卫任务';
comment on column FACE_PLAN_CONFIG.area
  is '重点区域';
comment on column FACE_PLAN_CONFIG.commuter
  is '通勤干道';

prompt
prompt Creating table FACE_POLICE_CASE_INFO
prompt ====================================
prompt
create table FACE_POLICE_CASE_INFO
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
  topic        CLOB
)
;
comment on table FACE_POLICE_CASE_INFO
  is '警情信息表';
comment on column FACE_POLICE_CASE_INFO.case_id
  is '警情编号';
comment on column FACE_POLICE_CASE_INFO.isimport
  is '是否重要警情（0-非重要；1-重要）';
comment on column FACE_POLICE_CASE_INFO.status
  is '警情状态（03-待签收；04-办理中；05-已办结）';
comment on column FACE_POLICE_CASE_INFO.time
  is '警情发生时间';
comment on column FACE_POLICE_CASE_INFO.coordinate
  is '警情发生位置坐标';
comment on column FACE_POLICE_CASE_INFO.sectionid
  is '警情位置最近路段';
comment on column FACE_POLICE_CASE_INFO.sections
  is '警情周边路段';
comment on column FACE_POLICE_CASE_INFO.type
  is '警情类型';
comment on column FACE_POLICE_CASE_INFO.source
  is '警情来源';
comment on column FACE_POLICE_CASE_INFO.locationname
  is '警情发生位置描述';
comment on column FACE_POLICE_CASE_INFO.area_id
  is '所属辖区';
comment on column FACE_POLICE_CASE_INFO.dept_id
  is '所属部门';
comment on column FACE_POLICE_CASE_INFO.description
  is '警情描述';
comment on column FACE_POLICE_CASE_INFO.is_order
  is '是否派警（0-未派警；1-已派警）';
comment on column FACE_POLICE_CASE_INFO.group_id
  is '情报组编号';
comment on column FACE_POLICE_CASE_INFO.merge_time
  is '入库时间';
comment on column FACE_POLICE_CASE_INFO.update_time
  is '更新时间';
comment on column FACE_POLICE_CASE_INFO.case_level
  is '警情级别';
comment on column FACE_POLICE_CASE_INFO.plan_id
  is '方案编号';
comment on column FACE_POLICE_CASE_INFO.case_content
  is '警情其他信息';
comment on column FACE_POLICE_CASE_INFO.feature
  is '情报性质（0-快情报；1-慢情报）';
comment on column FACE_POLICE_CASE_INFO.subtype
  is '警情子类型';
comment on column FACE_POLICE_CASE_INFO.topic
  is '警情主题';

prompt
prompt Creating table FACE_POLICE_INFO
prompt ===============================
prompt
create table FACE_POLICE_INFO
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
;
comment on table FACE_POLICE_INFO
  is '实时警力信息表';
comment on column FACE_POLICE_INFO.id
  is '编号';
comment on column FACE_POLICE_INFO.police_id
  is '警号';
comment on column FACE_POLICE_INFO.device_id
  is '呼号';
comment on column FACE_POLICE_INFO.police_name
  is '警员姓名';
comment on column FACE_POLICE_INFO.police_status
  is '状态（0-休息；1-待命；2-执勤）';
comment on column FACE_POLICE_INFO.handle_case
  is '是否在处警';
comment on column FACE_POLICE_INFO.case_id
  is '警情编号';
comment on column FACE_POLICE_INFO.coordinate
  is '警情位置坐标';
comment on column FACE_POLICE_INFO.merge_time
  is '入库时间';
comment on column FACE_POLICE_INFO.section_id
  is '所在路段';
comment on column FACE_POLICE_INFO.dtrecordtime
  is '采集时间';

prompt
prompt Creating table FACE_QA_LOG
prompt ==========================
prompt
create table FACE_QA_LOG
(
  log_id           VARCHAR2(32) not null,
  sid              VARCHAR2(50),
  question_user    VARCHAR2(16) not null,
  question_date    TIMESTAMP(6) default sysdate not null,
  question_content NVARCHAR2(200) not null,
  keywords         NVARCHAR2(100),
  answer_date      TIMESTAMP(6) default sysdate not null,
  answer_content   NVARCHAR2(500),
  is_valid         CHAR(1) default 0 not null,
  answer_id        VARCHAR2(100)
)
;
comment on table FACE_QA_LOG
  is '问答日志表';
comment on column FACE_QA_LOG.log_id
  is '日志编号';
comment on column FACE_QA_LOG.sid
  is 'SESSIONID+数字';
comment on column FACE_QA_LOG.question_user
  is '提问人';
comment on column FACE_QA_LOG.question_date
  is '提问时间';
comment on column FACE_QA_LOG.question_content
  is '提问内容';
comment on column FACE_QA_LOG.keywords
  is '关键字';
comment on column FACE_QA_LOG.answer_date
  is '回答时间';
comment on column FACE_QA_LOG.answer_content
  is '回答内容';
comment on column FACE_QA_LOG.is_valid
  is '是否有效问句 0:有效 1:无效';
comment on column FACE_QA_LOG.answer_id
  is '答案编号';
alter table FACE_QA_LOG
  add constraint FACE_QA_LOG_PK primary key (LOG_ID);

prompt
prompt Creating table FACE_QA_PARAM
prompt ============================
prompt
create table FACE_QA_PARAM
(
  param_id    VARCHAR2(32) not null,
  part_speech VARCHAR2(20) not null,
  param_word  NVARCHAR2(50) not null,
  range_from  VARCHAR2(100) not null,
  range_to    VARCHAR2(100)
)
;
comment on table FACE_QA_PARAM
  is '问答参数表';
comment on column FACE_QA_PARAM.param_id
  is '编号';
comment on column FACE_QA_PARAM.part_speech
  is '词性';
comment on column FACE_QA_PARAM.param_word
  is '词汇';
comment on column FACE_QA_PARAM.range_from
  is '起始范围值';
comment on column FACE_QA_PARAM.range_to
  is '结束范围值';
alter table FACE_QA_PARAM
  add constraint FACE_QA_PARAM_PK primary key (PARAM_ID);

prompt
prompt Creating table FACE_QUESTION_PROMPT
prompt ===================================
prompt
create table FACE_QUESTION_PROMPT
(
  prompt_id       VARCHAR2(32) not null,
  keyword         NVARCHAR2(100) not null,
  prompt_question NVARCHAR2(200) not null
)
;
comment on table FACE_QUESTION_PROMPT
  is '模糊问题提示表';
comment on column FACE_QUESTION_PROMPT.prompt_id
  is '编号';
comment on column FACE_QUESTION_PROMPT.keyword
  is '关键词';
comment on column FACE_QUESTION_PROMPT.prompt_question
  is '提示问题';
alter table FACE_QUESTION_PROMPT
  add constraint FACE_QUESTION_PROMPT_PK primary key (PROMPT_ID);

prompt
prompt Creating table FACE_QUESTION_TEMPLATE
prompt =====================================
prompt
create table FACE_QUESTION_TEMPLATE
(
  question_id          VARCHAR2(32) not null,
  keyword_group        NVARCHAR2(100) not null,
  function_name        VARCHAR2(200) not null,
  function_param       VARCHAR2(200),
  answer_id            VARCHAR2(100) not null,
  prompt_id            VARCHAR2(32),
  multi_type           VARCHAR2(2),
  keyword_pinyin_group VARCHAR2(300),
  class_name           VARCHAR2(100)
)
;
comment on table FACE_QUESTION_TEMPLATE
  is '问句模板表';
comment on column FACE_QUESTION_TEMPLATE.question_id
  is '问句编号';
comment on column FACE_QUESTION_TEMPLATE.keyword_group
  is '关键词组合';
comment on column FACE_QUESTION_TEMPLATE.function_name
  is '方法名';
comment on column FACE_QUESTION_TEMPLATE.function_param
  is '方法名参数';
comment on column FACE_QUESTION_TEMPLATE.answer_id
  is '答案模板表的主键';
comment on column FACE_QUESTION_TEMPLATE.prompt_id
  is '模糊问题提示表的主键，对于包含且内容多于该数据关键词组合且在数据库模块和AIML中都没有匹配到结果的情况下，推荐该问题。';
comment on column FACE_QUESTION_TEMPLATE.multi_type
  is '多轮类型-- 关联枚举6107';
comment on column FACE_QUESTION_TEMPLATE.keyword_pinyin_group
  is '关键词拼音组合';
comment on column FACE_QUESTION_TEMPLATE.class_name
  is '方法所属类';
alter table FACE_QUESTION_TEMPLATE
  add constraint FACE_QUESTION_TEMPLATE_PK primary key (QUESTION_ID);

prompt
prompt Creating table FACE_SECTION_FORECAST
prompt ====================================
prompt
create table FACE_SECTION_FORECAST
(
  id            VARCHAR2(32),
  insert_time   DATE,
  tpi           NUMBER,
  section_code  NVARCHAR2(18),
  more_flowtime NVARCHAR2(20),
  holiday_id    VARCHAR2(32)
)
;
comment on table FACE_SECTION_FORECAST
  is '节假日路段拥堵预测';
comment on column FACE_SECTION_FORECAST.insert_time
  is '插入时间';
comment on column FACE_SECTION_FORECAST.tpi
  is '拥堵指数';
comment on column FACE_SECTION_FORECAST.section_code
  is '路段编码';
comment on column FACE_SECTION_FORECAST.more_flowtime
  is '较大流量时间段';
comment on column FACE_SECTION_FORECAST.holiday_id
  is '节假日编号';

prompt
prompt Creating table FACE_SECTION_INDEX
prompt =================================
prompt
create table FACE_SECTION_INDEX
(
  index_id        VARCHAR2(32) not null,
  section_id      VARCHAR2(32),
  collect_time    DATE,
  travel_time     NUMBER,
  tpi             NUMBER,
  congestion_len  NUMBER,
  flow            NUMBER,
  avg_speed       NUMBER,
  traffic         INTEGER,
  complement_flow NUMBER
)
;
comment on table FACE_SECTION_INDEX
  is 'f干线指数表';
comment on column FACE_SECTION_INDEX.index_id
  is 'ID';
comment on column FACE_SECTION_INDEX.section_id
  is '路段编号';
comment on column FACE_SECTION_INDEX.collect_time
  is '收集时间';
comment on column FACE_SECTION_INDEX.travel_time
  is '行程时间';
comment on column FACE_SECTION_INDEX.tpi
  is '拥堵指数';
comment on column FACE_SECTION_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_SECTION_INDEX.flow
  is '流量';
comment on column FACE_SECTION_INDEX.avg_speed
  is '平均速度';
comment on column FACE_SECTION_INDEX.traffic
  is '路况 1畅通，2缓行，3拥堵，4严重拥堵';
comment on column FACE_SECTION_INDEX.complement_flow
  is '补全流量';
alter table FACE_SECTION_INDEX
  add constraint FACE_SECTION_INDEX_PK primary key (INDEX_ID);

prompt
prompt Creating table FACE_SECTION_TRACE_SOURCE
prompt ========================================
prompt
create table FACE_SECTION_TRACE_SOURCE
(
  section_code VARCHAR2(32) not null,
  total_flow   NUMBER,
  computetime  DATE,
  inserttime   DATE default sysdate not null
)
;
comment on table FACE_SECTION_TRACE_SOURCE
  is '路段溯源表';
comment on column FACE_SECTION_TRACE_SOURCE.section_code
  is '路段编号';
comment on column FACE_SECTION_TRACE_SOURCE.total_flow
  is '总流量';
comment on column FACE_SECTION_TRACE_SOURCE.computetime
  is '计算时间';
comment on column FACE_SECTION_TRACE_SOURCE.inserttime
  is '入库时间';
alter table FACE_SECTION_TRACE_SOURCE
  add constraint SECTION_SOURCE_PK primary key (SECTION_CODE);

prompt
prompt Creating table FACE_SPEED_DISTANCE
prompt ==================================
prompt
create table FACE_SPEED_DISTANCE
(
  id            VARCHAR2(32) not null,
  speed         NUMBER not null,
  stop_distance NUMBER not null,
  safe_distance NUMBER
)
;
comment on table FACE_SPEED_DISTANCE
  is '速度与刹车距离对应表';
comment on column FACE_SPEED_DISTANCE.speed
  is '速度';
comment on column FACE_SPEED_DISTANCE.stop_distance
  is '刹车距离';
comment on column FACE_SPEED_DISTANCE.safe_distance
  is '安全距离';

prompt
prompt Creating table FACE_SYSPARAM
prompt ============================
prompt
create table FACE_SYSPARAM
(
  param_id       VARCHAR2(32) not null,
  param_name     VARCHAR2(50),
  param_value    VARCHAR2(500) not null,
  param_describe NVARCHAR2(1000),
  param_code     VARCHAR2(50),
  param_type     VARCHAR2(3),
  order_num      NUMBER
)
;
comment on table FACE_SYSPARAM
  is '系统参数表';
comment on column FACE_SYSPARAM.param_id
  is 'ID';
comment on column FACE_SYSPARAM.param_name
  is '参数名称';
comment on column FACE_SYSPARAM.param_value
  is '参数值';
comment on column FACE_SYSPARAM.param_describe
  is '参数描述';
comment on column FACE_SYSPARAM.param_code
  is '参数代码';
comment on column FACE_SYSPARAM.param_type
  is '参数类型 枚举6110';
comment on column FACE_SYSPARAM.order_num
  is '页面显示顺序';
alter table FACE_SYSPARAM
  add constraint PK_FACE_SYSPARAM primary key (PARAM_ID);

prompt
prompt Creating table FACE_TOLLSTATION_FORECAST
prompt ========================================
prompt
create table FACE_TOLLSTATION_FORECAST
(
  id             VARCHAR2(32),
  insert_time    DATE,
  tollstation_id VARCHAR2(32),
  total_carant   NUMBER,
  more_flowtime  NVARCHAR2(20),
  holiday_id     VARCHAR2(32)
)
;
comment on table FACE_TOLLSTATION_FORECAST
  is '节假日收费站拥堵预测';
comment on column FACE_TOLLSTATION_FORECAST.insert_time
  is '时间';
comment on column FACE_TOLLSTATION_FORECAST.tollstation_id
  is '收费站名称';
comment on column FACE_TOLLSTATION_FORECAST.total_carant
  is '总车辆数';
comment on column FACE_TOLLSTATION_FORECAST.more_flowtime
  is '较大流量时间段';

prompt
prompt Creating table FACE_TRACE_SOURCE_REL
prompt ====================================
prompt
create table FACE_TRACE_SOURCE_REL
(
  trace_source_id VARCHAR2(32) default sys_guid() not null,
  obj_id          VARCHAR2(32) not null,
  section_code    VARCHAR2(32) not null,
  flow            NUMBER,
  flow_rate       NUMBER,
  flag            INTEGER not null
)
;
comment on table FACE_TRACE_SOURCE_REL
  is '溯源关联路段表';
comment on column FACE_TRACE_SOURCE_REL.trace_source_id
  is 'uuid';
comment on column FACE_TRACE_SOURCE_REL.obj_id
  is '路段编号/干线编号';
comment on column FACE_TRACE_SOURCE_REL.section_code
  is '溯源路段编号';
comment on column FACE_TRACE_SOURCE_REL.flow
  is '溯源流量';
comment on column FACE_TRACE_SOURCE_REL.flow_rate
  is '溯源占比';
comment on column FACE_TRACE_SOURCE_REL.flag
  is '标志 1-路段溯源  2-干线溯源';
alter table FACE_TRACE_SOURCE_REL
  add constraint TRACE_SOURCE_PK primary key (TRACE_SOURCE_ID);

prompt
prompt Creating table FACE_TRANSIT_LINES
prompt =================================
prompt
create table FACE_TRANSIT_LINES
(
  line_id      VARCHAR2(32) not null,
  area_id      VARCHAR2(32) not null,
  car_cnt      NUMBER,
  section_code VARCHAR2(32),
  start_period VARCHAR2(8),
  end_period   VARCHAR2(8)
)
;
comment on table FACE_TRANSIT_LINES
  is '过境车常用线路';
comment on column FACE_TRANSIT_LINES.line_id
  is '线路编号';
comment on column FACE_TRANSIT_LINES.area_id
  is '区域编号';
comment on column FACE_TRANSIT_LINES.car_cnt
  is '车辆数';
comment on column FACE_TRANSIT_LINES.section_code
  is '路段编号';
comment on column FACE_TRANSIT_LINES.start_period
  is '开始时间';
comment on column FACE_TRANSIT_LINES.end_period
  is '结束时间';
alter table FACE_TRANSIT_LINES
  add constraint PK_TRANSIT_LINE primary key (LINE_ID);

prompt
prompt Creating table FACE_VEHICLE_LABELS
prompt ==================================
prompt
create table FACE_VEHICLE_LABELS
(
  id           VARCHAR2(32) not null,
  carnumber    VARCHAR2(10),
  cartype      VARCHAR2(2),
  label_code   VARCHAR2(2),
  custom_label VARCHAR2(10),
  create_time  DATE
)
;
comment on table FACE_VEHICLE_LABELS
  is '车辆标签表';
comment on column FACE_VEHICLE_LABELS.id
  is 'id';
comment on column FACE_VEHICLE_LABELS.carnumber
  is '号牌号码';
comment on column FACE_VEHICLE_LABELS.cartype
  is '号牌类型';
comment on column FACE_VEHICLE_LABELS.label_code
  is '标签代码';
comment on column FACE_VEHICLE_LABELS.custom_label
  is '自定义标签';
comment on column FACE_VEHICLE_LABELS.create_time
  is '入库时间';
alter table FACE_VEHICLE_LABELS
  add constraint PRIMARY_KEY_ID primary key (ID);

prompt
prompt Creating table FACE_WARNING
prompt ===========================
prompt
create table FACE_WARNING
(
  warning_id      VARCHAR2(32) not null,
  warning_type    VARCHAR2(50) not null,
  warning_time    DATE default sysdate,
  warning_address NVARCHAR2(100),
  section_code    VARCHAR2(32),
  crossing_code   VARCHAR2(32),
  area_id         VARCHAR2(32),
  avg_distance    NUMBER,
  use_rate        NUMBER,
  isactive        NUMBER,
  operate_time    DATE,
  operator        VARCHAR2(6),
  warning_index   CLOB,
  coordinates     CLOB,
  isrepeat        NUMBER default 0
)
;
comment on column FACE_WARNING.warning_id
  is '预警编号';
comment on column FACE_WARNING.warning_type
  is '预警类型';
comment on column FACE_WARNING.warning_time
  is '预警时间';
comment on column FACE_WARNING.warning_address
  is '预警地点(路口、路段或区域名称)';
comment on column FACE_WARNING.section_code
  is '关键路段编号';
comment on column FACE_WARNING.crossing_code
  is '路口编号';
comment on column FACE_WARNING.area_id
  is '区域编号';
comment on column FACE_WARNING.avg_distance
  is '平均车距';
comment on column FACE_WARNING.use_rate
  is '停车场总利用率';
comment on column FACE_WARNING.isactive
  is '是否有效:1有效0已忽略';
comment on column FACE_WARNING.operate_time
  is '忽略时间';
comment on column FACE_WARNING.operator
  is '操作人';
comment on column FACE_WARNING.warning_index
  is '指标Json字符串（备用）';
comment on column FACE_WARNING.coordinates
  is '地点坐标（路口、路段或区域）';
comment on column FACE_WARNING.isrepeat
  is '是否重复预警，1重复0首次';
alter table FACE_WARNING
  add constraint PK_FACE_WARNING primary key (WARNING_ID);

prompt
prompt Creating table FACE_WEATHER
prompt ===========================
prompt
create table FACE_WEATHER
(
  id      VARCHAR2(32) not null,
  time    DATE,
  weather VARCHAR2(2),
  temp1   VARCHAR2(2),
  temp2   VARCHAR2(2),
  wind    NVARCHAR2(4)
)
;
comment on column FACE_WEATHER.time
  is '日期';
comment on column FACE_WEATHER.weather
  is '天气情况（0-晴，1-阴，2-雨，3-雪，4-多云）';
comment on column FACE_WEATHER.temp1
  is '高温';
comment on column FACE_WEATHER.temp2
  is '低温';
comment on column FACE_WEATHER.wind
  is '风向';


create table ADMIN_AREA
(
  id            VARCHAR2(32) not null,
  district_code VARCHAR2(20),
  district_name NVARCHAR2(100),
  coordinates   CLOB
)
;
alter table ADMIN_AREA
  add constraint PK_ADMIN_AREA primary key (ID);

prompt
prompt Creating table BIS_AREA
prompt =======================
prompt
create table BIS_AREA
(
  area_code  VARCHAR2(20) not null,
  area_name  VARCHAR2(100) not null,
  coordinate CLOB,
  remark     NVARCHAR2(100),
  center     CLOB,
  short_name VARCHAR2(100)
)
;
comment on column BIS_AREA.area_code
  is '????????(????????PGIS????)';
comment on column BIS_AREA.area_name
  is '????????(????????PGIS????)';
comment on column BIS_AREA.coordinate
  is '????????(????????PGIS????)';
comment on column BIS_AREA.remark
  is '????';
comment on column BIS_AREA.center
  is '??????????????';
comment on column BIS_AREA.short_name
  is '????????(??????????????????)';
alter table BIS_AREA
  add constraint PK_BIS_AREA primary key (AREA_CODE);

prompt
prompt Creating table BIS_CROSSING
prompt ===========================
prompt
create table BIS_CROSSING
(
  crossing_code  VARCHAR2(20) not null,
  crossing_name  NVARCHAR2(50),
  area           VARCHAR2(12),
  region_id      INTEGER,
  description    VARCHAR2(255),
  crossing_type  VARCHAR2(20),
  longitude      NUMBER(16,10) not null,
  latitude       NUMBER(16,10) not null,
  hicon_crossing VARCHAR2(6),
  cre_date       DATE default sysdate,
  last_mod_date  DATE default sysdate
)
;
comment on table BIS_CROSSING
  is '路口表';
comment on column BIS_CROSSING.crossing_code
  is '????';
comment on column BIS_CROSSING.crossing_name
  is '????';
comment on column BIS_CROSSING.area
  is '????';
comment on column BIS_CROSSING.region_id
  is '??????';
comment on column BIS_CROSSING.crossing_type
  is '????';
comment on column BIS_CROSSING.longitude
  is '????';
comment on column BIS_CROSSING.latitude
  is '????';
comment on column BIS_CROSSING.hicon_crossing
  is '信号路口id';
comment on column BIS_CROSSING.cre_date
  is '创建时间';
comment on column BIS_CROSSING.last_mod_date
  is '最后修改时间';
alter table BIS_CROSSING
  add constraint PK_BIS_CROSSING primary key (CROSSING_CODE);

prompt
prompt Creating table BIS_CROSSING_GEOMETRY
prompt ====================================
prompt
create table BIS_CROSSING_GEOMETRY
(
  crossing_code VARCHAR2(20),
  geometry      MDSYS.SDO_GEOMETRY
)
;
comment on table BIS_CROSSING_GEOMETRY
  is '三平台路口地理信息表';

prompt
prompt Creating table BIS_DEVICE
prompt =========================
prompt
create table BIS_DEVICE
(
  device_code          VARCHAR2(32) not null,
  device_sn            VARCHAR2(60),
  device_name          VARCHAR2(500),
  devicetype_id        VARCHAR2(32),
  org_id               VARCHAR2(32),
  area_id              VARCHAR2(32),
  device_location      VARCHAR2(600),
  device_location_code VARCHAR2(50),
  longitude            NUMBER(15,5),
  latitude             NUMBER(15,5),
  device_status        NUMBER,
  vendor_id            VARCHAR2(32),
  subcontractor_id     VARCHAR2(32),
  brand                VARCHAR2(120),
  model                VARCHAR2(120),
  project_id           VARCHAR2(32),
  device_ip            VARCHAR2(20),
  device_port          VARCHAR2(10),
  factory_sn           VARCHAR2(50),
  install_date         TIMESTAMP(6),
  thirdsyscode         VARCHAR2(20),
  developer            VARCHAR2(32),
  direction            VARCHAR2(3),
  remark               VARCHAR2(600),
  cre_user             VARCHAR2(100),
  cre_date             TIMESTAMP(6) default sysdate,
  last_mod_user        VARCHAR2(100),
  last_mod_date        TIMESTAMP(6) default sysdate,
  isactive             NUMBER(1)
)
;
comment on table BIS_DEVICE
  is '固定设备表';
comment on column BIS_DEVICE.device_code
  is '设备编号';
comment on column BIS_DEVICE.device_sn
  is '设备编码';
comment on column BIS_DEVICE.device_name
  is '设备名称';
comment on column BIS_DEVICE.devicetype_id
  is '设备类型ID';
comment on column BIS_DEVICE.org_id
  is '所属组织ID、使用部门';
comment on column BIS_DEVICE.area_id
  is '所属行政区划';
comment on column BIS_DEVICE.device_location
  is '安装位置';
comment on column BIS_DEVICE.device_location_code
  is '设备的路口点位编号';
comment on column BIS_DEVICE.longitude
  is '经度 整数10位,小数点后5位';
comment on column BIS_DEVICE.latitude
  is '纬度，整数10位,小数点后5位';
comment on column BIS_DEVICE.device_status
  is '1:正常，2:故障，3:拆除，4:停用';
comment on column BIS_DEVICE.vendor_id
  is '供应商ID';
comment on column BIS_DEVICE.subcontractor_id
  is '分包商ID';
comment on column BIS_DEVICE.brand
  is '品牌';
comment on column BIS_DEVICE.model
  is '型号';
comment on column BIS_DEVICE.project_id
  is '所属项目ID';
comment on column BIS_DEVICE.device_ip
  is '设备IP地址';
comment on column BIS_DEVICE.device_port
  is '设备端口';
comment on column BIS_DEVICE.factory_sn
  is '设备出厂编号';
comment on column BIS_DEVICE.install_date
  is '安装日期';
comment on column BIS_DEVICE.thirdsyscode
  is '第三方编号';
comment on column BIS_DEVICE.developer
  is '建设单位';
comment on column BIS_DEVICE.direction
  is '方向  字典维护，枚举6111';
comment on column BIS_DEVICE.remark
  is '备注';
alter table BIS_DEVICE
  add constraint DEVICE_CODE_KEY primary key (DEVICE_CODE);

prompt
prompt Creating table BIS_DEVICETYPE
prompt =============================
prompt
create table BIS_DEVICETYPE
(
  devicetype_id      VARCHAR2(32) not null,
  devicetype_name    VARCHAR2(500),
  parent_id          VARCHAR2(32),
  device_category_id VARCHAR2(32),
  ef_division        VARCHAR2(1),
  remark             VARCHAR2(200),
  isactive           NUMBER(1),
  cre_user           VARCHAR2(100),
  cre_date           TIMESTAMP(6),
  last_mod_user      VARCHAR2(100),
  last_mod_date      TIMESTAMP(6)
)
;
comment on column BIS_DEVICETYPE.devicetype_id
  is '设备类型主键id（设备类型编码）';
comment on column BIS_DEVICETYPE.devicetype_name
  is '设备类型名称';
comment on column BIS_DEVICETYPE.parent_id
  is '父类型id';
comment on column BIS_DEVICETYPE.device_category_id
  is '对应数据字典SBFL 0业务应用层 1平台资源层 2虚拟资源层 3基础设施层';
comment on column BIS_DEVICETYPE.ef_division
  is '设备设施区分（EQUIPMENT AND FACILITIES DIVISION） E:设备,F:设施';
comment on column BIS_DEVICETYPE.remark
  is '备注';
comment on column BIS_DEVICETYPE.isactive
  is '是否有效 1有效 0无效（用于逻辑删除）';
comment on column BIS_DEVICETYPE.cre_user
  is '创建者id';
comment on column BIS_DEVICETYPE.cre_date
  is '创建日期';
comment on column BIS_DEVICETYPE.last_mod_user
  is '最后修改人id';
comment on column BIS_DEVICETYPE.last_mod_date
  is '最后更改时间';
alter table BIS_DEVICETYPE
  add constraint PK_BIS_DEVICETYPE primary key (DEVICETYPE_ID);

prompt
prompt Creating table BIS_EXIT_LANE
prompt ============================
prompt
create table BIS_EXIT_LANE
(
  exit_lane_code VARCHAR2(32) not null,
  crossing_code  VARCHAR2(20) not null,
  lane_no        INTEGER,
  exit_dir       INTEGER not null
)
;
alter table BIS_EXIT_LANE
  add constraint PK_EXIT_LANE_CODE primary key (EXIT_LANE_CODE, CROSSING_CODE, EXIT_DIR);

prompt
prompt Creating table BIS_LANE
prompt =======================
prompt
create table BIS_LANE
(
  lane_code         VARCHAR2(32) not null,
  crossing_code     VARCHAR2(20) not null,
  width             NUMBER(5,2),
  length            NUMBER(5,2),
  gradient          NUMBER(5,2),
  max_traffic       INTEGER,
  turn_left_radius  NUMBER(5,2),
  turn_right_radius NUMBER(5,2),
  through_rate      NUMBER(3,2),
  turnleft_rate     NUMBER(3,2),
  turnright_rate    NUMBER(3,2),
  approach_dir      INTEGER not null,
  lane_no           INTEGER,
  lane_type         INTEGER,
  quickroad_type    INTEGER,
  turn_left         INTEGER,
  through           INTEGER,
  turn_right        INTEGER,
  turn_around       INTEGER,
  bus_way           INTEGER,
  is_wait_area      INTEGER
)
;
comment on table BIS_LANE
  is '车道表';
comment on column BIS_LANE.lane_code
  is '车道编号';
comment on column BIS_LANE.crossing_code
  is '所属路口编号';
comment on column BIS_LANE.width
  is '宽度';
comment on column BIS_LANE.length
  is '长度';
comment on column BIS_LANE.gradient
  is '坡度';
comment on column BIS_LANE.max_traffic
  is '通行能力';
comment on column BIS_LANE.turn_left_radius
  is '左转弯半径';
comment on column BIS_LANE.turn_right_radius
  is '右转弯半径';
comment on column BIS_LANE.through_rate
  is '直行车流比例';
comment on column BIS_LANE.turnleft_rate
  is '左转弯车流比例';
comment on column BIS_LANE.turnright_rate
  is '右转弯车流比例';
comment on column BIS_LANE.approach_dir
  is '进口道方向，枚举6111';
comment on column BIS_LANE.lane_no
  is '车道号';
comment on column BIS_LANE.lane_type
  is '车道类型，枚举6112';
comment on column BIS_LANE.quickroad_type
  is '快速路位置类型';
comment on column BIS_LANE.is_wait_area
  is '是否有待转区1 有 0 无';
alter table BIS_LANE
  add constraint PK_BIS_LANE primary key (LANE_CODE, CROSSING_CODE, APPROACH_DIR);

prompt
prompt Creating table BIS_POINT
prompt ========================
prompt
create table BIS_POINT
(
  point_code    NVARCHAR2(32) not null,
  point_name    NVARCHAR2(100) not null,
  area_code     VARCHAR2(12),
  longitude     NUMBER(32,20),
  latitude      NUMBER(32,20),
  crossing_code VARCHAR2(32),
  section_code  VARCHAR2(32),
  road_code     VARCHAR2(32),
  lane_code     VARCHAR2(32),
  cre_user      VARCHAR2(32),
  cre_date      DATE not null,
  last_mod_user VARCHAR2(32),
  last_mod_date DATE,
  remark        NVARCHAR2(500),
  isactive      NUMBER(1) default 1 not null
)
;

prompt
prompt Creating table BIS_ROAD
prompt =======================
prompt
create table BIS_ROAD
(
  road_code          VARCHAR2(32) not null,
  road_name          NVARCHAR2(100) not null,
  road_standard_type NUMBER(2),
  road_adm_level     NUMBER(2),
  road_type          NUMBER(2),
  road_distance      NUMBER(10,2),
  cre_user           VARCHAR2(32),
  cre_date           DATE,
  last_mod_user      VARCHAR2(32),
  last_mod_date      DATE,
  isactive           NUMBER(1),
  position           CLOB not null,
  road_status        INTEGER,
  description        VARCHAR2(500)
)
;
comment on table BIS_ROAD
  is '道路表';
comment on column BIS_ROAD.road_code
  is '道路代码';
comment on column BIS_ROAD.road_name
  is '道路名称';
comment on column BIS_ROAD.road_standard_type
  is '标准道路类型';
comment on column BIS_ROAD.road_adm_level
  is '公路行政等级';
comment on column BIS_ROAD.road_type
  is '道路类型';
comment on column BIS_ROAD.road_distance
  is '主线里程';
comment on column BIS_ROAD.cre_user
  is '创建人';
comment on column BIS_ROAD.cre_date
  is '创建时间';
comment on column BIS_ROAD.last_mod_user
  is '最后修改人';
comment on column BIS_ROAD.last_mod_date
  is '最后修改时间';
comment on column BIS_ROAD.isactive
  is '是否启用 1是0否';
comment on column BIS_ROAD.position
  is '道路坐标';
comment on column BIS_ROAD.road_status
  is '道路状态';
comment on column BIS_ROAD.description
  is '描述';
alter table BIS_ROAD
  add constraint PK_BIS_ROAD primary key (ROAD_CODE);

prompt
prompt Creating table BIS_SECTION
prompt ==========================
prompt
create table BIS_SECTION
(
  section_code       VARCHAR2(18) not null,
  section_name       NVARCHAR2(100) not null,
  section_type       NUMBER(2),
  road_code          VARCHAR2(32),
  approach_dir       VARCHAR2(1),
  width              NUMBER(5,2),
  lane_num           INTEGER,
  cross_flag         INTEGER,
  left_pkt_lanes     INTEGER,
  right_pkt_lanes    INTEGER,
  length             NUMBER(8,2),
  left_pkt_lane_len  NUMBER(6,2),
  right_pkt_lane_len NUMBER(6,2),
  up_crossing_code   VARCHAR2(32) not null,
  down_crossing_code VARCHAR2(32) not null,
  down_section_code  VARCHAR2(32),
  up_section_code    VARCHAR2(32),
  sidewalk_width     NUMBER(5,2),
  is_one_way         VARCHAR2(1),
  one_way_start_time DATE,
  is_down_right_ctrl NUMBER(1),
  isactive           NUMBER(1),
  one_way_end_time   DATE,
  area_code          VARCHAR2(18),
  speed              NUMBER,
  description        VARCHAR2(500),
  position           CLOB,
  cre_date           DATE default sysdate,
  last_mod_date      DATE default sysdate,
  transport_sys_code VARCHAR2(30),
  flow               NUMBER(6,2),
  up_crossing_dir    INTEGER,
  down_crossing_dir  INTEGER
)
;
comment on table BIS_SECTION
  is '路段表';
comment on column BIS_SECTION.section_code
  is '路段编号';
comment on column BIS_SECTION.section_name
  is '路段名称';
comment on column BIS_SECTION.section_type
  is '路段类型';
comment on column BIS_SECTION.road_code
  is '道路编码';
comment on column BIS_SECTION.approach_dir
  is '进口道方向';
comment on column BIS_SECTION.width
  is '宽度';
comment on column BIS_SECTION.lane_num
  is '车道数';
comment on column BIS_SECTION.cross_flag
  is '行人通行标志';
comment on column BIS_SECTION.left_pkt_lanes
  is '左转不完整车道数';
comment on column BIS_SECTION.right_pkt_lanes
  is '右转不完整车道数';
comment on column BIS_SECTION.length
  is '路段长度';
comment on column BIS_SECTION.left_pkt_lane_len
  is '左转不完整车道长度';
comment on column BIS_SECTION.right_pkt_lane_len
  is '右转不完整车道长度';
comment on column BIS_SECTION.up_crossing_code
  is '上游路口CODE';
comment on column BIS_SECTION.down_crossing_code
  is '下游路口CODE';
comment on column BIS_SECTION.down_section_code
  is '下游路段CODE';
comment on column BIS_SECTION.up_section_code
  is '上游路段CODE';
comment on column BIS_SECTION.sidewalk_width
  is '人行道宽度';
comment on column BIS_SECTION.is_one_way
  is '是否单行车道';
comment on column BIS_SECTION.one_way_start_time
  is '单行起始时间';
comment on column BIS_SECTION.is_down_right_ctrl
  is '下游路口右转是否受控';
comment on column BIS_SECTION.isactive
  is '是否启用';
comment on column BIS_SECTION.one_way_end_time
  is '单行结束时间';
comment on column BIS_SECTION.area_code
  is '区域编码';
comment on column BIS_SECTION.speed
  is '路段速度';
comment on column BIS_SECTION.description
  is '描述';
comment on column BIS_SECTION.position
  is '路段经纬度';
comment on column BIS_SECTION.cre_date
  is '创建时间';
comment on column BIS_SECTION.last_mod_date
  is '最后修改时间';
comment on column BIS_SECTION.transport_sys_code
  is '六合一编码';
comment on column BIS_SECTION.flow
  is '设计流量';
comment on column BIS_SECTION.up_crossing_dir
  is '上游路口方向';
comment on column BIS_SECTION.down_crossing_dir
  is '下游路口方向';
alter table BIS_SECTION
  add constraint PK_BIS_SECTION primary key (SECTION_CODE);

prompt
prompt Creating table BIS_SECTION_GEOMETRY
prompt ===================================
prompt
create table BIS_SECTION_GEOMETRY
(
  section_code VARCHAR2(20),
  geometry     MDSYS.SDO_GEOMETRY
)
;
comment on table BIS_SECTION_GEOMETRY
  is '三平台路段地理信息表';

prompt
prompt Creating table FACE_ALIAS
prompt =========================
prompt
create table FACE_ALIAS
(
  alias_id   VARCHAR2(32) not null,
  keyword    NVARCHAR2(100) not null,
  alias      NVARCHAR2(100) not null,
  keyword_id VARCHAR2(32)
)
;
comment on table FACE_ALIAS
  is '别名表';
comment on column FACE_ALIAS.alias_id
  is '编号';
comment on column FACE_ALIAS.keyword
  is '关键词';
comment on column FACE_ALIAS.alias
  is '别名';
comment on column FACE_ALIAS.keyword_id
  is '关键词id';
alter table FACE_ALIAS
  add constraint FACE_ALIAS_PK primary key (ALIAS_ID);

prompt
prompt Creating table FACE_ANALYSE_PERIOD
prompt ==================================
prompt
create table FACE_ANALYSE_PERIOD
(
  period_id    VARCHAR2(32) not null,
  analyse_type CHAR(1),
  analyse_id   VARCHAR2(32),
  weekday      VARCHAR2(2),
  start_period VARCHAR2(10),
  end_period   VARCHAR2(10),
  analysdate   DATE
)
;
comment on table FACE_ANALYSE_PERIOD
  is '分析时段表';
comment on column FACE_ANALYSE_PERIOD.period_id
  is '编号';
comment on column FACE_ANALYSE_PERIOD.analyse_type
  is '分析类型（1区域，2干线）';
comment on column FACE_ANALYSE_PERIOD.analyse_id
  is '区域或干线编号';
comment on column FACE_ANALYSE_PERIOD.weekday
  is '星期，枚举6108';
comment on column FACE_ANALYSE_PERIOD.start_period
  is '开始时段';
comment on column FACE_ANALYSE_PERIOD.end_period
  is '结束时段';
comment on column FACE_ANALYSE_PERIOD.analysdate
  is '日期';
alter table FACE_ANALYSE_PERIOD
  add constraint FACE_ANALYSE_PERIOD_PK primary key (PERIOD_ID);

prompt
prompt Creating table FACE_ANSWER_TEMPLATE
prompt ===================================
prompt
create table FACE_ANSWER_TEMPLATE
(
  answer_id      VARCHAR2(32) not null,
  answer_text    NVARCHAR2(500) not null,
  answer_filed   VARCHAR2(500),
  function_name  VARCHAR2(200),
  function_param VARCHAR2(200)
)
;
comment on table FACE_ANSWER_TEMPLATE
  is '答案模板表';
comment on column FACE_ANSWER_TEMPLATE.answer_id
  is '答案编号';
comment on column FACE_ANSWER_TEMPLATE.answer_text
  is '文本答案模板';
comment on column FACE_ANSWER_TEMPLATE.answer_filed
  is '文本字段名对应关系';
comment on column FACE_ANSWER_TEMPLATE.function_name
  is '前台调用方法名';
comment on column FACE_ANSWER_TEMPLATE.function_param
  is '前台调用方法参数';
alter table FACE_ANSWER_TEMPLATE
  add constraint FACE_ANSWER_TEMPLATE_PK primary key (ANSWER_ID);

drop table GAODE_POI_POINT;

prompt
prompt Creating table GAODE_POI_POINT
prompt ==============================
prompt
create table GAODE_POI_POINT
(
  pid       VARCHAR2(35) not null,
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
;
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
alter table GAODE_POI_POINT
  add constraint PK_GAODE_POI primary key (PID);

drop table FACI_VEHICLEPARK;
-- Create table
create table FACI_VEHICLEPARK
(
  uuid            VARCHAR2(32),
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
  delflag         VARCHAR2(1),
  createid        VARCHAR2(20),
  createtime      DATE,
  updateid        VARCHAR2(20),
  updatetime      DATE,
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
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table FACI_VEHICLEPARK
  is '停车场信息表';
-- Add comments to the columns 
comment on column FACI_VEHICLEPARK.uuid
  is 'uuid';
comment on column FACI_VEHICLEPARK.registerid
  is '注册编号';
comment on column FACI_VEHICLEPARK.name
  is '名称';
comment on column FACI_VEHICLEPARK.type
  is '类型';
comment on column FACI_VEHICLEPARK.parkmode
  is '模式';
comment on column FACI_VEHICLEPARK.dept
  is '部门';
comment on column FACI_VEHICLEPARK.sectionid
  is '';
comment on column FACI_VEHICLEPARK.area
  is '行政区';
comment on column FACI_VEHICLEPARK.berthcount
  is '总泊位数';
comment on column FACI_VEHICLEPARK.managedept
  is '管理部门';
comment on column FACI_VEHICLEPARK.relativeman
  is '法人';
comment on column FACI_VEHICLEPARK.phoneno
  is '电话';
comment on column FACI_VEHICLEPARK.coordinates
  is '坐标';
comment on column FACI_VEHICLEPARK.delflag
  is '删除标志';
comment on column FACI_VEHICLEPARK.createid
  is '创建人id';
comment on column FACI_VEHICLEPARK.createtime
  is '创建时间';
comment on column FACI_VEHICLEPARK.updateid
  is '修改人id';
comment on column FACI_VEHICLEPARK.updatetime
  is '更新时间';
comment on column FACI_VEHICLEPARK.serial
  is '停车场编号';
comment on column FACI_VEHICLEPARK.yncross
  is '';
comment on column FACI_VEHICLEPARK.roadid1
  is '';
comment on column FACI_VEHICLEPARK.roadid2
  is '';
comment on column FACI_VEHICLEPARK.imgpath1
  is '';
comment on column FACI_VEHICLEPARK.imgpath2
  is '';
comment on column FACI_VEHICLEPARK.imgpath3
  is '';
comment on column FACI_VEHICLEPARK.relationvideoid
  is '视频设备id';
comment on column FACI_VEHICLEPARK.defaultcode
  is '预置位';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACI_VEHICLEPARK
  add constraint FACI_VEHICLEPARK_ID primary key (UUID)
  disable;

create or replace function calculateratio(value in number, beforevalue in number,defaultvalue in varchar2) return varchar2 is
  Result varchar2(4000);

begin
  select case nvl(beforevalue,0) when 0 then defaultvalue
  else to_char(rtrim(to_char((value-beforevalue)/beforevalue,'FM999999999990.9999'),to_char(0,'.'))) end into Result from dual;
  return(Result);
end calculateratio;
/

create or replace view face_area_index_data_view as
select t.index_id,
       t.area_id,
       t.collect_time,
       (t.normalrate+t.jamrate+t.seriousrate) as jampercent,
       t.normallen+t.jamlen+t.seriouslen as  jamlength,
       t.transit_vehicle_num as onroadcarnum,
       t.low_freq_prop as lowfrequencycarper,
       t.taxi_prop as taxiper,
       t.ride_hailing_prop as carhailingper,
       t.parents_prop as shoppingcarper,
       t.shopping_prop as parentcarper,
       t.large_vehicle_prop as largecarper
  from face_area_index t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';
  
  create or replace view face_area_index_view as
select t1.index_id,
       t1.area_id,
       t1.collect_time,
       case when nvl(t1.jampercent,0) >= (select to_number(param_value) from face_sysparam where param_code='JAM_INDEX')  then 1 else 0 end as isjam,
       t1.jampercent,
       t1.jamlength,
       t1.onroadcarnum,
       --(t2.jampercent-t1.jampercent)/t2.jampercent as jampercentchange,
       calculateratio(t1.jampercent,t2.jampercent,'--') as jampercentchange,
       --(t2.onroadcarnum-t1.onroadcarnum)/t2.onroadcarnum as onroadcarnumchange,
       calculateratio(t1.onroadcarnum,t2.onroadcarnum,'--') as onroadcarnumchange,
       t1.lowfrequencycarper,
       --(t2.lowfrequencycarper-t1.lowfrequencycarper)/t2.lowfrequencycarper as lowfrequencycarperchange,
       calculateratio(t1.lowfrequencycarper,t2.lowfrequencycarper,'--') as lowfrequencycarperchange,
       t1.taxiper,
       --(t2.taxiper-t1.taxiper)/t2.taxiper as taxiperchange,
       calculateratio(t1.taxiper,t2.taxiper,'--') as taxiperchange,
       t1.carhailingper,
       --(t2.carhailingper-t1.carhailingper)/t2.carhailingper as carhailingperchange,
       calculateratio(t1.carhailingper,t2.carhailingper,'--') as carhailingperchange,
       t1.shoppingcarper,
       --(t2.shoppingcarper-t1.shoppingcarper)/t2.shoppingcarper as shoppingcarperchange,
       calculateratio(t1.shoppingcarper,t2.shoppingcarper,'--') as shoppingcarperchange,
       t1.parentcarper,
       --(t2.parentcarper-t1.parentcarper)/t2.parentcarper as parentcarperchange,
       calculateratio(t1.parentcarper,t2.parentcarper,'--') as parentcarperchange,
       t1.largecarper,
       --(t2.largecarper-t1.largecarper)/t2.largecarper as largecarperchange
       calculateratio(t1.largecarper,t2.largecarper,'--') as largecarperchange
  from face_area_index_data_view t1 left join face_area_index_data_view t2 on t1.area_id=t2.area_id and t1.collect_time=t2.collect_time+7;
  
 ---------------------------A2--------------------------
 -- Add/modify columns 
alter table ENUM_TYPE modify enumvalue VARCHAR2(100);
-- Create table
create table FACE_HBASE2ORACLE_CONFIG
(
  id            VARCHAR2(32),
  hbase_table   VARCHAR2(500),
  hbase_column  VARCHAR2(500),
  oracle_table  VARCHAR2(500),
  oracle_column VARCHAR2(500)
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
-- Add comments to the table 
comment on table FACE_HBASE2ORACLE_CONFIG
  is 'hbase与oracle指标同步配置表';
  
  
-- 扩展monitor_point中路口、道路的编码长度 by caoqiang
alter table monitor_point modify  dldm varchar2(32);
alter table monitor_point modify  lkdm varchar2(32);



declare   

 V_NUM number;  

BEGIN  
    ----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    ----判断表  TABLE_NAME 是否存在，注意，表名必须大写，否则找不到表
    select count(0) into V_NUM from user_tables where table_name = 'BIS_SECTION';
    ----如果存在立即删除  
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_SECTION';   
    end if;
    
    ----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    ----判断表  TABLE_NAME 是否存在，注意，表名必须大写，否则找不到表
    select count(0) into V_NUM from user_tables where table_name = 'BIS_CROSSING';
    ----如果存在立即删除  
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_CROSSING';   
    end if;
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    ----判断表  TABLE_NAME 是否存在，注意，表名必须大写，否则找不到表
    select count(0) into V_NUM from user_tables where table_name = 'BIS_ENUM_TYPE';
    ----如果存在立即删除  
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_ENUM_TYPE';   
    end if;
	

	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_POINT';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_POINT';   
    end if;
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_ROAD';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_ROAD';   
    end if;
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_AREA';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_AREA';   
    end if;
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_LANE';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_LANE';   
    end if;
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_EXIT_LANE';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_EXIT_LANE';   
    end if;	
	
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'MONITOR_POINT_GEOMETRY';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE MONITOR_POINT_GEOMETRY';   
    end if;	
		
	----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_CROSSING_GEOMETRY';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_CROSSING_GEOMETRY';   
    end if;		
	
		----多次删除时，每次都将v_num设置成为0
    V_NUM := 0;  
    select count(0) into V_NUM from user_tables where table_name = 'BIS_SECTION_GEOMETRY';
    if V_NUM > 0 then   
    execute immediate 'DROP TABLE BIS_SECTION_GEOMETRY';   
    end if;	
	


END;
/

-- Create table  路段表
create table BIS_SECTION
(
  section_code       VARCHAR2(18) not null,
  section_name       NVARCHAR2(100) not null,
  section_type       NUMBER(2),
  road_code          VARCHAR2(32),
  approach_dir       VARCHAR2(1),
  width              NUMBER(5,2),
  lane_num           INTEGER,
  cross_flag         INTEGER,
  left_pkt_lanes     INTEGER,
  right_pkt_lanes    INTEGER,
  length             NUMBER(8,2),
  left_pkt_lane_len  NUMBER(6,2),
  right_pkt_lane_len NUMBER(6,2),
  up_crossing_code   VARCHAR2(32) not null,
  down_crossing_code VARCHAR2(32) not null,
  down_section_code  VARCHAR2(32),
  up_section_code    VARCHAR2(32),
  sidewalk_width     NUMBER(5,2),
  is_one_way         VARCHAR2(1),
  one_way_start_time DATE,
  is_down_right_ctrl NUMBER(1),
  isactive           NUMBER(1),
  one_way_end_time   DATE,
  area_code          VARCHAR2(18),
  speed              NUMBER,
  description        VARCHAR2(500),
  position           CLOB,
  cre_date           DATE default sysdate,
  last_mod_date      DATE default sysdate,
  transport_sys_code VARCHAR2(30),
  flow               NUMBER(6,2),
  up_crossing_dir    INTEGER,
  down_crossing_dir  INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_SECTION
  is '路段表';
-- Add comments to the columns 
comment on column BIS_SECTION.section_code
  is '路段编号';
comment on column BIS_SECTION.section_name
  is '路段名称';
comment on column BIS_SECTION.section_type
  is '路段类型';
comment on column BIS_SECTION.road_code
  is '道路编码';
comment on column BIS_SECTION.approach_dir
  is '进口道方向';
comment on column BIS_SECTION.width
  is '宽度';
comment on column BIS_SECTION.lane_num
  is '车道数';
comment on column BIS_SECTION.cross_flag
  is '行人通行标志';
comment on column BIS_SECTION.left_pkt_lanes
  is '左转不完整车道数';
comment on column BIS_SECTION.right_pkt_lanes
  is '右转不完整车道数';
comment on column BIS_SECTION.length
  is '路段长度';
comment on column BIS_SECTION.left_pkt_lane_len
  is '左转不完整车道长度';
comment on column BIS_SECTION.right_pkt_lane_len
  is '右转不完整车道长度';
comment on column BIS_SECTION.up_crossing_code
  is '上游路口CODE';
comment on column BIS_SECTION.down_crossing_code
  is '下游路口CODE';
comment on column BIS_SECTION.down_section_code
  is '下游路段CODE';
comment on column BIS_SECTION.up_section_code
  is '上游路段CODE';
comment on column BIS_SECTION.sidewalk_width
  is '人行道宽度';
comment on column BIS_SECTION.is_one_way
  is '是否单行车道';
comment on column BIS_SECTION.one_way_start_time
  is '单行起始时间';
comment on column BIS_SECTION.is_down_right_ctrl
  is '下游路口右转是否受控';
comment on column BIS_SECTION.isactive
  is '是否启用';
comment on column BIS_SECTION.one_way_end_time
  is '单行结束时间';
comment on column BIS_SECTION.area_code
  is '区域编码';
comment on column BIS_SECTION.speed
  is '路段速度';
comment on column BIS_SECTION.description
  is '描述';
comment on column BIS_SECTION.position
  is '路段经纬度';
comment on column BIS_SECTION.cre_date
  is '创建时间';
comment on column BIS_SECTION.last_mod_date
  is '最后修改时间';
comment on column BIS_SECTION.transport_sys_code
  is '六合一编码';
comment on column BIS_SECTION.flow
  is '设计流量';
comment on column BIS_SECTION.up_crossing_dir
  is '上游路口方向';
comment on column BIS_SECTION.down_crossing_dir
  is '下游路口方向';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_SECTION
  add constraint PK_BIS_SECTION primary key (SECTION_CODE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 2M
    next 1M
    minextents 1
    maxextents unlimited
  );

-- Create table  路口表
create table BIS_CROSSING
(
  crossing_code      VARCHAR2(20) not null,
  crossing_name      NVARCHAR2(50),
  area               VARCHAR2(12),
  region_id          INTEGER,
  description        VARCHAR2(255),
  crossing_type      VARCHAR2(20),
  longitude          NUMBER(16,10) not null,
  latitude           NUMBER(16,10) not null,
  hicon_crossing     VARCHAR2(6),
  cre_date           DATE default sysdate,
  last_mod_date      DATE default sysdate,
  transport_sys_code VARCHAR2(30),
  width              NUMBER(6,2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 16
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_CROSSING
  is '路口表';
-- Add comments to the columns 
comment on column BIS_CROSSING.crossing_code
  is '路口编号';
comment on column BIS_CROSSING.crossing_name
  is '路口名称';
comment on column BIS_CROSSING.area
  is '所属辖区';
comment on column BIS_CROSSING.description
  is '路口描述';
comment on column BIS_CROSSING.crossing_type
  is '路口类型';
comment on column BIS_CROSSING.longitude
  is '路口经度';
comment on column BIS_CROSSING.latitude
  is '路口纬度';
comment on column BIS_CROSSING.hicon_crossing
  is '信号路口ID';
comment on column BIS_CROSSING.cre_date
  is '创建时间';
comment on column BIS_CROSSING.last_mod_date
  is '最后修改时间';
comment on column BIS_CROSSING.transport_sys_code
  is '六合一编码';
comment on column BIS_CROSSING.width
  is '路口宽度';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_CROSSING
  add constraint PK_BIS_CROSSING primary key (CROSSING_CODE)
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

-- Create table 枚举类型
create table BIS_ENUM_TYPE
(
  enumtype_id NUMBER not null,
  enum_value  NVARCHAR2(100) not null,
  enum_name   NVARCHAR2(50),
  isdefault   NUMBER,
  dispindex   NUMBER,
  isactive    NUMBER(1) default 1
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_ENUM_TYPE
  is '枚举值表';
-- Add comments to the columns 
comment on column BIS_ENUM_TYPE.enumtype_id
  is '枚举类型号';
comment on column BIS_ENUM_TYPE.enum_value
  is '枚举成员值';
comment on column BIS_ENUM_TYPE.enum_name
  is '枚举成员名称';
comment on column BIS_ENUM_TYPE.isdefault
  is '是否缺省值';
comment on column BIS_ENUM_TYPE.dispindex
  is '显示顺序';
comment on column BIS_ENUM_TYPE.isactive
  is '是否启用 1是0否';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_ENUM_TYPE
  add constraint PK_ENUM_TYPE_VALUE_ID primary key (ENUMTYPE_ID, ENUM_VALUE)
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
  
-- Create table  安装点
create table BIS_POINT
(
  point_code    NVARCHAR2(32) not null,
  point_name    NVARCHAR2(100) not null,
  area_code     VARCHAR2(12),
  longitude     NUMBER(32,20),
  latitude      NUMBER(32,20),
  crossing_code VARCHAR2(32),
  section_code  VARCHAR2(32),
  road_code     VARCHAR2(32),
  lane_code     VARCHAR2(32),
  cre_user      VARCHAR2(32),
  cre_date      DATE not null,
  last_mod_user VARCHAR2(32),
  last_mod_date DATE,
  remark        NVARCHAR2(500),
  isactive      NUMBER(1) default 1 not null
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
-- Add comments to the table 
comment on table BIS_POINT
  is '安装点';
-- Add comments to the columns 
comment on column BIS_POINT.point_code
  is '点位编号';
comment on column BIS_POINT.point_name
  is '点位名称';
comment on column BIS_POINT.area_code
  is '所属辖区';
comment on column BIS_POINT.longitude
  is '经度';
comment on column BIS_POINT.latitude
  is '纬度';
comment on column BIS_POINT.crossing_code
  is '路口编号';
comment on column BIS_POINT.section_code
  is '路段编号';
comment on column BIS_POINT.road_code
  is '道路编号';
comment on column BIS_POINT.lane_code
  is '车道编号';
comment on column BIS_POINT.cre_user
  is '创建人';
comment on column BIS_POINT.cre_date
  is '创建时间';
comment on column BIS_POINT.last_mod_user
  is '更新人';
comment on column BIS_POINT.last_mod_date
  is '更新时间';
comment on column BIS_POINT.remark
  is '备注';
comment on column BIS_POINT.isactive
  is '是否有效';

-- Create table 道路
create table BIS_ROAD
(
  road_code          VARCHAR2(32) not null,
  road_name          NVARCHAR2(100) not null,
  road_standard_type NUMBER(2),
  road_adm_level     NUMBER(2),
  road_type          NUMBER(2),
  road_distance      NUMBER(10,2),
  cre_user           VARCHAR2(32),
  cre_date           DATE,
  last_mod_user      VARCHAR2(32),
  last_mod_date      DATE,
  isactive           NUMBER(1),
  position           CLOB not null,
  road_status        INTEGER,
  description        VARCHAR2(500)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 8
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_ROAD
  is '道路表(三平台）';
-- Add comments to the columns 
comment on column BIS_ROAD.road_code
  is '道路代码';
comment on column BIS_ROAD.road_name
  is '道路名称';
comment on column BIS_ROAD.road_standard_type
  is '标准道路类型';
comment on column BIS_ROAD.road_adm_level
  is '公路行政等级';
comment on column BIS_ROAD.road_type
  is '道路类型';
comment on column BIS_ROAD.road_distance
  is '主线里程';
comment on column BIS_ROAD.cre_user
  is '创建人';
comment on column BIS_ROAD.cre_date
  is '创建时间';
comment on column BIS_ROAD.last_mod_user
  is '最后修改人';
comment on column BIS_ROAD.last_mod_date
  is '最后修改时间';
comment on column BIS_ROAD.isactive
  is '是否启用 1是0否';
comment on column BIS_ROAD.position
  is '道路坐标';
comment on column BIS_ROAD.road_status
  is '道路状态';
comment on column BIS_ROAD.description
  is '描述';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_ROAD
  add constraint PK_BIS_ROAD primary key (ROAD_CODE)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 320K
    next 1M
    minextents 1
    maxextents unlimited
  );

  -- Create table 辖区区域表
create table BIS_AREA
(
  area_code  VARCHAR2(20) not null,
  area_name  VARCHAR2(100) not null,
  coordinate CLOB,
  remark     NVARCHAR2(100),
  center     CLOB,
  short_name VARCHAR2(100)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_AREA
  is '所属辖区表';
-- Add comments to the columns 
comment on column BIS_AREA.area_code
  is '辖区编号';
comment on column BIS_AREA.area_name
  is '辖区名称';
comment on column BIS_AREA.coordinate
  is '辖区坐标';
comment on column BIS_AREA.remark
  is '备注';
comment on column BIS_AREA.center
  is '中心位置';
comment on column BIS_AREA.short_name
  is '辖区简称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_AREA
  add constraint PK_BIS_AREA primary key (AREA_CODE)
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
  
-- Create table 车道表
create table BIS_LANE
(
  lane_code         VARCHAR2(32) not null,
  crossing_code     VARCHAR2(20) not null,
  width             NUMBER(5,2),
  length            NUMBER(5,2),
  gradient          NUMBER(5,2),
  max_traffic       INTEGER,
  turn_left_radius  NUMBER(5,2),
  turn_right_radius NUMBER(5,2),
  through_rate      NUMBER(3,2),
  turnleft_rate     NUMBER(3,2),
  turnright_rate    NUMBER(3,2),
  approach_dir      INTEGER not null,
  lane_no           INTEGER,
  lane_type         INTEGER,
  quickroad_type    INTEGER,
  turn_left         INTEGER,
  through           INTEGER,
  turn_right        INTEGER,
  turn_around       INTEGER,
  bus_way           INTEGER,
  is_wait_area      INTEGER
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 8
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_LANE
  is '车道表';
-- Add comments to the columns 
comment on column BIS_LANE.lane_code
  is '车道编号';
comment on column BIS_LANE.crossing_code
  is '所属路口编号';
comment on column BIS_LANE.width
  is '宽度';
comment on column BIS_LANE.length
  is '长度';
comment on column BIS_LANE.gradient
  is '坡度';
comment on column BIS_LANE.max_traffic
  is '通行能力';
comment on column BIS_LANE.turn_left_radius
  is '左转弯半径';
comment on column BIS_LANE.turn_right_radius
  is '右转弯半径';
comment on column BIS_LANE.through_rate
  is '直行车流比例';
comment on column BIS_LANE.turnleft_rate
  is '左转弯车流比例';
comment on column BIS_LANE.turnright_rate
  is '右转弯车流比例';
comment on column BIS_LANE.approach_dir
  is '进口道方向，枚举6111';
comment on column BIS_LANE.lane_no
  is '车道号';
comment on column BIS_LANE.lane_type
  is '车道类型，枚举6112';
comment on column BIS_LANE.quickroad_type
  is '快速路位置类型';
comment on column BIS_LANE.turn_left
  is '左转车道';
comment on column BIS_LANE.through
  is '直行车道';
comment on column BIS_LANE.turn_right
  is '右转车道';
comment on column BIS_LANE.turn_around
  is '转弯半径';
comment on column BIS_LANE.bus_way
  is '公交车道';
comment on column BIS_LANE.is_wait_area
  is '是否有待转区1 有 0 无';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_LANE
  add constraint PK_BIS_LANE primary key (LANE_CODE, CROSSING_CODE, APPROACH_DIR)
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
  
  -- Create table 出口道表
create table BIS_EXIT_LANE
(
  exit_lane_code VARCHAR2(32) not null,
  crossing_code  VARCHAR2(20) not null,
  lane_no        INTEGER,
  exit_dir       INTEGER not null
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
-- Add comments to the table 
comment on table BIS_EXIT_LANE
  is '路口出口车道';
-- Add comments to the columns 
comment on column BIS_EXIT_LANE.exit_lane_code
  is '出口道编码';
comment on column BIS_EXIT_LANE.crossing_code
  is '路口编码';
comment on column BIS_EXIT_LANE.lane_no
  is '车道数';
comment on column BIS_EXIT_LANE.exit_dir
  is '出口方向';
-- Create/Recreate primary, unique and foreign key constraints 
alter table BIS_EXIT_LANE
  add constraint PK_EXIT_LANE_CODE primary key (EXIT_LANE_CODE, CROSSING_CODE, EXIT_DIR)
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

-- Create table  安装点地理信息表
create table MONITOR_POINT_GEOMETRY
(
  pointcode VARCHAR2(16),
  geometry  MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table MONITOR_POINT_GEOMETRY
  is '安装点地理信息表';
  

-- Create table 三平台路口地理信息表
create table BIS_CROSSING_GEOMETRY
(
  crossing_code VARCHAR2(20),
  geometry      MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_CROSSING_GEOMETRY
  is '三平台路口地理信息表';

  
-- Create table 三平台路段地理信息表
create table BIS_SECTION_GEOMETRY
(
  section_code VARCHAR2(20),
  geometry     MDSYS.SDO_GEOMETRY
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    next 1
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table BIS_SECTION_GEOMETRY
  is '三平台路段地理信息表';
  
  
  
  
  
alter table FACE_WARNING modify isactive default 0;

alter table FACE_LINE modify create_time default sysdate;

alter table FACE_AREA modify create_time default sysdate;


-- Drop columns 
alter table FACE_LINE_TRACE_SOURCE drop column computetime;

-- Drop columns 
alter table FACE_SECTION_TRACE_SOURCE drop column computetime;

-- Add/modify columns 
alter table FACE_CROSSING_CARTYPE add analys_time number;
-- Add comments to the columns 
comment on column FACE_CROSSING_CARTYPE.analys_time
  is '分析时间 1-早高峰 2-晚高峰';

-- Add comments to the columns 
comment on column FACE_LINE.line_model
  is '1信号计算入库/2通勤干线/3关键路段/6交通规律分析';
comment on column FACE_LINE.line_type
  is '60 拥堵干线 61协调干线 20通勤干道 30高速 31隧道 32桥梁';

create or replace view face_area_index_data_view as
select t.index_id,
       t.area_id,
       t.collect_time,
       (t.normalrate+t.jamrate+t.seriousrate) as jampercent,
       t.normallen+t.jamlen+t.seriouslen as  jamlength,
       t.transit_vehicle_num as onroadcarnum,
       t.low_freq_prop as lowfrequencycarper,
       t.taxi_prop as taxiper,
       t.ride_hailing_prop as carhailingper,
       t.parents_prop as shoppingcarper,
       t.shopping_prop as parentcarper,
       t.large_vehicle_prop as largecarper
  from face_area_index t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';
  

create or replace view face_area_index_view as
select t1.index_id,
       t1.area_id,
       t1.collect_time,
       case when nvl(t1.jampercent,0) >= (select to_number(param_value) from face_sysparam where param_code='JAM_INDEX')  then 1 else 0 end as isjam,
       t1.jampercent,
       t1.jamlength,
       t1.onroadcarnum,
       --(t2.jampercent-t1.jampercent)/t2.jampercent as jampercentchange,
       calculateratio(t1.jampercent,t2.jampercent,'--') as jampercentchange,
       --(t2.onroadcarnum-t1.onroadcarnum)/t2.onroadcarnum as onroadcarnumchange,
       calculateratio(t1.onroadcarnum,t2.onroadcarnum,'--') as onroadcarnumchange,
       t1.lowfrequencycarper,
       --(t2.lowfrequencycarper-t1.lowfrequencycarper)/t2.lowfrequencycarper as lowfrequencycarperchange,
       calculateratio(t1.lowfrequencycarper,t2.lowfrequencycarper,'--') as lowfrequencycarperchange,
       t1.taxiper,
       --(t2.taxiper-t1.taxiper)/t2.taxiper as taxiperchange,
       calculateratio(t1.taxiper,t2.taxiper,'--') as taxiperchange,
       t1.carhailingper,
       --(t2.carhailingper-t1.carhailingper)/t2.carhailingper as carhailingperchange,
       calculateratio(t1.carhailingper,t2.carhailingper,'--') as carhailingperchange,
       t1.shoppingcarper,
       --(t2.shoppingcarper-t1.shoppingcarper)/t2.shoppingcarper as shoppingcarperchange,
       calculateratio(t1.shoppingcarper,t2.shoppingcarper,'--') as shoppingcarperchange,
       t1.parentcarper,
       --(t2.parentcarper-t1.parentcarper)/t2.parentcarper as parentcarperchange,
       calculateratio(t1.parentcarper,t2.parentcarper,'--') as parentcarperchange,
       t1.largecarper,
       --(t2.largecarper-t1.largecarper)/t2.largecarper as largecarperchange
       calculateratio(t1.largecarper,t2.largecarper,'--') as largecarperchange
  from face_area_index_data_view t1 left join face_area_index_data_view t2 on t1.area_id=t2.area_id and t1.collect_time=t2.collect_time+7;
  
alter table FACE_LABELS modify LABEL_REG NVARCHAR2(100);

-- Add comments to the columns 
comment on column FACE_AREA.AREA_TYPE
  is '区域类型 枚举6106';
  
  
  
  -- Add/modify columns 
alter table FACE_MORNEVENPEAK_FORECAST add inserttime date;
-- Add comments to the columns 
comment on column FACE_MORNEVENPEAK_FORECAST.inserttime
  is '插入时间';
  
  ------------------------------A3------------
  -- equipment_info表中departmentid允许为空
alter table equipment_info  modify departmentid null;
alter table FACE_WARNING modify isactive default 1;
alter table FACE_INOUTCITY_CROSSING add constraint INOUTCITY_CROSSING_unique unique (CROSSING_CODE);
alter table FACE_JAMSECTION add direction VARCHAR2(1);
-- Add comments to the columns 
comment on column FACE_JAMSECTION.direction is '干线方向';
alter table FACE_JAMSECTION modify direction VARCHAR2(4);
-- Create table
create table face_warning_roles
(
  roleid    varchar2(32),
  lineid    varchar2(32) not null,
  role      varchar2(4000),
  threshold clob,
  isactive  number default 1
)
;
-- Add comments to the table 
comment on table face_warning_roles
  is '道路安全预警规则表';
-- Add comments to the columns 
comment on column face_warning_roles.roleid
  is 'uuid';
comment on column face_warning_roles.lineid
  is '线路编号';
comment on column face_warning_roles.role
  is '预警规则';
comment on column face_warning_roles.threshold
  is '阈值';
comment on column face_warning_roles.isactive
  is '1有效，0无效';
-- Add/modify columns 
alter table FACE_CROSS_DIR_INDEX modify index_id VARCHAR2(40);
-- Add/modify columns 
alter table FACE_SECTION_INDEX modify index_id VARCHAR2(40);
-- Add comments to the columns 
comment on column FACE_LINE.line_type
  is '10 拥堵干线 11协调干线 20通勤干道 30高速 31隧道 32桥梁';  

alter table FACE_QUESTION_TEMPLATE modify answer_id VARCHAR2(200);
alter table FACE_QUESTION_TEMPLATE modify keyword_group NVARCHAR2(200);
alter table FACE_QUESTION_PROMPT modify keyword NVARCHAR2(200);
alter table FACE_QUESTION_PROMPT modify prompt_question NVARCHAR2(300);
alter table FACE_QA_LOG modify sid VARCHAR2(100);
alter table FACE_QA_LOG modify question_user VARCHAR2(100);
alter table FACE_QA_LOG modify keywords NVARCHAR2(200);
alter table FACE_QA_LOG modify answer_id VARCHAR2(200);
/
CREATE OR REPLACE FUNCTION fn_getpy (p_str    IN VARCHAR2,
                                     p_flag      NUMBER DEFAULT NULL)
   RETURN VARCHAR2
AS
   v_compare   VARCHAR2 (4);
   v_return    VARCHAR2 (4000);
   v_length    INT := 0;
   v_substr    VARCHAR2 (4);

   FUNCTION fn_nlssort (p_word IN VARCHAR2)
      RETURN VARCHAR2
   AS
   BEGIN
      RETURN SUBSTR (NLSSORT (p_word, 'nls_sort=schinese_pinyin_m'), 1, 4);
   END fn_nlssort;
BEGIN
   IF p_str IS NULL
   THEN
      RETURN '';
   END IF;

   v_length := LENGTH (p_str);

   CASE p_flag
      WHEN 1
      THEN                                                              --全拼大写
         FOR i IN 1 .. v_length
         LOOP
            v_substr := SUBSTR (p_str, i, 1);
            v_compare := fn_nlssort (v_substr);

            CASE
               WHEN v_compare BETWEEN '3B29' AND '3B30'
               THEN
                  v_return := v_return || 'A';
               WHEN v_compare = '3B31'
               THEN
                  v_return := v_return || 'AES';
               WHEN v_compare BETWEEN '3B32' AND '3B9E'
               THEN
                  v_return := v_return || 'AI';
               WHEN v_compare BETWEEN '3BA0' AND '3BFE'
               THEN
                  v_return := v_return || 'AN';
               WHEN v_compare BETWEEN '3C01' AND '3C14'
               THEN
                  v_return := v_return || 'ANG';
               WHEN v_compare BETWEEN '3C15' AND '3C82'
               THEN
                  v_return := v_return || 'AO';
               WHEN v_compare BETWEEN '3C84' AND '3CE9'
               THEN
                  v_return := v_return || 'BA';
               WHEN v_compare BETWEEN '3CED' AND '3D1D'
               THEN
                  v_return := v_return || 'BAI';
               WHEN v_compare BETWEEN '3D20' AND '3D64'
               THEN
                  v_return := v_return || 'BAN';
               WHEN v_compare BETWEEN '3D66' AND '3DA2'
               THEN
                  v_return := v_return || 'BANG';
               WHEN v_compare BETWEEN '3DA4' AND '3E10'
               THEN
                  v_return := v_return || 'BAO';
               WHEN v_compare = '3E11'
               THEN
                  v_return := v_return || 'BE';
               WHEN v_compare BETWEEN '3E12' AND '3E7A'
               THEN
                  v_return := v_return || 'BEI';
               WHEN v_compare BETWEEN '3E7C' AND '3EA0'
               THEN
                  v_return := v_return || 'BEN';
               WHEN v_compare BETWEEN '3EA1' AND '3ED5'
               THEN
                  v_return := v_return || 'BENG';
               WHEN v_compare BETWEEN '3ED8' AND '3FE9'
               THEN
                  v_return := v_return || 'BI';
               WHEN v_compare BETWEEN '3FEA' AND '4055'
               THEN
                  v_return := v_return || 'BIAN';
               WHEN v_compare BETWEEN '4058' AND '40AE'
               THEN
                  v_return := v_return || 'BIAO';
               WHEN v_compare = '4060'
               THEN
                  v_return := v_return || 'BIA';
               WHEN v_compare BETWEEN '40B4' AND '40D4'
               THEN
                  v_return := v_return || 'BIE';
               WHEN v_compare BETWEEN '40D6' AND '4116'
               THEN
                  v_return := v_return || 'BIN';
               WHEN v_compare BETWEEN '4118' AND '4160'
               THEN
                  v_return := v_return || 'BING';
               WHEN v_compare BETWEEN '4161' AND '4224'
               THEN
                  v_return := v_return || 'BO';
               WHEN v_compare BETWEEN '4225' AND '427C'
               THEN
                  v_return := v_return || 'BU';
               WHEN v_compare BETWEEN '427D' AND '4289'
               THEN
                  v_return := v_return || 'CA';
               WHEN v_compare BETWEEN '428C' AND '42B5'
               THEN
                  v_return := v_return || 'CAI';
               WHEN v_compare BETWEEN '42B9' AND '430C'
               THEN
                  v_return := v_return || 'CAN';
               WHEN v_compare BETWEEN '430D' AND '4334'
               THEN
                  v_return := v_return || 'CANG';
               WHEN v_compare BETWEEN '4335' AND '435C'
               THEN
                  v_return := v_return || 'CAO';
               WHEN v_compare BETWEEN '435D' AND '438C'
               THEN
                  v_return := v_return || 'CE';
               WHEN v_compare BETWEEN '4390' AND '4398'
               THEN
                  v_return := v_return || 'CEN';
               WHEN v_compare BETWEEN '439D' AND '43AA'
               THEN
                  v_return := v_return || 'CENG';
               WHEN v_compare = '43AC'
               THEN
                  v_return := v_return || 'CEOK';
               WHEN v_compare = '43AE'
               THEN
                  v_return := v_return || 'CEOM';
               WHEN v_compare = '43B0'
               THEN
                  v_return := v_return || 'CEON';
               WHEN v_compare = '43B1'
               THEN
                  v_return := v_return || 'CEOR';
               WHEN v_compare BETWEEN '43B2' AND '440A'
               THEN
                  v_return := v_return || 'CHA';
               WHEN v_compare BETWEEN '440E' AND '442D'
               THEN
                  v_return := v_return || 'CHAI';
               WHEN v_compare BETWEEN '4431' AND '44E1'
               THEN
                  v_return := v_return || 'CHAN';
               WHEN v_compare BETWEEN '44E4' AND '4552'
               THEN
                  v_return := v_return || 'CHANG';
               WHEN v_compare BETWEEN '4554' AND '458E'
               THEN
                  v_return := v_return || 'CHAO';
               WHEN v_compare BETWEEN '4590' AND '45C8'
               THEN
                  v_return := v_return || 'CHE';
               WHEN v_compare BETWEEN '45C9' AND '463D'
               THEN
                  v_return := v_return || 'CHEN';
               WHEN v_compare BETWEEN '463E' AND '46CD'
               THEN
                  v_return := v_return || 'CHENG';
               WHEN v_compare BETWEEN '46CE' AND '47A6'
               THEN
                  v_return := v_return || 'CHI';
               WHEN v_compare BETWEEN '47A8' AND '47EC'
               THEN
                  v_return := v_return || 'CHONG';
               WHEN v_compare BETWEEN '47ED' AND '484C'
               THEN
                  v_return := v_return || 'CHOU';
               WHEN v_compare BETWEEN '484D' AND '48E2'
               THEN
                  v_return := v_return || 'CHU';
               WHEN v_compare BETWEEN '48E9' AND '48F4'
               THEN
                  v_return := v_return || 'CHUAI';
               WHEN v_compare BETWEEN '48F6' AND '4924'
               THEN
                  v_return := v_return || 'CHUAN';
               WHEN v_compare BETWEEN '4925' AND '4951'
               THEN
                  v_return := v_return || 'CHUANG';
               WHEN v_compare BETWEEN '4954' AND '496E'
               THEN
                  v_return := v_return || 'CHUI';
               WHEN v_compare BETWEEN '4971' AND '49C6'
               THEN
                  v_return := v_return || 'CHUN';
               WHEN v_compare BETWEEN '49C8' AND '49EA'
               THEN
                  v_return := v_return || 'CHUO';
               WHEN v_compare BETWEEN '49EC' AND '4A4A'
               THEN
                  v_return := v_return || 'CI';
               WHEN v_compare = '4A50'
               THEN
                  v_return := v_return || 'CIS';
               WHEN v_compare BETWEEN '4A51' AND '4AB2'
               THEN
                  v_return := v_return || 'CONG';
               WHEN v_compare BETWEEN '4AB4' AND '4ABA'
               THEN
                  v_return := v_return || 'COU';
               WHEN v_compare BETWEEN '4ABC' AND '4AEA'
               THEN
                  v_return := v_return || 'CU';
               WHEN v_compare BETWEEN '4AEE' AND '4B0C'
               THEN
                  v_return := v_return || 'CUAN';
               WHEN v_compare BETWEEN '4B0D' AND '4B56'
               THEN
                  v_return := v_return || 'CUI';
               WHEN v_compare BETWEEN '4B59' AND '4B6C'
               THEN
                  v_return := v_return || 'CUN';
               WHEN v_compare BETWEEN '4B70' AND '4BA9'
               THEN
                  v_return := v_return || 'CUO';
               WHEN v_compare BETWEEN '4BAD' AND '4BFE'
               THEN
                  v_return := v_return || 'DA';
               WHEN v_compare BETWEEN '4C00' AND '4C4E'
               THEN
                  v_return := v_return || 'DAI';
               WHEN v_compare BETWEEN '4C50' AND '4CDC'
               THEN
                  v_return := v_return || 'DAN';
               WHEN v_compare BETWEEN '4CDE' AND '4D26'
               THEN
                  v_return := v_return || 'DANG';
               WHEN v_compare BETWEEN '4D28' AND '4D76'
               THEN
                  v_return := v_return || 'DAO';
               WHEN v_compare BETWEEN '4D7E' AND '4D8D'
               THEN
                  v_return := v_return || 'DE';
               WHEN v_compare = '4D8E'
               THEN
                  v_return := v_return || 'DEM';
               WHEN v_compare BETWEEN '4D90' AND '4D91'
               THEN
                  v_return := v_return || 'DEN';
               WHEN v_compare BETWEEN '4D94' AND '4DC0'
               THEN
                  v_return := v_return || 'DENG';
               WHEN v_compare BETWEEN '4DC4' AND '4E8A'
               THEN
                  v_return := v_return || 'DI';
               WHEN v_compare = '4E8C'
               THEN
                  v_return := v_return || 'DIA';
               WHEN v_compare BETWEEN '4E8D' AND '4EE8'
               THEN
                  v_return := v_return || 'DIAN';
               WHEN v_compare BETWEEN '4EE9' AND '4F38'
               THEN
                  v_return := v_return || 'DIAO';
               WHEN v_compare BETWEEN '4F39' AND '4F90'
               THEN
                  v_return := v_return || 'DIE';
               WHEN v_compare = '4F8D'
               THEN
                  v_return := v_return || 'DEI';
               WHEN v_compare = '4F91'
               THEN
                  v_return := v_return || 'DIM';
               WHEN v_compare BETWEEN '4F92' AND '4FCD'
               THEN
                  v_return := v_return || 'DING';
               WHEN v_compare BETWEEN '4FCD' AND '4FD4'
               THEN
                  v_return := v_return || 'DIU';
               WHEN v_compare BETWEEN '4FD5' AND '5032'
               THEN
                  v_return := v_return || 'DONG';
               WHEN v_compare BETWEEN '5034' AND '507C'
               THEN
                  v_return := v_return || 'DOU';
               WHEN v_compare = '5044'
               THEN
                  v_return := v_return || 'DUL';
               WHEN v_compare BETWEEN '507E' AND '50E9'
               THEN
                  v_return := v_return || 'DU';
               WHEN v_compare BETWEEN '50EA' AND '5110'
               THEN
                  v_return := v_return || 'DUAN';
               WHEN v_compare BETWEEN '5114' AND '514E'
               THEN
                  v_return := v_return || 'DUI';
               WHEN v_compare BETWEEN '5152' AND '518D'
               THEN
                  v_return := v_return || 'DUN';
               WHEN v_compare = '5160'
               THEN
                  v_return := v_return || 'TON';
               WHEN v_compare BETWEEN '518E' AND '5200'
               THEN
                  v_return := v_return || 'DUO';
               WHEN v_compare BETWEEN '5205' AND '52C2'
               THEN
                  v_return := v_return || 'E';
               WHEN v_compare BETWEEN '52C4' AND '52CD'
               THEN
                  v_return := v_return || 'EN';
               WHEN v_compare = '52D4'
               THEN
                  v_return := v_return || 'ENG';
               WHEN v_compare = '52D5'
               THEN
                  v_return := v_return || 'EO';
               WHEN v_compare = '52D6'
               THEN
                  v_return := v_return || 'EOL';
               WHEN v_compare = '52D8'
               THEN
                  v_return := v_return || 'EOS';
               WHEN v_compare BETWEEN '52D9' AND '5332'
               THEN
                  v_return := v_return || 'ER';
               WHEN v_compare BETWEEN '5334' AND '5366'
               THEN
                  v_return := v_return || 'FA';
               WHEN v_compare BETWEEN '536A' AND '53FA'
               THEN
                  v_return := v_return || 'FAN';
               WHEN v_compare BETWEEN '53FD' AND '5438'
               THEN
                  v_return := v_return || 'FANG';
               WHEN v_compare BETWEEN '5439' AND '54B2'
               THEN
                  v_return := v_return || 'FEI';
               WHEN v_compare BETWEEN '54B4' AND '5528'
               THEN
                  v_return := v_return || 'FEN';
               WHEN v_compare BETWEEN '5529' AND '55A9'
               THEN
                  v_return := v_return || 'FENG';
               WHEN v_compare BETWEEN '55AA' AND '55AE'
               THEN
                  v_return := v_return || 'FO';
               WHEN v_compare BETWEEN '55B1' AND '55BC'
               THEN
                  v_return := v_return || 'FOU';
               WHEN v_compare BETWEEN '55BD' AND '5739'
               THEN
                  v_return := v_return || 'FU';
               WHEN v_compare = '569D'
               THEN
                  v_return := v_return || 'M';
               WHEN v_compare BETWEEN '573C' AND '574C'
               THEN
                  v_return := v_return || 'GA';
               WHEN v_compare BETWEEN '574D' AND '578C'
               THEN
                  v_return := v_return || 'GAI';
               WHEN v_compare BETWEEN '578D' AND '57F0'
               THEN
                  v_return := v_return || 'GAN';
               WHEN v_compare BETWEEN '57F1' AND '582C'
               THEN
                  v_return := v_return || 'GANG';
               WHEN v_compare BETWEEN '582E' AND '5884'
               THEN
                  v_return := v_return || 'GAO';
               WHEN v_compare BETWEEN '5885' AND '5905'
               THEN
                  v_return := v_return || 'GE';
               WHEN v_compare = '5906'
               THEN
                  v_return := v_return || 'GEI';
               WHEN v_compare BETWEEN '5909' AND '5915'
               THEN
                  v_return := v_return || 'GEN';
               WHEN v_compare BETWEEN '5918' AND '594E'
               THEN
                  v_return := v_return || 'GENG';
               WHEN v_compare = '5956'
               THEN
                  v_return := v_return || 'GIB';
               WHEN v_compare = '5958'
               THEN
                  v_return := v_return || 'Go';
               WHEN v_compare BETWEEN '5959' AND '59BA'
               THEN
                  v_return := v_return || 'GONG';
               WHEN v_compare BETWEEN '59BD' AND '5A0E'
               THEN
                  v_return := v_return || 'GOU';
               WHEN v_compare BETWEEN '5A10' AND '5AB2'
               THEN
                  v_return := v_return || 'GU';
               WHEN v_compare BETWEEN '5AB4' AND '5AE8'
               THEN
                  v_return := v_return || 'GUA';
               WHEN v_compare BETWEEN '5AE9' AND '5AF8'
               THEN
                  v_return := v_return || 'GUAI';
               WHEN v_compare BETWEEN '5AFD' AND '5B5E'
               THEN
                  v_return := v_return || 'GUAN';
               WHEN v_compare BETWEEN '5B60' AND '5B8C'
               THEN
                  v_return := v_return || 'GUANG';
               WHEN v_compare BETWEEN '5B8D' AND '5C2E'
               THEN
                  v_return := v_return || 'GUI';
               WHEN v_compare = '5BC8'
               THEN
                  v_return := v_return || 'KWI';
               WHEN v_compare BETWEEN '5C30' AND '5C58'
               THEN
                  v_return := v_return || 'GUN';
               WHEN v_compare BETWEEN '5C51' AND '5CB6'
               THEN
                  v_return := v_return || 'GUO';
               WHEN v_compare BETWEEN '5CB8' AND '5CBD'
               THEN
                  v_return := v_return || 'HA';
               WHEN v_compare BETWEEN '5CC6' AND '5CEC'
               THEN
                  v_return := v_return || 'HAI';
               WHEN v_compare = '5CED'
               THEN
                  v_return := v_return || 'HAL';
               WHEN v_compare BETWEEN '5CEE' AND '5D99'
               THEN
                  v_return := v_return || 'HAN';
               WHEN v_compare BETWEEN '5D9D' AND '5DBC'
               THEN
                  v_return := v_return || 'HANG';
               WHEN v_compare BETWEEN '5DBE' AND '5E20'
               THEN
                  v_return := v_return || 'HAO';
               WHEN v_compare = '5E02'
               THEN
                  v_return := v_return || 'HO';
               WHEN v_compare BETWEEN '5E22' AND '5EC5'
               THEN
                  v_return := v_return || 'HE';
               WHEN v_compare BETWEEN '5EC6' AND '5ECE'
               THEN
                  v_return := v_return || 'HEI';
               WHEN v_compare BETWEEN '5ED0' AND '5EDC'
               THEN
                  v_return := v_return || 'HEN';
               WHEN v_compare BETWEEN '5EDD' AND '5EDC'
               THEN
                  v_return := v_return || 'HENG';
               WHEN v_compare = '5F04'
               THEN
                  v_return := v_return || 'HOL';
               WHEN v_compare BETWEEN '5F05' AND '5F8D'
               THEN
                  v_return := v_return || 'HONG';
               WHEN v_compare BETWEEN '5F8E' AND '5FD2'
               THEN
                  v_return := v_return || 'HOU';
               WHEN v_compare BETWEEN '5FD4' AND '60B1'
               THEN
                  v_return := v_return || 'HU';
               WHEN v_compare BETWEEN '60B2' AND '6111'
               THEN
                  v_return := v_return || 'HUA';
               WHEN v_compare BETWEEN '6112' AND '612D'
               THEN
                  v_return := v_return || 'HUAI';
               WHEN v_compare BETWEEN '612E' AND '61C6'
               THEN
                  v_return := v_return || 'HUAN';
               WHEN v_compare BETWEEN '61CA' AND '624A'
               THEN
                  v_return := v_return || 'HUANG';
               WHEN v_compare BETWEEN '624C' AND '6344'
               THEN
                  v_return := v_return || 'HUI';
               WHEN v_compare BETWEEN '6346' AND '6388'
               THEN
                  v_return := v_return || 'HUN';
               WHEN v_compare BETWEEN '638C' AND '63FA'
               THEN
                  v_return := v_return || 'HUO';
               WHEN v_compare = '63FD'
               THEN
                  v_return := v_return || 'HWA';
               WHEN v_compare BETWEEN '63FE' AND '6601'
               THEN
                  v_return := v_return || 'JI';
               WHEN v_compare BETWEEN '6604' AND '6691'
               THEN
                  v_return := v_return || 'JIA';
               WHEN v_compare BETWEEN '6692' AND '67F8'
               THEN
                  v_return := v_return || 'JIAN';
               WHEN v_compare BETWEEN '67F9' AND '6860'
               THEN
                  v_return := v_return || 'JIANG';
               WHEN v_compare BETWEEN '6862' AND '6930'
               THEN
                  v_return := v_return || 'JIAO';
               WHEN v_compare BETWEEN '6931' AND '6A18'
               THEN
                  v_return := v_return || 'JIE';
               WHEN v_compare BETWEEN '6A1A' AND '6AC9'
               THEN
                  v_return := v_return || 'JIN';
               WHEN v_compare BETWEEN '6ACA' AND '6B65'
               THEN
                  v_return := v_return || 'JING';
               WHEN v_compare BETWEEN '6B66' AND '6B9A'
               THEN
                  v_return := v_return || 'JIONG';
               WHEN v_compare BETWEEN '6B9C' AND '6C0C'
               THEN
                  v_return := v_return || 'JIU';
               WHEN v_compare = '6C0D'
               THEN
                  v_return := v_return || 'JOU';
               WHEN v_compare BETWEEN '6C0E' AND '6D2A'
               THEN
                  v_return := v_return || 'JU';
               WHEN v_compare BETWEEN '6D2D' AND '6D80'
               THEN
                  v_return := v_return || 'JUAN';
               WHEN v_compare BETWEEN '6D82' AND '6E28'
               THEN
                  v_return := v_return || 'JUE';
               WHEN v_compare BETWEEN '6E2A' AND '6E85'
               THEN
                  v_return := v_return || 'JUN';
               WHEN v_compare BETWEEN '6E86' AND '6E92'
               THEN
                  v_return := v_return || 'KA';
               WHEN v_compare BETWEEN '6E94' AND '6EC9'
               THEN
                  v_return := v_return || 'KAI';
               WHEN v_compare = '6ECC'
               THEN
                  v_return := v_return || 'KAL';
               WHEN v_compare BETWEEN '6ECD' AND '6F00'
               THEN
                  v_return := v_return || 'KAN';
               WHEN v_compare BETWEEN '6F02' AND '6F30'
               THEN
                  v_return := v_return || 'KANG';
               WHEN v_compare BETWEEN '6F31' AND '6F4D'
               THEN
                  v_return := v_return || 'KAO';
               WHEN v_compare BETWEEN '6F50' AND '6FC8'
               THEN
                  v_return := v_return || 'KE';
               WHEN v_compare BETWEEN '6FC9' AND '6FDA'
               THEN
                  v_return := v_return || 'KEN';
               WHEN v_compare BETWEEN '6FDC' AND '6FF5'
               THEN
                  v_return := v_return || 'KENG';
               WHEN v_compare = '6FFC'
               THEN
                  v_return := v_return || 'KI';
               WHEN v_compare BETWEEN '6FFD' AND '7016'
               THEN
                  v_return := v_return || 'KONG';
               WHEN v_compare = '7018'
               THEN
                  v_return := v_return || 'KOS';
               WHEN v_compare BETWEEN '7019' AND '703E'
               THEN
                  v_return := v_return || 'KOU';
               WHEN v_compare BETWEEN '7041' AND '707A'
               THEN
                  v_return := v_return || 'KU';
               WHEN v_compare BETWEEN '707C' AND '7095'
               THEN
                  v_return := v_return || 'KUA';
               WHEN v_compare BETWEEN '709A' AND '70C1'
               THEN
                  v_return := v_return || 'KUAI';
               WHEN v_compare BETWEEN '70C2' AND '70D4'
               THEN
                  v_return := v_return || 'KUAN';
               WHEN v_compare BETWEEN '70D8' AND '7128'
               THEN
                  v_return := v_return || 'KUANG';
               WHEN v_compare BETWEEN '7129' AND '71B1'
               THEN
                  v_return := v_return || 'KUI';
               WHEN v_compare BETWEEN '71B2' AND '71FE'
               THEN
                  v_return := v_return || 'KUN';
               WHEN v_compare BETWEEN '7200' AND '7226'
               THEN
                  v_return := v_return || 'KUO';
               WHEN v_compare = '7228'
               THEN
                  v_return := v_return || 'KWEOK';
               WHEN v_compare BETWEEN '722C' AND '726A'
               THEN
                  v_return := v_return || 'LA';
               WHEN v_compare BETWEEN '726C' AND '72B5'
               THEN
                  v_return := v_return || 'LAI';
               WHEN v_compare BETWEEN '72B9' AND '733C'
               THEN
                  v_return := v_return || 'LAN';
               WHEN v_compare BETWEEN '733D' AND '7388'
               THEN
                  v_return := v_return || 'LANG';
               WHEN v_compare BETWEEN '7389' AND '73E5'
               THEN
                  v_return := v_return || 'LAO';
               WHEN v_compare BETWEEN '73E8' AND '7402'
               THEN
                  v_return := v_return || 'LE';
               WHEN v_compare BETWEEN '7404' AND '7485'
               THEN
                  v_return := v_return || 'LEI';
               WHEN v_compare BETWEEN '7488' AND '7499'
               THEN
                  v_return := v_return || 'LENG';
               WHEN v_compare BETWEEN '749C' AND '7642'
               THEN
                  v_return := v_return || 'LI';
               WHEN v_compare BETWEEN '7644' AND '7645'
               THEN
                  v_return := v_return || 'LIA';
               WHEN v_compare BETWEEN '7646' AND '76EC'
               THEN
                  v_return := v_return || 'LIAN';
               WHEN v_compare BETWEEN '76ED' AND '7731'
               THEN
                  v_return := v_return || 'LIANG';
               WHEN v_compare BETWEEN '7732' AND '7794'
               THEN
                  v_return := v_return || 'LIAO';
               WHEN v_compare BETWEEN '7795' AND '77E2'
               THEN
                  v_return := v_return || 'LIE';
               WHEN v_compare BETWEEN '77E4' AND '785D'
               THEN
                  v_return := v_return || 'LIN';
               WHEN v_compare = '77EA'
               THEN
                  v_return := v_return || 'LEN';
               WHEN v_compare BETWEEN '7860' AND '7904'
               THEN
                  v_return := v_return || 'LING';
               WHEN v_compare BETWEEN '7905' AND '7986'
               THEN
                  v_return := v_return || 'LIU';
               WHEN v_compare BETWEEN '7988' AND '7989'
               THEN
                  v_return := v_return || 'LO';
               WHEN v_compare BETWEEN '798A' AND '79FD'
               THEN
                  v_return := v_return || 'LONG';
               WHEN v_compare BETWEEN '79FE' AND '7A49'
               THEN
                  v_return := v_return || 'LOU';
               WHEN v_compare BETWEEN '7A4C' AND '7B4D'
               THEN
                  v_return := v_return || 'LU';
               WHEN v_compare BETWEEN '7B4E' AND '7B80'
               THEN
                  v_return := v_return || 'LUAN';
               WHEN v_compare BETWEEN '7B81' AND '7BB2'
               THEN
                  v_return := v_return || 'LUN';
               WHEN v_compare BETWEEN '7BB5' AND '7C25'
               THEN
                  v_return := v_return || 'LUO';
               WHEN v_compare BETWEEN '7C26' AND '7C82'
               THEN
                  v_return := v_return || 'LV';
               WHEN v_compare BETWEEN '7C84' AND '7C98'
               THEN
                  v_return := v_return || 'LUE';
               WHEN v_compare BETWEEN '7C9C' AND '7CE4'
               THEN
                  v_return := v_return || 'MA';
               WHEN v_compare BETWEEN '7CE5' AND '7DOC'
               THEN
                  v_return := v_return || 'MAI';
               WHEN v_compare BETWEEN '7D11' AND '7D6E'
               THEN
                  v_return := v_return || 'MAN';
               WHEN v_compare BETWEEN '7D70' AND '7DA9'
               THEN
                  v_return := v_return || 'MANG';
               WHEN v_compare BETWEEN '7DAC' AND '7E15'
               THEN
                  v_return := v_return || 'MAO';
               WHEN v_compare = '7E0C'
               THEN
                  v_return := v_return || 'Q';
               WHEN v_compare BETWEEN '7E18' AND '7E1E'
               THEN
                  v_return := v_return || 'ME';
               WHEN v_compare BETWEEN '7E20' AND '7E9A'
               THEN
                  v_return := v_return || 'MEI';
               WHEN v_compare BETWEEN '7E9D' AND '7EC1'
               THEN
                  v_return := v_return || 'MEN';
               WHEN v_compare BETWEEN '7EC2' AND '7F36'
               THEN
                  v_return := v_return || 'MENG';
               WHEN v_compare = '7F38'
               THEN
                  v_return := v_return || 'MEO';
               WHEN v_compare BETWEEN '7F39' AND '7FE4'
               THEN
                  v_return := v_return || 'MI';
               WHEN v_compare BETWEEN '7FE6' AND '8034'
               THEN
                  v_return := v_return || 'MIAN';
               WHEN v_compare BETWEEN '8035' AND '805A'
               THEN
                  v_return := v_return || 'MIAO';
               WHEN v_compare BETWEEN '805C' AND '8081'
               THEN
                  v_return := v_return || 'MIE';
               WHEN v_compare BETWEEN '8084' AND '80E4'
               THEN
                  v_return := v_return || 'MIN';
               WHEN v_compare = '8096'
               THEN
                  v_return := v_return || 'LEM';
               WHEN v_compare BETWEEN '80E5' AND '8116'
               THEN
                  v_return := v_return || 'MING';
               WHEN v_compare BETWEEN '8119' AND '811D'
               THEN
                  v_return := v_return || 'MIU';
               WHEN v_compare BETWEEN '811E' AND '81A9'
               THEN
                  v_return := v_return || 'MO';
               WHEN v_compare BETWEEN '81AC' AND '81CC'
               THEN
                  v_return := v_return || 'MOU';
               WHEN v_compare BETWEEN '81CD' AND '821E'
               THEN
                  v_return := v_return || 'MU';
               WHEN v_compare = '8220'
               THEN
                  v_return := v_return || 'MYEO';
               WHEN v_compare = '8221'
               THEN
                  v_return := v_return || 'MYEON';
               WHEN v_compare = '8222'
               THEN
                  v_return := v_return || 'MYEONG';
               WHEN v_compare BETWEEN '8224' AND '8258'
               THEN
                  v_return := v_return || 'NA';
               WHEN v_compare BETWEEN '825D' AND '8285'
               THEN
                  v_return := v_return || 'NAI';
               WHEN v_compare BETWEEN '8289' AND '82B5'
               THEN
                  v_return := v_return || 'NAN';
               WHEN v_compare BETWEEN '82B9' AND '82D0'
               THEN
                  v_return := v_return || 'NANG';
               WHEN v_compare BETWEEN '82D1' AND '8311'
               THEN
                  v_return := v_return || 'NAO';
               WHEN v_compare BETWEEN '8312' AND '8320'
               THEN
                  v_return := v_return || 'NE';
               WHEN v_compare BETWEEN '8322' AND '8331'
               THEN
                  v_return := v_return || 'NEI';
               WHEN v_compare = '8334'
               THEN
                  v_return := v_return || 'NEM';
               WHEN v_compare = '8336'
               THEN
                  v_return := v_return || 'NEN';
               WHEN v_compare = '8339'
               THEN
                  v_return := v_return || 'NENG';
               WHEN v_compare = '833E'
               THEN
                  v_return := v_return || 'NEUS';
               WHEN v_compare = '8342'
               THEN
                  v_return := v_return || 'NGAG';
               WHEN v_compare = '8344'
               THEN
                  v_return := v_return || 'NGAI';
               WHEN v_compare = '8345'
               THEN
                  v_return := v_return || 'NGAM';
               WHEN v_compare BETWEEN '8346' AND '83B9'
               THEN
                  v_return := v_return || 'NI';
               WHEN v_compare BETWEEN '83BC' AND '83ED'
               THEN
                  v_return := v_return || 'NIAN';
               WHEN v_compare BETWEEN '83EE' AND '83F5'
               THEN
                  v_return := v_return || 'NIANG';
               WHEN v_compare BETWEEN '83F8' AND '8414'
               THEN
                  v_return := v_return || 'NIAO';
               WHEN v_compare BETWEEN '8415' AND '8478'
               THEN
                  v_return := v_return || 'NIE';
               WHEN v_compare BETWEEN '8479' AND '8480'
               THEN
                  v_return := v_return || 'NIN';
               WHEN v_compare BETWEEN '8481' AND '84B4'
               THEN
                  v_return := v_return || 'NING';
               WHEN v_compare BETWEEN '84B5' AND '84D1'
               THEN
                  v_return := v_return || 'NIU';
               WHEN v_compare BETWEEN '84D4' AND '84FA'
               THEN
                  v_return := v_return || 'NONG';
               WHEN v_compare = '84E8'
               THEN
                  v_return := v_return || 'NUNG';
               WHEN v_compare BETWEEN '84FD' AND '850E'
               THEN
                  v_return := v_return || 'NOU';
               WHEN v_compare BETWEEN '8511' AND '8522'
               THEN
                  v_return := v_return || 'NU';
               WHEN v_compare BETWEEN '8524' AND '852C'
               THEN
                  v_return := v_return || 'NUAN';
               WHEN v_compare = '852D'
               THEN
                  v_return := v_return || 'NUN';
               WHEN v_compare BETWEEN '8530' AND '8559'
               THEN
                  v_return := v_return || 'NUO';
               WHEN v_compare BETWEEN '855A' AND '8566'
               THEN
                  v_return := v_return || 'NV';
               WHEN v_compare BETWEEN '856D' AND '8574'
               THEN
                  v_return := v_return || 'NUE';
               WHEN v_compare = '8575'
               THEN
                  v_return := v_return || 'O';
               WHEN v_compare = '8579'
               THEN
                  v_return := v_return || 'OES';
               WHEN v_compare = '857A'
               THEN
                  v_return := v_return || 'OL';
               WHEN v_compare = '857C'
               THEN
                  v_return := v_return || 'ON';
               WHEN v_compare BETWEEN '857D' AND '85AE'
               THEN
                  v_return := v_return || 'OU';
               WHEN v_compare BETWEEN '85B1' AND '85C9'
               THEN
                  v_return := v_return || 'PA';
               WHEN v_compare BETWEEN '85CA' AND '85E4'
               THEN
                  v_return := v_return || 'PAI';
               WHEN v_compare = '85E5'
               THEN
                  v_return := v_return || 'PAK';
               WHEN v_compare BETWEEN '85E8' AND '8625'
               THEN
                  v_return := v_return || 'PAN';
               WHEN v_compare BETWEEN '8626' AND '8658'
               THEN
                  v_return := v_return || 'PANG';
               WHEN v_compare BETWEEN '8659' AND '8688'
               THEN
                  v_return := v_return || 'PAO';
               WHEN v_compare BETWEEN '868A' AND '86C5'
               THEN
                  v_return := v_return || 'PEI';
               WHEN v_compare BETWEEN '86C8' AND '86D6'
               THEN
                  v_return := v_return || 'PEN';
               WHEN v_compare BETWEEN '86D8' AND '8740'
               THEN
                  v_return := v_return || 'PENG';
               WHEN v_compare = '8741'
               THEN
                  v_return := v_return || 'PEOL';
               WHEN v_compare = '8742'
               THEN
                  v_return := v_return || 'PHAS';
               WHEN v_compare = '8744'
               THEN
                  v_return := v_return || 'PHDENG';
               WHEN v_compare = '8745'
               THEN
                  v_return := v_return || 'PHOI';
               WHEN v_compare = '8746'
               THEN
                  v_return := v_return || 'PHOS';
               WHEN v_compare BETWEEN '8748' AND '880D'
               THEN
                  v_return := v_return || 'PI';
               WHEN v_compare BETWEEN '880E' AND '883A'
               THEN
                  v_return := v_return || 'PIAN';
               WHEN v_compare BETWEEN '883C' AND '8869'
               THEN
                  v_return := v_return || 'PIAO';
               WHEN v_compare BETWEEN '886D' AND '8879'
               THEN
                  v_return := v_return || 'PIE';
               WHEN v_compare BETWEEN '887A' AND '88A0'
               THEN
                  v_return := v_return || 'PIN';
               WHEN v_compare BETWEEN '88A1' AND '88EC'
               THEN
                  v_return := v_return || 'PING';
               WHEN v_compare BETWEEN '88F0' AND '8938'
               THEN
                  v_return := v_return || 'PO';
               WHEN v_compare BETWEEN '893E' AND '8958'
               THEN
                  v_return := v_return || 'POU';
               WHEN v_compare BETWEEN '895A' AND '895C'
               THEN
                  v_return := v_return || 'PPUN';
               WHEN v_compare BETWEEN '895D' AND '89C4'
               THEN
                  v_return := v_return || 'PU';
               WHEN v_compare BETWEEN '89C5' AND '8B3E'
               THEN
                  v_return := v_return || 'QI';
               WHEN v_compare BETWEEN '8B41' AND '8B61'
               THEN
                  v_return := v_return || 'QIA';
               WHEN v_compare BETWEEN '8B62' AND '8C54'
               THEN
                  v_return := v_return || 'QIAN';
               WHEN v_compare BETWEEN '8C5A' AND '8CB4'
               THEN
                  v_return := v_return || 'QIANG';
               WHEN v_compare BETWEEN '8CB8' AND '8D3D'
               THEN
                  v_return := v_return || 'QIAO';
               WHEN v_compare BETWEEN '8D40' AND '8D7E'
               THEN
                  v_return := v_return || 'QIE';
               WHEN v_compare BETWEEN '8D81' AND '8DFA'
               THEN
                  v_return := v_return || 'QIN';
               WHEN v_compare BETWEEN '8DFC' AND '8E5D'
               THEN
                  v_return := v_return || 'QING';
               WHEN v_compare BETWEEN '8E5E' AND '8E98'
               THEN
                  v_return := v_return || 'QIONG';
               WHEN v_compare BETWEEN '8E9A' AND '8F2A'
               THEN
                  v_return := v_return || 'QIU';
               WHEN v_compare BETWEEN '8F2E' AND '8FE9'
               THEN
                  v_return := v_return || 'QU';
               WHEN v_compare BETWEEN '8FEA' AND '905D'
               THEN
                  v_return := v_return || 'QUAN';
               WHEN v_compare BETWEEN '905E' AND '9099'
               THEN
                  v_return := v_return || 'QUE';
               WHEN v_compare BETWEEN '909A' AND '90AA'
               THEN
                  v_return := v_return || 'QUN';
               WHEN v_compare BETWEEN '90B0' AND '90B1'
               THEN
                  v_return := v_return || 'RA';
               WHEN v_compare = '90B2'
               THEN
                  v_return := v_return || 'RAM';
               WHEN v_compare BETWEEN '90B4' AND '90E5'
               THEN
                  v_return := v_return || 'RAN';
               WHEN v_compare BETWEEN '90E6' AND '9104'
               THEN
                  v_return := v_return || 'RANG';
               WHEN v_compare BETWEEN '9105' AND '911C'
               THEN
                  v_return := v_return || 'RAO';
               WHEN v_compare BETWEEN '911D' AND '9120'
               THEN
                  v_return := v_return || 'RE';
               WHEN v_compare BETWEEN '9121' AND '9180'
               THEN
                  v_return := v_return || 'REN';
               WHEN v_compare BETWEEN '9181' AND '918D'
               THEN
                  v_return := v_return || 'RENG';
               WHEN v_compare BETWEEN '918E' AND '9196'
               THEN
                  v_return := v_return || 'RI';
               WHEN v_compare BETWEEN '9189' AND '91F1'
               THEN
                  v_return := v_return || 'RONG';
               WHEN v_compare BETWEEN '91F2' AND '9218'
               THEN
                  v_return := v_return || 'ROU';
               WHEN v_compare BETWEEN '9219' AND '9269'
               THEN
                  v_return := v_return || 'RU';
               WHEN v_compare BETWEEN '926C' AND '9292'
               THEN
                  v_return := v_return || 'RUAN';
               WHEN v_compare BETWEEN '9294' AND '92BD'
               THEN
                  v_return := v_return || 'RUI';
               WHEN v_compare BETWEEN '92BE' AND '92C9'
               THEN
                  v_return := v_return || 'RUN';
               WHEN v_compare = '92CA'
               THEN
                  v_return := v_return || 'RUA';
               WHEN v_compare BETWEEN '92CA' AND '92E4'
               THEN
                  v_return := v_return || 'RUO';
               WHEN v_compare BETWEEN '92E5' AND '9309'
               THEN
                  v_return := v_return || 'SA';
               WHEN v_compare = '930A'
               THEN
                  v_return := v_return || 'SAENG';
               WHEN v_compare BETWEEN '930C' AND '9325'
               THEN
                  v_return := v_return || 'SAI';
               WHEN v_compare = '9328'
               THEN
                  v_return := v_return || 'SAL';
               WHEN v_compare BETWEEN '9329' AND '9355'
               THEN
                  v_return := v_return || 'SAN';
               WHEN v_compare BETWEEN '9358' AND '936A'
               THEN
                  v_return := v_return || 'SANG';
               WHEN v_compare BETWEEN '936C' AND '9391'
               THEN
                  v_return := v_return || 'SAO';
               WHEN v_compare BETWEEN '9392' AND '93C5'
               THEN
                  v_return := v_return || 'SE';
               WHEN v_compare = '93C6'
               THEN
                  v_return := v_return || 'SED';
               WHEN v_compare BETWEEN '93C8' AND '93CC'
               THEN
                  v_return := v_return || 'SEN';
               WHEN v_compare BETWEEN '93CD' AND '93D0'
               THEN
                  v_return := v_return || 'SENG';
               WHEN v_compare = '93D1'
               THEN
                  v_return := v_return || 'SEO';
               WHEN v_compare = '93D2'
               THEN
                  v_return := v_return || 'SEON';
               WHEN v_compare BETWEEN '93D4' AND '941A'
               THEN
                  v_return := v_return || 'SHA';
               WHEN v_compare BETWEEN '941D' AND '9428'
               THEN
                  v_return := v_return || 'SHAI';
               WHEN v_compare BETWEEN '9429' AND '94C1'
               THEN
                  v_return := v_return || 'SHAN';
               WHEN v_compare BETWEEN '94C2' AND '94EE'
               THEN
                  v_return := v_return || 'SHANG';
               WHEN v_compare BETWEEN '94F1' AND '952D'
               THEN
                  v_return := v_return || 'SHAO';
               WHEN v_compare BETWEEN '952E' AND '9571'
               THEN
                  v_return := v_return || 'SHE';
               WHEN v_compare BETWEEN '9574' AND '9602'
               THEN
                  v_return := v_return || 'SHEN';
               WHEN v_compare BETWEEN '9604' AND '965C'
               THEN
                  v_return := v_return || 'SHENG';
               WHEN v_compare BETWEEN '965E' AND '9786'
               THEN
                  v_return := v_return || 'SHI';
               WHEN v_compare BETWEEN '9788' AND '97AE'
               THEN
                  v_return := v_return || 'SHOU';
               WHEN v_compare BETWEEN '97B0' AND '9878'
               THEN
                  v_return := v_return || 'SHU';
               WHEN v_compare BETWEEN '987A' AND '987E'
               THEN
                  v_return := v_return || 'SHUA';
               WHEN v_compare BETWEEN '9880' AND '988A'
               THEN
                  v_return := v_return || 'SHUAI';
               WHEN v_compare BETWEEN '988C' AND '9894'
               THEN
                  v_return := v_return || 'SHUAN';
               WHEN v_compare BETWEEN '9895' AND '98BE'
               THEN
                  v_return := v_return || 'SHUANG';
               WHEN v_compare BETWEEN '98C0' AND '98D6'
               THEN
                  v_return := v_return || 'SHUI';
               WHEN v_compare BETWEEN '98DC' AND '98EE'
               THEN
                  v_return := v_return || 'SHUN';
               WHEN v_compare BETWEEN '98F1' AND '9911'
               THEN
                  v_return := v_return || 'SHUO';
               WHEN v_compare BETWEEN '9912' AND '99AD'
               THEN
                  v_return := v_return || 'SI';
               WHEN v_compare = '99AE'
               THEN
                  v_return := v_return || 'SO';
               WHEN v_compare = '99B0'
               THEN
                  v_return := v_return || 'SOL';
               WHEN v_compare BETWEEN '99B1' AND '99F6'
               THEN
                  v_return := v_return || 'SONG';
               WHEN v_compare BETWEEN '99F8' AND '9A36'
               THEN
                  v_return := v_return || 'SOU';
               WHEN v_compare BETWEEN '9A38' AND '9AB6'
               THEN
                  v_return := v_return || 'SU';
               WHEN v_compare BETWEEN '9AB8' AND '9AC4'
               THEN
                  v_return := v_return || 'SUAN';
               WHEN v_compare BETWEEN '9AC5' AND '9B3A'
               THEN
                  v_return := v_return || 'SUI';
               WHEN v_compare = '9AF0'
               THEN
                  v_return := v_return || 'WIE';
               WHEN v_compare BETWEEN '9B3C' AND '9B62'
               THEN
                  v_return := v_return || 'SUN';
               WHEN v_compare BETWEEN '9B65' AND '9BA9'
               THEN
                  v_return := v_return || 'SUO';
               WHEN v_compare BETWEEN '9BAA' AND '9C10'
               THEN
                  v_return := v_return || 'TA';
               WHEN v_compare = '9C11'
               THEN
                  v_return := v_return || 'TAE';
               WHEN v_compare BETWEEN '9C12' AND '9C59'
               THEN
                  v_return := v_return || 'TAI';
               WHEN v_compare BETWEEN '9C5A' AND '9CE0'
               THEN
                  v_return := v_return || 'TAN';
               WHEN v_compare BETWEEN '9CE2' AND '9D55'
               THEN
                  v_return := v_return || 'TANG';
               WHEN v_compare BETWEEN '9D56' AND '9DB4'
               THEN
                  v_return := v_return || 'TAO';
               WHEN v_compare = '9DB6'
               THEN
                  v_return := v_return || 'TAP';
               WHEN v_compare BETWEEN '9DB8' AND '9DC6'
               THEN
                  v_return := v_return || 'TE';
               WHEN v_compare BETWEEN '9DC8' AND '9DED'
               THEN
                  v_return := v_return || 'TENG';
               WHEN v_compare = '9DEE'
               THEN
                  v_return := v_return || 'TEO';
               WHEN v_compare = '9DF0'
               THEN
                  v_return := v_return || 'TEUL';
               WHEN v_compare BETWEEN '9DF1' AND '9E82'
               THEN
                  v_return := v_return || 'TI';
               WHEN v_compare BETWEEN '9E85' AND '9EED'
               THEN
                  v_return := v_return || 'TIAN';
               WHEN v_compare BETWEEN '9EEE' AND '9F38'
               THEN
                  v_return := v_return || 'TIAO';
               WHEN v_compare BETWEEN '9F39' AND '9F56'
               THEN
                  v_return := v_return || 'TIE';
               WHEN v_compare BETWEEN '9F59' AND '9FAE'
               THEN
                  v_return := v_return || 'TING';
               WHEN v_compare = '9FB0'
               THEN
                  v_return := v_return || 'TOL';
               WHEN v_compare BETWEEN '9FB1' AND 'A015'
               THEN
                  v_return := v_return || 'TONG';
               WHEN v_compare BETWEEN 'A016' AND 'A03A'
               THEN
                  v_return := v_return || 'TOU';
               WHEN v_compare BETWEEN 'A040' AND 'A0A9'
               THEN
                  v_return := v_return || 'TU';
               WHEN v_compare BETWEEN 'A0AA' AND 'A0D5'
               THEN
                  v_return := v_return || 'TUAN';
               WHEN v_compare BETWEEN 'A0D6' AND 'A106'
               THEN
                  v_return := v_return || 'TUI';
               WHEN v_compare BETWEEN 'A108' AND 'A131'
               THEN
                  v_return := v_return || 'TUN';
               WHEN v_compare BETWEEN 'A134' AND 'A1AE'
               THEN
                  v_return := v_return || 'TUO';
               WHEN v_compare BETWEEN 'A1B0' AND 'A1E8'
               THEN
                  v_return := v_return || 'WA';
               WHEN v_compare BETWEEN 'A1E9' AND 'A1F5'
               THEN
                  v_return := v_return || 'WAI';
               WHEN v_compare BETWEEN 'A1F8' AND 'A279'
               THEN
                  v_return := v_return || 'WAN';
               WHEN v_compare BETWEEN 'A27A' AND 'A2B9'
               THEN
                  v_return := v_return || 'WANG';
               WHEN v_compare BETWEEN 'A2BC' AND 'A408'
               THEN
                  v_return := v_return || 'WEI';
               WHEN v_compare BETWEEN 'A40D' AND 'A47C'
               THEN
                  v_return := v_return || 'WEN';
               WHEN v_compare BETWEEN 'A47D' AND 'A4A2'
               THEN
                  v_return := v_return || 'WENG';
               WHEN v_compare BETWEEN 'A4A4' AND 'A4EA'
               THEN
                  v_return := v_return || 'WO';
               WHEN v_compare BETWEEN 'A4EC' AND 'A5D4'
               THEN
                  v_return := v_return || 'WU';
               WHEN v_compare BETWEEN 'A5D6' AND 'A784'
               THEN
                  v_return := v_return || 'XI';
               WHEN v_compare BETWEEN 'A785' AND 'A7FA'
               THEN
                  v_return := v_return || 'XIA';
               WHEN v_compare BETWEEN 'A7FD' AND 'A951'
               THEN
                  v_return := v_return || 'XIAN';
               WHEN v_compare BETWEEN 'A954' AND 'A9CE'
               THEN
                  v_return := v_return || 'XIANG';
               WHEN v_compare BETWEEN 'A9D0' AND 'AA8A'
               THEN
                  v_return := v_return || 'XIAO';
               WHEN v_compare BETWEEN 'AA8D' AND 'AB7E'
               THEN
                  v_return := v_return || 'XIE';
               WHEN v_compare BETWEEN 'AB80' AND 'ABEE'
               THEN
                  v_return := v_return || 'XIN';
               WHEN v_compare BETWEEN 'ABF0' AND 'AC41'
               THEN
                  v_return := v_return || 'XING';
               WHEN v_compare BETWEEN 'AC42' AND 'AC64'
               THEN
                  v_return := v_return || 'XIONG';
               WHEN v_compare BETWEEN 'AC65' AND 'ACBA'
               THEN
                  v_return := v_return || 'XIU';
               WHEN v_compare BETWEEN 'ACBC' AND 'AD90'
               THEN
                  v_return := v_return || 'XU';
               WHEN v_compare = 'ACD9'
               THEN
                  v_return := v_return || 'CHUA';
               WHEN v_compare BETWEEN 'AD91' AND 'AE32'
               THEN
                  v_return := v_return || 'XUAN';
               WHEN v_compare BETWEEN 'AE34' AND 'AE89'
               THEN
                  v_return := v_return || 'XUE';
               WHEN v_compare BETWEEN 'AE8C' AND 'AF1E'
               THEN
                  v_return := v_return || 'XUN';
               WHEN v_compare BETWEEN 'AF20' AND 'AF96'
               THEN
                  v_return := v_return || 'YA';
               WHEN v_compare BETWEEN 'AF98' AND 'B118'
               THEN
                  v_return := v_return || 'YAN';
               WHEN v_compare = 'B030'
               THEN
                  v_return := v_return || 'EOM';
               WHEN v_compare BETWEEN 'B11A' AND 'B1A8'
               THEN
                  v_return := v_return || 'YANG';
               WHEN v_compare BETWEEN 'B1AD' AND 'B275'
               THEN
                  v_return := v_return || 'YAO';
               WHEN v_compare BETWEEN 'B276' AND 'B30A'
               THEN
                  v_return := v_return || 'YE';
               WHEN v_compare BETWEEN 'B30D' AND 'B30E'
               THEN
                  v_return := v_return || 'YEN';
               WHEN v_compare BETWEEN 'B310' AND 'B594'
               THEN
                  v_return := v_return || 'YI';
               WHEN v_compare = 'B359'
               THEN
                  v_return := v_return || 'I';
               WHEN v_compare BETWEEN 'B596' AND 'B684'
               THEN
                  v_return := v_return || 'YIN';
               WHEN v_compare BETWEEN 'B685' AND 'B768'
               THEN
                  v_return := v_return || 'YING';
               WHEN v_compare BETWEEN 'B76C' AND 'B76E'
               THEN
                  v_return := v_return || 'YO';
               WHEN v_compare BETWEEN 'B770' AND 'B7EA'
               THEN
                  v_return := v_return || 'YONG';
               WHEN v_compare BETWEEN 'B7EC' AND 'B8B2'
               THEN
                  v_return := v_return || 'YOU';
               WHEN v_compare BETWEEN 'B8B5' AND 'BA98'
               THEN
                  v_return := v_return || 'YU';
               WHEN v_compare BETWEEN 'BA99' AND 'BB58'
               THEN
                  v_return := v_return || 'YUAN';
               WHEN v_compare BETWEEN 'BB59' AND 'BBBE'
               THEN
                  v_return := v_return || 'YUE';
               WHEN v_compare BETWEEN 'BBC1' AND 'BC58'
               THEN
                  v_return := v_return || 'YUN';
               WHEN v_compare BETWEEN 'BC59' AND 'BC7E'
               THEN
                  v_return := v_return || 'ZA';
               WHEN v_compare BETWEEN 'BC81' AND 'BCA8'
               THEN
                  v_return := v_return || 'ZAI';
               WHEN v_compare BETWEEN 'BCAA' AND 'BCEA'
               THEN
                  v_return := v_return || 'ZAN';
               WHEN v_compare BETWEEN 'BCEE' AND 'BD0A'
               THEN
                  v_return := v_return || 'ZANG';
               WHEN v_compare BETWEEN 'BD0C' AND 'BD46'
               THEN
                  v_return := v_return || 'ZAO';
               WHEN v_compare BETWEEN 'BD48' AND 'BD99'
               THEN
                  v_return := v_return || 'ZE';
               WHEN v_compare BETWEEN 'BD9A' AND 'BDA2'
               THEN
                  v_return := v_return || 'ZEI';
               WHEN v_compare BETWEEN 'BDA5' AND 'BDAC'
               THEN
                  v_return := v_return || 'ZEN';
               WHEN v_compare BETWEEN 'BDAD' AND 'BDCC'
               THEN
                  v_return := v_return || 'ZENG';
               WHEN v_compare BETWEEN 'BDCE' AND 'BE40'
               THEN
                  v_return := v_return || 'ZHA';
               WHEN v_compare = 'BDF8'
               THEN
                  v_return := v_return || 'GAD';
               WHEN v_compare BETWEEN 'BE41' AND 'BE62'
               THEN
                  v_return := v_return || 'ZHAI';
               WHEN v_compare BETWEEN 'BE65' AND 'BEF4'
               THEN
                  v_return := v_return || 'ZHAN';
               WHEN v_compare BETWEEN 'BEF6' AND 'BF3E'
               THEN
                  v_return := v_return || 'ZHANG';
               WHEN v_compare BETWEEN 'BF40' AND 'BF8C'
               THEN
                  v_return := v_return || 'ZHAO';
               WHEN v_compare BETWEEN 'BF8E' AND 'BFF8'
               THEN
                  v_return := v_return || 'ZHE';
               WHEN v_compare BETWEEN 'BFF9' AND 'C0B2'
               THEN
                  v_return := v_return || 'ZHEN';
               WHEN v_compare BETWEEN 'C0B4' AND 'C11E'
               THEN
                  v_return := v_return || 'ZHENG';
               WHEN v_compare BETWEEN 'C122' AND 'C2C4'
               THEN
                  v_return := v_return || 'ZHI';
               WHEN v_compare BETWEEN 'C2C5' AND 'C31A'
               THEN
                  v_return := v_return || 'ZHONG';
               WHEN v_compare BETWEEN 'C31D' AND 'C39A'
               THEN
                  v_return := v_return || 'ZHOU';
               WHEN v_compare BETWEEN 'C39C' AND 'C47C'
               THEN
                  v_return := v_return || 'ZHU';
               WHEN v_compare BETWEEN 'C47D' AND 'C484'
               THEN
                  v_return := v_return || 'ZHUA';
               WHEN v_compare BETWEEN 'C485' AND 'C486'
               THEN
                  v_return := v_return || 'ZHUAI';
               WHEN v_compare BETWEEN 'C488' AND 'C4C0'
               THEN
                  v_return := v_return || 'ZHUAN';
               WHEN v_compare BETWEEN 'C4C2' AND 'C4E5'
               THEN
                  v_return := v_return || 'ZHUANG';
               WHEN v_compare BETWEEN 'C4E6' AND 'C51C'
               THEN
                  v_return := v_return || 'ZHUI';
               WHEN v_compare BETWEEN 'C51D' AND 'C530'
               THEN
                  v_return := v_return || 'ZHUN';
               WHEN v_compare BETWEEN 'C534' AND 'C5A5'
               THEN
                  v_return := v_return || 'ZHUO';
               WHEN v_compare BETWEEN 'C5A8' AND 'C648'
               THEN
                  v_return := v_return || 'ZI';
               WHEN v_compare = 'C64A'
               THEN
                  v_return := v_return || 'ZO';
               WHEN v_compare BETWEEN 'C64C' AND 'C6B5'
               THEN
                  v_return := v_return || 'ZONG';
               WHEN v_compare BETWEEN 'C6B6' AND 'C6D6'
               THEN
                  v_return := v_return || 'ZOU';
               WHEN v_compare BETWEEN 'C6E1' AND 'C714'
               THEN
                  v_return := v_return || 'ZU';
               WHEN v_compare BETWEEN 'C715' AND 'C72D'
               THEN
                  v_return := v_return || 'ZUAN';
               WHEN v_compare BETWEEN 'C72E' AND 'C75E'
               THEN
                  v_return := v_return || 'ZUI';
               WHEN v_compare BETWEEN 'C760' AND 'C776'
               THEN
                  v_return := v_return || 'ZUN';
               WHEN v_compare BETWEEN 'C77A' AND 'C7B4'
               THEN
                  v_return := v_return || 'ZUO';
               ELSE
                  v_return := v_return || v_substr;
            END CASE;
         END LOOP;
      WHEN 2
      THEN                                                           --全拼首字母大写
         FOR i IN 1 .. v_length
         LOOP
            v_substr := SUBSTR (p_str, i, 1);
            v_compare := fn_nlssort (v_substr);

            CASE
               WHEN v_compare BETWEEN '3B29' AND '3B30'
               THEN
                  v_return := v_return || 'A';
               WHEN v_compare = '3B31'
               THEN
                  v_return := v_return || 'Aes';
               WHEN v_compare BETWEEN '3B32' AND '3B9E'
               THEN
                  v_return := v_return || 'Ai';
               WHEN v_compare BETWEEN '3BA0' AND '3BFE'
               THEN
                  v_return := v_return || 'An';
               WHEN v_compare BETWEEN '3C01' AND '3C14'
               THEN
                  v_return := v_return || 'Ang';
               WHEN v_compare BETWEEN '3C15' AND '3C82'
               THEN
                  v_return := v_return || 'Ao';
               WHEN v_compare BETWEEN '3C84' AND '3CE9'
               THEN
                  v_return := v_return || 'Ba';
               WHEN v_compare BETWEEN '3CED' AND '3D1D'
               THEN
                  v_return := v_return || 'Bai';
               WHEN v_compare BETWEEN '3D20' AND '3D64'
               THEN
                  v_return := v_return || 'Ban';
               WHEN v_compare BETWEEN '3D66' AND '3DA2'
               THEN
                  v_return := v_return || 'Bang';
               WHEN v_compare BETWEEN '3DA4' AND '3E10'
               THEN
                  v_return := v_return || 'Bao';
               WHEN v_compare = '3E11'
               THEN
                  v_return := v_return || 'Be';
               WHEN v_compare BETWEEN '3E12' AND '3E7A'
               THEN
                  v_return := v_return || 'Bei';
               WHEN v_compare BETWEEN '3E7C' AND '3EA0'
               THEN
                  v_return := v_return || 'Ben';
               WHEN v_compare BETWEEN '3EA1' AND '3ED5'
               THEN
                  v_return := v_return || 'Beng';
               WHEN v_compare BETWEEN '3ED8' AND '3FE9'
               THEN
                  v_return := v_return || 'Bi';
               WHEN v_compare BETWEEN '3FEA' AND '4055'
               THEN
                  v_return := v_return || 'Bian';
               WHEN v_compare BETWEEN '4058' AND '40AE'
               THEN
                  v_return := v_return || 'Biao';
               WHEN v_compare = '4060'
               THEN
                  v_return := v_return || 'Bia';
               WHEN v_compare BETWEEN '40B4' AND '40D4'
               THEN
                  v_return := v_return || 'Bie';
               WHEN v_compare BETWEEN '40D6' AND '4116'
               THEN
                  v_return := v_return || 'Bin';
               WHEN v_compare BETWEEN '4118' AND '4160'
               THEN
                  v_return := v_return || 'Bing';
               WHEN v_compare BETWEEN '4161' AND '4224'
               THEN
                  v_return := v_return || 'Bo';
               WHEN v_compare BETWEEN '4225' AND '427C'
               THEN
                  v_return := v_return || 'Bu';
               WHEN v_compare BETWEEN '427D' AND '4289'
               THEN
                  v_return := v_return || 'Ca';
               WHEN v_compare BETWEEN '428C' AND '42B5'
               THEN
                  v_return := v_return || 'Cai';
               WHEN v_compare BETWEEN '42B9' AND '430C'
               THEN
                  v_return := v_return || 'Can';
               WHEN v_compare BETWEEN '430D' AND '4334'
               THEN
                  v_return := v_return || 'Cang';
               WHEN v_compare BETWEEN '4335' AND '435C'
               THEN
                  v_return := v_return || 'Cao';
               WHEN v_compare BETWEEN '435D' AND '438C'
               THEN
                  v_return := v_return || 'Ce';
               WHEN v_compare BETWEEN '4390' AND '4398'
               THEN
                  v_return := v_return || 'Cen';
               WHEN v_compare BETWEEN '439D' AND '43AA'
               THEN
                  v_return := v_return || 'Ceng';
               WHEN v_compare = '43AC'
               THEN
                  v_return := v_return || 'Ceok';
               WHEN v_compare = '43AE'
               THEN
                  v_return := v_return || 'Ceom';
               WHEN v_compare = '43B0'
               THEN
                  v_return := v_return || 'Ceon';
               WHEN v_compare = '43B1'
               THEN
                  v_return := v_return || 'Ceor';
               WHEN v_compare BETWEEN '43B2' AND '440A'
               THEN
                  v_return := v_return || 'Cha';
               WHEN v_compare BETWEEN '440E' AND '442D'
               THEN
                  v_return := v_return || 'Chai';
               WHEN v_compare BETWEEN '4431' AND '44E1'
               THEN
                  v_return := v_return || 'Chan';
               WHEN v_compare BETWEEN '44E4' AND '4552'
               THEN
                  v_return := v_return || 'Chang';
               WHEN v_compare BETWEEN '4554' AND '458E'
               THEN
                  v_return := v_return || 'Chao';
               WHEN v_compare BETWEEN '4590' AND '45C8'
               THEN
                  v_return := v_return || 'Che';
               WHEN v_compare BETWEEN '45C9' AND '463D'
               THEN
                  v_return := v_return || 'Chen';
               WHEN v_compare BETWEEN '463E' AND '46CD'
               THEN
                  v_return := v_return || 'Cheng';
               WHEN v_compare BETWEEN '46CE' AND '47A6'
               THEN
                  v_return := v_return || 'Chi';
               WHEN v_compare BETWEEN '47A8' AND '47EC'
               THEN
                  v_return := v_return || 'Chong';
               WHEN v_compare BETWEEN '47ED' AND '484C'
               THEN
                  v_return := v_return || 'Chou';
               WHEN v_compare BETWEEN '484D' AND '48E2'
               THEN
                  v_return := v_return || 'Chu';
               WHEN v_compare BETWEEN '48E9' AND '48F4'
               THEN
                  v_return := v_return || 'Chuai';
               WHEN v_compare BETWEEN '48F6' AND '4924'
               THEN
                  v_return := v_return || 'Chuan';
               WHEN v_compare BETWEEN '4925' AND '4951'
               THEN
                  v_return := v_return || 'Chuang';
               WHEN v_compare BETWEEN '4954' AND '496E'
               THEN
                  v_return := v_return || 'Chui';
               WHEN v_compare BETWEEN '4971' AND '49C6'
               THEN
                  v_return := v_return || 'Chun';
               WHEN v_compare BETWEEN '49C8' AND '49EA'
               THEN
                  v_return := v_return || 'Chuo';
               WHEN v_compare BETWEEN '49EC' AND '4A4A'
               THEN
                  v_return := v_return || 'Ci';
               WHEN v_compare = '4A50'
               THEN
                  v_return := v_return || 'Cis';
               WHEN v_compare BETWEEN '4A51' AND '4AB2'
               THEN
                  v_return := v_return || 'Cong';
               WHEN v_compare BETWEEN '4AB4' AND '4ABA'
               THEN
                  v_return := v_return || 'Cou';
               WHEN v_compare BETWEEN '4ABC' AND '4AEA'
               THEN
                  v_return := v_return || 'Cu';
               WHEN v_compare BETWEEN '4AEE' AND '4B0C'
               THEN
                  v_return := v_return || 'Cuan';
               WHEN v_compare BETWEEN '4B0D' AND '4B56'
               THEN
                  v_return := v_return || 'Cui';
               WHEN v_compare BETWEEN '4B59' AND '4B6C'
               THEN
                  v_return := v_return || 'Cun';
               WHEN v_compare BETWEEN '4B70' AND '4BA9'
               THEN
                  v_return := v_return || 'Cuo';
               WHEN v_compare BETWEEN '4BAD' AND '4BFE'
               THEN
                  v_return := v_return || 'Da';
               WHEN v_compare BETWEEN '4C00' AND '4C4E'
               THEN
                  v_return := v_return || 'Dai';
               WHEN v_compare BETWEEN '4C50' AND '4CDC'
               THEN
                  v_return := v_return || 'Dan';
               WHEN v_compare BETWEEN '4CDE' AND '4D26'
               THEN
                  v_return := v_return || 'Dang';
               WHEN v_compare BETWEEN '4D28' AND '4D76'
               THEN
                  v_return := v_return || 'Dao';
               WHEN v_compare BETWEEN '4D7E' AND '4D8D'
               THEN
                  v_return := v_return || 'De';
               WHEN v_compare = '4D8E'
               THEN
                  v_return := v_return || 'Dem';
               WHEN v_compare BETWEEN '4D90' AND '4D91'
               THEN
                  v_return := v_return || 'Den';
               WHEN v_compare BETWEEN '4D94' AND '4DC0'
               THEN
                  v_return := v_return || 'Deng';
               WHEN v_compare BETWEEN '4DC4' AND '4E8A'
               THEN
                  v_return := v_return || 'Di';
               WHEN v_compare = '4E8C'
               THEN
                  v_return := v_return || 'Dia';
               WHEN v_compare BETWEEN '4E8D' AND '4EE8'
               THEN
                  v_return := v_return || 'Dian';
               WHEN v_compare BETWEEN '4EE9' AND '4F38'
               THEN
                  v_return := v_return || 'Diao';
               WHEN v_compare BETWEEN '4F39' AND '4F90'
               THEN
                  v_return := v_return || 'Die';
               WHEN v_compare = '4F8D'
               THEN
                  v_return := v_return || 'Dei';
               WHEN v_compare = '4F91'
               THEN
                  v_return := v_return || 'Dim';
               WHEN v_compare BETWEEN '4F92' AND '4FCD'
               THEN
                  v_return := v_return || 'Ding';
               WHEN v_compare BETWEEN '4FCD' AND '4FD4'
               THEN
                  v_return := v_return || 'Diu';
               WHEN v_compare BETWEEN '4FD5' AND '5032'
               THEN
                  v_return := v_return || 'Dong';
               WHEN v_compare BETWEEN '5034' AND '507C'
               THEN
                  v_return := v_return || 'Dou';
               WHEN v_compare = '5044'
               THEN
                  v_return := v_return || 'Dul';
               WHEN v_compare BETWEEN '507E' AND '50E9'
               THEN
                  v_return := v_return || 'Du';
               WHEN v_compare BETWEEN '50EA' AND '5110'
               THEN
                  v_return := v_return || 'Duan';
               WHEN v_compare BETWEEN '5114' AND '514E'
               THEN
                  v_return := v_return || 'Dui';
               WHEN v_compare BETWEEN '5152' AND '518D'
               THEN
                  v_return := v_return || 'Dun';
               WHEN v_compare = '5160'
               THEN
                  v_return := v_return || 'Ton';
               WHEN v_compare BETWEEN '518E' AND '5200'
               THEN
                  v_return := v_return || 'Duo';
               WHEN v_compare BETWEEN '5205' AND '52C2'
               THEN
                  v_return := v_return || 'E';
               WHEN v_compare BETWEEN '52C4' AND '52CD'
               THEN
                  v_return := v_return || 'En';
               WHEN v_compare = '52D4'
               THEN
                  v_return := v_return || 'Eng';
               WHEN v_compare = '52D5'
               THEN
                  v_return := v_return || 'Eo';
               WHEN v_compare = '52D6'
               THEN
                  v_return := v_return || 'Eol';
               WHEN v_compare = '52D8'
               THEN
                  v_return := v_return || 'Eos';
               WHEN v_compare BETWEEN '52D9' AND '5332'
               THEN
                  v_return := v_return || 'Er';
               WHEN v_compare BETWEEN '5334' AND '5366'
               THEN
                  v_return := v_return || 'Fa';
               WHEN v_compare BETWEEN '536A' AND '53FA'
               THEN
                  v_return := v_return || 'Fan';
               WHEN v_compare BETWEEN '53FD' AND '5438'
               THEN
                  v_return := v_return || 'Fang';
               WHEN v_compare BETWEEN '5439' AND '54B2'
               THEN
                  v_return := v_return || 'Fei';
               WHEN v_compare BETWEEN '54B4' AND '5528'
               THEN
                  v_return := v_return || 'Fen';
               WHEN v_compare BETWEEN '5529' AND '55A9'
               THEN
                  v_return := v_return || 'Feng';
               WHEN v_compare BETWEEN '55AA' AND '55AE'
               THEN
                  v_return := v_return || 'Fo';
               WHEN v_compare BETWEEN '55B1' AND '55BC'
               THEN
                  v_return := v_return || 'Fou';
               WHEN v_compare BETWEEN '55BD' AND '5739'
               THEN
                  v_return := v_return || 'Fu';
               WHEN v_compare = '569D'
               THEN
                  v_return := v_return || 'M';
               WHEN v_compare BETWEEN '573C' AND '574C'
               THEN
                  v_return := v_return || 'Ga';
               WHEN v_compare BETWEEN '574D' AND '578C'
               THEN
                  v_return := v_return || 'Gai';
               WHEN v_compare BETWEEN '578D' AND '57F0'
               THEN
                  v_return := v_return || 'Gan';
               WHEN v_compare BETWEEN '57F1' AND '582C'
               THEN
                  v_return := v_return || 'Gang';
               WHEN v_compare BETWEEN '582E' AND '5884'
               THEN
                  v_return := v_return || 'Gao';
               WHEN v_compare BETWEEN '5885' AND '5905'
               THEN
                  v_return := v_return || 'Ge';
               WHEN v_compare = '5906'
               THEN
                  v_return := v_return || 'Gei';
               WHEN v_compare BETWEEN '5909' AND '5915'
               THEN
                  v_return := v_return || 'Gen';
               WHEN v_compare BETWEEN '5918' AND '594E'
               THEN
                  v_return := v_return || 'Geng';
               WHEN v_compare = '5956'
               THEN
                  v_return := v_return || 'Gib';
               WHEN v_compare = '5958'
               THEN
                  v_return := v_return || 'Go';
               WHEN v_compare BETWEEN '5959' AND '59BA'
               THEN
                  v_return := v_return || 'Gong';
               WHEN v_compare BETWEEN '59BD' AND '5A0E'
               THEN
                  v_return := v_return || 'Gou';
               WHEN v_compare BETWEEN '5A10' AND '5AB2'
               THEN
                  v_return := v_return || 'Gu';
               WHEN v_compare BETWEEN '5AB4' AND '5AE8'
               THEN
                  v_return := v_return || 'Gua';
               WHEN v_compare BETWEEN '5AE9' AND '5AF8'
               THEN
                  v_return := v_return || 'Guai';
               WHEN v_compare BETWEEN '5AFD' AND '5B5E'
               THEN
                  v_return := v_return || 'Guan';
               WHEN v_compare BETWEEN '5B60' AND '5B8C'
               THEN
                  v_return := v_return || 'Guang';
               WHEN v_compare BETWEEN '5B8D' AND '5C2E'
               THEN
                  v_return := v_return || 'Gui';
               WHEN v_compare = '5BC8'
               THEN
                  v_return := v_return || 'Kwi';
               WHEN v_compare BETWEEN '5C30' AND '5C58'
               THEN
                  v_return := v_return || 'Gun';
               WHEN v_compare BETWEEN '5C51' AND '5CB6'
               THEN
                  v_return := v_return || 'Guo';
               WHEN v_compare BETWEEN '5CB8' AND '5CBD'
               THEN
                  v_return := v_return || 'Ha';
               WHEN v_compare BETWEEN '5CC6' AND '5CEC'
               THEN
                  v_return := v_return || 'Hai';
               WHEN v_compare = '5CED'
               THEN
                  v_return := v_return || 'Hal';
               WHEN v_compare BETWEEN '5CEE' AND '5D99'
               THEN
                  v_return := v_return || 'Han';
               WHEN v_compare BETWEEN '5D9D' AND '5DBC'
               THEN
                  v_return := v_return || 'Hang';
               WHEN v_compare BETWEEN '5DBE' AND '5E20'
               THEN
                  v_return := v_return || 'Hao';
               WHEN v_compare = '5E02'
               THEN
                  v_return := v_return || 'Ho';
               WHEN v_compare BETWEEN '5E22' AND '5EC5'
               THEN
                  v_return := v_return || 'He';
               WHEN v_compare BETWEEN '5EC6' AND '5ECE'
               THEN
                  v_return := v_return || 'Hei';
               WHEN v_compare BETWEEN '5ED0' AND '5EDC'
               THEN
                  v_return := v_return || 'Hen';
               WHEN v_compare BETWEEN '5EDD' AND '5EDC'
               THEN
                  v_return := v_return || 'Heng';
               WHEN v_compare = '5F04'
               THEN
                  v_return := v_return || 'Hol';
               WHEN v_compare BETWEEN '5F05' AND '5F8D'
               THEN
                  v_return := v_return || 'Hong';
               WHEN v_compare BETWEEN '5F8E' AND '5FD2'
               THEN
                  v_return := v_return || 'Hou';
               WHEN v_compare BETWEEN '5FD4' AND '60B1'
               THEN
                  v_return := v_return || 'Hu';
               WHEN v_compare BETWEEN '60B2' AND '6111'
               THEN
                  v_return := v_return || 'Hua';
               WHEN v_compare BETWEEN '6112' AND '612D'
               THEN
                  v_return := v_return || 'Huai';
               WHEN v_compare BETWEEN '612E' AND '61C6'
               THEN
                  v_return := v_return || 'Huan';
               WHEN v_compare BETWEEN '61CA' AND '624A'
               THEN
                  v_return := v_return || 'Huang';
               WHEN v_compare BETWEEN '624C' AND '6344'
               THEN
                  v_return := v_return || 'Hui';
               WHEN v_compare BETWEEN '6346' AND '6388'
               THEN
                  v_return := v_return || 'Hun';
               WHEN v_compare BETWEEN '638C' AND '63FA'
               THEN
                  v_return := v_return || 'Huo';
               WHEN v_compare = '63FD'
               THEN
                  v_return := v_return || 'Hwa';
               WHEN v_compare BETWEEN '63FE' AND '6601'
               THEN
                  v_return := v_return || 'Ji';
               WHEN v_compare BETWEEN '6604' AND '6691'
               THEN
                  v_return := v_return || 'Jia';
               WHEN v_compare BETWEEN '6692' AND '67F8'
               THEN
                  v_return := v_return || 'Jian';
               WHEN v_compare BETWEEN '67F9' AND '6860'
               THEN
                  v_return := v_return || 'Jiang';
               WHEN v_compare BETWEEN '6862' AND '6930'
               THEN
                  v_return := v_return || 'Jiao';
               WHEN v_compare BETWEEN '6931' AND '6A18'
               THEN
                  v_return := v_return || 'Jie';
               WHEN v_compare BETWEEN '6A1A' AND '6AC9'
               THEN
                  v_return := v_return || 'Jin';
               WHEN v_compare BETWEEN '6ACA' AND '6B65'
               THEN
                  v_return := v_return || 'Jing';
               WHEN v_compare BETWEEN '6B66' AND '6B9A'
               THEN
                  v_return := v_return || 'Jiong';
               WHEN v_compare BETWEEN '6B9C' AND '6C0C'
               THEN
                  v_return := v_return || 'Jiu';
               WHEN v_compare = '6C0D'
               THEN
                  v_return := v_return || 'Jou';
               WHEN v_compare BETWEEN '6C0E' AND '6D2A'
               THEN
                  v_return := v_return || 'Ju';
               WHEN v_compare BETWEEN '6D2D' AND '6D80'
               THEN
                  v_return := v_return || 'Juan';
               WHEN v_compare BETWEEN '6D82' AND '6E28'
               THEN
                  v_return := v_return || 'Jue';
               WHEN v_compare BETWEEN '6E2A' AND '6E85'
               THEN
                  v_return := v_return || 'Jun';
               WHEN v_compare BETWEEN '6E86' AND '6E92'
               THEN
                  v_return := v_return || 'Ka';
               WHEN v_compare BETWEEN '6E94' AND '6EC9'
               THEN
                  v_return := v_return || 'Kai';
               WHEN v_compare = '6ECC'
               THEN
                  v_return := v_return || 'Kal';
               WHEN v_compare BETWEEN '6ECD' AND '6F00'
               THEN
                  v_return := v_return || 'Kan';
               WHEN v_compare BETWEEN '6F02' AND '6F30'
               THEN
                  v_return := v_return || 'Kang';
               WHEN v_compare BETWEEN '6F31' AND '6F4D'
               THEN
                  v_return := v_return || 'Kao';
               WHEN v_compare BETWEEN '6F50' AND '6FC8'
               THEN
                  v_return := v_return || 'Ke';
               WHEN v_compare BETWEEN '6FC9' AND '6FDA'
               THEN
                  v_return := v_return || 'Ken';
               WHEN v_compare BETWEEN '6FDC' AND '6FF5'
               THEN
                  v_return := v_return || 'Keng';
               WHEN v_compare = '6FFC'
               THEN
                  v_return := v_return || 'Ki';
               WHEN v_compare BETWEEN '6FFD' AND '7016'
               THEN
                  v_return := v_return || 'Kong';
               WHEN v_compare = '7018'
               THEN
                  v_return := v_return || 'Kos';
               WHEN v_compare BETWEEN '7019' AND '703E'
               THEN
                  v_return := v_return || 'Kou';
               WHEN v_compare BETWEEN '7041' AND '707A'
               THEN
                  v_return := v_return || 'Ku';
               WHEN v_compare BETWEEN '707C' AND '7095'
               THEN
                  v_return := v_return || 'Kua';
               WHEN v_compare BETWEEN '709A' AND '70C1'
               THEN
                  v_return := v_return || 'Kuai';
               WHEN v_compare BETWEEN '70C2' AND '70D4'
               THEN
                  v_return := v_return || 'Kuan';
               WHEN v_compare BETWEEN '70D8' AND '7128'
               THEN
                  v_return := v_return || 'Kuang';
               WHEN v_compare BETWEEN '7129' AND '71B1'
               THEN
                  v_return := v_return || 'Kui';
               WHEN v_compare BETWEEN '71B2' AND '71FE'
               THEN
                  v_return := v_return || 'Kun';
               WHEN v_compare BETWEEN '7200' AND '7226'
               THEN
                  v_return := v_return || 'Kuo';
               WHEN v_compare = '7228'
               THEN
                  v_return := v_return || 'Kweok';
               WHEN v_compare BETWEEN '722C' AND '726A'
               THEN
                  v_return := v_return || 'La';
               WHEN v_compare BETWEEN '726C' AND '72B5'
               THEN
                  v_return := v_return || 'Lai';
               WHEN v_compare BETWEEN '72B9' AND '733C'
               THEN
                  v_return := v_return || 'Lan';
               WHEN v_compare BETWEEN '733D' AND '7388'
               THEN
                  v_return := v_return || 'Lang';
               WHEN v_compare BETWEEN '7389' AND '73E5'
               THEN
                  v_return := v_return || 'Lao';
               WHEN v_compare BETWEEN '73E8' AND '7402'
               THEN
                  v_return := v_return || 'Le';
               WHEN v_compare BETWEEN '7404' AND '7485'
               THEN
                  v_return := v_return || 'Lei';
               WHEN v_compare BETWEEN '7488' AND '7499'
               THEN
                  v_return := v_return || 'Leng';
               WHEN v_compare BETWEEN '749C' AND '7642'
               THEN
                  v_return := v_return || 'Li';
               WHEN v_compare BETWEEN '7644' AND '7645'
               THEN
                  v_return := v_return || 'Lia';
               WHEN v_compare BETWEEN '7646' AND '76EC'
               THEN
                  v_return := v_return || 'Lian';
               WHEN v_compare BETWEEN '76ED' AND '7731'
               THEN
                  v_return := v_return || 'Liang';
               WHEN v_compare BETWEEN '7732' AND '7794'
               THEN
                  v_return := v_return || 'Liao';
               WHEN v_compare BETWEEN '7795' AND '77E2'
               THEN
                  v_return := v_return || 'Lie';
               WHEN v_compare BETWEEN '77E4' AND '785D'
               THEN
                  v_return := v_return || 'Lin';
               WHEN v_compare = '77EA'
               THEN
                  v_return := v_return || 'Len';
               WHEN v_compare BETWEEN '7860' AND '7904'
               THEN
                  v_return := v_return || 'Ling';
               WHEN v_compare BETWEEN '7905' AND '7986'
               THEN
                  v_return := v_return || 'Liu';
               WHEN v_compare BETWEEN '7988' AND '7989'
               THEN
                  v_return := v_return || 'Lo';
               WHEN v_compare BETWEEN '798A' AND '79FD'
               THEN
                  v_return := v_return || 'Long';
               WHEN v_compare BETWEEN '79FE' AND '7A49'
               THEN
                  v_return := v_return || 'Lou';
               WHEN v_compare BETWEEN '7A4C' AND '7B4D'
               THEN
                  v_return := v_return || 'Lu';
               WHEN v_compare BETWEEN '7B4E' AND '7B80'
               THEN
                  v_return := v_return || 'Luan';
               WHEN v_compare BETWEEN '7B81' AND '7BB2'
               THEN
                  v_return := v_return || 'Lun';
               WHEN v_compare BETWEEN '7BB5' AND '7C25'
               THEN
                  v_return := v_return || 'Luo';
               WHEN v_compare BETWEEN '7C26' AND '7C82'
               THEN
                  v_return := v_return || 'Lv';
               WHEN v_compare BETWEEN '7C84' AND '7C98'
               THEN
                  v_return := v_return || 'Lue';
               WHEN v_compare BETWEEN '7C9C' AND '7CE4'
               THEN
                  v_return := v_return || 'Ma';
               WHEN v_compare BETWEEN '7CE5' AND '7DOC'
               THEN
                  v_return := v_return || 'Mai';
               WHEN v_compare BETWEEN '7D11' AND '7D6E'
               THEN
                  v_return := v_return || 'Man';
               WHEN v_compare BETWEEN '7D70' AND '7DA9'
               THEN
                  v_return := v_return || 'Mang';
               WHEN v_compare BETWEEN '7DAC' AND '7E15'
               THEN
                  v_return := v_return || 'Mao';
               WHEN v_compare = '7E0C'
               THEN
                  v_return := v_return || 'Q';
               WHEN v_compare BETWEEN '7E18' AND '7E1E'
               THEN
                  v_return := v_return || 'Me';
               WHEN v_compare BETWEEN '7E20' AND '7E9A'
               THEN
                  v_return := v_return || 'Mei';
               WHEN v_compare BETWEEN '7E9D' AND '7EC1'
               THEN
                  v_return := v_return || 'Men';
               WHEN v_compare BETWEEN '7EC2' AND '7F36'
               THEN
                  v_return := v_return || 'Meng';
               WHEN v_compare = '7F38'
               THEN
                  v_return := v_return || 'Meo';
               WHEN v_compare BETWEEN '7F39' AND '7FE4'
               THEN
                  v_return := v_return || 'Mi';
               WHEN v_compare BETWEEN '7FE6' AND '8034'
               THEN
                  v_return := v_return || 'Mian';
               WHEN v_compare BETWEEN '8035' AND '805A'
               THEN
                  v_return := v_return || 'Miao';
               WHEN v_compare BETWEEN '805C' AND '8081'
               THEN
                  v_return := v_return || 'Mie';
               WHEN v_compare BETWEEN '8084' AND '80E4'
               THEN
                  v_return := v_return || 'Min';
               WHEN v_compare = '8096'
               THEN
                  v_return := v_return || 'Lem';
               WHEN v_compare BETWEEN '80E5' AND '8116'
               THEN
                  v_return := v_return || 'Ming';
               WHEN v_compare BETWEEN '8119' AND '811D'
               THEN
                  v_return := v_return || 'Miu';
               WHEN v_compare BETWEEN '811E' AND '81A9'
               THEN
                  v_return := v_return || 'Mo';
               WHEN v_compare BETWEEN '81AC' AND '81CC'
               THEN
                  v_return := v_return || 'Mou';
               WHEN v_compare BETWEEN '81CD' AND '821E'
               THEN
                  v_return := v_return || 'Mu';
               WHEN v_compare = '8220'
               THEN
                  v_return := v_return || 'Myeo';
               WHEN v_compare = '8221'
               THEN
                  v_return := v_return || 'Myeon';
               WHEN v_compare = '8222'
               THEN
                  v_return := v_return || 'Myeong';
               WHEN v_compare BETWEEN '8224' AND '8258'
               THEN
                  v_return := v_return || 'Na';
               WHEN v_compare BETWEEN '825D' AND '8285'
               THEN
                  v_return := v_return || 'Nai';
               WHEN v_compare BETWEEN '8289' AND '82B5'
               THEN
                  v_return := v_return || 'Nan';
               WHEN v_compare BETWEEN '82B9' AND '82D0'
               THEN
                  v_return := v_return || 'Nang';
               WHEN v_compare BETWEEN '82D1' AND '8311'
               THEN
                  v_return := v_return || 'Nao';
               WHEN v_compare BETWEEN '8312' AND '8320'
               THEN
                  v_return := v_return || 'Ne';
               WHEN v_compare BETWEEN '8322' AND '8331'
               THEN
                  v_return := v_return || 'Nei';
               WHEN v_compare = '8334'
               THEN
                  v_return := v_return || 'Nem';
               WHEN v_compare = '8336'
               THEN
                  v_return := v_return || 'Nen';
               WHEN v_compare = '8339'
               THEN
                  v_return := v_return || 'Neng';
               WHEN v_compare = '833E'
               THEN
                  v_return := v_return || 'Neus';
               WHEN v_compare = '8342'
               THEN
                  v_return := v_return || 'Ngag';
               WHEN v_compare = '8344'
               THEN
                  v_return := v_return || 'Ngai';
               WHEN v_compare = '8345'
               THEN
                  v_return := v_return || 'Ngam';
               WHEN v_compare BETWEEN '8346' AND '83B9'
               THEN
                  v_return := v_return || 'Ni';
               WHEN v_compare BETWEEN '83BC' AND '83ED'
               THEN
                  v_return := v_return || 'Nian';
               WHEN v_compare BETWEEN '83EE' AND '83F5'
               THEN
                  v_return := v_return || 'Niang';
               WHEN v_compare BETWEEN '83F8' AND '8414'
               THEN
                  v_return := v_return || 'Niao';
               WHEN v_compare BETWEEN '8415' AND '8478'
               THEN
                  v_return := v_return || 'Nie';
               WHEN v_compare BETWEEN '8479' AND '8480'
               THEN
                  v_return := v_return || 'Nin';
               WHEN v_compare BETWEEN '8481' AND '84B4'
               THEN
                  v_return := v_return || 'Ning';
               WHEN v_compare BETWEEN '84B5' AND '84D1'
               THEN
                  v_return := v_return || 'Niu';
               WHEN v_compare BETWEEN '84D4' AND '84FA'
               THEN
                  v_return := v_return || 'Nong';
               WHEN v_compare = '84E8'
               THEN
                  v_return := v_return || 'Nung';
               WHEN v_compare BETWEEN '84FD' AND '850E'
               THEN
                  v_return := v_return || 'Nou';
               WHEN v_compare BETWEEN '8511' AND '8522'
               THEN
                  v_return := v_return || 'Nu';
               WHEN v_compare BETWEEN '8524' AND '852C'
               THEN
                  v_return := v_return || 'Nuan';
               WHEN v_compare = '852D'
               THEN
                  v_return := v_return || 'Nun';
               WHEN v_compare BETWEEN '8530' AND '8559'
               THEN
                  v_return := v_return || 'Nuo';
               WHEN v_compare BETWEEN '855A' AND '8566'
               THEN
                  v_return := v_return || 'Nv';
               WHEN v_compare BETWEEN '856D' AND '8574'
               THEN
                  v_return := v_return || 'Nue';
               WHEN v_compare = '8575'
               THEN
                  v_return := v_return || 'O';
               WHEN v_compare = '8579'
               THEN
                  v_return := v_return || 'Oes';
               WHEN v_compare = '857A'
               THEN
                  v_return := v_return || 'Ol';
               WHEN v_compare = '857C'
               THEN
                  v_return := v_return || 'On';
               WHEN v_compare BETWEEN '857D' AND '85AE'
               THEN
                  v_return := v_return || 'Ou';
               WHEN v_compare BETWEEN '85B1' AND '85C9'
               THEN
                  v_return := v_return || 'Pa';
               WHEN v_compare BETWEEN '85CA' AND '85E4'
               THEN
                  v_return := v_return || 'Pai';
               WHEN v_compare = '85E5'
               THEN
                  v_return := v_return || 'Pak';
               WHEN v_compare BETWEEN '85E8' AND '8625'
               THEN
                  v_return := v_return || 'Pan';
               WHEN v_compare BETWEEN '8626' AND '8658'
               THEN
                  v_return := v_return || 'Pang';
               WHEN v_compare BETWEEN '8659' AND '8688'
               THEN
                  v_return := v_return || 'Pao';
               WHEN v_compare BETWEEN '868A' AND '86C5'
               THEN
                  v_return := v_return || 'Pei';
               WHEN v_compare BETWEEN '86C8' AND '86D6'
               THEN
                  v_return := v_return || 'Pen';
               WHEN v_compare BETWEEN '86D8' AND '8740'
               THEN
                  v_return := v_return || 'Peng';
               WHEN v_compare = '8741'
               THEN
                  v_return := v_return || 'Peol';
               WHEN v_compare = '8742'
               THEN
                  v_return := v_return || 'Phas';
               WHEN v_compare = '8744'
               THEN
                  v_return := v_return || 'Phdeng';
               WHEN v_compare = '8745'
               THEN
                  v_return := v_return || 'Phoi';
               WHEN v_compare = '8746'
               THEN
                  v_return := v_return || 'Phos';
               WHEN v_compare BETWEEN '8748' AND '880D'
               THEN
                  v_return := v_return || 'Pi';
               WHEN v_compare BETWEEN '880E' AND '883A'
               THEN
                  v_return := v_return || 'Pian';
               WHEN v_compare BETWEEN '883C' AND '8869'
               THEN
                  v_return := v_return || 'Piao';
               WHEN v_compare BETWEEN '886D' AND '8879'
               THEN
                  v_return := v_return || 'Pie';
               WHEN v_compare BETWEEN '887A' AND '88A0'
               THEN
                  v_return := v_return || 'Pin';
               WHEN v_compare BETWEEN '88A1' AND '88EC'
               THEN
                  v_return := v_return || 'Ping';
               WHEN v_compare BETWEEN '88F0' AND '8938'
               THEN
                  v_return := v_return || 'Po';
               WHEN v_compare BETWEEN '893E' AND '8958'
               THEN
                  v_return := v_return || 'Pou';
               WHEN v_compare BETWEEN '895A' AND '895C'
               THEN
                  v_return := v_return || 'Ppun';
               WHEN v_compare BETWEEN '895D' AND '89C4'
               THEN
                  v_return := v_return || 'Pu';
               WHEN v_compare BETWEEN '89C5' AND '8B3E'
               THEN
                  v_return := v_return || 'Qi';
               WHEN v_compare BETWEEN '8B41' AND '8B61'
               THEN
                  v_return := v_return || 'Qia';
               WHEN v_compare BETWEEN '8B62' AND '8C54'
               THEN
                  v_return := v_return || 'Qian';
               WHEN v_compare BETWEEN '8C5A' AND '8CB4'
               THEN
                  v_return := v_return || 'Qiang';
               WHEN v_compare BETWEEN '8CB8' AND '8D3D'
               THEN
                  v_return := v_return || 'Qiao';
               WHEN v_compare BETWEEN '8D40' AND '8D7E'
               THEN
                  v_return := v_return || 'Qie';
               WHEN v_compare BETWEEN '8D81' AND '8DFA'
               THEN
                  v_return := v_return || 'Qin';
               WHEN v_compare BETWEEN '8DFC' AND '8E5D'
               THEN
                  v_return := v_return || 'Qing';
               WHEN v_compare BETWEEN '8E5E' AND '8E98'
               THEN
                  v_return := v_return || 'Qiong';
               WHEN v_compare BETWEEN '8E9A' AND '8F2A'
               THEN
                  v_return := v_return || 'Qiu';
               WHEN v_compare BETWEEN '8F2E' AND '8FE9'
               THEN
                  v_return := v_return || 'Qu';
               WHEN v_compare BETWEEN '8FEA' AND '905D'
               THEN
                  v_return := v_return || 'Quan';
               WHEN v_compare BETWEEN '905E' AND '9099'
               THEN
                  v_return := v_return || 'Que';
               WHEN v_compare BETWEEN '909A' AND '90AA'
               THEN
                  v_return := v_return || 'Qun';
               WHEN v_compare BETWEEN '90B0' AND '90B1'
               THEN
                  v_return := v_return || 'Ra';
               WHEN v_compare = '90B2'
               THEN
                  v_return := v_return || 'Ram';
               WHEN v_compare BETWEEN '90B4' AND '90E5'
               THEN
                  v_return := v_return || 'Ran';
               WHEN v_compare BETWEEN '90E6' AND '9104'
               THEN
                  v_return := v_return || 'Rang';
               WHEN v_compare BETWEEN '9105' AND '911C'
               THEN
                  v_return := v_return || 'Rao';
               WHEN v_compare BETWEEN '911D' AND '9120'
               THEN
                  v_return := v_return || 'Re';
               WHEN v_compare BETWEEN '9121' AND '9180'
               THEN
                  v_return := v_return || 'Ren';
               WHEN v_compare BETWEEN '9181' AND '918D'
               THEN
                  v_return := v_return || 'Reng';
               WHEN v_compare BETWEEN '918E' AND '9196'
               THEN
                  v_return := v_return || 'Ri';
               WHEN v_compare BETWEEN '9189' AND '91F1'
               THEN
                  v_return := v_return || 'Rong';
               WHEN v_compare BETWEEN '91F2' AND '9218'
               THEN
                  v_return := v_return || 'Rou';
               WHEN v_compare BETWEEN '9219' AND '9269'
               THEN
                  v_return := v_return || 'Ru';
               WHEN v_compare BETWEEN '926C' AND '9292'
               THEN
                  v_return := v_return || 'Ruan';
               WHEN v_compare BETWEEN '9294' AND '92BD'
               THEN
                  v_return := v_return || 'Rui';
               WHEN v_compare BETWEEN '92BE' AND '92C9'
               THEN
                  v_return := v_return || 'Run';
               WHEN v_compare = '92CA'
               THEN
                  v_return := v_return || 'Rua';
               WHEN v_compare BETWEEN '92CA' AND '92E4'
               THEN
                  v_return := v_return || 'Ruo';
               WHEN v_compare BETWEEN '92E5' AND '9309'
               THEN
                  v_return := v_return || 'Sa';
               WHEN v_compare = '930A'
               THEN
                  v_return := v_return || 'Saeng';
               WHEN v_compare BETWEEN '930C' AND '9325'
               THEN
                  v_return := v_return || 'Sai';
               WHEN v_compare = '9328'
               THEN
                  v_return := v_return || 'Sal';
               WHEN v_compare BETWEEN '9329' AND '9355'
               THEN
                  v_return := v_return || 'San';
               WHEN v_compare BETWEEN '9358' AND '936A'
               THEN
                  v_return := v_return || 'Sang';
               WHEN v_compare BETWEEN '936C' AND '9391'
               THEN
                  v_return := v_return || 'Sao';
               WHEN v_compare BETWEEN '9392' AND '93C5'
               THEN
                  v_return := v_return || 'Se';
               WHEN v_compare = '93C6'
               THEN
                  v_return := v_return || 'Sed';
               WHEN v_compare BETWEEN '93C8' AND '93CC'
               THEN
                  v_return := v_return || 'Sen';
               WHEN v_compare BETWEEN '93CD' AND '93D0'
               THEN
                  v_return := v_return || 'Seng';
               WHEN v_compare = '93D1'
               THEN
                  v_return := v_return || 'Seo';
               WHEN v_compare = '93D2'
               THEN
                  v_return := v_return || 'Seon';
               WHEN v_compare BETWEEN '93D4' AND '941A'
               THEN
                  v_return := v_return || 'Sha';
               WHEN v_compare BETWEEN '941D' AND '9428'
               THEN
                  v_return := v_return || 'Shai';
               WHEN v_compare BETWEEN '9429' AND '94C1'
               THEN
                  v_return := v_return || 'Shan';
               WHEN v_compare BETWEEN '94C2' AND '94EE'
               THEN
                  v_return := v_return || 'Shang';
               WHEN v_compare BETWEEN '94F1' AND '952D'
               THEN
                  v_return := v_return || 'Shao';
               WHEN v_compare BETWEEN '952E' AND '9571'
               THEN
                  v_return := v_return || 'She';
               WHEN v_compare BETWEEN '9574' AND '9602'
               THEN
                  v_return := v_return || 'Shen';
               WHEN v_compare BETWEEN '9604' AND '965C'
               THEN
                  v_return := v_return || 'Sheng';
               WHEN v_compare BETWEEN '965E' AND '9786'
               THEN
                  v_return := v_return || 'Shi';
               WHEN v_compare BETWEEN '9788' AND '97AE'
               THEN
                  v_return := v_return || 'Shou';
               WHEN v_compare BETWEEN '97B0' AND '9878'
               THEN
                  v_return := v_return || 'Shu';
               WHEN v_compare BETWEEN '987A' AND '987E'
               THEN
                  v_return := v_return || 'Shua';
               WHEN v_compare BETWEEN '9880' AND '988A'
               THEN
                  v_return := v_return || 'Shuai';
               WHEN v_compare BETWEEN '988C' AND '9894'
               THEN
                  v_return := v_return || 'Shuan';
               WHEN v_compare BETWEEN '9895' AND '98BE'
               THEN
                  v_return := v_return || 'Shuang';
               WHEN v_compare BETWEEN '98C0' AND '98D6'
               THEN
                  v_return := v_return || 'Shui';
               WHEN v_compare BETWEEN '98DC' AND '98EE'
               THEN
                  v_return := v_return || 'Shun';
               WHEN v_compare BETWEEN '98F1' AND '9911'
               THEN
                  v_return := v_return || 'Shuo';
               WHEN v_compare BETWEEN '9912' AND '99AD'
               THEN
                  v_return := v_return || 'Si';
               WHEN v_compare = '99AE'
               THEN
                  v_return := v_return || 'So';
               WHEN v_compare = '99B0'
               THEN
                  v_return := v_return || 'Sol';
               WHEN v_compare BETWEEN '99B1' AND '99F6'
               THEN
                  v_return := v_return || 'Song';
               WHEN v_compare BETWEEN '99F8' AND '9A36'
               THEN
                  v_return := v_return || 'Sou';
               WHEN v_compare BETWEEN '9A38' AND '9AB6'
               THEN
                  v_return := v_return || 'Su';
               WHEN v_compare BETWEEN '9AB8' AND '9AC4'
               THEN
                  v_return := v_return || 'Suan';
               WHEN v_compare BETWEEN '9AC5' AND '9B3A'
               THEN
                  v_return := v_return || 'Sui';
               WHEN v_compare = '9AF0'
               THEN
                  v_return := v_return || 'Wie';
               WHEN v_compare BETWEEN '9B3C' AND '9B62'
               THEN
                  v_return := v_return || 'Sun';
               WHEN v_compare BETWEEN '9B65' AND '9BA9'
               THEN
                  v_return := v_return || 'Suo';
               WHEN v_compare BETWEEN '9BAA' AND '9C10'
               THEN
                  v_return := v_return || 'Ta';
               WHEN v_compare = '9C11'
               THEN
                  v_return := v_return || 'Tae';
               WHEN v_compare BETWEEN '9C12' AND '9C59'
               THEN
                  v_return := v_return || 'Tai';
               WHEN v_compare BETWEEN '9C5A' AND '9CE0'
               THEN
                  v_return := v_return || 'Tan';
               WHEN v_compare BETWEEN '9CE2' AND '9D55'
               THEN
                  v_return := v_return || 'Tang';
               WHEN v_compare BETWEEN '9D56' AND '9DB4'
               THEN
                  v_return := v_return || 'Tao';
               WHEN v_compare = '9DB6'
               THEN
                  v_return := v_return || 'Tap';
               WHEN v_compare BETWEEN '9DB8' AND '9DC6'
               THEN
                  v_return := v_return || 'Te';
               WHEN v_compare BETWEEN '9DC8' AND '9DED'
               THEN
                  v_return := v_return || 'Teng';
               WHEN v_compare = '9DEE'
               THEN
                  v_return := v_return || 'Teo';
               WHEN v_compare = '9DF0'
               THEN
                  v_return := v_return || 'Teul';
               WHEN v_compare BETWEEN '9DF1' AND '9E82'
               THEN
                  v_return := v_return || 'Ti';
               WHEN v_compare BETWEEN '9E85' AND '9EED'
               THEN
                  v_return := v_return || 'Tian';
               WHEN v_compare BETWEEN '9EEE' AND '9F38'
               THEN
                  v_return := v_return || 'Tiao';
               WHEN v_compare BETWEEN '9F39' AND '9F56'
               THEN
                  v_return := v_return || 'Tie';
               WHEN v_compare BETWEEN '9F59' AND '9FAE'
               THEN
                  v_return := v_return || 'Ting';
               WHEN v_compare = '9FB0'
               THEN
                  v_return := v_return || 'Tol';
               WHEN v_compare BETWEEN '9FB1' AND 'A015'
               THEN
                  v_return := v_return || 'Tong';
               WHEN v_compare BETWEEN 'A016' AND 'A03A'
               THEN
                  v_return := v_return || 'Tou';
               WHEN v_compare BETWEEN 'A040' AND 'A0A9'
               THEN
                  v_return := v_return || 'Tu';
               WHEN v_compare BETWEEN 'A0AA' AND 'A0D5'
               THEN
                  v_return := v_return || 'Tuan';
               WHEN v_compare BETWEEN 'A0D6' AND 'A106'
               THEN
                  v_return := v_return || 'Tui';
               WHEN v_compare BETWEEN 'A108' AND 'A131'
               THEN
                  v_return := v_return || 'Tun';
               WHEN v_compare BETWEEN 'A134' AND 'A1AE'
               THEN
                  v_return := v_return || 'Tuo';
               WHEN v_compare BETWEEN 'A1B0' AND 'A1E8'
               THEN
                  v_return := v_return || 'Wa';
               WHEN v_compare BETWEEN 'A1E9' AND 'A1F5'
               THEN
                  v_return := v_return || 'Wai';
               WHEN v_compare BETWEEN 'A1F8' AND 'A279'
               THEN
                  v_return := v_return || 'Wan';
               WHEN v_compare BETWEEN 'A27A' AND 'A2B9'
               THEN
                  v_return := v_return || 'Wang';
               WHEN v_compare BETWEEN 'A2BC' AND 'A408'
               THEN
                  v_return := v_return || 'Wei';
               WHEN v_compare BETWEEN 'A40D' AND 'A47C'
               THEN
                  v_return := v_return || 'Wen';
               WHEN v_compare BETWEEN 'A47D' AND 'A4A2'
               THEN
                  v_return := v_return || 'Weng';
               WHEN v_compare BETWEEN 'A4A4' AND 'A4EA'
               THEN
                  v_return := v_return || 'Wo';
               WHEN v_compare BETWEEN 'A4EC' AND 'A5D4'
               THEN
                  v_return := v_return || 'Wu';
               WHEN v_compare BETWEEN 'A5D6' AND 'A784'
               THEN
                  v_return := v_return || 'Xi';
               WHEN v_compare BETWEEN 'A785' AND 'A7FA'
               THEN
                  v_return := v_return || 'Xia';
               WHEN v_compare BETWEEN 'A7FD' AND 'A951'
               THEN
                  v_return := v_return || 'Xian';
               WHEN v_compare BETWEEN 'A954' AND 'A9CE'
               THEN
                  v_return := v_return || 'Xiang';
               WHEN v_compare BETWEEN 'A9D0' AND 'AA8A'
               THEN
                  v_return := v_return || 'Xiao';
               WHEN v_compare BETWEEN 'AA8D' AND 'AB7E'
               THEN
                  v_return := v_return || 'Xie';
               WHEN v_compare BETWEEN 'AB80' AND 'ABEE'
               THEN
                  v_return := v_return || 'Xin';
               WHEN v_compare BETWEEN 'ABF0' AND 'AC41'
               THEN
                  v_return := v_return || 'Xing';
               WHEN v_compare BETWEEN 'AC42' AND 'AC64'
               THEN
                  v_return := v_return || 'Xiong';
               WHEN v_compare BETWEEN 'AC65' AND 'ACBA'
               THEN
                  v_return := v_return || 'Xiu';
               WHEN v_compare BETWEEN 'ACBC' AND 'AD90'
               THEN
                  v_return := v_return || 'Xu';
               WHEN v_compare = 'ACD9'
               THEN
                  v_return := v_return || 'Chua';
               WHEN v_compare BETWEEN 'AD91' AND 'AE32'
               THEN
                  v_return := v_return || 'Xuan';
               WHEN v_compare BETWEEN 'AE34' AND 'AE89'
               THEN
                  v_return := v_return || 'Xue';
               WHEN v_compare BETWEEN 'AE8C' AND 'AF1E'
               THEN
                  v_return := v_return || 'Xun';
               WHEN v_compare BETWEEN 'AF20' AND 'AF96'
               THEN
                  v_return := v_return || 'Ya';
               WHEN v_compare BETWEEN 'AF98' AND 'B118'
               THEN
                  v_return := v_return || 'Yan';
               WHEN v_compare = 'B030'
               THEN
                  v_return := v_return || 'Eom';
               WHEN v_compare BETWEEN 'B11A' AND 'B1A8'
               THEN
                  v_return := v_return || 'Yang';
               WHEN v_compare BETWEEN 'B1AD' AND 'B275'
               THEN
                  v_return := v_return || 'Yao';
               WHEN v_compare BETWEEN 'B276' AND 'B30A'
               THEN
                  v_return := v_return || 'Ye';
               WHEN v_compare BETWEEN 'B30D' AND 'B30E'
               THEN
                  v_return := v_return || 'Yen';
               WHEN v_compare BETWEEN 'B310' AND 'B594'
               THEN
                  v_return := v_return || 'Yi';
               WHEN v_compare = 'B359'
               THEN
                  v_return := v_return || 'I';
               WHEN v_compare BETWEEN 'B596' AND 'B684'
               THEN
                  v_return := v_return || 'Yin';
               WHEN v_compare BETWEEN 'B685' AND 'B768'
               THEN
                  v_return := v_return || 'Ying';
               WHEN v_compare BETWEEN 'B76C' AND 'B76E'
               THEN
                  v_return := v_return || 'Yo';
               WHEN v_compare BETWEEN 'B770' AND 'B7EA'
               THEN
                  v_return := v_return || 'Yong';
               WHEN v_compare BETWEEN 'B7EC' AND 'B8B2'
               THEN
                  v_return := v_return || 'You';
               WHEN v_compare BETWEEN 'B8B5' AND 'BA98'
               THEN
                  v_return := v_return || 'Yu';
               WHEN v_compare BETWEEN 'BA99' AND 'BB58'
               THEN
                  v_return := v_return || 'Yuan';
               WHEN v_compare BETWEEN 'BB59' AND 'BBBE'
               THEN
                  v_return := v_return || 'Yue';
               WHEN v_compare BETWEEN 'BBC1' AND 'BC58'
               THEN
                  v_return := v_return || 'Yun';
               WHEN v_compare BETWEEN 'BC59' AND 'BC7E'
               THEN
                  v_return := v_return || 'Za';
               WHEN v_compare BETWEEN 'BC81' AND 'BCA8'
               THEN
                  v_return := v_return || 'Zai';
               WHEN v_compare BETWEEN 'BCAA' AND 'BCEA'
               THEN
                  v_return := v_return || 'Zan';
               WHEN v_compare BETWEEN 'BCEE' AND 'BD0A'
               THEN
                  v_return := v_return || 'Zang';
               WHEN v_compare BETWEEN 'BD0C' AND 'BD46'
               THEN
                  v_return := v_return || 'Zao';
               WHEN v_compare BETWEEN 'BD48' AND 'BD99'
               THEN
                  v_return := v_return || 'Ze';
               WHEN v_compare BETWEEN 'BD9A' AND 'BDA2'
               THEN
                  v_return := v_return || 'Zei';
               WHEN v_compare BETWEEN 'BDA5' AND 'BDAC'
               THEN
                  v_return := v_return || 'Zen';
               WHEN v_compare BETWEEN 'BDAD' AND 'BDCC'
               THEN
                  v_return := v_return || 'Zeng';
               WHEN v_compare BETWEEN 'BDCE' AND 'BE40'
               THEN
                  v_return := v_return || 'Zha';
               WHEN v_compare = 'BDF8'
               THEN
                  v_return := v_return || 'Gad';
               WHEN v_compare BETWEEN 'BE41' AND 'BE62'
               THEN
                  v_return := v_return || 'Zhai';
               WHEN v_compare BETWEEN 'BE65' AND 'BEF4'
               THEN
                  v_return := v_return || 'Zhan';
               WHEN v_compare BETWEEN 'BEF6' AND 'BF3E'
               THEN
                  v_return := v_return || 'Zhang';
               WHEN v_compare BETWEEN 'BF40' AND 'BF8C'
               THEN
                  v_return := v_return || 'Zhao';
               WHEN v_compare BETWEEN 'BF8E' AND 'BFF8'
               THEN
                  v_return := v_return || 'Zhe';
               WHEN v_compare BETWEEN 'BFF9' AND 'C0B2'
               THEN
                  v_return := v_return || 'Zhen';
               WHEN v_compare BETWEEN 'C0B4' AND 'C11E'
               THEN
                  v_return := v_return || 'Zheng';
               WHEN v_compare BETWEEN 'C122' AND 'C2C4'
               THEN
                  v_return := v_return || 'Zhi';
               WHEN v_compare BETWEEN 'C2C5' AND 'C31A'
               THEN
                  v_return := v_return || 'Zhong';
               WHEN v_compare BETWEEN 'C31D' AND 'C39A'
               THEN
                  v_return := v_return || 'Zhou';
               WHEN v_compare BETWEEN 'C39C' AND 'C47C'
               THEN
                  v_return := v_return || 'Zhu';
               WHEN v_compare BETWEEN 'C47D' AND 'C484'
               THEN
                  v_return := v_return || 'Zhua';
               WHEN v_compare BETWEEN 'C485' AND 'C486'
               THEN
                  v_return := v_return || 'Zhuai';
               WHEN v_compare BETWEEN 'C488' AND 'C4C0'
               THEN
                  v_return := v_return || 'Zhuan';
               WHEN v_compare BETWEEN 'C4C2' AND 'C4E5'
               THEN
                  v_return := v_return || 'Zhuang';
               WHEN v_compare BETWEEN 'C4E6' AND 'C51C'
               THEN
                  v_return := v_return || 'Zhui';
               WHEN v_compare BETWEEN 'C51D' AND 'C530'
               THEN
                  v_return := v_return || 'Zhun';
               WHEN v_compare BETWEEN 'C534' AND 'C5A5'
               THEN
                  v_return := v_return || 'Zhuo';
               WHEN v_compare BETWEEN 'C5A8' AND 'C648'
               THEN
                  v_return := v_return || 'Zi';
               WHEN v_compare = 'C64A'
               THEN
                  v_return := v_return || 'Zo';
               WHEN v_compare BETWEEN 'C64C' AND 'C6B5'
               THEN
                  v_return := v_return || 'Zong';
               WHEN v_compare BETWEEN 'C6B6' AND 'C6D6'
               THEN
                  v_return := v_return || 'Zou';
               WHEN v_compare BETWEEN 'C6E1' AND 'C714'
               THEN
                  v_return := v_return || 'Zu';
               WHEN v_compare BETWEEN 'C715' AND 'C72D'
               THEN
                  v_return := v_return || 'Zuan';
               WHEN v_compare BETWEEN 'C72E' AND 'C75E'
               THEN
                  v_return := v_return || 'Zui';
               WHEN v_compare BETWEEN 'C760' AND 'C776'
               THEN
                  v_return := v_return || 'Zun';
               WHEN v_compare BETWEEN 'C77A' AND 'C7B4'
               THEN
                  v_return := v_return || 'Zuo';
               ELSE
                  v_return := v_return || v_substr;
            END CASE;
         END LOOP;
      WHEN 3
      THEN                                                             --首字母小写
         FOR i IN 1 .. v_length
         LOOP
            v_substr := SUBSTR (p_str, i, 1);
            v_compare := fn_nlssort (v_substr);

            CASE
               WHEN v_compare BETWEEN '3B29' AND '3C82'
               THEN
                  v_return := v_return || 'a';
               WHEN v_compare BETWEEN '3C84' AND '427C'
               THEN
                  v_return := v_return || 'b';
               WHEN v_compare BETWEEN '427D' AND '4BA9'
               THEN
                  v_return := v_return || 'c';
               WHEN v_compare BETWEEN '4BAD' AND '5200'
               THEN
                  v_return := v_return || 'd';
               WHEN v_compare BETWEEN '5205' AND '5332'
               THEN
                  v_return := v_return || 'e';
               WHEN v_compare BETWEEN '5334' AND '5739'
               THEN
                  v_return := v_return || 'f';
               WHEN v_compare BETWEEN '573C' AND '5CB6'
               THEN
                  v_return := v_return || 'g';
               WHEN v_compare BETWEEN '5CB8' AND '63FA'
               THEN
                  v_return := v_return || 'h';
               WHEN v_compare = 'B359'
               THEN
                  v_return := v_return || 'i';
               WHEN v_compare BETWEEN '63FE' AND '6E85'
               THEN
                  v_return := v_return || 'j';
               WHEN v_compare BETWEEN '5BC8' AND '7226'
               THEN
                  v_return := v_return || 'k';
               WHEN v_compare BETWEEN '722C' AND '7C98'
               THEN
                  v_return := v_return || 'l';
               WHEN v_compare BETWEEN '569D' AND '821E'
               THEN
                  v_return := v_return || 'm';
               WHEN v_compare BETWEEN '8224' AND '8574'
               THEN
                  v_return := v_return || 'n';
               WHEN v_compare BETWEEN '8575' AND '85AE'
               THEN
                  v_return := v_return || 'o';
               WHEN v_compare BETWEEN '85B1' AND '89C4'
               THEN
                  v_return := v_return || 'p';
               WHEN v_compare BETWEEN '7E0C' AND '90AA'
               THEN
                  v_return := v_return || 'q';
               WHEN v_compare BETWEEN '90B0' AND '92E4'
               THEN
                  v_return := v_return || 'r';
               WHEN v_compare BETWEEN '92E5' AND '9BA9'
               THEN
                  v_return := v_return || 's';
               WHEN v_compare BETWEEN '5160' AND 'A1AE'
               THEN
                  v_return := v_return || 't';
               WHEN v_compare BETWEEN '9AF0' AND 'A5D4'
               THEN
                  v_return := v_return || 'w';
               WHEN v_compare BETWEEN 'A5D6' AND 'AF1E'
               THEN
                  v_return := v_return || 'x';
               WHEN v_compare BETWEEN 'AF20' AND 'BC58'
               THEN
                  v_return := v_return || 'y';
               WHEN v_compare BETWEEN 'BC59' AND 'C7B4'
               THEN
                  v_return := v_return || 'z';
               ELSE
                  v_return := v_return || v_substr;
            END CASE;
         END LOOP;
      WHEN 4
      THEN                                                             --首字母大写
         FOR i IN 1 .. v_length
         LOOP
            v_substr := SUBSTR (p_str, i, 1);
            v_compare := fn_nlssort (v_substr);

            CASE
               WHEN v_compare BETWEEN '3B29' AND '3C82'
               THEN
                  v_return := v_return || 'A';
               WHEN v_compare BETWEEN '3C84' AND '427C'
               THEN
                  v_return := v_return || 'B';
               WHEN v_compare BETWEEN '427D' AND '4BA9'
               THEN
                  v_return := v_return || 'C';
               WHEN v_compare BETWEEN '4BAD' AND '5200'
               THEN
                  v_return := v_return || 'D';
               WHEN v_compare BETWEEN '5205' AND '5332'
               THEN
                  v_return := v_return || 'E';
               WHEN v_compare BETWEEN '5334' AND '5739'
               THEN
                  v_return := v_return || 'F';
               WHEN v_compare BETWEEN '573C' AND '5CB6'
               THEN
                  v_return := v_return || 'G';
               WHEN v_compare BETWEEN '5CB8' AND '63FA'
               THEN
                  v_return := v_return || 'H';
               WHEN v_compare = 'B359'
               THEN
                  v_return := v_return || 'I';
               WHEN v_compare BETWEEN '63FE' AND '6E85'
               THEN
                  v_return := v_return || 'J';
               WHEN v_compare BETWEEN '5BC8' AND '7226'
               THEN
                  v_return := v_return || 'K';
               WHEN v_compare BETWEEN '722C' AND '7C98'
               THEN
                  v_return := v_return || 'L';
               WHEN v_compare BETWEEN '569D' AND '821E'
               THEN
                  v_return := v_return || 'M';
               WHEN v_compare BETWEEN '8224' AND '8574'
               THEN
                  v_return := v_return || 'N';
               WHEN v_compare BETWEEN '8575' AND '85AE'
               THEN
                  v_return := v_return || 'O';
               WHEN v_compare BETWEEN '85B1' AND '89C4'
               THEN
                  v_return := v_return || 'P';
               WHEN v_compare BETWEEN '7E0C' AND '90AA'
               THEN
                  v_return := v_return || 'Q';
               WHEN v_compare BETWEEN '90B0' AND '92E4'
               THEN
                  v_return := v_return || 'R';
               WHEN v_compare BETWEEN '92E5' AND '9BA9'
               THEN
                  v_return := v_return || 'S';
               WHEN v_compare BETWEEN '5160' AND 'A1AE'
               THEN
                  v_return := v_return || 'T';
               WHEN v_compare BETWEEN '9AF0' AND 'A5D4'
               THEN
                  v_return := v_return || 'W';
               WHEN v_compare BETWEEN 'A5D6' AND 'AF1E'
               THEN
                  v_return := v_return || 'X';
               WHEN v_compare BETWEEN 'AF20' AND 'BC58'
               THEN
                  v_return := v_return || 'Y';
               WHEN v_compare BETWEEN 'BC59' AND 'C7B4'
               THEN
                  v_return := v_return || 'Z';
               ELSE
                  v_return := v_return || v_substr;
            END CASE;
         END LOOP;
      ELSE                                                              --全拼小写
         FOR i IN 1 .. v_length
         LOOP
            v_substr := SUBSTR (p_str, i, 1);
            v_compare := fn_nlssort (v_substr);

            CASE
               WHEN v_compare BETWEEN '3B29' AND '3B30'
               THEN
                  v_return := v_return || 'a';
               WHEN v_compare = '3B31'
               THEN
                  v_return := v_return || 'aes';
               WHEN v_compare BETWEEN '3B32' AND '3B9E'
               THEN
                  v_return := v_return || 'ai';
               WHEN v_compare BETWEEN '3BA0' AND '3BFE'
               THEN
                  v_return := v_return || 'an';
               WHEN v_compare BETWEEN '3C01' AND '3C14'
               THEN
                  v_return := v_return || 'ang';
               WHEN v_compare BETWEEN '3C15' AND '3C82'
               THEN
                  v_return := v_return || 'ao';
               WHEN v_compare BETWEEN '3C84' AND '3CE9'
               THEN
                  v_return := v_return || 'ba';
               WHEN v_compare BETWEEN '3CED' AND '3D1D'
               THEN
                  v_return := v_return || 'bai';
               WHEN v_compare BETWEEN '3D20' AND '3D64'
               THEN
                  v_return := v_return || 'ban';
               WHEN v_compare BETWEEN '3D66' AND '3DA2'
               THEN
                  v_return := v_return || 'bang';
               WHEN v_compare BETWEEN '3DA4' AND '3E10'
               THEN
                  v_return := v_return || 'bao';
               WHEN v_compare = '3E11'
               THEN
                  v_return := v_return || 'be';
               WHEN v_compare BETWEEN '3E12' AND '3E7A'
               THEN
                  v_return := v_return || 'bei';
               WHEN v_compare BETWEEN '3E7C' AND '3EA0'
               THEN
                  v_return := v_return || 'ben';
               WHEN v_compare BETWEEN '3EA1' AND '3ED5'
               THEN
                  v_return := v_return || 'beng';
               WHEN v_compare BETWEEN '3ED8' AND '3FE9'
               THEN
                  v_return := v_return || 'bi';
               WHEN v_compare BETWEEN '3FEA' AND '4055'
               THEN
                  v_return := v_return || 'bian';
               WHEN v_compare BETWEEN '4058' AND '40AE'
               THEN
                  v_return := v_return || 'biao';
               WHEN v_compare = '4060'
               THEN
                  v_return := v_return || 'bia';
               WHEN v_compare BETWEEN '40B4' AND '40D4'
               THEN
                  v_return := v_return || 'bie';
               WHEN v_compare BETWEEN '40D6' AND '4116'
               THEN
                  v_return := v_return || 'bin';
               WHEN v_compare BETWEEN '4118' AND '4160'
               THEN
                  v_return := v_return || 'bing';
               WHEN v_compare BETWEEN '4161' AND '4224'
               THEN
                  v_return := v_return || 'bo';
               WHEN v_compare BETWEEN '4225' AND '427C'
               THEN
                  v_return := v_return || 'bu';
               WHEN v_compare BETWEEN '427D' AND '4289'
               THEN
                  v_return := v_return || 'ca';
               WHEN v_compare BETWEEN '428C' AND '42B5'
               THEN
                  v_return := v_return || 'cai';
               WHEN v_compare BETWEEN '42B9' AND '430C'
               THEN
                  v_return := v_return || 'can';
               WHEN v_compare BETWEEN '430D' AND '4334'
               THEN
                  v_return := v_return || 'cang';
               WHEN v_compare BETWEEN '4335' AND '435C'
               THEN
                  v_return := v_return || 'cao';
               WHEN v_compare BETWEEN '435D' AND '438C'
               THEN
                  v_return := v_return || 'ce';
               WHEN v_compare BETWEEN '4390' AND '4398'
               THEN
                  v_return := v_return || 'cen';
               WHEN v_compare BETWEEN '439D' AND '43AA'
               THEN
                  v_return := v_return || 'ceng';
               WHEN v_compare = '43AC'
               THEN
                  v_return := v_return || 'ceok';
               WHEN v_compare = '43AE'
               THEN
                  v_return := v_return || 'ceom';
               WHEN v_compare = '43B0'
               THEN
                  v_return := v_return || 'ceon';
               WHEN v_compare = '43B1'
               THEN
                  v_return := v_return || 'ceor';
               WHEN v_compare BETWEEN '43B2' AND '440A'
               THEN
                  v_return := v_return || 'cha';
               WHEN v_compare BETWEEN '440E' AND '442D'
               THEN
                  v_return := v_return || 'chai';
               WHEN v_compare BETWEEN '4431' AND '44E1'
               THEN
                  v_return := v_return || 'chan';
               WHEN v_compare BETWEEN '44E4' AND '4552'
               THEN
                  v_return := v_return || 'chang';
               WHEN v_compare BETWEEN '4554' AND '458E'
               THEN
                  v_return := v_return || 'chao';
               WHEN v_compare BETWEEN '4590' AND '45C8'
               THEN
                  v_return := v_return || 'che';
               WHEN v_compare BETWEEN '45C9' AND '463D'
               THEN
                  v_return := v_return || 'chen';
               WHEN v_compare BETWEEN '463E' AND '46CD'
               THEN
                  v_return := v_return || 'cheng';
               WHEN v_compare BETWEEN '46CE' AND '47A6'
               THEN
                  v_return := v_return || 'chi';
               WHEN v_compare BETWEEN '47A8' AND '47EC'
               THEN
                  v_return := v_return || 'chong';
               WHEN v_compare BETWEEN '47ED' AND '484C'
               THEN
                  v_return := v_return || 'chou';
               WHEN v_compare BETWEEN '484D' AND '48E2'
               THEN
                  v_return := v_return || 'chu';
               WHEN v_compare BETWEEN '48E9' AND '48F4'
               THEN
                  v_return := v_return || 'chuai';
               WHEN v_compare BETWEEN '48F6' AND '4924'
               THEN
                  v_return := v_return || 'chuan';
               WHEN v_compare BETWEEN '4925' AND '4951'
               THEN
                  v_return := v_return || 'chuang';
               WHEN v_compare BETWEEN '4954' AND '496E'
               THEN
                  v_return := v_return || 'chui';
               WHEN v_compare BETWEEN '4971' AND '49C6'
               THEN
                  v_return := v_return || 'chun';
               WHEN v_compare BETWEEN '49C8' AND '49EA'
               THEN
                  v_return := v_return || 'chuo';
               WHEN v_compare BETWEEN '49EC' AND '4A4A'
               THEN
                  v_return := v_return || 'ci';
               WHEN v_compare = '4A50'
               THEN
                  v_return := v_return || 'cis';
               WHEN v_compare BETWEEN '4A51' AND '4AB2'
               THEN
                  v_return := v_return || 'cong';
               WHEN v_compare BETWEEN '4AB4' AND '4ABA'
               THEN
                  v_return := v_return || 'cou';
               WHEN v_compare BETWEEN '4ABC' AND '4AEA'
               THEN
                  v_return := v_return || 'cu';
               WHEN v_compare BETWEEN '4AEE' AND '4B0C'
               THEN
                  v_return := v_return || 'cuan';
               WHEN v_compare BETWEEN '4B0D' AND '4B56'
               THEN
                  v_return := v_return || 'cui';
               WHEN v_compare BETWEEN '4B59' AND '4B6C'
               THEN
                  v_return := v_return || 'cun';
               WHEN v_compare BETWEEN '4B70' AND '4BA9'
               THEN
                  v_return := v_return || 'cuo';
               WHEN v_compare BETWEEN '4BAD' AND '4BFE'
               THEN
                  v_return := v_return || 'da';
               WHEN v_compare BETWEEN '4C00' AND '4C4E'
               THEN
                  v_return := v_return || 'dai';
               WHEN v_compare BETWEEN '4C50' AND '4CDC'
               THEN
                  v_return := v_return || 'dan';
               WHEN v_compare BETWEEN '4CDE' AND '4D26'
               THEN
                  v_return := v_return || 'dang';
               WHEN v_compare BETWEEN '4D28' AND '4D76'
               THEN
                  v_return := v_return || 'dao';
               WHEN v_compare BETWEEN '4D7E' AND '4D8D'
               THEN
                  v_return := v_return || 'de';
               WHEN v_compare = '4D8E'
               THEN
                  v_return := v_return || 'dem';
               WHEN v_compare BETWEEN '4D90' AND '4D91'
               THEN
                  v_return := v_return || 'den';
               WHEN v_compare BETWEEN '4D94' AND '4DC0'
               THEN
                  v_return := v_return || 'deng';
               WHEN v_compare BETWEEN '4DC4' AND '4E8A'
               THEN
                  v_return := v_return || 'di';
               WHEN v_compare = '4E8C'
               THEN
                  v_return := v_return || 'dia';
               WHEN v_compare BETWEEN '4E8D' AND '4EE8'
               THEN
                  v_return := v_return || 'dian';
               WHEN v_compare BETWEEN '4EE9' AND '4F38'
               THEN
                  v_return := v_return || 'diao';
               WHEN v_compare BETWEEN '4F39' AND '4F90'
               THEN
                  v_return := v_return || 'die';
               WHEN v_compare = '4F8D'
               THEN
                  v_return := v_return || 'dei';
               WHEN v_compare = '4F91'
               THEN
                  v_return := v_return || 'dim';
               WHEN v_compare BETWEEN '4F92' AND '4FCD'
               THEN
                  v_return := v_return || 'ding';
               WHEN v_compare BETWEEN '4FCD' AND '4FD4'
               THEN
                  v_return := v_return || 'diu';
               WHEN v_compare BETWEEN '4FD5' AND '5032'
               THEN
                  v_return := v_return || 'dong';
               WHEN v_compare BETWEEN '5034' AND '507C'
               THEN
                  v_return := v_return || 'dou';
               WHEN v_compare = '5044'
               THEN
                  v_return := v_return || 'dul';
               WHEN v_compare BETWEEN '507E' AND '50E9'
               THEN
                  v_return := v_return || 'du';
               WHEN v_compare BETWEEN '50EA' AND '5110'
               THEN
                  v_return := v_return || 'duan';
               WHEN v_compare BETWEEN '5114' AND '514E'
               THEN
                  v_return := v_return || 'dui';
               WHEN v_compare BETWEEN '5152' AND '518D'
               THEN
                  v_return := v_return || 'dun';
               WHEN v_compare = '5160'
               THEN
                  v_return := v_return || 'ton';
               WHEN v_compare BETWEEN '518E' AND '5200'
               THEN
                  v_return := v_return || 'duo';
               WHEN v_compare BETWEEN '5205' AND '52C2'
               THEN
                  v_return := v_return || 'e';
               WHEN v_compare BETWEEN '52C4' AND '52CD'
               THEN
                  v_return := v_return || 'en';
               WHEN v_compare = '52D4'
               THEN
                  v_return := v_return || 'eng';
               WHEN v_compare = '52D5'
               THEN
                  v_return := v_return || 'eo';
               WHEN v_compare = '52D6'
               THEN
                  v_return := v_return || 'eol';
               WHEN v_compare = '52D8'
               THEN
                  v_return := v_return || 'eos';
               WHEN v_compare BETWEEN '52D9' AND '5332'
               THEN
                  v_return := v_return || 'er';
               WHEN v_compare BETWEEN '5334' AND '5366'
               THEN
                  v_return := v_return || 'fa';
               WHEN v_compare BETWEEN '536A' AND '53FA'
               THEN
                  v_return := v_return || 'fan';
               WHEN v_compare BETWEEN '53FD' AND '5438'
               THEN
                  v_return := v_return || 'fang';
               WHEN v_compare BETWEEN '5439' AND '54B2'
               THEN
                  v_return := v_return || 'fei';
               WHEN v_compare BETWEEN '54B4' AND '5528'
               THEN
                  v_return := v_return || 'fen';
               WHEN v_compare BETWEEN '5529' AND '55A9'
               THEN
                  v_return := v_return || 'feng';
               WHEN v_compare BETWEEN '55AA' AND '55AE'
               THEN
                  v_return := v_return || 'fo';
               WHEN v_compare BETWEEN '55B1' AND '55BC'
               THEN
                  v_return := v_return || 'fou';
               WHEN v_compare BETWEEN '55BD' AND '5739'
               THEN
                  v_return := v_return || 'fu';
               WHEN v_compare = '569D'
               THEN
                  v_return := v_return || 'm';
               WHEN v_compare BETWEEN '573C' AND '574C'
               THEN
                  v_return := v_return || 'ga';
               WHEN v_compare BETWEEN '574D' AND '578C'
               THEN
                  v_return := v_return || 'gai';
               WHEN v_compare BETWEEN '578D' AND '57F0'
               THEN
                  v_return := v_return || 'gan';
               WHEN v_compare BETWEEN '57F1' AND '582C'
               THEN
                  v_return := v_return || 'gang';
               WHEN v_compare BETWEEN '582E' AND '5884'
               THEN
                  v_return := v_return || 'gao';
               WHEN v_compare BETWEEN '5885' AND '5905'
               THEN
                  v_return := v_return || 'ge';
               WHEN v_compare = '5906'
               THEN
                  v_return := v_return || 'gei';
               WHEN v_compare BETWEEN '5909' AND '5915'
               THEN
                  v_return := v_return || 'gen';
               WHEN v_compare BETWEEN '5918' AND '594E'
               THEN
                  v_return := v_return || 'geng';
               WHEN v_compare = '5956'
               THEN
                  v_return := v_return || 'gib';
               WHEN v_compare = '5958'
               THEN
                  v_return := v_return || 'go';
               WHEN v_compare BETWEEN '5959' AND '59BA'
               THEN
                  v_return := v_return || 'gong';
               WHEN v_compare BETWEEN '59BD' AND '5A0E'
               THEN
                  v_return := v_return || 'gou';
               WHEN v_compare BETWEEN '5A10' AND '5AB2'
               THEN
                  v_return := v_return || 'gu';
               WHEN v_compare BETWEEN '5AB4' AND '5AE8'
               THEN
                  v_return := v_return || 'gua';
               WHEN v_compare BETWEEN '5AE9' AND '5AF8'
               THEN
                  v_return := v_return || 'guai';
               WHEN v_compare BETWEEN '5AFD' AND '5B5E'
               THEN
                  v_return := v_return || 'guan';
               WHEN v_compare BETWEEN '5B60' AND '5B8C'
               THEN
                  v_return := v_return || 'guang';
               WHEN v_compare BETWEEN '5B8D' AND '5C2E'
               THEN
                  v_return := v_return || 'gui';
               WHEN v_compare = '5BC8'
               THEN
                  v_return := v_return || 'kwi';
               WHEN v_compare BETWEEN '5C30' AND '5C58'
               THEN
                  v_return := v_return || 'gun';
               WHEN v_compare BETWEEN '5C51' AND '5CB6'
               THEN
                  v_return := v_return || 'guo';
               WHEN v_compare BETWEEN '5CB8' AND '5CBD'
               THEN
                  v_return := v_return || 'ha';
               WHEN v_compare BETWEEN '5CC6' AND '5CEC'
               THEN
                  v_return := v_return || 'hai';
               WHEN v_compare = '5CED'
               THEN
                  v_return := v_return || 'hal';
               WHEN v_compare BETWEEN '5CEE' AND '5D99'
               THEN
                  v_return := v_return || 'han';
               WHEN v_compare BETWEEN '5D9D' AND '5DBC'
               THEN
                  v_return := v_return || 'hang';
               WHEN v_compare BETWEEN '5DBE' AND '5E20'
               THEN
                  v_return := v_return || 'hao';
               WHEN v_compare = '5E02'
               THEN
                  v_return := v_return || 'ho';
               WHEN v_compare BETWEEN '5E22' AND '5EC5'
               THEN
                  v_return := v_return || 'he';
               WHEN v_compare BETWEEN '5EC6' AND '5ECE'
               THEN
                  v_return := v_return || 'hei';
               WHEN v_compare BETWEEN '5ED0' AND '5EDC'
               THEN
                  v_return := v_return || 'hen';
               WHEN v_compare BETWEEN '5EDD' AND '5EDC'
               THEN
                  v_return := v_return || 'heng';
               WHEN v_compare = '5F04'
               THEN
                  v_return := v_return || 'hol';
               WHEN v_compare BETWEEN '5F05' AND '5F8D'
               THEN
                  v_return := v_return || 'hong';
               WHEN v_compare BETWEEN '5F8E' AND '5FD2'
               THEN
                  v_return := v_return || 'hou';
               WHEN v_compare BETWEEN '5FD4' AND '60B1'
               THEN
                  v_return := v_return || 'hu';
               WHEN v_compare BETWEEN '60B2' AND '6111'
               THEN
                  v_return := v_return || 'hua';
               WHEN v_compare BETWEEN '6112' AND '612D'
               THEN
                  v_return := v_return || 'huai';
               WHEN v_compare BETWEEN '612E' AND '61C6'
               THEN
                  v_return := v_return || 'huan';
               WHEN v_compare BETWEEN '61CA' AND '624A'
               THEN
                  v_return := v_return || 'huang';
               WHEN v_compare BETWEEN '624C' AND '6344'
               THEN
                  v_return := v_return || 'hui';
               WHEN v_compare BETWEEN '6346' AND '6388'
               THEN
                  v_return := v_return || 'hun';
               WHEN v_compare BETWEEN '638C' AND '63FA'
               THEN
                  v_return := v_return || 'huo';
               WHEN v_compare = '63FD'
               THEN
                  v_return := v_return || 'hwa';
               WHEN v_compare BETWEEN '63FE' AND '6601'
               THEN
                  v_return := v_return || 'ji';
               WHEN v_compare BETWEEN '6604' AND '6691'
               THEN
                  v_return := v_return || 'jia';
               WHEN v_compare BETWEEN '6692' AND '67F8'
               THEN
                  v_return := v_return || 'jian';
               WHEN v_compare BETWEEN '67F9' AND '6860'
               THEN
                  v_return := v_return || 'jiang';
               WHEN v_compare BETWEEN '6862' AND '6930'
               THEN
                  v_return := v_return || 'jiao';
               WHEN v_compare BETWEEN '6931' AND '6A18'
               THEN
                  v_return := v_return || 'jie';
               WHEN v_compare BETWEEN '6A1A' AND '6AC9'
               THEN
                  v_return := v_return || 'jin';
               WHEN v_compare BETWEEN '6ACA' AND '6B65'
               THEN
                  v_return := v_return || 'jing';
               WHEN v_compare BETWEEN '6B66' AND '6B9A'
               THEN
                  v_return := v_return || 'jiong';
               WHEN v_compare BETWEEN '6B9C' AND '6C0C'
               THEN
                  v_return := v_return || 'jiu';
               WHEN v_compare = '6C0D'
               THEN
                  v_return := v_return || 'jou';
               WHEN v_compare BETWEEN '6C0E' AND '6D2A'
               THEN
                  v_return := v_return || 'ju';
               WHEN v_compare BETWEEN '6D2D' AND '6D80'
               THEN
                  v_return := v_return || 'juan';
               WHEN v_compare BETWEEN '6D82' AND '6E28'
               THEN
                  v_return := v_return || 'jue';
               WHEN v_compare BETWEEN '6E2A' AND '6E85'
               THEN
                  v_return := v_return || 'jun';
               WHEN v_compare BETWEEN '6E86' AND '6E92'
               THEN
                  v_return := v_return || 'ka';
               WHEN v_compare BETWEEN '6E94' AND '6EC9'
               THEN
                  v_return := v_return || 'kai';
               WHEN v_compare = '6ECC'
               THEN
                  v_return := v_return || 'kal';
               WHEN v_compare BETWEEN '6ECD' AND '6F00'
               THEN
                  v_return := v_return || 'kan';
               WHEN v_compare BETWEEN '6F02' AND '6F30'
               THEN
                  v_return := v_return || 'kang';
               WHEN v_compare BETWEEN '6F31' AND '6F4D'
               THEN
                  v_return := v_return || 'kao';
               WHEN v_compare BETWEEN '6F50' AND '6FC8'
               THEN
                  v_return := v_return || 'ke';
               WHEN v_compare BETWEEN '6FC9' AND '6FDA'
               THEN
                  v_return := v_return || 'ken';
               WHEN v_compare BETWEEN '6FDC' AND '6FF5'
               THEN
                  v_return := v_return || 'keng';
               WHEN v_compare = '6FFC'
               THEN
                  v_return := v_return || 'ki';
               WHEN v_compare BETWEEN '6FFD' AND '7016'
               THEN
                  v_return := v_return || 'kong';
               WHEN v_compare = '7018'
               THEN
                  v_return := v_return || 'kos';
               WHEN v_compare BETWEEN '7019' AND '703E'
               THEN
                  v_return := v_return || 'kou';
               WHEN v_compare BETWEEN '7041' AND '707A'
               THEN
                  v_return := v_return || 'ku';
               WHEN v_compare BETWEEN '707C' AND '7095'
               THEN
                  v_return := v_return || 'kua';
               WHEN v_compare BETWEEN '709A' AND '70C1'
               THEN
                  v_return := v_return || 'kuai';
               WHEN v_compare BETWEEN '70C2' AND '70D4'
               THEN
                  v_return := v_return || 'kuan';
               WHEN v_compare BETWEEN '70D8' AND '7128'
               THEN
                  v_return := v_return || 'kuang';
               WHEN v_compare BETWEEN '7129' AND '71B1'
               THEN
                  v_return := v_return || 'kui';
               WHEN v_compare BETWEEN '71B2' AND '71FE'
               THEN
                  v_return := v_return || 'kun';
               WHEN v_compare BETWEEN '7200' AND '7226'
               THEN
                  v_return := v_return || 'kuo';
               WHEN v_compare = '7228'
               THEN
                  v_return := v_return || 'kweok';
               WHEN v_compare BETWEEN '722C' AND '726A'
               THEN
                  v_return := v_return || 'la';
               WHEN v_compare BETWEEN '726C' AND '72B5'
               THEN
                  v_return := v_return || 'lai';
               WHEN v_compare BETWEEN '72B9' AND '733C'
               THEN
                  v_return := v_return || 'lan';
               WHEN v_compare BETWEEN '733D' AND '7388'
               THEN
                  v_return := v_return || 'lang';
               WHEN v_compare BETWEEN '7389' AND '73E5'
               THEN
                  v_return := v_return || 'lao';
               WHEN v_compare BETWEEN '73E8' AND '7402'
               THEN
                  v_return := v_return || 'le';
               WHEN v_compare BETWEEN '7404' AND '7485'
               THEN
                  v_return := v_return || 'lei';
               WHEN v_compare BETWEEN '7488' AND '7499'
               THEN
                  v_return := v_return || 'leng';
               WHEN v_compare BETWEEN '749C' AND '7642'
               THEN
                  v_return := v_return || 'li';
               WHEN v_compare BETWEEN '7644' AND '7645'
               THEN
                  v_return := v_return || 'lia';
               WHEN v_compare BETWEEN '7646' AND '76EC'
               THEN
                  v_return := v_return || 'lian';
               WHEN v_compare BETWEEN '76ED' AND '7731'
               THEN
                  v_return := v_return || 'liang';
               WHEN v_compare BETWEEN '7732' AND '7794'
               THEN
                  v_return := v_return || 'liao';
               WHEN v_compare BETWEEN '7795' AND '77E2'
               THEN
                  v_return := v_return || 'lie';
               WHEN v_compare BETWEEN '77E4' AND '785D'
               THEN
                  v_return := v_return || 'lin';
               WHEN v_compare = '77EA'
               THEN
                  v_return := v_return || 'len';
               WHEN v_compare BETWEEN '7860' AND '7904'
               THEN
                  v_return := v_return || 'ling';
               WHEN v_compare BETWEEN '7905' AND '7986'
               THEN
                  v_return := v_return || 'liu';
               WHEN v_compare BETWEEN '7988' AND '7989'
               THEN
                  v_return := v_return || 'lo';
               WHEN v_compare BETWEEN '798A' AND '79FD'
               THEN
                  v_return := v_return || 'long';
               WHEN v_compare BETWEEN '79FE' AND '7A49'
               THEN
                  v_return := v_return || 'lou';
               WHEN v_compare BETWEEN '7A4C' AND '7B4D'
               THEN
                  v_return := v_return || 'lu';
               WHEN v_compare BETWEEN '7B4E' AND '7B80'
               THEN
                  v_return := v_return || 'luan';
               WHEN v_compare BETWEEN '7B81' AND '7BB2'
               THEN
                  v_return := v_return || 'lun';
               WHEN v_compare BETWEEN '7BB5' AND '7C25'
               THEN
                  v_return := v_return || 'luo';
               WHEN v_compare BETWEEN '7C26' AND '7C82'
               THEN
                  v_return := v_return || 'lv';
               WHEN v_compare BETWEEN '7C84' AND '7C98'
               THEN
                  v_return := v_return || 'lue';
               WHEN v_compare BETWEEN '7C9C' AND '7CE4'
               THEN
                  v_return := v_return || 'ma';
               WHEN v_compare BETWEEN '7CE5' AND '7DOC'
               THEN
                  v_return := v_return || 'mai';
               WHEN v_compare BETWEEN '7D11' AND '7D6E'
               THEN
                  v_return := v_return || 'man';
               WHEN v_compare BETWEEN '7D70' AND '7DA9'
               THEN
                  v_return := v_return || 'mang';
               WHEN v_compare BETWEEN '7DAC' AND '7E15'
               THEN
                  v_return := v_return || 'mao';
               WHEN v_compare = '7E0C'
               THEN
                  v_return := v_return || 'q';
               WHEN v_compare BETWEEN '7E18' AND '7E1E'
               THEN
                  v_return := v_return || 'me';
               WHEN v_compare BETWEEN '7E20' AND '7E9A'
               THEN
                  v_return := v_return || 'mei';
               WHEN v_compare BETWEEN '7E9D' AND '7EC1'
               THEN
                  v_return := v_return || 'men';
               WHEN v_compare BETWEEN '7EC2' AND '7F36'
               THEN
                  v_return := v_return || 'meng';
               WHEN v_compare = '7F38'
               THEN
                  v_return := v_return || 'meo';
               WHEN v_compare BETWEEN '7F39' AND '7FE4'
               THEN
                  v_return := v_return || 'mi';
               WHEN v_compare BETWEEN '7FE6' AND '8034'
               THEN
                  v_return := v_return || 'mian';
               WHEN v_compare BETWEEN '8035' AND '805A'
               THEN
                  v_return := v_return || 'miao';
               WHEN v_compare BETWEEN '805C' AND '8081'
               THEN
                  v_return := v_return || 'mie';
               WHEN v_compare BETWEEN '8084' AND '80E4'
               THEN
                  v_return := v_return || 'min';
               WHEN v_compare = '8096'
               THEN
                  v_return := v_return || 'lem';
               WHEN v_compare BETWEEN '80E5' AND '8116'
               THEN
                  v_return := v_return || 'ming';
               WHEN v_compare BETWEEN '8119' AND '811D'
               THEN
                  v_return := v_return || 'miu';
               WHEN v_compare BETWEEN '811E' AND '81A9'
               THEN
                  v_return := v_return || 'mo';
               WHEN v_compare BETWEEN '81AC' AND '81CC'
               THEN
                  v_return := v_return || 'mou';
               WHEN v_compare BETWEEN '81CD' AND '821E'
               THEN
                  v_return := v_return || 'mu';
               WHEN v_compare = '8220'
               THEN
                  v_return := v_return || 'myeo';
               WHEN v_compare = '8221'
               THEN
                  v_return := v_return || 'myeon';
               WHEN v_compare = '8222'
               THEN
                  v_return := v_return || 'myeong';
               WHEN v_compare BETWEEN '8224' AND '8258'
               THEN
                  v_return := v_return || 'na';
               WHEN v_compare BETWEEN '825D' AND '8285'
               THEN
                  v_return := v_return || 'nai';
               WHEN v_compare BETWEEN '8289' AND '82B5'
               THEN
                  v_return := v_return || 'nan';
               WHEN v_compare BETWEEN '82B9' AND '82D0'
               THEN
                  v_return := v_return || 'nang';
               WHEN v_compare BETWEEN '82D1' AND '8311'
               THEN
                  v_return := v_return || 'nao';
               WHEN v_compare BETWEEN '8312' AND '8320'
               THEN
                  v_return := v_return || 'ne';
               WHEN v_compare BETWEEN '8322' AND '8331'
               THEN
                  v_return := v_return || 'nei';
               WHEN v_compare = '8334'
               THEN
                  v_return := v_return || 'nem';
               WHEN v_compare = '8336'
               THEN
                  v_return := v_return || 'nen';
               WHEN v_compare = '8339'
               THEN
                  v_return := v_return || 'neng';
               WHEN v_compare = '833E'
               THEN
                  v_return := v_return || 'neus';
               WHEN v_compare = '8342'
               THEN
                  v_return := v_return || 'ngag';
               WHEN v_compare = '8344'
               THEN
                  v_return := v_return || 'ngai';
               WHEN v_compare = '8345'
               THEN
                  v_return := v_return || 'ngam';
               WHEN v_compare BETWEEN '8346' AND '83B9'
               THEN
                  v_return := v_return || 'ni';
               WHEN v_compare BETWEEN '83BC' AND '83ED'
               THEN
                  v_return := v_return || 'nian';
               WHEN v_compare BETWEEN '83EE' AND '83F5'
               THEN
                  v_return := v_return || 'niang';
               WHEN v_compare BETWEEN '83F8' AND '8414'
               THEN
                  v_return := v_return || 'niao';
               WHEN v_compare BETWEEN '8415' AND '8478'
               THEN
                  v_return := v_return || 'nie';
               WHEN v_compare BETWEEN '8479' AND '8480'
               THEN
                  v_return := v_return || 'nin';
               WHEN v_compare BETWEEN '8481' AND '84B4'
               THEN
                  v_return := v_return || 'ning';
               WHEN v_compare BETWEEN '84B5' AND '84D1'
               THEN
                  v_return := v_return || 'niu';
               WHEN v_compare BETWEEN '84D4' AND '84FA'
               THEN
                  v_return := v_return || 'nong';
               WHEN v_compare = '84E8'
               THEN
                  v_return := v_return || 'nung';
               WHEN v_compare BETWEEN '84FD' AND '850E'
               THEN
                  v_return := v_return || 'nou';
               WHEN v_compare BETWEEN '8511' AND '8522'
               THEN
                  v_return := v_return || 'nu';
               WHEN v_compare BETWEEN '8524' AND '852C'
               THEN
                  v_return := v_return || 'nuan';
               WHEN v_compare = '852D'
               THEN
                  v_return := v_return || 'nun';
               WHEN v_compare BETWEEN '8530' AND '8559'
               THEN
                  v_return := v_return || 'nuo';
               WHEN v_compare BETWEEN '855A' AND '8566'
               THEN
                  v_return := v_return || 'nv';
               WHEN v_compare BETWEEN '856D' AND '8574'
               THEN
                  v_return := v_return || 'nue';
               WHEN v_compare = '8575'
               THEN
                  v_return := v_return || 'o';
               WHEN v_compare = '8579'
               THEN
                  v_return := v_return || 'oes';
               WHEN v_compare = '857A'
               THEN
                  v_return := v_return || 'ol';
               WHEN v_compare = '857C'
               THEN
                  v_return := v_return || 'on';
               WHEN v_compare BETWEEN '857D' AND '85AE'
               THEN
                  v_return := v_return || 'ou';
               WHEN v_compare BETWEEN '85B1' AND '85C9'
               THEN
                  v_return := v_return || 'pa';
               WHEN v_compare BETWEEN '85CA' AND '85E4'
               THEN
                  v_return := v_return || 'pai';
               WHEN v_compare = '85E5'
               THEN
                  v_return := v_return || 'pak';
               WHEN v_compare BETWEEN '85E8' AND '8625'
               THEN
                  v_return := v_return || 'pan';
               WHEN v_compare BETWEEN '8626' AND '8658'
               THEN
                  v_return := v_return || 'pang';
               WHEN v_compare BETWEEN '8659' AND '8688'
               THEN
                  v_return := v_return || 'pao';
               WHEN v_compare BETWEEN '868A' AND '86C5'
               THEN
                  v_return := v_return || 'pei';
               WHEN v_compare BETWEEN '86C8' AND '86D6'
               THEN
                  v_return := v_return || 'pen';
               WHEN v_compare BETWEEN '86D8' AND '8740'
               THEN
                  v_return := v_return || 'peng';
               WHEN v_compare = '8741'
               THEN
                  v_return := v_return || 'peol';
               WHEN v_compare = '8742'
               THEN
                  v_return := v_return || 'phas';
               WHEN v_compare = '8744'
               THEN
                  v_return := v_return || 'phdeng';
               WHEN v_compare = '8745'
               THEN
                  v_return := v_return || 'phoi';
               WHEN v_compare = '8746'
               THEN
                  v_return := v_return || 'phos';
               WHEN v_compare BETWEEN '8748' AND '880D'
               THEN
                  v_return := v_return || 'pi';
               WHEN v_compare BETWEEN '880E' AND '883A'
               THEN
                  v_return := v_return || 'pian';
               WHEN v_compare BETWEEN '883C' AND '8869'
               THEN
                  v_return := v_return || 'piao';
               WHEN v_compare BETWEEN '886D' AND '8879'
               THEN
                  v_return := v_return || 'pie';
               WHEN v_compare BETWEEN '887A' AND '88A0'
               THEN
                  v_return := v_return || 'pin';
               WHEN v_compare BETWEEN '88A1' AND '88EC'
               THEN
                  v_return := v_return || 'ping';
               WHEN v_compare BETWEEN '88F0' AND '8938'
               THEN
                  v_return := v_return || 'po';
               WHEN v_compare BETWEEN '893E' AND '8958'
               THEN
                  v_return := v_return || 'pou';
               WHEN v_compare BETWEEN '895A' AND '895C'
               THEN
                  v_return := v_return || 'ppun';
               WHEN v_compare BETWEEN '895D' AND '89C4'
               THEN
                  v_return := v_return || 'pu';
               WHEN v_compare BETWEEN '89C5' AND '8B3E'
               THEN
                  v_return := v_return || 'qi';
               WHEN v_compare BETWEEN '8B41' AND '8B61'
               THEN
                  v_return := v_return || 'qia';
               WHEN v_compare BETWEEN '8B62' AND '8C54'
               THEN
                  v_return := v_return || 'qian';
               WHEN v_compare BETWEEN '8C5A' AND '8CB4'
               THEN
                  v_return := v_return || 'qiang';
               WHEN v_compare BETWEEN '8CB8' AND '8D3D'
               THEN
                  v_return := v_return || 'qiao';
               WHEN v_compare BETWEEN '8D40' AND '8D7E'
               THEN
                  v_return := v_return || 'qie';
               WHEN v_compare BETWEEN '8D81' AND '8DFA'
               THEN
                  v_return := v_return || 'qin';
               WHEN v_compare BETWEEN '8DFC' AND '8E5D'
               THEN
                  v_return := v_return || 'qing';
               WHEN v_compare BETWEEN '8E5E' AND '8E98'
               THEN
                  v_return := v_return || 'qiong';
               WHEN v_compare BETWEEN '8E9A' AND '8F2A'
               THEN
                  v_return := v_return || 'qiu';
               WHEN v_compare BETWEEN '8F2E' AND '8FE9'
               THEN
                  v_return := v_return || 'qu';
               WHEN v_compare BETWEEN '8FEA' AND '905D'
               THEN
                  v_return := v_return || 'quan';
               WHEN v_compare BETWEEN '905E' AND '9099'
               THEN
                  v_return := v_return || 'que';
               WHEN v_compare BETWEEN '909A' AND '90AA'
               THEN
                  v_return := v_return || 'qun';
               WHEN v_compare BETWEEN '90B0' AND '90B1'
               THEN
                  v_return := v_return || 'ra';
               WHEN v_compare = '90B2'
               THEN
                  v_return := v_return || 'ram';
               WHEN v_compare BETWEEN '90B4' AND '90E5'
               THEN
                  v_return := v_return || 'ran';
               WHEN v_compare BETWEEN '90E6' AND '9104'
               THEN
                  v_return := v_return || 'rang';
               WHEN v_compare BETWEEN '9105' AND '911C'
               THEN
                  v_return := v_return || 'rao';
               WHEN v_compare BETWEEN '911D' AND '9120'
               THEN
                  v_return := v_return || 're';
               WHEN v_compare BETWEEN '9121' AND '9180'
               THEN
                  v_return := v_return || 'ren';
               WHEN v_compare BETWEEN '9181' AND '918D'
               THEN
                  v_return := v_return || 'reng';
               WHEN v_compare BETWEEN '918E' AND '9196'
               THEN
                  v_return := v_return || 'ri';
               WHEN v_compare BETWEEN '9189' AND '91F1'
               THEN
                  v_return := v_return || 'rong';
               WHEN v_compare BETWEEN '91F2' AND '9218'
               THEN
                  v_return := v_return || 'rou';
               WHEN v_compare BETWEEN '9219' AND '9269'
               THEN
                  v_return := v_return || 'ru';
               WHEN v_compare BETWEEN '926C' AND '9292'
               THEN
                  v_return := v_return || 'ruan';
               WHEN v_compare BETWEEN '9294' AND '92BD'
               THEN
                  v_return := v_return || 'rui';
               WHEN v_compare BETWEEN '92BE' AND '92C9'
               THEN
                  v_return := v_return || 'run';
               WHEN v_compare = '92CA'
               THEN
                  v_return := v_return || 'rua';
               WHEN v_compare BETWEEN '92CA' AND '92E4'
               THEN
                  v_return := v_return || 'ruo';
               WHEN v_compare BETWEEN '92E5' AND '9309'
               THEN
                  v_return := v_return || 'sa';
               WHEN v_compare = '930A'
               THEN
                  v_return := v_return || 'saeng';
               WHEN v_compare BETWEEN '930C' AND '9325'
               THEN
                  v_return := v_return || 'sai';
               WHEN v_compare = '9328'
               THEN
                  v_return := v_return || 'sal';
               WHEN v_compare BETWEEN '9329' AND '9355'
               THEN
                  v_return := v_return || 'san';
               WHEN v_compare BETWEEN '9358' AND '936A'
               THEN
                  v_return := v_return || 'sang';
               WHEN v_compare BETWEEN '936C' AND '9391'
               THEN
                  v_return := v_return || 'sao';
               WHEN v_compare BETWEEN '9392' AND '93C5'
               THEN
                  v_return := v_return || 'se';
               WHEN v_compare = '93C6'
               THEN
                  v_return := v_return || 'sed';
               WHEN v_compare BETWEEN '93C8' AND '93CC'
               THEN
                  v_return := v_return || 'sen';
               WHEN v_compare BETWEEN '93CD' AND '93D0'
               THEN
                  v_return := v_return || 'seng';
               WHEN v_compare = '93D1'
               THEN
                  v_return := v_return || 'seo';
               WHEN v_compare = '93D2'
               THEN
                  v_return := v_return || 'seon';
               WHEN v_compare BETWEEN '93D4' AND '941A'
               THEN
                  v_return := v_return || 'sha';
               WHEN v_compare BETWEEN '941D' AND '9428'
               THEN
                  v_return := v_return || 'shai';
               WHEN v_compare BETWEEN '9429' AND '94C1'
               THEN
                  v_return := v_return || 'shan';
               WHEN v_compare BETWEEN '94C2' AND '94EE'
               THEN
                  v_return := v_return || 'shang';
               WHEN v_compare BETWEEN '94F1' AND '952D'
               THEN
                  v_return := v_return || 'shao';
               WHEN v_compare BETWEEN '952E' AND '9571'
               THEN
                  v_return := v_return || 'she';
               WHEN v_compare BETWEEN '9574' AND '9602'
               THEN
                  v_return := v_return || 'shen';
               WHEN v_compare BETWEEN '9604' AND '965C'
               THEN
                  v_return := v_return || 'sheng';
               WHEN v_compare BETWEEN '965E' AND '9786'
               THEN
                  v_return := v_return || 'shi';
               WHEN v_compare BETWEEN '9788' AND '97AE'
               THEN
                  v_return := v_return || 'shou';
               WHEN v_compare BETWEEN '97B0' AND '9878'
               THEN
                  v_return := v_return || 'shu';
               WHEN v_compare BETWEEN '987A' AND '987E'
               THEN
                  v_return := v_return || 'shua';
               WHEN v_compare BETWEEN '9880' AND '988A'
               THEN
                  v_return := v_return || 'shuai';
               WHEN v_compare BETWEEN '988C' AND '9894'
               THEN
                  v_return := v_return || 'shuan';
               WHEN v_compare BETWEEN '9895' AND '98BE'
               THEN
                  v_return := v_return || 'shuang';
               WHEN v_compare BETWEEN '98C0' AND '98D6'
               THEN
                  v_return := v_return || 'shui';
               WHEN v_compare BETWEEN '98DC' AND '98EE'
               THEN
                  v_return := v_return || 'shun';
               WHEN v_compare BETWEEN '98F1' AND '9911'
               THEN
                  v_return := v_return || 'shuo';
               WHEN v_compare BETWEEN '9912' AND '99AD'
               THEN
                  v_return := v_return || 'si';
               WHEN v_compare = '99AE'
               THEN
                  v_return := v_return || 'so';
               WHEN v_compare = '99B0'
               THEN
                  v_return := v_return || 'sol';
               WHEN v_compare BETWEEN '99B1' AND '99F6'
               THEN
                  v_return := v_return || 'song';
               WHEN v_compare BETWEEN '99F8' AND '9A36'
               THEN
                  v_return := v_return || 'sou';
               WHEN v_compare BETWEEN '9A38' AND '9AB6'
               THEN
                  v_return := v_return || 'su';
               WHEN v_compare BETWEEN '9AB8' AND '9AC4'
               THEN
                  v_return := v_return || 'suan';
               WHEN v_compare BETWEEN '9AC5' AND '9B3A'
               THEN
                  v_return := v_return || 'sui';
               WHEN v_compare = '9AF0'
               THEN
                  v_return := v_return || 'wie';
               WHEN v_compare BETWEEN '9B3C' AND '9B62'
               THEN
                  v_return := v_return || 'sun';
               WHEN v_compare BETWEEN '9B65' AND '9BA9'
               THEN
                  v_return := v_return || 'suo';
               WHEN v_compare BETWEEN '9BAA' AND '9C10'
               THEN
                  v_return := v_return || 'ta';
               WHEN v_compare = '9C11'
               THEN
                  v_return := v_return || 'tae';
               WHEN v_compare BETWEEN '9C12' AND '9C59'
               THEN
                  v_return := v_return || 'tai';
               WHEN v_compare BETWEEN '9C5A' AND '9CE0'
               THEN
                  v_return := v_return || 'tan';
               WHEN v_compare BETWEEN '9CE2' AND '9D55'
               THEN
                  v_return := v_return || 'tang';
               WHEN v_compare BETWEEN '9D56' AND '9DB4'
               THEN
                  v_return := v_return || 'tao';
               WHEN v_compare = '9DB6'
               THEN
                  v_return := v_return || 'tap';
               WHEN v_compare BETWEEN '9DB8' AND '9DC6'
               THEN
                  v_return := v_return || 'te';
               WHEN v_compare BETWEEN '9DC8' AND '9DED'
               THEN
                  v_return := v_return || 'teng';
               WHEN v_compare = '9DEE'
               THEN
                  v_return := v_return || 'teo';
               WHEN v_compare = '9DF0'
               THEN
                  v_return := v_return || 'teul';
               WHEN v_compare BETWEEN '9DF1' AND '9E82'
               THEN
                  v_return := v_return || 'ti';
               WHEN v_compare BETWEEN '9E85' AND '9EED'
               THEN
                  v_return := v_return || 'tian';
               WHEN v_compare BETWEEN '9EEE' AND '9F38'
               THEN
                  v_return := v_return || 'tiao';
               WHEN v_compare BETWEEN '9F39' AND '9F56'
               THEN
                  v_return := v_return || 'tie';
               WHEN v_compare BETWEEN '9F59' AND '9FAE'
               THEN
                  v_return := v_return || 'ting';
               WHEN v_compare = '9FB0'
               THEN
                  v_return := v_return || 'tol';
               WHEN v_compare BETWEEN '9FB1' AND 'A015'
               THEN
                  v_return := v_return || 'tong';
               WHEN v_compare BETWEEN 'A016' AND 'A03A'
               THEN
                  v_return := v_return || 'tou';
               WHEN v_compare BETWEEN 'A040' AND 'A0A9'
               THEN
                  v_return := v_return || 'tu';
               WHEN v_compare BETWEEN 'A0AA' AND 'A0D5'
               THEN
                  v_return := v_return || 'tuan';
               WHEN v_compare BETWEEN 'A0D6' AND 'A106'
               THEN
                  v_return := v_return || 'tui';
               WHEN v_compare BETWEEN 'A108' AND 'A131'
               THEN
                  v_return := v_return || 'tun';
               WHEN v_compare BETWEEN 'A134' AND 'A1AE'
               THEN
                  v_return := v_return || 'tuo';
               WHEN v_compare BETWEEN 'A1B0' AND 'A1E8'
               THEN
                  v_return := v_return || 'wa';
               WHEN v_compare BETWEEN 'A1E9' AND 'A1F5'
               THEN
                  v_return := v_return || 'wai';
               WHEN v_compare BETWEEN 'A1F8' AND 'A279'
               THEN
                  v_return := v_return || 'wan';
               WHEN v_compare BETWEEN 'A27A' AND 'A2B9'
               THEN
                  v_return := v_return || 'wang';
               WHEN v_compare BETWEEN 'A2BC' AND 'A408'
               THEN
                  v_return := v_return || 'wei';
               WHEN v_compare BETWEEN 'A40D' AND 'A47C'
               THEN
                  v_return := v_return || 'wen';
               WHEN v_compare BETWEEN 'A47D' AND 'A4A2'
               THEN
                  v_return := v_return || 'weng';
               WHEN v_compare BETWEEN 'A4A4' AND 'A4EA'
               THEN
                  v_return := v_return || 'wo';
               WHEN v_compare BETWEEN 'A4EC' AND 'A5D4'
               THEN
                  v_return := v_return || 'wu';
               WHEN v_compare BETWEEN 'A5D6' AND 'A784'
               THEN
                  v_return := v_return || 'xi';
               WHEN v_compare BETWEEN 'A785' AND 'A7FA'
               THEN
                  v_return := v_return || 'xia';
               WHEN v_compare BETWEEN 'A7FD' AND 'A951'
               THEN
                  v_return := v_return || 'xian';
               WHEN v_compare BETWEEN 'A954' AND 'A9CE'
               THEN
                  v_return := v_return || 'xiang';
               WHEN v_compare BETWEEN 'A9D0' AND 'AA8A'
               THEN
                  v_return := v_return || 'xiao';
               WHEN v_compare BETWEEN 'AA8D' AND 'AB7E'
               THEN
                  v_return := v_return || 'xie';
               WHEN v_compare BETWEEN 'AB80' AND 'ABEE'
               THEN
                  v_return := v_return || 'xin';
               WHEN v_compare BETWEEN 'ABF0' AND 'AC41'
               THEN
                  v_return := v_return || 'xing';
               WHEN v_compare BETWEEN 'AC42' AND 'AC64'
               THEN
                  v_return := v_return || 'xiong';
               WHEN v_compare BETWEEN 'AC65' AND 'ACBA'
               THEN
                  v_return := v_return || 'xiu';
               WHEN v_compare BETWEEN 'ACBC' AND 'AD90'
               THEN
                  v_return := v_return || 'xu';
               WHEN v_compare = 'ACD9'
               THEN
                  v_return := v_return || 'chua';
               WHEN v_compare BETWEEN 'AD91' AND 'AE32'
               THEN
                  v_return := v_return || 'xuan';
               WHEN v_compare BETWEEN 'AE34' AND 'AE89'
               THEN
                  v_return := v_return || 'xue';
               WHEN v_compare BETWEEN 'AE8C' AND 'AF1E'
               THEN
                  v_return := v_return || 'xun';
               WHEN v_compare BETWEEN 'AF20' AND 'AF96'
               THEN
                  v_return := v_return || 'ya';
               WHEN v_compare BETWEEN 'AF98' AND 'B118'
               THEN
                  v_return := v_return || 'yan';
               WHEN v_compare = 'B030'
               THEN
                  v_return := v_return || 'eom';
               WHEN v_compare BETWEEN 'B11A' AND 'B1A8'
               THEN
                  v_return := v_return || 'yang';
               WHEN v_compare BETWEEN 'B1AD' AND 'B275'
               THEN
                  v_return := v_return || 'yao';
               WHEN v_compare BETWEEN 'B276' AND 'B30A'
               THEN
                  v_return := v_return || 'ye';
               WHEN v_compare BETWEEN 'B30D' AND 'B30E'
               THEN
                  v_return := v_return || 'yen';
               WHEN v_compare BETWEEN 'B310' AND 'B594'
               THEN
                  v_return := v_return || 'yi';
               WHEN v_compare = 'B359'
               THEN
                  v_return := v_return || 'i';
               WHEN v_compare BETWEEN 'B596' AND 'B684'
               THEN
                  v_return := v_return || 'yin';
               WHEN v_compare BETWEEN 'B685' AND 'B768'
               THEN
                  v_return := v_return || 'ying';
               WHEN v_compare BETWEEN 'B76C' AND 'B76E'
               THEN
                  v_return := v_return || 'yo';
               WHEN v_compare BETWEEN 'B770' AND 'B7EA'
               THEN
                  v_return := v_return || 'yong';
               WHEN v_compare BETWEEN 'B7EC' AND 'B8B2'
               THEN
                  v_return := v_return || 'you';
               WHEN v_compare BETWEEN 'B8B5' AND 'BA98'
               THEN
                  v_return := v_return || 'yu';
               WHEN v_compare BETWEEN 'BA99' AND 'BB58'
               THEN
                  v_return := v_return || 'yuan';
               WHEN v_compare BETWEEN 'BB59' AND 'BBBE'
               THEN
                  v_return := v_return || 'yue';
               WHEN v_compare BETWEEN 'BBC1' AND 'BC58'
               THEN
                  v_return := v_return || 'yun';
               WHEN v_compare BETWEEN 'BC59' AND 'BC7E'
               THEN
                  v_return := v_return || 'za';
               WHEN v_compare BETWEEN 'BC81' AND 'BCA8'
               THEN
                  v_return := v_return || 'zai';
               WHEN v_compare BETWEEN 'BCAA' AND 'BCEA'
               THEN
                  v_return := v_return || 'zan';
               WHEN v_compare BETWEEN 'BCEE' AND 'BD0A'
               THEN
                  v_return := v_return || 'zang';
               WHEN v_compare BETWEEN 'BD0C' AND 'BD46'
               THEN
                  v_return := v_return || 'zao';
               WHEN v_compare BETWEEN 'BD48' AND 'BD99'
               THEN
                  v_return := v_return || 'ze';
               WHEN v_compare BETWEEN 'BD9A' AND 'BDA2'
               THEN
                  v_return := v_return || 'zei';
               WHEN v_compare BETWEEN 'BDA5' AND 'BDAC'
               THEN
                  v_return := v_return || 'zen';
               WHEN v_compare BETWEEN 'BDAD' AND 'BDCC'
               THEN
                  v_return := v_return || 'zeng';
               WHEN v_compare BETWEEN 'BDCE' AND 'BE40'
               THEN
                  v_return := v_return || 'zha';
               WHEN v_compare = 'BDF8'
               THEN
                  v_return := v_return || 'gad';
               WHEN v_compare BETWEEN 'BE41' AND 'BE62'
               THEN
                  v_return := v_return || 'zhai';
               WHEN v_compare BETWEEN 'BE65' AND 'BEF4'
               THEN
                  v_return := v_return || 'zhan';
               WHEN v_compare BETWEEN 'BEF6' AND 'BF3E'
               THEN
                  v_return := v_return || 'zhang';
               WHEN v_compare BETWEEN 'BF40' AND 'BF8C'
               THEN
                  v_return := v_return || 'zhao';
               WHEN v_compare BETWEEN 'BF8E' AND 'BFF8'
               THEN
                  v_return := v_return || 'zhe';
               WHEN v_compare BETWEEN 'BFF9' AND 'C0B2'
               THEN
                  v_return := v_return || 'zhen';
               WHEN v_compare BETWEEN 'C0B4' AND 'C11E'
               THEN
                  v_return := v_return || 'zheng';
               WHEN v_compare BETWEEN 'C122' AND 'C2C4'
               THEN
                  v_return := v_return || 'zhi';
               WHEN v_compare BETWEEN 'C2C5' AND 'C31A'
               THEN
                  v_return := v_return || 'zhong';
               WHEN v_compare BETWEEN 'C31D' AND 'C39A'
               THEN
                  v_return := v_return || 'zhou';
               WHEN v_compare BETWEEN 'C39C' AND 'C47C'
               THEN
                  v_return := v_return || 'zhu';
               WHEN v_compare BETWEEN 'C47D' AND 'C484'
               THEN
                  v_return := v_return || 'zhua';
               WHEN v_compare BETWEEN 'C485' AND 'C486'
               THEN
                  v_return := v_return || 'zhuai';
               WHEN v_compare BETWEEN 'C488' AND 'C4C0'
               THEN
                  v_return := v_return || 'zhuan';
               WHEN v_compare BETWEEN 'C4C2' AND 'C4E5'
               THEN
                  v_return := v_return || 'zhuang';
               WHEN v_compare BETWEEN 'C4E6' AND 'C51C'
               THEN
                  v_return := v_return || 'zhui';
               WHEN v_compare BETWEEN 'C51D' AND 'C530'
               THEN
                  v_return := v_return || 'zhun';
               WHEN v_compare BETWEEN 'C534' AND 'C5A5'
               THEN
                  v_return := v_return || 'zhuo';
               WHEN v_compare BETWEEN 'C5A8' AND 'C648'
               THEN
                  v_return := v_return || 'zi';
               WHEN v_compare = 'C64A'
               THEN
                  v_return := v_return || 'zo';
               WHEN v_compare BETWEEN 'C64C' AND 'C6B5'
               THEN
                  v_return := v_return || 'zong';
               WHEN v_compare BETWEEN 'C6B6' AND 'C6D6'
               THEN
                  v_return := v_return || 'zou';
               WHEN v_compare BETWEEN 'C6E1' AND 'C714'
               THEN
                  v_return := v_return || 'zu';
               WHEN v_compare BETWEEN 'C715' AND 'C72D'
               THEN
                  v_return := v_return || 'zuan';
               WHEN v_compare BETWEEN 'C72E' AND 'C75E'
               THEN
                  v_return := v_return || 'zui';
               WHEN v_compare BETWEEN 'C760' AND 'C776'
               THEN
                  v_return := v_return || 'zun';
               WHEN v_compare BETWEEN 'C77A' AND 'C7B4'
               THEN
                  v_return := v_return || 'zuo';
               ELSE
                  v_return := v_return || v_substr;
            END CASE;
         END LOOP;
   END CASE;

   RETURN v_return;
END fn_getpy;
/
create or replace function is_question_tempalte(p_words in varchar2, p_template in varchar2) return number

  is

    v_result number;

    v_sep varchar2(2);

    v_split_word varchar2(60);

    v_idx integer;

    v_list varchar2(500);

  begin

    -- 默认1，表示正确
    v_result := 1;
    v_sep := ',';
    v_list := p_template;

    loop
      v_idx := instr(v_list,v_sep);

      if v_idx > 0 then
        v_split_word := substr(v_list,1,v_idx-1);

        if instr(p_words, v_split_word) > 0 then
          v_list := substr(v_list,v_idx+length(v_sep));
        else
          v_result := '0';
          EXIT;
        end if;
      else
        EXIT;
      end if;
   end loop;

   if v_result = '1' and instr(p_words, v_list) > 0 then
      v_result := '1';
   else
      v_result := '0';
   end if;

   return v_result;

  end;
/
create or replace function F_SPLITCLOB4(V_CLOB_IN CLOB,V_DELIMER VARCHAR2)
 return MDSYS.SDO_ORDINATE_ARRAY PIPELINED is
  L_LOB    CLOB;
  l_vchars varchar2(4000):='';
  l_num  NUMBER(18,8);
  n_length NUMBER;
  n_end  number(10);
  n_offset number(10):=1;
begin
  L_LOB:=V_CLOB_IN;
  n_length := DBMS_LOB.GETLENGTH(L_LOB);
  loop
    n_end:=DBMS_LOB.instr(lob_loc => L_LOB,pattern => V_DELIMER,offset =>n_offset);
    if nvl(n_end,0)>0 then
      l_vchars:=DBMS_LOB.substr(L_LOB,n_end-n_offset,n_offset);
      l_num:=to_number(l_vchars);
      n_offset:=n_end+1;
    ELSE
      l_vchars:=DBMS_LOB.substr(L_LOB,n_length+1-n_offset,n_offset);
      l_num:=to_number(l_vchars);
    end if;
    pipe row( l_num );
    exit when n_end=0;
  end loop;
  RETURN;
end F_SPLITCLOB4;
/


create or replace function calculateratio(value in number, beforevalue in number,defaultvalue in varchar2) return varchar2 is
  Result varchar2(4000);

begin
  select case nvl(beforevalue,0) when 0 then defaultvalue
  else to_char(rtrim(to_char((value-beforevalue)/beforevalue,'FM999999999990.9999'),to_char(0,'.'))) end into Result from dual;
  return(Result);
end calculateratio;
/

-- Create/Recreate indexes 
create index FACE_AREA_INDEX_time on FACE_AREA_INDEX (collect_time);
create index FACE_AREA_INDEX_area on FACE_AREA_INDEX (area_id);

create or replace view face_area_index_data_view as
select t.index_id,
       t.area_id,
       t.collect_time,
       (
       decode(t.normalrate,-1,0,t.normalrate)
       +decode(t.jamrate,-1,0,t.jamrate)
       +decode(t.seriousrate,-1,0,t.seriousrate)
       ) as jampercent,
       decode(t.normallen,-1,0,t.normallen)
       +decode(t.jamlen,-1,0,t.jamlen)
       +decode(t.seriouslen,-1,0,t.seriouslen)
       as  jamlength,
       decode(t.transit_vehicle_num,-1,0,t.transit_vehicle_num) as onroadcarnum,
       decode(t.low_freq_prop,-1,0,t.low_freq_prop) as lowfrequencycarper,
       decode(t.taxi_prop,-1,0,t.taxi_prop) as taxiper,
       decode(t.ride_hailing_prop,-1,0,t.ride_hailing_prop) as carhailingper,
       decode(t.parents_prop,-1,0,t.parents_prop) as shoppingcarper,
       decode(t.shopping_prop,-1,0,t.shopping_prop) as parentcarper,
       decode(t.large_vehicle_prop,-1,0,t.large_vehicle_prop) as largecarper
  from face_area_index t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';
  
create or replace view face_area_index_view as
select t1.index_id,
       t1.area_id,
       t1.collect_time,
       case when nvl(t1.jampercent,0) >= (select to_number(param_value) from face_sysparam where param_code='JAM_INDEX')  then 1 else 0 end as isjam,
       t1.jampercent,
       t1.jamlength,
       t1.onroadcarnum,
       --(t2.jampercent-t1.jampercent)/t2.jampercent as jampercentchange,
       calculateratio(t1.jampercent,t2.jampercent,'--') as jampercentchange,
       --(t2.onroadcarnum-t1.onroadcarnum)/t2.onroadcarnum as onroadcarnumchange,
       calculateratio(t1.onroadcarnum,t2.onroadcarnum,'--') as onroadcarnumchange,
       t1.lowfrequencycarper,
       --(t2.lowfrequencycarper-t1.lowfrequencycarper)/t2.lowfrequencycarper as lowfrequencycarperchange,
       calculateratio(t1.lowfrequencycarper,t2.lowfrequencycarper,'--') as lowfrequencycarperchange,
       t1.taxiper,
       --(t2.taxiper-t1.taxiper)/t2.taxiper as taxiperchange,
       calculateratio(t1.taxiper,t2.taxiper,'--') as taxiperchange,
       t1.carhailingper,
       --(t2.carhailingper-t1.carhailingper)/t2.carhailingper as carhailingperchange,
       calculateratio(t1.carhailingper,t2.carhailingper,'--') as carhailingperchange,
       t1.shoppingcarper,
       --(t2.shoppingcarper-t1.shoppingcarper)/t2.shoppingcarper as shoppingcarperchange,
       calculateratio(t1.shoppingcarper,t2.shoppingcarper,'--') as shoppingcarperchange,
       t1.parentcarper,
       --(t2.parentcarper-t1.parentcarper)/t2.parentcarper as parentcarperchange,
       calculateratio(t1.parentcarper,t2.parentcarper,'--') as parentcarperchange,
       t1.largecarper,
       --(t2.largecarper-t1.largecarper)/t2.largecarper as largecarperchange
       calculateratio(t1.largecarper,t2.largecarper,'--') as largecarperchange
  from face_area_index_data_view t1 left join face_area_index_data_view t2 on t1.area_id=t2.area_id and t1.collect_time=t2.collect_time+7;
comment on table FACE_MORNEVENPEAK_WARN
  is '早晚高峰提醒表';
alter table face_area_index modify index_id varchar2(100);
alter table face_mainline_index modify index_id varchar2(100);
-----------------------------A4-----------
-- Add comments to the table 
comment on table OPERATOR
  is '账号表';
-- Add comments to the table 
comment on table LOG_CONTENT
  is '日志信息表';
-- Add comments to the columns 
comment on column MONITOR_POINT.thirdcode
  is '第三方编号';
-- Add comments to the columns 
comment on column MONITOR_SECTION.remark
  is '备注';
comment on column MONITOR_SECTION.effect
  is '';
comment on column MONITOR_SECTION.addroadid
  is '';
comment on column MONITOR_SECTION.huanxian
  is '';
comment on column MONITOR_SECTION.maxflux
  is '最大流量';
comment on column MONITOR_SECTION.avgflux
  is '平均流量';
comment on column MONITOR_SECTION.maxspeed
  is '最大速度';
comment on column MONITOR_SECTION.avgspeed
  is '平均速度';
comment on column MONITOR_SECTION.mintime
  is '最短时间';
comment on column MONITOR_SECTION.avgtime
  is '平均时间';
comment on column MONITOR_SECTION.uproadid
  is '上游路段编号';
comment on column MONITOR_SECTION.downroadid
  is '下游路段编号';
-- Add comments to the table 
comment on table OPERATOR_ROLE
  is '账号角色关联表';
-- Add comments to the table 
comment on table ROLE
  is '角色表';
-- Add comments to the table 
comment on table ROLE_RESOURCE_RELATION
  is '角色资源权限配置表';
-- Add comments to the columns 
comment on column ROLE_RESOURCE_RELATION.roleid
  is '角色ID';
comment on column ROLE_RESOURCE_RELATION.resourceid
  is '资源ID';
-- Add comments to the table 
comment on table USER_ROLE_RELATION
  is '用户角色授权配置表';

-- 扩展BIS_CROSSING中描述的编码长度 by caoqiang 。存在因oracle编码不一致导致长度不一的情况
alter table BIS_CROSSING modify  description varchar2(1024);

drop table FACE_HBASE2ORACLE_CONFIG;
-- Create table
create table FACE_HBASE2ORACLE_CONFIG
(
  hbase_table   VARCHAR2(500),
  hbase_column  VARCHAR2(500),
  oracle_table  VARCHAR2(500),
  oracle_column VARCHAR2(500)
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
-- Add comments to the table 
comment on table FACE_HBASE2ORACLE_CONFIG
  is 'hbase与oracle指标同步配置表';
-- Add comments to the columns 
comment on column FACE_HBASE2ORACLE_CONFIG.hbase_table
  is 'hbase表名';
comment on column FACE_HBASE2ORACLE_CONFIG.hbase_column
  is 'hbase列名';
comment on column FACE_HBASE2ORACLE_CONFIG.oracle_table
  is 'oracle表名';
comment on column FACE_HBASE2ORACLE_CONFIG.oracle_column
  is 'oracle列名';

-- Add comments to the columns 
comment on column FACE_MORNEVENPEAK_WARN.range
  is '范围（市南市北等范围）（备用）';
comment on column FACE_MORNEVENPEAK_WARN.flag
  is '0未提醒，1提醒（备用）';
  
  -- Add comments to the columns 
comment on column FACE_MORNEVENPEAK_FORECAST.type
  is '0早高峰，1晚高峰(备用字段)';


drop table face_mainline_index;
drop table face_jam_section_duration;
drop table face_cross_dir_index;
drop table face_section_index;
drop table face_cross_index;
drop table face_ints_tidecharactor;
drop table face_area_index;
drop table face_ints_peakduration;
drop table face_inoutcity_index;

-- Create table
create table FACE_MAINLINE_INDEX
(
  index_id              VARCHAR2(100) not null,
  line_id               VARCHAR2(32),
  collect_time          DATE,
  ptransit_vehicle_num  NUMBER,
  plocal_vehicle_num    NUMBER,
  pnonlocal_vehicle_num NUMBER,
  plarge_vehicle_num    NUMBER,
  psmall_vehicle_num    NUMBER,
  pspeed                NUMBER,
  nspeed                NUMBER,
  congestion_len        NUMBER,
  ntransit_commuter_num NUMBER,
  congestion_index      NUMBER,
  pcomplementflow       NUMBER,
  ncomplementflow       NUMBER,
  ptpi                  NUMBER,
  ntpi                  NUMBER,
  nhistory_avg_flow     NUMBER,
  phistory_avg_flow     NUMBER,
  nhistory_avg_speed    NUMBER,
  phistory_avg_speed    NUMBER,
  nhistory_tpi          NUMBER,
  phistory_tpi          NUMBER,
  ntransit_vehicle_num  NUMBER,
  nlocal_vehicle_num    NUMBER,
  nnonlocal_vehicle_num NUMBER,
  nlarge_vehicle_num    NUMBER,
  nsmall_vehicle_num    NUMBER,
  ptransit_commuter_num NUMBER,
  ptraveltime           NUMBER,
  ntraveltime           NUMBER,
  pstops                NUMBER,
  nstops                NUMBER,
  unbalanceratio        NUMBER,
  pjamstatus            NUMBER,
  njamsatus             NUMBER,
  psinglelaneflow       NUMBER,
  nsinglelaneflow       NUMBER,
  pqueuelen             NUMBER,
  nqueuelen             NUMBER,
  trafficstatus         NUMBER,
  highload              NUMBER,
  pdelay                NUMBER,
  ndelay                NUMBER,
  stopsum               NUMBER,
  delaysum              NUMBER,
  avgdelay              NUMBER,
  bi                    NUMBER,
  maxdelayints          NUMBER,
  ntpisource            NUMBER
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
-- Add comments to the table 
comment on table FACE_MAINLINE_INDEX
  is 'f干线指数表';
-- Add comments to the columns 
comment on column FACE_MAINLINE_INDEX.index_id
  is 'ID';
comment on column FACE_MAINLINE_INDEX.line_id
  is '干线编号';
comment on column FACE_MAINLINE_INDEX.collect_time
  is '收集时间';
comment on column FACE_MAINLINE_INDEX.ptransit_vehicle_num
  is '正向在途车辆数';
comment on column FACE_MAINLINE_INDEX.plocal_vehicle_num
  is '正向本地车辆数';
comment on column FACE_MAINLINE_INDEX.pnonlocal_vehicle_num
  is '正向外地车辆数';
comment on column FACE_MAINLINE_INDEX.plarge_vehicle_num
  is '正向大型车辆数';
comment on column FACE_MAINLINE_INDEX.psmall_vehicle_num
  is '正向小型车辆数';
comment on column FACE_MAINLINE_INDEX.pspeed
  is '正向行程速度';
comment on column FACE_MAINLINE_INDEX.nspeed
  is '反向行程速度';
comment on column FACE_MAINLINE_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_MAINLINE_INDEX.ntransit_commuter_num
  is '反向在途通勤车辆数';
comment on column FACE_MAINLINE_INDEX.congestion_index
  is '拥堵指数';
comment on column FACE_MAINLINE_INDEX.pcomplementflow
  is '正向干线流量';
comment on column FACE_MAINLINE_INDEX.ncomplementflow
  is '反向干线流量';
comment on column FACE_MAINLINE_INDEX.ptpi
  is '正向交通指数';
comment on column FACE_MAINLINE_INDEX.ntpi
  is '反向交通指数';
comment on column FACE_MAINLINE_INDEX.nhistory_avg_flow
  is '反向流量历史均值';
comment on column FACE_MAINLINE_INDEX.phistory_avg_flow
  is '正向流量历史均值';
comment on column FACE_MAINLINE_INDEX.nhistory_avg_speed
  is '反向速度历史均值';
comment on column FACE_MAINLINE_INDEX.phistory_avg_speed
  is '正向速度历史均值';
comment on column FACE_MAINLINE_INDEX.nhistory_tpi
  is '反向拥堵指数历史均值';
comment on column FACE_MAINLINE_INDEX.phistory_tpi
  is '正向拥堵指数历史均值';
comment on column FACE_MAINLINE_INDEX.ntransit_vehicle_num
  is '反向在途车辆数';
comment on column FACE_MAINLINE_INDEX.nlocal_vehicle_num
  is '反向本地车辆数';
comment on column FACE_MAINLINE_INDEX.nnonlocal_vehicle_num
  is '反向外地车辆数';
comment on column FACE_MAINLINE_INDEX.nlarge_vehicle_num
  is '反向大型车辆数';
comment on column FACE_MAINLINE_INDEX.nsmall_vehicle_num
  is '反向小型车辆数';
comment on column FACE_MAINLINE_INDEX.ptransit_commuter_num
  is '正向在途通勤车辆数';
comment on column FACE_MAINLINE_INDEX.ptraveltime
  is '正向行程时间';
comment on column FACE_MAINLINE_INDEX.ntraveltime
  is '反向行程时间';
comment on column FACE_MAINLINE_INDEX.pstops
  is '正向停车次数';
comment on column FACE_MAINLINE_INDEX.nstops
  is '反向停车次数';
comment on column FACE_MAINLINE_INDEX.unbalanceratio
  is '干线不均衡系数';
comment on column FACE_MAINLINE_INDEX.pjamstatus
  is '正向拥堵状态';
comment on column FACE_MAINLINE_INDEX.njamsatus
  is '反向拥堵状态';
comment on column FACE_MAINLINE_INDEX.psinglelaneflow
  is '正向干线单车道流量';
comment on column FACE_MAINLINE_INDEX.nsinglelaneflow
  is '反向干线单车道流量';
comment on column FACE_MAINLINE_INDEX.pqueuelen
  is '正向排队长度';
comment on column FACE_MAINLINE_INDEX.nqueuelen
  is '反向排队长度';
comment on column FACE_MAINLINE_INDEX.trafficstatus
  is '交通状态';
comment on column FACE_MAINLINE_INDEX.highload
  is '高负荷';
comment on column FACE_MAINLINE_INDEX.pdelay
  is '正向延误';
comment on column FACE_MAINLINE_INDEX.ndelay
  is '反向延误';
comment on column FACE_MAINLINE_INDEX.stopsum
  is '路口总停车';
comment on column FACE_MAINLINE_INDEX.delaysum
  is '路口总延误';
comment on column FACE_MAINLINE_INDEX.avgdelay
  is '路口平均延误';
comment on column FACE_MAINLINE_INDEX.bi
  is '均衡系数';
comment on column FACE_MAINLINE_INDEX.maxdelayints
  is '最大延误路口';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_MAINLINE_INDEX
  add constraint FACE_MAINLINE_INDEX_PK primary key (INDEX_ID)
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

-- Create table
create table FACE_JAM_SECTION_DURATION
(
  rowkey    VARCHAR2(40) not null,
  sectionid VARCHAR2(32),
  duration  NUMBER
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
-- Add comments to the table 
comment on table FACE_JAM_SECTION_DURATION
  is '路口分析拥堵路段时长';
-- Add comments to the columns 
comment on column FACE_JAM_SECTION_DURATION.rowkey
  is '日期_路口编号';
comment on column FACE_JAM_SECTION_DURATION.sectionid
  is '路口编号';
comment on column FACE_JAM_SECTION_DURATION.duration
  is '平均拥堵时长，单位分钟';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_JAM_SECTION_DURATION
  add constraint JAM_SECTION_DURATION_PK primary key (ROWKEY)
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

-- Create table
create table FACE_CROSS_DIR_INDEX
(
  index_id        VARCHAR2(40) not null,
  ints_id         VARCHAR2(32),
  approach_dir    NUMBER,
  flow            NUMBER,
  complementflow  NUMBER,
  trafficcapacity NUMBER(18,2),
  tpi             NUMBER,
  collect_time    DATE,
  issaturation    INTEGER
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
-- Add comments to the table 
comment on table FACE_CROSS_DIR_INDEX
  is '路口进口道指标表';
-- Add comments to the columns 
comment on column FACE_CROSS_DIR_INDEX.index_id
  is 'UUID';
comment on column FACE_CROSS_DIR_INDEX.ints_id
  is '路口编号';
comment on column FACE_CROSS_DIR_INDEX.approach_dir
  is '进口道编号';
comment on column FACE_CROSS_DIR_INDEX.flow
  is '进口道流量';
comment on column FACE_CROSS_DIR_INDEX.complementflow
  is '补全流量';
comment on column FACE_CROSS_DIR_INDEX.trafficcapacity
  is '通行能力';
comment on column FACE_CROSS_DIR_INDEX.tpi
  is '交通指数';
comment on column FACE_CROSS_DIR_INDEX.collect_time
  is '采集时间';
comment on column FACE_CROSS_DIR_INDEX.issaturation
  is '0-无状态， 1-过饱和，2-饱和溢出，3-取消报警';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_CROSS_DIR_INDEX
  add constraint CROSS_DIR_INDEX_PK primary key (INDEX_ID)
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


-- Create table
create table FACE_SECTION_INDEX
(
  index_id        VARCHAR2(40) not null,
  section_id      VARCHAR2(32),
  collect_time    DATE,
  travel_time     NUMBER,
  tpi             NUMBER,
  congestion_len  NUMBER,
  flow            NUMBER,
  avg_speed       NUMBER,
  traffic         INTEGER,
  complement_flow NUMBER
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
-- Add comments to the table 
comment on table FACE_SECTION_INDEX
  is 'f干线指数表';
-- Add comments to the columns 
comment on column FACE_SECTION_INDEX.index_id
  is 'ID';
comment on column FACE_SECTION_INDEX.section_id
  is '路段编号';
comment on column FACE_SECTION_INDEX.collect_time
  is '收集时间';
comment on column FACE_SECTION_INDEX.travel_time
  is '行程时间';
comment on column FACE_SECTION_INDEX.tpi
  is '拥堵指数';
comment on column FACE_SECTION_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_SECTION_INDEX.flow
  is '流量';
comment on column FACE_SECTION_INDEX.avg_speed
  is '平均速度';
comment on column FACE_SECTION_INDEX.traffic
  is '路况 1畅通，2缓行，3拥堵，4严重拥堵';
comment on column FACE_SECTION_INDEX.complement_flow
  is '补全流量';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_SECTION_INDEX
  add constraint FACE_SECTION_INDEX_PK primary key (INDEX_ID)
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

-- Create table
create table FACE_CROSS_INDEX
(
  index_id            VARCHAR2(32) not null,
  ints_id             VARCHAR2(32),
  collect_time        DATE,
  flow                NUMBER,
  ubi                 NUMBER,
  queue_len           NUMBER,
  complement_flow     NUMBER,
  delay               NUMBER,
  max_flow            NUMBER,
  tpi                 NUMBER,
  congestion_len      NUMBER,
  green_waste         NUMBER,
  vehicle_avg_stop    NUMBER,
  saturation          NUMBER,
  traffic_status      NUMBER,
  pi                  NUMBER,
  dtd                 NUMBER,
  queue_len_indicator NUMBER,
  traffic_capacity    NUMBER,
  intensity           NUMBER,
  health_level        NUMBER,
  green_waste_lose    NUMBER,
  stop_lose           NUMBER,
  delay_lose          NUMBER,
  ub_lose             NUMBER,
  max_satturn         NUMBER,
  max_gwturn          NUMBER,
  max_queueturn       NUMBER,
  max_stopturn        NUMBER,
  max_delayturn       NUMBER,
  ubturn              NUMBER
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
-- Add comments to the columns 
comment on column FACE_CROSS_INDEX.index_id
  is 'ID';
comment on column FACE_CROSS_INDEX.ints_id
  is '路口编号';
comment on column FACE_CROSS_INDEX.collect_time
  is '收集时间';
comment on column FACE_CROSS_INDEX.flow
  is '路口流量';
comment on column FACE_CROSS_INDEX.ubi
  is '失衡指数';
comment on column FACE_CROSS_INDEX.queue_len
  is '排队长度';
comment on column FACE_CROSS_INDEX.complement_flow
  is '补全流量';
comment on column FACE_CROSS_INDEX.delay
  is '路口车均延误';
comment on column FACE_CROSS_INDEX.max_flow
  is '最大通行流量';
comment on column FACE_CROSS_INDEX.tpi
  is '交通指数';
comment on column FACE_CROSS_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_CROSS_INDEX.green_waste
  is '绿损时间';
comment on column FACE_CROSS_INDEX.vehicle_avg_stop
  is '车均停车次数';
comment on column FACE_CROSS_INDEX.saturation
  is '饱和度';
comment on column FACE_CROSS_INDEX.traffic_status
  is '交通状态';
comment on column FACE_CROSS_INDEX.pi
  is '延误指数';
comment on column FACE_CROSS_INDEX.dtd
  is '延误极差';
comment on column FACE_CROSS_INDEX.queue_len_indicator
  is '路口排队长度指数';
comment on column FACE_CROSS_INDEX.traffic_capacity
  is '通行能力';
comment on column FACE_CROSS_INDEX.intensity
  is '交通强度';
comment on column FACE_CROSS_INDEX.health_level
  is '健康指数';
comment on column FACE_CROSS_INDEX.green_waste_lose
  is '绿损丢分';
comment on column FACE_CROSS_INDEX.stop_lose
  is '停车丢分';
comment on column FACE_CROSS_INDEX.delay_lose
  is '延误丢分';
comment on column FACE_CROSS_INDEX.ub_lose
  is '失衡丢分';
comment on column FACE_CROSS_INDEX.max_satturn
  is '最大饱和度方向';
comment on column FACE_CROSS_INDEX.max_gwturn
  is '最大绿损方向';
comment on column FACE_CROSS_INDEX.max_queueturn
  is '最大排队方向';
comment on column FACE_CROSS_INDEX.max_stopturn
  is '最大停车次数方向';
comment on column FACE_CROSS_INDEX.max_delayturn
  is '最大延误方向';
comment on column FACE_CROSS_INDEX.ubturn
  is '失衡方向';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_CROSS_INDEX
  add constraint FACE_CROSS_INDEX_PK primary key (INDEX_ID)
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

-- Create table
create table FACE_INTS_TIDECHARACTOR
(
  pk_ints_tidecharactor   VARCHAR2(40) not null,
  intsid                  VARCHAR2(32),
  approach                VARCHAR2(30),
  approach_tide_charactor VARCHAR2(30),
  approach_tide_level     VARCHAR2(30),
  turn_tide_charactor     VARCHAR2(30),
  turn_tide_level         VARCHAR2(30),
  inserttime              DATE,
  approach_flow           CLOB,
  approach_tpi            CLOB,
  approach_speed          CLOB,
  approach_ubi            CLOB,
  turn_flow               CLOB,
  turn_tpi                CLOB,
  turn_speed              CLOB,
  turn_ubi                CLOB
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
-- Add comments to the table 
comment on table FACE_INTS_TIDECHARACTOR
  is '路口潮汐表';
-- Add comments to the columns 
comment on column FACE_INTS_TIDECHARACTOR.pk_ints_tidecharactor
  is '日期_路口编号';
comment on column FACE_INTS_TIDECHARACTOR.intsid
  is '路口编号';
comment on column FACE_INTS_TIDECHARACTOR.approach
  is '方向';
comment on column FACE_INTS_TIDECHARACTOR.approach_tide_charactor
  is '各方向上是否有潮汐现象，0-无，1-有';
comment on column FACE_INTS_TIDECHARACTOR.approach_tide_level
  is '各方向上潮汐现象等级，0-无，1-轻微，2-中度，3-重度';
comment on column FACE_INTS_TIDECHARACTOR.turn_tide_charactor
  is '对应方向上是否有转向潮汐现在，0-无，1-有';
comment on column FACE_INTS_TIDECHARACTOR.turn_tide_level
  is '对应方向上转向潮汐等级，0-无，1-轻微，2-中度，3-重度';
comment on column FACE_INTS_TIDECHARACTOR.inserttime
  is '插入时间';
comment on column FACE_INTS_TIDECHARACTOR.approach_flow
  is '方向流量';
comment on column FACE_INTS_TIDECHARACTOR.approach_tpi
  is '方向拥堵指数';
comment on column FACE_INTS_TIDECHARACTOR.approach_speed
  is '方向平均速度';
comment on column FACE_INTS_TIDECHARACTOR.approach_ubi
  is '方向不均衡系数';
comment on column FACE_INTS_TIDECHARACTOR.turn_flow
  is '转向流量';
comment on column FACE_INTS_TIDECHARACTOR.turn_tpi
  is '转向拥堵指数';
comment on column FACE_INTS_TIDECHARACTOR.turn_speed
  is '转向平均速度';
comment on column FACE_INTS_TIDECHARACTOR.turn_ubi
  is '转向不均衡系数';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_INTS_TIDECHARACTOR
  add constraint INTS_TIDECHARACTOR_PK primary key (PK_INTS_TIDECHARACTOR)
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


-- Create table
create table FACE_AREA_INDEX
(
  index_id                      VARCHAR2(500) not null,
  area_id                       VARCHAR2(32),
  collect_time                  DATE,
  congestion_len                NUMBER,
  tpi                           NUMBER,
  transit_vehicle_num           NUMBER,
  local_vehicle_num             NUMBER,
  nonlocal_vehicle_num          NUMBER,
  local_use_vehicle_num         NUMBER,
  large_vehicle_num             NUMBER,
  small_vehicle_num             NUMBER,
  intocity_vehicle_num          NUMBER,
  outcity_vehicle_num           NUMBER,
  intocity_nonlocal_vehicle_num NUMBER,
  intocity_local_vehicle_num    NUMBER,
  outcity_nonlocal_vehicle_num  NUMBER,
  outcity_local_vehicle_num     NUMBER,
  other_vehicle_num             NUMBER,
  inflow                        NUMBER,
  outflow                       NUMBER,
  freelen                       NUMBER,
  normallen                     NUMBER,
  jamlen                        NUMBER,
  seriouslen                    NUMBER,
  freerate                      NUMBER,
  normalrate                    NUMBER,
  jamrate                       NUMBER,
  seriousrate                   NUMBER,
  low_freq_prop                 NUMBER,
  taxi_prop                     NUMBER,
  ride_hailing_prop             NUMBER,
  parents_prop                  NUMBER,
  shopping_prop                 NUMBER,
  large_vehicle_prop            NUMBER,
  shuttle_num                   NUMBER,
  avgspeed                      NUMBER,
  history_tpi                   NUMBER,
  history_avg_speed             NUMBER,
  history_inflow                NUMBER,
  history_outflow               NUMBER,
  intocity_large_vehicle_num    NUMBER,
  intocity_small_vehicle_num    NUMBER,
  intocity_other_vehicle_num    NUMBER,
  outcity_large_vehicle_num     NUMBER,
  outcity_small_vehicle_num     NUMBER,
  outcity_other_vehicle_num     NUMBER
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
-- Add comments to the table 
comment on table FACE_AREA_INDEX
  is '重点区域指数表';
-- Add comments to the columns 
comment on column FACE_AREA_INDEX.index_id
  is 'ID';
comment on column FACE_AREA_INDEX.area_id
  is '区域编号';
comment on column FACE_AREA_INDEX.collect_time
  is '收集时间';
comment on column FACE_AREA_INDEX.congestion_len
  is '拥堵里程';
comment on column FACE_AREA_INDEX.tpi
  is '拥堵指数';
comment on column FACE_AREA_INDEX.transit_vehicle_num
  is '在途车辆数';
comment on column FACE_AREA_INDEX.local_vehicle_num
  is '在途本地车数';
comment on column FACE_AREA_INDEX.nonlocal_vehicle_num
  is '在途外地车数';
comment on column FACE_AREA_INDEX.local_use_vehicle_num
  is '在途本地化使用外地车';
comment on column FACE_AREA_INDEX.large_vehicle_num
  is '在途大型车数';
comment on column FACE_AREA_INDEX.small_vehicle_num
  is '在途小型车数';
comment on column FACE_AREA_INDEX.intocity_vehicle_num
  is '进城车辆数';
comment on column FACE_AREA_INDEX.outcity_vehicle_num
  is '出城车辆数';
comment on column FACE_AREA_INDEX.intocity_nonlocal_vehicle_num
  is '进城车辆中外地车数';
comment on column FACE_AREA_INDEX.intocity_local_vehicle_num
  is '进城车辆中本地车数';
comment on column FACE_AREA_INDEX.outcity_nonlocal_vehicle_num
  is '出城车辆中外地车数';
comment on column FACE_AREA_INDEX.outcity_local_vehicle_num
  is '出城车辆中本地车数';
comment on column FACE_AREA_INDEX.other_vehicle_num
  is '其他车辆数';
comment on column FACE_AREA_INDEX.inflow
  is '驶入流量';
comment on column FACE_AREA_INDEX.outflow
  is '驶出流量';
comment on column FACE_AREA_INDEX.freelen
  is '	畅通路段里程';
comment on column FACE_AREA_INDEX.normallen
  is '	缓行路段里程';
comment on column FACE_AREA_INDEX.jamlen
  is '	拥堵路段里程';
comment on column FACE_AREA_INDEX.seriouslen
  is '	严重路段里程';
comment on column FACE_AREA_INDEX.freerate
  is '	畅通里程比例';
comment on column FACE_AREA_INDEX.normalrate
  is '	缓行里程比例';
comment on column FACE_AREA_INDEX.jamrate
  is '	拥堵里程比例';
comment on column FACE_AREA_INDEX.seriousrate
  is '	严重里程比例';
comment on column FACE_AREA_INDEX.low_freq_prop
  is '	区域低频车占比';
comment on column FACE_AREA_INDEX.taxi_prop
  is '	区域出租车占比	';
comment on column FACE_AREA_INDEX.ride_hailing_prop
  is '	区域网约车占比';
comment on column FACE_AREA_INDEX.parents_prop
  is '	区域疑似家长车占比';
comment on column FACE_AREA_INDEX.shopping_prop
  is '	区域疑似购物车占比';
comment on column FACE_AREA_INDEX.large_vehicle_prop
  is '区域大型车占比';
comment on column FACE_AREA_INDEX.shuttle_num
  is '在途通勤车辆数';
comment on column FACE_AREA_INDEX.avgspeed
  is '平均速度';
comment on column FACE_AREA_INDEX.history_tpi
  is '拥堵区域的四周平均拥堵指数';
comment on column FACE_AREA_INDEX.history_avg_speed
  is '拥堵区域的四周平均速度';
comment on column FACE_AREA_INDEX.history_inflow
  is '拥堵区域的四周平均驶入流量';
comment on column FACE_AREA_INDEX.history_outflow
  is '拥堵区域的四周平均驶出流量';
comment on column FACE_AREA_INDEX.intocity_large_vehicle_num
  is '进城车辆中大型车数';
comment on column FACE_AREA_INDEX.intocity_small_vehicle_num
  is '进城车辆中小型车数';
comment on column FACE_AREA_INDEX.intocity_other_vehicle_num
  is '进城车辆中其他车数';
comment on column FACE_AREA_INDEX.outcity_large_vehicle_num
  is '出城车辆中大型车数';
comment on column FACE_AREA_INDEX.outcity_small_vehicle_num
  is '出城车辆中小型车数';
comment on column FACE_AREA_INDEX.outcity_other_vehicle_num
  is '出城车辆中其他车数';
-- Create/Recreate indexes 
create index FACE_AREA_INDEX_AREA on FACE_AREA_INDEX (AREA_ID)
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
create index FACE_AREA_INDEX_COLLECT_TIME on FACE_AREA_INDEX (COLLECT_TIME)
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_AREA_INDEX
  add constraint FACE_AREA_INDEX_PK primary key (INDEX_ID)
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

-- Create table
create table FACE_INTS_PEAKDURATION
(
  pk_ints_peakduration  VARCHAR2(40) not null,
  intsid                VARCHAR2(32),
  morning_peak_duration VARCHAR2(100),
  evening_peak_duration VARCHAR2(100),
  flow                  CLOB,
  tpi                   VARCHAR2(1500),
  isdata                VARCHAR2(1),
  inserttime            DATE
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
-- Add comments to the table 
comment on table FACE_INTS_PEAKDURATION
  is '路口早晚高峰时段表';
-- Add comments to the columns 
comment on column FACE_INTS_PEAKDURATION.pk_ints_peakduration
  is '日期_路口编号';
comment on column FACE_INTS_PEAKDURATION.intsid
  is '路口编号';
comment on column FACE_INTS_PEAKDURATION.morning_peak_duration
  is '早高峰时段，格式07:00,09:00;09:10,09:35';
comment on column FACE_INTS_PEAKDURATION.evening_peak_duration
  is '晚高峰时段，格式17:00,19:00';
comment on column FACE_INTS_PEAKDURATION.flow
  is '流量json';
comment on column FACE_INTS_PEAKDURATION.tpi
  is '交通指数json';
comment on column FACE_INTS_PEAKDURATION.isdata
  is '0-数据不全 1-数据全';
comment on column FACE_INTS_PEAKDURATION.inserttime
  is '插入时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_INTS_PEAKDURATION
  add constraint INTS_PEAKDURATION_PK primary key (PK_INTS_PEAKDURATION)
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


-- Create table
create table FACE_INOUTCITY_INDEX
(
  index_id            VARCHAR2(32) not null,
  total_carcnt        NUMBER,
  in_carcnt           NUMBER,
  out_carcnt          NUMBER,
  in_local_carcnt     NUMBER,
  in_foreign_carcnt   NUMBER,
  in_localize_carcnt  NUMBER,
  out_local_carcnt    NUMBER,
  out_foreign_carcnt  NUMBER,
  out_localize_carcnt NUMBER,
  crossing_code       VARCHAR2(32),
  bigcar_rate         NUMBER,
  share_rate          NUMBER,
  collect_time        DATE
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
-- Add comments to the columns 
comment on column FACE_INOUTCITY_INDEX.index_id
  is '点位指标id';
comment on column FACE_INOUTCITY_INDEX.total_carcnt
  is '总车辆数';
comment on column FACE_INOUTCITY_INDEX.in_carcnt
  is '进城车辆数';
comment on column FACE_INOUTCITY_INDEX.out_carcnt
  is '出城车辆数';
comment on column FACE_INOUTCITY_INDEX.in_local_carcnt
  is '进城车中本地车辆数';
comment on column FACE_INOUTCITY_INDEX.in_foreign_carcnt
  is '进城车中外地车辆数';
comment on column FACE_INOUTCITY_INDEX.in_localize_carcnt
  is '进城车中本地化使用外地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_local_carcnt
  is '出城车中本地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_foreign_carcnt
  is '出城车中外地车辆数';
comment on column FACE_INOUTCITY_INDEX.out_localize_carcnt
  is '出城车中本地化使用外地车辆数';
comment on column FACE_INOUTCITY_INDEX.crossing_code
  is '路口编号';
comment on column FACE_INOUTCITY_INDEX.bigcar_rate
  is '大型车占比';
comment on column FACE_INOUTCITY_INDEX.share_rate
  is '流量分担率';
comment on column FACE_INOUTCITY_INDEX.collect_time
  is '采集时间';

-- Create table
create table FRM_CODE
(
  xtlb  CHAR(2) not null,
  dmlb  VARCHAR2(6) not null,
  dmz   VARCHAR2(30) not null,
  dmsm1 VARCHAR2(600) not null,
  dmsm2 VARCHAR2(600),
  dmsm3 VARCHAR2(600),
  dmsm4 VARCHAR2(600),
  dmsx  CHAR(1) default 0 not null,
  sxh   NUMBER(4),
  ywdx  VARCHAR2(128),
  zt    CHAR(1) default 1 not null,
  csbj  CHAR(1) default 0 not null,
  gxsj  DATE default sysdate
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
-- Add comments to the table 
comment on table FRM_CODE
  is '代码表';
-- Add comments to the columns 
comment on column FRM_CODE.xtlb
  is '系统类别';
comment on column FRM_CODE.dmlb
  is '代码类别';
comment on column FRM_CODE.dmz
  is '代码值';
comment on column FRM_CODE.dmsm1
  is '代码属性1';
comment on column FRM_CODE.dmsm2
  is '代码属性2';
comment on column FRM_CODE.dmsm3
  is '代码属性3';
comment on column FRM_CODE.dmsm4
  is '代码属性4';
comment on column FRM_CODE.dmsx
  is '代码属性（0-不允许修改 1-允许修改）';
comment on column FRM_CODE.sxh
  is '顺序号';
comment on column FRM_CODE.ywdx
  is '业务使用对象（空，都能使用
业务使用对象以逗号分隔
）';
comment on column FRM_CODE.zt
  is '状态标记（0-删除 1-正常）';
comment on column FRM_CODE.csbj
  is '传输标记';

-- Create table
create table FRM_CODETYPE
(
  xtlb VARCHAR2(2),
  dmlb VARCHAR2(6),
  lbsm VARCHAR2(128),
  dmcd NUMBER(2),
  lbsx CHAR(1),
  dmsx NUMBER(4),
  bz   VARCHAR2(128),
  jznc CHAR(1),
  dmlx CHAR(1)
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
-- Add comments to the table 
comment on table FRM_CODETYPE
  is '代码类型表';
-- Add comments to the columns 
comment on column FRM_CODETYPE.xtlb
  is '系统类别';
comment on column FRM_CODETYPE.dmlb
  is '代码类别';
comment on column FRM_CODETYPE.lbsm
  is '类别说明';
comment on column FRM_CODETYPE.dmcd
  is '代码长度';
comment on column FRM_CODETYPE.lbsx
  is '类别属性 0-不允许修改 1-允许修改';
comment on column FRM_CODETYPE.dmsx
  is '代码顺序';
comment on column FRM_CODETYPE.bz
  is '备注';
comment on column FRM_CODETYPE.jznc
  is '加载内存 1-是 2-否';
comment on column FRM_CODETYPE.dmlx
  is '代码类型 1-国标 2-部标 3-普通代码';

-------------------A5-------------

-- Create table
create table leg_eagleeye_info
(
  id          varchar2(32),
  video_id    varchar2(32),
  update_time date,
  coordinate  clob
)
;
-- Add comments to the table 
comment on table leg_eagleeye_info
  is '安保视域信息表';
-- Add comments to the columns 
comment on column leg_eagleeye_info.id
  is '视域编号';
comment on column leg_eagleeye_info.video_id
  is '视频编号';
comment on column leg_eagleeye_info.update_time
  is '更新时间';
comment on column leg_eagleeye_info.coordinate
  is '视域范围坐标';


alter table FACE_INOUTCITY_INDEX drop column in_localize_carcnt;
alter table FACE_INOUTCITY_INDEX drop column out_localize_carcnt;


-- Add/modify columns 
alter table FACE_CROSSING_WARNING add insert_time date default sysdate;
-- Add comments to the columns 
comment on column FACE_CROSSING_WARNING.insert_time
  is '入库时间';
  
--取消下面3个表的数据同步，故drop 表
drop table face_jam_section_duration;
drop table face_ints_peakduration;
drop table face_ints_tidecharactor;

create or replace view face_area_index_data_view as
select t.index_id,
       t.area_id,
       t.collect_time,
       (
       decode(t.normalrate,-1,0,t.normalrate)
       +decode(t.jamrate,-1,0,t.jamrate)
       +decode(t.seriousrate,-1,0,t.seriousrate)
       ) as jampercent,
       decode(t.normallen,-1,0,t.normallen)
       +decode(t.jamlen,-1,0,t.jamlen)
       +decode(t.seriouslen,-1,0,t.seriouslen)
       as  jamlength,
       decode(t.transit_vehicle_num,-1,0,t.transit_vehicle_num) as onroadcarnum,
       decode(t.low_freq_prop,-1,0,t.low_freq_prop) as lowfrequencycarper,
       decode(t.taxi_prop,-1,0,t.taxi_prop) as taxiper,
       decode(t.ride_hailing_prop,-1,0,t.ride_hailing_prop) as carhailingper,
       decode(t.shopping_prop,-1,0,t.shopping_prop) as shoppingcarper,
       decode(t.parents_prop,-1,0,t.parents_prop) as parentcarper,
       decode(t.large_vehicle_prop,-1,0,t.large_vehicle_prop) as largecarper
  from face_area_index t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';


create or replace view face_area_index_view as
select t1.index_id,
       t1.area_id,
       t1.collect_time,
       case when nvl(t1.jampercent,0) >= (select to_number(param_value) from face_sysparam where param_code='JAM_INDEX')  then 1 else 0 end as isjam,
       t1.jampercent,
       t1.jamlength,
       t1.onroadcarnum,
       --(t2.jampercent-t1.jampercent)/t2.jampercent as jampercentchange,
       calculateratio(t1.jampercent,t2.jampercent,'--') as jampercentchange,
       --(t2.onroadcarnum-t1.onroadcarnum)/t2.onroadcarnum as onroadcarnumchange,
       calculateratio(t1.onroadcarnum,t2.onroadcarnum,'--') as onroadcarnumchange,
       t1.lowfrequencycarper,
       --(t2.lowfrequencycarper-t1.lowfrequencycarper)/t2.lowfrequencycarper as lowfrequencycarperchange,
       calculateratio(t1.lowfrequencycarper,t2.lowfrequencycarper,'--') as lowfrequencycarperchange,
       t1.taxiper,
       --(t2.taxiper-t1.taxiper)/t2.taxiper as taxiperchange,
       calculateratio(t1.taxiper,t2.taxiper,'--') as taxiperchange,
       t1.carhailingper,
       --(t2.carhailingper-t1.carhailingper)/t2.carhailingper as carhailingperchange,
       calculateratio(t1.carhailingper,t2.carhailingper,'--') as carhailingperchange,
       t1.shoppingcarper,
       --(t2.shoppingcarper-t1.shoppingcarper)/t2.shoppingcarper as shoppingcarperchange,
       calculateratio(t1.shoppingcarper,t2.shoppingcarper,'--') as shoppingcarperchange,
       t1.parentcarper,
       --(t2.parentcarper-t1.parentcarper)/t2.parentcarper as parentcarperchange,
       calculateratio(t1.parentcarper,t2.parentcarper,'--') as parentcarperchange,
       t1.largecarper,
       --(t2.largecarper-t1.largecarper)/t2.largecarper as largecarperchange
       calculateratio(t1.largecarper,t2.largecarper,'--') as largecarperchange
  from face_area_index_data_view t1 left join face_area_index_data_view t2 on t1.area_id=t2.area_id and t1.collect_time=t2.collect_time+7
  where not exists
 (select 1
          from face_area_index_data_view t2
         where t1.area_id = t2.area_id
           and t2.collect_time > t1.collect_time);


-- Add comments to the table 
comment on table FACE_HOLIDAY_WARN
  is '节假日提醒表';
  
  -- Add/modify columns 

alter table FACE_TOLLSTATION_FORECAST modify more_flowtime NVARCHAR2(300);



-- Add/modify columns 
alter table FACE_SECTION_FORECAST modify more_flowtime NVARCHAR2(300);



Create Index i_collect_time_section_id On face_section_index (collect_time,section_id);


---------------------------------------------------在12c上创建 wm_concat
alter user wmsys account unlock;
 
 
--------------------------------------------------------------------------
 CREATE OR REPLACE TYPE WM_CONCAT_IMPL AS OBJECT  
-- AUTHID CURRENT_USER AS OBJECT  
(  
CURR_STR VARCHAR2(32767),   
STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT WM_CONCAT_IMPL) RETURN NUMBER,  
MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT WM_CONCAT_IMPL,  
P1 IN VARCHAR2) RETURN NUMBER,  
MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN WM_CONCAT_IMPL,  
RETURNVALUE OUT VARCHAR2,  
FLAGS IN NUMBER)  
RETURN NUMBER,  
MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT WM_CONCAT_IMPL,  
SCTX2 IN WM_CONCAT_IMPL) RETURN NUMBER  
);  
/  
  
--定义类型body:  
CREATE OR REPLACE TYPE BODY WM_CONCAT_IMPL  
IS  
STATIC FUNCTION ODCIAGGREGATEINITIALIZE(SCTX IN OUT WM_CONCAT_IMPL)  
RETURN NUMBER  
IS  
BEGIN  
SCTX := WM_CONCAT_IMPL(NULL) ;  
RETURN ODCICONST.SUCCESS;  
END;  
MEMBER FUNCTION ODCIAGGREGATEITERATE(SELF IN OUT WM_CONCAT_IMPL,  
P1 IN VARCHAR2)  
RETURN NUMBER  
IS  
BEGIN  
IF(CURR_STR IS NOT NULL) THEN  
CURR_STR := CURR_STR || ',' || P1;  
ELSE  
CURR_STR := P1;  
END IF;  
RETURN ODCICONST.SUCCESS;  
END;  
MEMBER FUNCTION ODCIAGGREGATETERMINATE(SELF IN WM_CONCAT_IMPL,  
RETURNVALUE OUT VARCHAR2,  
FLAGS IN NUMBER)  
RETURN NUMBER  
IS  
BEGIN  
RETURNVALUE := CURR_STR ;  
RETURN ODCICONST.SUCCESS;  
END;  
MEMBER FUNCTION ODCIAGGREGATEMERGE(SELF IN OUT WM_CONCAT_IMPL,  
SCTX2 IN WM_CONCAT_IMPL)  
RETURN NUMBER  
IS  
BEGIN  
IF(SCTX2.CURR_STR IS NOT NULL) THEN  
SELF.CURR_STR := SELF.CURR_STR || ',' || SCTX2.CURR_STR ;  
END IF;  
RETURN ODCICONST.SUCCESS;  
END;  
END;  
/  
--自定义行变列函数:  
CREATE OR REPLACE FUNCTION wm_concat(P1 VARCHAR2)  
RETURN VARCHAR2 AGGREGATE USING WM_CONCAT_IMPL ;  
/  


--------------------------------------------------------------------
create public synonym WM_CONCAT_IMPL for wmsys.WM_CONCAT_IMPL 
  
create public synonym wm_concat for wmsys.wm_concat 
 
   
grant execute on WM_CONCAT_IMPL to public 
 
grant execute on wm_concat to public 
 

----------------------A6--------------------
create table face_area_index_real as select * from face_area_index where 1=0;
create table face_cross_dir_index_real as select * from face_cross_dir_index where 1=0;
create table face_cross_index_real as select * from face_cross_index where 1=0;
create table face_inoutcity_index_real as select * from face_inoutcity_index where 1=0;
create table face_mainline_index_real as select * from face_mainline_index where 1=0;
create table face_section_index_real as select * from face_section_index where 1=0;


alter table face_map_draw modify center_location  varchar2(100);

-------------------------A7----------------------
-------------------------------------------------
-- Export file for user HIATMPQD6              --
-- Created by wangliyan on 2021/1/14, 16:48:32 --
-------------------------------------------------

set define off
spool FACE_TRACE_SOURCE_SECTO.log

prompt
prompt Creating table FACE_TRACE_SOURCE_SECTO
prompt ======================================
prompt
create table FACE_TRACE_SOURCE_SECTO
(
  trace_source_id VARCHAR2(32) default sys_guid() not null,
  obj_id          VARCHAR2(32) not null,
  section_code    VARCHAR2(32) not null,
  flow            NUMBER,
  flow_rate       NUMBER,
  insertdate      DATE default sysdate
)
;
comment on table FACE_TRACE_SOURCE_SECTO
  is '路段溯源去向表';
comment on column FACE_TRACE_SOURCE_SECTO.trace_source_id
  is 'uuid';
comment on column FACE_TRACE_SOURCE_SECTO.obj_id
  is '分析路段编号';
comment on column FACE_TRACE_SOURCE_SECTO.section_code
  is '溯源路段编号';
comment on column FACE_TRACE_SOURCE_SECTO.flow
  is '溯源流量';
comment on column FACE_TRACE_SOURCE_SECTO.flow_rate
  is '溯源占比';
comment on column FACE_TRACE_SOURCE_SECTO.insertdate
  is '入库时间';
alter table FACE_TRACE_SOURCE_SECTO
  add constraint TO_TRACE_SOURCE_PK primary key (TRACE_SOURCE_ID);


spool off

--------------------A8-------------
-- Add/modify columns 
alter table FACE_TRACE_SOURCE_SECTO add total_flow number;
-- Add comments to the columns 
comment on column FACE_TRACE_SOURCE_SECTO.total_flow
  is '溯源路段总流量';




/
create or replace view face_area_index_data_view as
select t.index_id,
       t.area_id,
       t.collect_time,
       (
       decode(t.normalrate,-1,0,t.normalrate)
       +decode(t.jamrate,-1,0,t.jamrate)
       +decode(t.seriousrate,-1,0,t.seriousrate)
       ) as jampercent,
       decode(t.normallen,-1,0,t.normallen)
       +decode(t.jamlen,-1,0,t.jamlen)
       +decode(t.seriouslen,-1,0,t.seriouslen)
       as  jamlength,
       decode(t.transit_vehicle_num,-1,0,t.transit_vehicle_num) as onroadcarnum,
       decode(t.low_freq_prop,-1,0,t.low_freq_prop) as lowfrequencycarper,
       decode(t.taxi_prop,-1,0,t.taxi_prop) as taxiper,
       decode(t.ride_hailing_prop,-1,0,t.ride_hailing_prop) as carhailingper,
       decode(t.shopping_prop,-1,0,t.shopping_prop) as shoppingcarper,
       decode(t.parents_prop,-1,0,t.parents_prop) as parentcarper,
       decode(t.large_vehicle_prop,-1,0,t.large_vehicle_prop) as largecarper
  from face_area_index_real t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';

/  
  create or replace view face_area_index_data_view_mul as
select t.index_id,
       t.area_id,
       t.collect_time,
       (
       decode(t.normalrate,-1,0,t.normalrate)
       +decode(t.jamrate,-1,0,t.jamrate)
       +decode(t.seriousrate,-1,0,t.seriousrate)
       ) as jampercent,
       decode(t.normallen,-1,0,t.normallen)
       +decode(t.jamlen,-1,0,t.jamlen)
       +decode(t.seriouslen,-1,0,t.seriouslen)
       as  jamlength,
       decode(t.transit_vehicle_num,-1,0,t.transit_vehicle_num) as onroadcarnum,
       decode(t.low_freq_prop,-1,0,t.low_freq_prop) as lowfrequencycarper,
       decode(t.taxi_prop,-1,0,t.taxi_prop) as taxiper,
       decode(t.ride_hailing_prop,-1,0,t.ride_hailing_prop) as carhailingper,
       decode(t.shopping_prop,-1,0,t.shopping_prop) as shoppingcarper,
       decode(t.parents_prop,-1,0,t.parents_prop) as parentcarper,
       decode(t.large_vehicle_prop,-1,0,t.large_vehicle_prop) as largecarper
  from face_area_index t,face_area t1 where t.area_id=t1.area_id and t1.area_model='2';
  
  /
  create or replace view face_area_index_view as
select t1.index_id,
       t1.area_id,
       t1.collect_time,
       case when nvl(t1.jampercent,0) >= (select to_number(param_value) from face_sysparam where param_code='JAM_INDEX')  then 1 else 0 end as isjam,
       t1.jampercent,
       t1.jamlength,
       t1.onroadcarnum,
       --(t2.jampercent-t1.jampercent)/t2.jampercent as jampercentchange,
       calculateratio(t1.jampercent,t2.jampercent,'--') as jampercentchange,
       --(t2.onroadcarnum-t1.onroadcarnum)/t2.onroadcarnum as onroadcarnumchange,
       calculateratio(t1.onroadcarnum,t2.onroadcarnum,'--') as onroadcarnumchange,
       t1.lowfrequencycarper,
       --(t2.lowfrequencycarper-t1.lowfrequencycarper)/t2.lowfrequencycarper as lowfrequencycarperchange,
       calculateratio(t1.lowfrequencycarper,t2.lowfrequencycarper,'--') as lowfrequencycarperchange,
       t1.taxiper,
       --(t2.taxiper-t1.taxiper)/t2.taxiper as taxiperchange,
       calculateratio(t1.taxiper,t2.taxiper,'--') as taxiperchange,
       t1.carhailingper,
       --(t2.carhailingper-t1.carhailingper)/t2.carhailingper as carhailingperchange,
       calculateratio(t1.carhailingper,t2.carhailingper,'--') as carhailingperchange,
       t1.shoppingcarper,
       --(t2.shoppingcarper-t1.shoppingcarper)/t2.shoppingcarper as shoppingcarperchange,
       calculateratio(t1.shoppingcarper,t2.shoppingcarper,'--') as shoppingcarperchange,
       t1.parentcarper,
       --(t2.parentcarper-t1.parentcarper)/t2.parentcarper as parentcarperchange,
       calculateratio(t1.parentcarper,t2.parentcarper,'--') as parentcarperchange,
       t1.largecarper,
       --(t2.largecarper-t1.largecarper)/t2.largecarper as largecarperchange
       calculateratio(t1.largecarper,t2.largecarper,'--') as largecarperchange
  from face_area_index_data_view t1 left join face_area_index_data_view_mul t2 on t1.area_id=t2.area_id and t1.collect_time=t2.collect_time+7
  where not exists
 (select 1
          from face_area_index_data_view t3
         where t1.area_id = t3.area_id
           and t3.collect_time > t1.collect_time);
/

----------------A9------------
-- Create table
create table BIS_MENU
(
  menu_id        VARCHAR2(32) not null,
  menu_name      VARCHAR2(50),
  on_click       VARCHAR2(500),
  parent_menu_id VARCHAR2(32) default 0,
  menu_level     NUMBER(1) default 4,
  image          VARCHAR2(100),
  isactive       NUMBER(1) default 0,
  user_id        VARCHAR2(32)
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
-- Add comments to the table 
comment on table BIS_MENU
  is '菜单信息表测试专用';
-- Add comments to the columns 
comment on column BIS_MENU.menu_id
  is '菜单id';
comment on column BIS_MENU.menu_name
  is '菜单名称';
comment on column BIS_MENU.on_click
  is '菜单点击响应';
comment on column BIS_MENU.parent_menu_id
  is '上级菜单ID';
comment on column BIS_MENU.menu_level
  is '菜单等级 枚举104';
comment on column BIS_MENU.image
  is '菜单图片';
comment on column BIS_MENU.isactive
  is '是否启用';
comment on column BIS_MENU.user_id
  is '用户id';

-- Add/modify columns 
alter table FACE_CROSSING_CARTYPE add insert_date date default sysdate;
-- Add comments to the columns 
comment on column FACE_CROSSING_CARTYPE.insert_date
  is '入库时间';

-- Add/modify columns 
alter table face_crossing_route add insert_date date default sysdate;
-- Add comments to the columns 
comment on column face_crossing_route.insert_date
  is '入库时间';

  ------------------A11-------------------
  -- Create/Recreate indexes 
create index face_section_idx_sectionid on FACE_SECTION_INDEX (section_id);
create index face_section_idx_time on FACE_SECTION_INDEX (collect_time);

-- Create/Recreate indexes 
create index cross_route_idx on FACE_CROSSING_ROUTE (crossing_code, weekday, analys_time, approach_dir, route_dir);
  
alter table FACE_MAINLINE_INDEX_REAL add constraint pk_lineindex_real primary key (INDEX_ID);
  
create index index_linereal_lineid on FACE_MAINLINE_INDEX_REAL (line_id);
create index index_linereal_time on FACE_MAINLINE_INDEX_REAL (collect_time);

-- Create/Recreate indexes 
create index face_MAINLINE_idx_lineid on FACE_MAINLINE_INDEX (line_id);
create index FACE_MAINLINE_INDEX_TIME on FACE_MAINLINE_INDEX (collect_time);
-- Create/Recreate indexes 
create index face_INOUTCITY_idx_CROSSCODE on FACE_INOUTCITY_INDEX (CROSSING_CODE);
create index FACE_INOUTCITY_INDEX_TIME on FACE_INOUTCITY_INDEX (collect_time);
-- Create/Recreate indexes 
create index face_CROSS_idx_INTS_ID on FACE_CROSS_INDEX (INTS_ID);
create index FACE_CROSS_INDEX_TIME on FACE_CROSS_INDEX (collect_time);


-----------------------------6.1 end -----------------------------------------------------------

