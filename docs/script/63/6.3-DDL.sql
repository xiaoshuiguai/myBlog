



--#--# 修改

--#--#--# OPERATOR 

--```sql
-- Add/modify columns 
alter table OPERATOR add iscontrolnotice NUMBER(1) default 0;
-- Add comments to the columns 
comment on column OPERATOR.iscontrolnotice
  is '是否布控通知';
--```



--#--#--# MONITOR_POINT

--```sql
alter table MONITOR_POINT add imagepath VARCHAR2(128);
--```



--#--#--# EQUIPMENT_INFO_USER

--```sql
 -- Add/modify columns 
alter table EQUIPMENT_INFO_USER add BELONGTO NVARCHAR2(20);
-- Add comments to the columns 
comment on column EQUIPMENT_INFO_USER.BELONGTO
  is '所属厂商，1海康 2大华';
-- Add/modify columns 
alter table EQUIPMENT_INFO_USER add LOGINCHECK NVARCHAR2(20);
-- Add comments to the columns 
comment on column EQUIPMENT_INFO_USER.LOGINCHECK
  is '-1或其它-登陆失败，1成功';
-- Add/modify columns 
alter table EQUIPMENT_INFO_USER add PLAYCHECK NVARCHAR2(20);
-- Add comments to the columns 
comment on column EQUIPMENT_INFO_USER.PLAYCHECK
  is '0或其它-播放失败，1成功';
-- Add/modify columns 
alter table EQUIPMENT_INFO_USER add DEVICEID NVARCHAR2(32);
-- Add comments to the columns 
comment on column EQUIPMENT_INFO_USER.DEVICEID
  is '设备编号';
-- Add/modify columns 
alter table EQUIPMENT_INFO_USER add DEVICENAME NVARCHAR2(100);
-- Add comments to the columns 
comment on column EQUIPMENT_INFO_USER.DEVICENAME
  is '设备名称';

--```



--#--#--# BLACK_LIST_MANAGE

--```sql
alter table BLACK_LIST_MANAGE add messagetime VARCHAR2(2);
alter table BLACK_LIST_MANAGE add bjsd_begin NVARCHAR2(10);
alter table BLACK_LIST_MANAGE add bjsd_endin NVARCHAR2(10);
alter table BLACK_LIST_MANAGE add auditid VARCHAR2(12);
alter table BLACK_LIST_MANAGE add interceptor VARCHAR2(150);
alter table BLACK_LIST_MANAGE add interceptortime DATE;
alter table BLACK_LIST_MANAGE add interceptorsquadron NVARCHAR2(50);
alter table BLACK_LIST_MANAGE add collector NVARCHAR2(20);
alter table BLACK_LIST_MANAGE add conllectionsource NVARCHAR2(200);
alter table BLACK_LIST_MANAGE add sfzdbk VARCHAR2(1) default 0;
-- Add comments to the columns 
comment on column BLACK_LIST_MANAGE.messagetime
  is '短信发送时间，枚举1180';
comment on column BLACK_LIST_MANAGE.bjsd_begin
  is '开始时间hh24:mi:ss';
comment on column BLACK_LIST_MANAGE.bjsd_endin
  is '结束时间hh24:mi:ss';
comment on column BLACK_LIST_MANAGE.auditid
  is '审批人ID';
comment on column BLACK_LIST_MANAGE.interceptor
  is '拦截人';
comment on column BLACK_LIST_MANAGE.interceptortime
  is '拦截时间';
comment on column BLACK_LIST_MANAGE.interceptorsquadron
  is '拦截辖区中队';
comment on column BLACK_LIST_MANAGE.collector
  is '采集人';
comment on column BLACK_LIST_MANAGE.conllectionsource
  is '采集来源';
comment on column BLACK_LIST_MANAGE.sfzdbk
  is '是否为自动布控数据（0手动布控，1自动布控）';
--```



--#--#--# BLACK_LIST_MANAGE_RECORD

--```sql
alter table BLACK_LIST_MANAGE_RECORD add messagetime VARCHAR2(200);
--```

--#--#--# BLACK_ALERT_FEEDBACK

--```sql
-- Add/modify columns 
alter table BLACK_ALERT_FEEDBACK add clzt VARCHAR2(255);
-- Add comments to the columns 
comment on column BLACK_ALERT_FEEDBACK.clzt
  is '处置状态';
--```

--#--#--# BLACK_ALERT_INFO

--```sql
-- Add/modify columns 
alter table BLACK_ALERT_INFO add sbbh VARCHAR2(18);
-- Add comments to the columns 
comment on column BLACK_ALERT_INFO.sbbh
  is '设备编号';

--```



--#--#--# FACE_LINK_COMPANY

--```sql
-- 联动单位管理 Add/modify columns 
alter table FACE_LINK_COMPANY add deptid VARCHAR2(12);
-- Add comments to the columns 
comment on column FACE_LINK_COMPANY.deptid
  is '所属部门id';
--```

--#--#--# FACE_VIDEO_INSPECT

--```sql
-- Add/modify columns 
alter table FACE_VIDEO_INSPECT add preset VARCHAR2(4);
-- 视频配置 Add comments to the columns 
comment on column FACE_VIDEO_INSPECT.preset
  is '预置位';
--```

--#--#--# FACE_AREA

--```sql
-- Add/modify columns 
alter table FACE_AREA add is_delete varchar2(1) default 0;
-- Add comments to the columns 
comment on column FACE_AREA.is_delete
  is '是否删除，0-未删除，1-已删除';
  
  
--```

--#--#--# PIS_ORDER

--```sql
-- Add/modify columns 
alter table PIS_ORDER add MAJORCLASS_id NVARCHAR2(2);
-- Add comments to the columns 
comment on column PIS_ORDER.MAJORCLASS_id
  is '措施类型';

--```

--#--#--# PIS_INFO_BASE

--```sql
-- Add/modify columns 
alter table PIS_INFO_BASE add level_modify VARCHAR2(1);
-- Add comments to the columns 
comment on column PIS_INFO_BASE.level_modify
  is '是否手动修改';
--```

--#--#--# PIS_INFO_DETAILS

--```sql
-- Add/modify columns 
alter table PIS_INFO_DETAILS modify areaid null;
alter table PIS_INFO_DETAILS modify info_location null;
alter table PIS_INFO_DETAILS modify location_coordinate null;

--```

--#--#--# FACE_MAPLAYER_BASE_INFO

--```sql
alter table FACE_MAPLAYER_BASE_INFO add is_overlap VARCHAR2(1) default 0;
alter table FACE_MAPLAYER_BASE_INFO add width INTEGER;
alter table FACE_MAPLAYER_BASE_INFO add height INTEGER;
alter table FACE_MAPLAYER_BASE_INFO add show_page NVARCHAR2(100);
alter table FACE_MAPLAYER_BASE_INFO add open_flag VARCHAR2(1);
alter table FACE_MAPLAYER_BASE_INFO add show_scene NVARCHAR2(100);
-- Add comments to the columns 
comment on column FACE_MAPLAYER_BASE_INFO.is_overlap
  is '是否聚合 0-聚合  1-不聚合';
comment on column FACE_MAPLAYER_BASE_INFO.width
  is '弹框宽度';
comment on column FACE_MAPLAYER_BASE_INFO.height
  is '弹框高度';
comment on column FACE_MAPLAYER_BASE_INFO.show_page
  is '需要显示该图层的页面id。多个之间以逗号分隔。例如：HIFACE,COCKPIT';
comment on column FACE_MAPLAYER_BASE_INFO.open_flag
  is '加载地图图层时，是否默认打开。0-默认打开 1-默认不打开';
comment on column FACE_MAPLAYER_BASE_INFO.show_scene
  is '需要显示该图层的场景id。多个之间以逗号分隔。例如：HOLIDAY,WEATHER';

--```

--#--#--# FACE_RISK_POINT_VIDEO

--```sql
-------------------------------------------
--  Changed table face_risk_point_video  --
-------------------------------------------
-- Add/modify columns 
alter table FACE_RISK_POINT_VIDEO modify risk_point_id not null;
alter table FACE_RISK_POINT_VIDEO add preset VARCHAR2(4);
-- Add comments to the columns 
comment on column FACE_RISK_POINT_VIDEO.preset
  is '预置位';
--```





-------------------------------
--  Changed table face_area  --
-------------------------------
-- Add/modify columns 
alter table FACE_AREA add xxfw_id VARCHAR2(32);
alter table FACE_AREA add is_delete VARCHAR2(1) default 0;
alter table FACE_AREA add color NVARCHAR2(20);
alter table FACE_AREA add area_subtype VARCHAR2(2);
alter table FACE_AREA add address NVARCHAR2(100);
alter table FACE_AREA add person_num NUMBER;
alter table FACE_AREA add picture NVARCHAR2(100);
alter table FACE_AREA add school_person_num NUMBER;
alter table FACE_AREA add contacts NVARCHAR2(100);
alter table FACE_AREA add telephone VARCHAR2(20);
alter table FACE_AREA add market_date NVARCHAR2(50);
alter table FACE_AREA add start_time VARCHAR2(10);
alter table FACE_AREA add end_time VARCHAR2(10);
alter table FACE_AREA add circumambu CLOB;
alter table FACE_AREA add dept_ids VARCHAR2(100);
alter table FACE_AREA add monitor_index VARCHAR2(2);
-- Add comments to the columns 
comment on column FACE_AREA.xxfw_id
  is '信息服务关联字段';
comment on column FACE_AREA.is_delete
  is '是否删除，0-未删除，1-已删除';
comment on column FACE_AREA.color
  is '区域颜色，用于地图图层显示';
comment on column FACE_AREA.area_subtype
  is '区域子类型—区域是学校类型时使用';
comment on column FACE_AREA.address
  is '地址-学校、场馆';
comment on column FACE_AREA.person_num
  is '容纳人数-场馆';
comment on column FACE_AREA.picture
  is '场馆照片-场馆';
comment on column FACE_AREA.school_person_num
  is '在校人数-学校';
comment on column FACE_AREA.contacts
  is '联系人-学校';
comment on column FACE_AREA.telephone
  is '联系电话-学校';
comment on column FACE_AREA.market_date
  is '集市日期(农历)';
comment on column FACE_AREA.start_time
  is '开始时间';
comment on column FACE_AREA.end_time
  is '结束时间';
comment on column FACE_AREA.circumambu
  is '绕行策略';
comment on column FACE_AREA.dept_ids
  is '所属大队。多个的情况，中间以逗号隔开';
comment on column FACE_AREA.monitor_index
  is '综合指标监测种类 枚举值 0-交通指数、1-拥堵里程、2-在途车辆数、3-流量、4-平均速度';







/*==============================================================*/
/* Table: ACD_FILE_BL                                           */
/*==============================================================*/
create table ACD_FILE_BL
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   SGBH                 VARCHAR2(54)         not null,
   SGDD                 VARCHAR2(384),
   JYAQ                 VARCHAR2(4000),
   DZZB                 VARCHAR2(3072),
   ZBZT                 CHAR(1),
   ROADID               VARCHAR2(54),
   SECTIONID            NVARCHAR2(32),
   AREAID               VARCHAR2(54),
   UPDATETIME           DATE                 default SYSDATE,
   constraint PK_ACD_FILE_BL_ID primary key (ID)
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
     )
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

comment on table ACD_FILE_BL is
'事故信息主表补录';

comment on column ACD_FILE_BL.SGBH is
'事故编号';

comment on column ACD_FILE_BL.SGDD is
'事故地点';

comment on column ACD_FILE_BL.JYAQ is
'简要案情';

comment on column ACD_FILE_BL.DZZB is
'电子坐标 格式为地址坐标X,地址坐标Y,地址经度,地址纬度';

comment on column ACD_FILE_BL.ZBZT is
'坐标状态1：上级平台已确认；2：已确认；3：POI待确认；4：待确认；';

comment on column ACD_FILE_BL.ROADID is
'路口';

comment on column ACD_FILE_BL.SECTIONID is
'路段ID';

comment on column ACD_FILE_BL.AREAID is
'辖区';

comment on column ACD_FILE_BL.UPDATETIME is
'更新时间';

/*==============================================================*/
/* Index: IDX_ACD_FILE_BL_SGBH                                  */
/*==============================================================*/
create index IDX_ACD_FILE_BL_SGBH on ACD_FILE_BL (
   SGBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: CASE_REPLY_INFO                                       */
/*==============================================================*/
create table CASE_REPLY_INFO 
(
   ID                   VARCHAR2(100)        not null,
   REPLYID              VARCHAR2(100),
   CASENO               VARCHAR2(100),
   CREATETIME           DATE,
   CREATORNO            VARCHAR2(100),
   CREATORNAME          VARCHAR2(100),
   CREATORDEPTNO        VARCHAR2(100),
   CREATORDEPTNAME      VARCHAR2(100),
   TEXTCONTENT          VARCHAR2(3000),
   CATEGORY             VARCHAR2(100),
   TYPE                 VARCHAR2(100),
   SYSCODE              VARCHAR2(100),
   SYSNAME              VARCHAR2(100),
   REPLYTYPE            VARCHAR2(100),
   MEDIA_TYPE           VARCHAR2(100),
   MEDIA_PATH           VARCHAR2(100),
   MEDIA_FILENAME       VARCHAR2(100),
   MEDIA_EXT            VARCHAR2(100),
   MEDIA_SIZE           VARCHAR2(100),
   MEDIA_THUMB          VARCHAR2(100),
   MEDIA_DURATION       VARCHAR2(100),
   MEDIA_LNG            VARCHAR2(100),
   MEDIA_LAT            VARCHAR2(100),
   MEDIA_MSG            VARCHAR2(3000),
   MEDIA_TYPENAME       VARCHAR2(100),
   SAVETIME             DATE                 default SYSDATE
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;

comment on table CASE_REPLY_INFO is
'122警情处理反馈信息';

comment on column CASE_REPLY_INFO.ID is
'UUID，主键';

comment on column CASE_REPLY_INFO.REPLYID is
'反馈信息id';

comment on column CASE_REPLY_INFO.CASENO is
'警情编号';

comment on column CASE_REPLY_INFO.CREATETIME is
'反馈信息创建时间';

comment on column CASE_REPLY_INFO.CREATORNO is
'创建人编号';

comment on column CASE_REPLY_INFO.CREATORNAME is
'创建人姓名';

comment on column CASE_REPLY_INFO.CREATORDEPTNO is
'创建单位编号';

comment on column CASE_REPLY_INFO.CREATORDEPTNAME is
'创建单位名称';

comment on column CASE_REPLY_INFO.TEXTCONTENT is
'文本内容 ';

comment on column CASE_REPLY_INFO.CATEGORY is
'类别(1.警情内容, 2.处理情况)';

comment on column CASE_REPLY_INFO.TYPE is
' 类型(0.文本, 1.图片, 2.音频, 3.视频, 4.文档,5.位置报告) ';

comment on column CASE_REPLY_INFO.SYSCODE is
'系统编号';

comment on column CASE_REPLY_INFO.SYSNAME is
'系统名称';

comment on column CASE_REPLY_INFO.REPLYTYPE is
'反馈类别(1.签收, 2.简要反馈,3.出动,  4.到场, 5.现场反馈, 6.处理完毕, 7.警情退回, 8.无需出警) ';

comment on column CASE_REPLY_INFO.MEDIA_TYPE is
'类型(0.文本, 1.图片, 2.音频, 3.视频, 4.文档,5.位置报告)';

comment on column CASE_REPLY_INFO.MEDIA_PATH is
'相对路径(支持类别：图片、音频、视频、文档)';

comment on column CASE_REPLY_INFO.MEDIA_FILENAME is
'文件名(支持类别：图片、音频、视频、文档) ';

comment on column CASE_REPLY_INFO.MEDIA_EXT is
'文件后缀名(支持类别：图片、音频、视频、文档) ';

comment on column CASE_REPLY_INFO.MEDIA_SIZE is
'大小(字节)(支持类别：图片、音频、视频、文档) ';

comment on column CASE_REPLY_INFO.MEDIA_THUMB is
'缩略图相对路径(支持类别：图片、视频) ';

comment on column CASE_REPLY_INFO.MEDIA_DURATION is
' 时长(秒)(支持类别：音频、视频)';

comment on column CASE_REPLY_INFO.MEDIA_LNG is
'经度(支持类别：位置报告)';

comment on column CASE_REPLY_INFO.MEDIA_LAT is
'纬度(支持类别：位置报告)';

comment on column CASE_REPLY_INFO.MEDIA_MSG is
'文本消息(支持类别：文本、位置报告) ';

comment on column CASE_REPLY_INFO.MEDIA_TYPENAME is
'媒体类型名称';

comment on column CASE_REPLY_INFO.SAVETIME is
'记录保存时间';

/*==============================================================*/
/* Table: CKPT_BS_DRIVINGLICENSE_WARNING                        */
/*==============================================================*/
create table CKPT_BS_DRIVINGLICENSE_WARNING 
(
   XH                   VARCHAR2(15)         not null,
   LSH                  VARCHAR2(13),
   DABH                 VARCHAR2(12),
   XM                   VARCHAR2(30),
   GLBM                 VARCHAR2(12),
   JBR                  VARCHAR2(30),
   TYPE                 CHAR(1),
   TIME                 DATE,
   CCLZRQ               DATE,
   FZRQ                 DATE,
   SWSJ                 DATE,
   SFZMHM               VARCHAR2(18),
   constraint CBDW_XH primary key (XH)
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
     )
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

comment on table CKPT_BS_DRIVINGLICENSE_WARNING is
'车驾管CKPT-业务监管(BusinessSupervision)-驾驶证预警';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.XH is
'序号';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.LSH is
'流水号';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.DABH is
'档案编号';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.XM is
'姓名';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.GLBM is
'管理部门';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.JBR is
'经办人';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.TYPE is
'预警类型 1：驾驶证未当日制证 2：因事故死亡未办理注销';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.TIME is
'预警时间';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.CCLZRQ is
'初次领证日期';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.FZRQ is
'发证日期';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.SWSJ is
'驾驶人死亡时间';

comment on column CKPT_BS_DRIVINGLICENSE_WARNING.SFZMHM is
'身份证明号码';

/*==============================================================*/
/* Table: CKPT_BS_VEHICLE_WARNING                               */
/*==============================================================*/
create table CKPT_BS_VEHICLE_WARNING 
(
   LSH                  VARCHAR2(13),
   XH                   VARCHAR2(15)         not null,
   DABH                 VARCHAR2(12),
   HPZL                 CHAR(2),
   HPHM                 VARCHAR2(15),
   GLBM                 VARCHAR2(12),
   JBR                  VARCHAR2(30),
   TYPE                 CHAR(1),
   TIME                 DATE                 default SYSDATE,
   CCDJRQ               DATE,
   FZRQ                 DATE,
   constraint CBVW_XH primary key (XH)
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
     )
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

comment on table CKPT_BS_VEHICLE_WARNING is
'车驾管CKPT-业务监管(BusinessSupervision)-机动车预警';

comment on column CKPT_BS_VEHICLE_WARNING.LSH is
'流水号';

comment on column CKPT_BS_VEHICLE_WARNING.XH is
'序号';

comment on column CKPT_BS_VEHICLE_WARNING.DABH is
'档案编号';

comment on column CKPT_BS_VEHICLE_WARNING.HPZL is
'号牌种类';

comment on column CKPT_BS_VEHICLE_WARNING.HPHM is
'号牌号码';

comment on column CKPT_BS_VEHICLE_WARNING.GLBM is
'管理部门';

comment on column CKPT_BS_VEHICLE_WARNING.JBR is
'经办人';

comment on column CKPT_BS_VEHICLE_WARNING.TYPE is
'预警类型 1：1个工作日未制证 2：2个工作日未归档';

comment on column CKPT_BS_VEHICLE_WARNING.TIME is
'预警时间';

comment on column CKPT_BS_VEHICLE_WARNING.CCDJRQ is
'初次登记日期';

comment on column CKPT_BS_VEHICLE_WARNING.FZRQ is
'发证日期';

/*==============================================================*/
/* Table: CKPT_VDM_CARMANAGER                                   */
/*==============================================================*/
create table CKPT_VDM_CARMANAGER 
(
   GLBM                 VARCHAR2(32)         not null,
   BMMC                 VARCHAR2(100),
   BMQC                 VARCHAR2(500),
   YZMC                 VARCHAR2(100),
   LXDZ                 VARCHAR2(500),
   FZJG                 VARCHAR2(4),
   BMJB                 VARCHAR2(2),
   KCLYW                VARCHAR2(32),
   YWLB                 VARCHAR2(32),
   FZR                  VARCHAR2(32),
   LXDH                 VARCHAR2(32),
   CZHM                 VARCHAR2(32),
   TXZQFR               VARCHAR2(32),
   SJBM                 VARCHAR2(32),
   BZ                   VARCHAR2(20),
   SJCJZDBM             VARCHAR2(32),
   SJWFZDBM             VARCHAR2(32),
   SJSGZDBM             VARCHAR2(32),
   JZJB                 VARCHAR2(2),
   GLTZ                 VARCHAR2(2),
   JFLY                 VARCHAR2(2),
   YFLY                 VARCHAR2(2),
   JLZT                 VARCHAR2(2),
   JRGAW                VARCHAR2(2),
   LSGX                 VARCHAR2(2),
   JZPTGLBM             VARCHAR2(2),
   CSBJ                 VARCHAR2(2),
   GXSJ                 DATE,
   DWXTGLBJ             VARCHAR2(2),
   POS                  VARCHAR2(50),
   constraint CKPT_VDM_CARMANAGER_PK primary key (GLBM)
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
     )
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

/*==============================================================*/
/* Table: CKPT_VDM_MAPINFO                                      */
/*==============================================================*/
create table CKPT_VDM_MAPINFO 
(
   JGBMDM               VARCHAR2(32)         not null,
   JGBADM               VARCHAR2(32),
   JGLX                 VARCHAR2(3),
   SSGLBM               VARCHAR2(32),
   SFYZZMJ              VARCHAR2(2),
   JGMC                 VARCHAR2(100),
   JGQC                 VARCHAR2(1000),
   DWZSLX               VARCHAR2(1),
   DWZSBH               VARCHAR2(32),
   FZJG                 VARCHAR2(4),
   FRDB                 VARCHAR2(50),
   KBLYW                VARCHAR2(100),
   KSYPT                VARCHAR2(10),
   LXR                  VARCHAR2(50),
   LXDH                 VARCHAR2(32),
   CZHM                 VARCHAR2(32),
   LXDZ                 VARCHAR2(1000),
   JGZT                 VARCHAR2(2),
   JLZT                 VARCHAR2(2),
   CSBJ                 VARCHAR2(2),
   GXSJ                 DATE,
   CJSJ                 DATE,
   BZ                   VARCHAR2(32),
   JYW                  VARCHAR2(500),
   SJLB                 VARCHAR2(500),
   DWZSYXQZ             DATE,
   HLWJHBJ              VARCHAR2(20),
   ZWJHBJ               VARCHAR2(2),
   KBLYWFW              VARCHAR2(32),
   JYZWCSBJ             VARCHAR2(20),
   POS                  VARCHAR2(50),
   constraint CKPT_VDM_MAPINFO_PK primary key (JGBMDM)
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
     )
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

comment on table CKPT_VDM_MAPINFO is
'车驾管社会机构表';

comment on column CKPT_VDM_MAPINFO.JGBMDM is
'机构部门代码';

comment on column CKPT_VDM_MAPINFO.JGBADM is
'机构备案代码';

comment on column CKPT_VDM_MAPINFO.JGLX is
'机构类型;13-服务站;14-检测站;15-科目1考场;16-科目2考场;17-科目3考场;19-报废公司;20-医院;22-交易市场;23-驾校;25-4S店;33-满分教育;36-法院;';

comment on column CKPT_VDM_MAPINFO.SSGLBM is
'所属管理编码';

comment on column CKPT_VDM_MAPINFO.JGMC is
'机构名称';

comment on column CKPT_VDM_MAPINFO.JGQC is
'机构全称';

comment on column CKPT_VDM_MAPINFO.DWZSLX is
'单位展示类型';

comment on column CKPT_VDM_MAPINFO.DWZSBH is
'单位展示编号';

comment on column CKPT_VDM_MAPINFO.FZJG is
'发证机关';

comment on column CKPT_VDM_MAPINFO.FRDB is
'法人代表';

comment on column CKPT_VDM_MAPINFO.LXR is
'联系人';

comment on column CKPT_VDM_MAPINFO.LXDH is
'联系电话';

comment on column CKPT_VDM_MAPINFO.LXDZ is
'联系地址';

comment on column CKPT_VDM_MAPINFO.JGZT is
'机构状态';

/*==============================================================*/
/* Table: CKPT_VDM_QUEUE                                        */
/*==============================================================*/
create table CKPT_VDM_QUEUE 
(
   ID                   VARCHAR2(32)         not null,
   GLBM                 VARCHAR2(100),
   QUEUENUM             INTEGER,
   constraint CKPT_VDM_QUEUE_PK primary key (ID)
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
     )
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

/*==============================================================*/
/* Table: CKPT_COC_CONFIG                                            */
/*==============================================================*/
create table CKPT_COC_CONFIG 
(
   ID                   VARCHAR2(32),
   PARAM_CODE           VARCHAR2(32),
   PARAM_NAME           VARCHAR2(200),
   PARAM_VALUE          VARCHAR2(200),
   BIG_TYPE             VARCHAR2(32),
   SUB_TYPE             VARCHAR2(32)
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

comment on table CKPT_COC_CONFIG is
'大屏配置参数表';

comment on column CKPT_COC_CONFIG.PARAM_CODE is
'编码';

comment on column CKPT_COC_CONFIG.PARAM_NAME is
'名称';

comment on column CKPT_COC_CONFIG.PARAM_VALUE is
'参数值';

comment on column CKPT_COC_CONFIG.BIG_TYPE is
'业务类型';

comment on column CKPT_COC_CONFIG.SUB_TYPE is
'子类型';

/*==============================================================*/
/* Table: CKPT_COC_SAFE_ACCIDENT_ANALY                            */
/*==============================================================*/
create table CKPT_COC_SAFE_ACCIDENT_ANALY 
(
   ID                   VARCHAR2(32),
   ACD_ID               VARCHAR2(32),
   ACD_TITLE            VARCHAR2(400),
   STATUS               VARCHAR2(4),
   ACD_TIME             DATE,
   DEATH                NUMBER,
   DANGER               NUMBER,
   ACD_REASON           VARCHAR2(1000),
   ACD_DESC             VARCHAR2(4000),
   DEPT_ID              VARCHAR2(12),
   AREA_ID              VARCHAR2(12),
   COORDINATE           VARCHAR2(1000),
   LOCATION             VARCHAR2(1000),
   CREATE_TIME          DATE,
   UPDATE_TIME          DATE
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

comment on table CKPT_COC_SAFE_ACCIDENT_ANALY is
'事故深度调查情况表';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.ACD_ID is
'事故编号';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.ACD_TITLE is
'事故标题';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.STATUS is
'调查进展';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.ACD_TIME is
'事故时间';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.DEATH is
'死亡人数';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.DANGER is
'受伤人数';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.ACD_REASON is
'事故原因';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.ACD_DESC is
'事故简述';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.DEPT_ID is
'所属大队';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.AREA_ID is
'辖区';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.COORDINATE is
'坐标';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.LOCATION is
'位置';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.CREATE_TIME is
'录入时间';

comment on column CKPT_COC_SAFE_ACCIDENT_ANALY.UPDATE_TIME is
'更新时间';

/*==============================================================*/
/* Index: INDEX_ID                                              */
/*==============================================================*/
create index COC_SAFE_INDEX_ID on CKPT_COC_SAFE_ACCIDENT_ANALY (
   ID ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: CKPT_COC_SAFE_HIDDEN_DANGER                                */
/*==============================================================*/
create table CKPT_COC_SAFE_HIDDEN_DANGER 
(
   ID                   VARCHAR2(32),
   DANGER_NAME          VARCHAR2(100),
   DANGER_TYPE          VARCHAR2(4),
   STATUS               VARCHAR2(4),
   DEPTID               VARCHAR2(12),
   CREATE_TIME          DATE,
   LOCATION             VARCHAR2(1000),
   DANGER_DESC          VARCHAR2(4000),
   AREA_ID              VARCHAR2(12),
   COORDINATE           VARCHAR2(1000)
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

comment on table CKPT_COC_SAFE_HIDDEN_DANGER is
'安全隐患';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.DANGER_NAME is
'隐患名称';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.DANGER_TYPE is
'类型（路口1，路段2）';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.STATUS is
'进展（0，未治理，1，正在治理，2，完成）';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.DEPTID is
'所属部门';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.CREATE_TIME is
'录入时间';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.LOCATION is
'位置';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.DANGER_DESC is
'隐患描述';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.AREA_ID is
'辖区';

comment on column CKPT_COC_SAFE_HIDDEN_DANGER.COORDINATE is
'坐标';

/*==============================================================*/
/* Index: SAFE_HIDDEN_INDEX_ID                                  */
/*==============================================================*/
create index SAFE_HIDDEN_INDEX_ID on CKPT_COC_SAFE_HIDDEN_DANGER (
   ID ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: CKPT_COC_SAFE_RISK_INDEX                                   */
/*==============================================================*/
create table CKPT_COC_SAFE_RISK_INDEX 
(
   ID                   VARCHAR2(32),
   COMP_DATE            DATE,
   INDEX_TYPE           VARCHAR2(4),
   RISK_INDEX           NUMBER,
   DEPTID               VARCHAR2(12),
   CREATE_TIME          DATE                 default SYSDATE,
   AREA_ID              VARCHAR2(12),
   COMP_MONTH           VARCHAR2(12)
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

comment on table CKPT_COC_SAFE_RISK_INDEX is
'安全风险指数';

comment on column CKPT_COC_SAFE_RISK_INDEX.COMP_DATE is
'计算时间-格式：年月';

comment on column CKPT_COC_SAFE_RISK_INDEX.INDEX_TYPE is
'0总分，1驾驶人，2机动车，3道路隐患，4企业隐患，5交通事故';

comment on column CKPT_COC_SAFE_RISK_INDEX.RISK_INDEX is
'风险指数';

comment on column CKPT_COC_SAFE_RISK_INDEX.DEPTID is
'所属部门 1全部，';

comment on column CKPT_COC_SAFE_RISK_INDEX.CREATE_TIME is
'数据插入时间';

comment on column CKPT_COC_SAFE_RISK_INDEX.AREA_ID is
'辖区';

comment on column CKPT_COC_SAFE_RISK_INDEX.COMP_MONTH is
'年月';

/*==============================================================*/
/* Index: SAFE_RISK_INDEX                                       */
/*==============================================================*/
create index SAFE_RISK_INDEX on CKPT_COC_SAFE_RISK_INDEX (
   COMP_DATE ASC,
   RISK_INDEX ASC,
   COMP_MONTH ASC,
   AREA_ID ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: CKPT_COC_SAFE_RISK_ITEM                                    */
/*==============================================================*/
create table CKPT_COC_SAFE_RISK_ITEM 
(
   ID                   NVARCHAR2(32)        default sys_guid() not null,
   INDEX_ID             NVARCHAR2(32),
   RELATION_ID          NVARCHAR2(32),
   DEPT_ID              VARCHAR2(12),
   AREA_ID              VARCHAR2(12),
   INDEX_TYPE           VARCHAR2(4),
   NAME                 NVARCHAR2(200),
   RISK_LEVEL           VARCHAR2(4),
   CREAT_TIME           DATE                 default SYSDATE,
   SOURCE0              NUMBER(4,2),
   SOURCE1              NVARCHAR2(100),
   SOURCE_NAME          NVARCHAR2(100),
   NORMAL               VARCHAR2(1),
   LABEL                NVARCHAR2(100),
   SOURCE_COUNT         NVARCHAR2(100),
   REMARKS              NVARCHAR2(100),
   constraint CKPT_COC_SAFE_RISK_ITEM_PK primary key (ID)
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
     )
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

comment on table CKPT_COC_SAFE_RISK_ITEM is
'安全风险人（车、公司、道路、事故）分数表';

comment on column CKPT_COC_SAFE_RISK_ITEM.ID is
'uuid';

comment on column CKPT_COC_SAFE_RISK_ITEM.INDEX_ID is
'关联的CKPT_COC_SAFE_RISK_INDEX表id';

comment on column CKPT_COC_SAFE_RISK_ITEM.RELATION_ID is
'关联id 关联各详情表，如index_type=1关联驾驶人表(SFZMHM)，=2关联车辆表(XH)';

comment on column CKPT_COC_SAFE_RISK_ITEM.DEPT_ID is
'所属部门 1全部，';

comment on column CKPT_COC_SAFE_RISK_ITEM.AREA_ID is
'辖区';

comment on column CKPT_COC_SAFE_RISK_ITEM.INDEX_TYPE is
'0总分，1驾驶人，2机动车，3道路隐患，4企业隐患，5交通事故';

comment on column CKPT_COC_SAFE_RISK_ITEM.NAME is
'名称';

comment on column CKPT_COC_SAFE_RISK_ITEM.RISK_LEVEL is
'风险级别 -1无风险 0低，1中，2高';

comment on column CKPT_COC_SAFE_RISK_ITEM.CREAT_TIME is
'统计时间';

comment on column CKPT_COC_SAFE_RISK_ITEM.SOURCE0 is
'总分';

comment on column CKPT_COC_SAFE_RISK_ITEM.SOURCE1 is
'得分项 1-5，逗号分隔，与source_name对应';

comment on column CKPT_COC_SAFE_RISK_ITEM.SOURCE_NAME is
'得分项名称，CKPT_COC_CONFIG对应的SAFE_XXX_NAME';

comment on column CKPT_COC_SAFE_RISK_ITEM.NORMAL is
'状态：1-有效，2-无效';

comment on column CKPT_COC_SAFE_RISK_ITEM.LABEL is
'标签,逗号分隔，如"违法告发，扣满12分"';

comment on column CKPT_COC_SAFE_RISK_ITEM.SOURCE_COUNT is
'得分项对应的事故/违法的数量,';

comment on column CKPT_COC_SAFE_RISK_ITEM.REMARKS is
'备注';


/*==============================================================*/
/* Table: CKPT_HIDDEN_DANGER_DEPT                                    */
/*==============================================================*/
create table CKPT_HIDDEN_DANGER_DEPT 
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   YHJSRSL              NUMBER               not null,
   TJRQ                 DATE                 not null,
   DEPTID               VARCHAR2(32)         not null
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

comment on table CKPT_HIDDEN_DANGER_DEPT is
'统计部门隐患驾驶人数量表';

comment on column CKPT_HIDDEN_DANGER_DEPT.ID is
'主键';

comment on column CKPT_HIDDEN_DANGER_DEPT.YHJSRSL is
'隐患驾驶人数量';

comment on column CKPT_HIDDEN_DANGER_DEPT.TJRQ is
'统计时间(每小时统计一次)';

comment on column CKPT_HIDDEN_DANGER_DEPT.DEPTID is
'部门id';

/*==============================================================*/
/* Table: JLKD_ILLEGAL_TYPE                                     */
/*==============================================================*/
create table JLKD_ILLEGAL_TYPE 
(
   ID                   VARCHAR2(4),
   ROAD_TYPE            VARCHAR2(4),
   ILLEGAL_NAME         VARCHAR2(400),
   ORDER_NUM            NUMBER,
   ILLEGAL_TYPE         VARCHAR2(400)
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

comment on table JLKD_ILLEGAL_TYPE is
'违法类型配置';

comment on column JLKD_ILLEGAL_TYPE.ID is
'对应结果表id';

comment on column JLKD_ILLEGAL_TYPE.ROAD_TYPE is
'所属道路类型';

comment on column JLKD_ILLEGAL_TYPE.ILLEGAL_NAME is
'违法分类名(可修改)';

comment on column JLKD_ILLEGAL_TYPE.ORDER_NUM is
'排序';

comment on column JLKD_ILLEGAL_TYPE.ILLEGAL_TYPE is
'代码对应违法类型(不可修改)';

/*==============================================================*/
/* Table: JLKD_STATISTIC_DETAIL                                 */
/*==============================================================*/
create table JLKD_STATISTIC_DETAIL 
(
   ID                   VARCHAR2(4),
   AREA                 VARCHAR2(12),
   CNT                  NUMBER,
   ROAD_TYPE            VARCHAR2(2),
   CREATE_TIME          DATE                 default SYSDATE,
   COLLECT_DATE         DATE
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

comment on column JLKD_STATISTIC_DETAIL.ID is
'编号';

comment on column JLKD_STATISTIC_DETAIL.AREA is
'辖区';

comment on column JLKD_STATISTIC_DETAIL.CNT is
'数量';

comment on column JLKD_STATISTIC_DETAIL.ROAD_TYPE is
'1高速，2国省道，3农村,4城区';

comment on column JLKD_STATISTIC_DETAIL.COLLECT_DATE is
'数据时间';

/*==============================================================*/
/* Table: JLKD_STATISTIC_RESULT                                 */
/*==============================================================*/
create table JLKD_STATISTIC_RESULT 
(
   ID                   VARCHAR2(32)         default SYS_GUID() not null,
   XZQH                 VARCHAR2(10)         not null,
   DEPTID               VARCHAR2(13),
   GSGL_ALL_ILLEGAL     NUMBER(10)           default 0,
   GSGL_XC_ILLEGAL      NUMBER(10)           default 0,
   GSGL_XC_IMP_ILLEGAL  NUMBER(10)           default 0,
   GSGL_XC_SPEED_TWENTY NUMBER(10)           default 0,
   GSGL_XC_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   GSGL_XC_IMP_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   GSGL_XC_SPEED_TWENTY_RATIO NUMBER(6,2)          default 0,
   GSD_ALL_ILLEGAL      NUMBER(10)           default 0,
   GSD_XC_ILLEGAL       NUMBER(10)           default 0,
   GSD_XC_IMP_ILLEGAL   NUMBER(10)           default 0,
   GSD_XC_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   GSD_XC_IMP_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   NCGL_ALL_ILLEGAL     NUMBER(10)           default 0,
   NCGL_XC_ILLEGAL      NUMBER(10)           default 0,
   NCGL_XC_IMP_ILLEGAL  NUMBER(10)           default 0,
   NCGL_XC_IMP_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   JJZJ                 NUMBER(10)           default 0,
   JJZJ_ACD             NUMBER(10)           default 0,
   JJZJ_FRONT           NUMBER(10)           default 0,
   JJZJ_BACK            NUMBER(10)           default 0,
   JJZJ_FRONT_RATIO     NUMBER(6,2)          default 0,
   JJZJ_BACK_RATIO      NUMBER(6,2)          default 0,
   AQD                  NUMBER(10)           default 0,
   CITY_ELE_ILLEGAL     NUMBER(10)           default 0,
   CITY_ELE_DEATH       NUMBER(10)           default 0,
   CITY_ELE_ILLEGAL_DEATH_RATIO NUMBER(6,2)          default 0,
   CITY_PROJECT_ZZX_ILLEGAL NUMBER(10)           default 0,
   CITY_PROJECT_ZZX_DEATH NUMBER(10)           default 0,
   CITY_PROJECT_ZZX_ILLEGAL_RATIO NUMBER(6,2)          default 0,
   COLLECTDATE          DATE,
   SAVETIME             DATE                 default SYSDATE,
   JJZJ_AFTERNOON       NUMBER(10)           default 0,
   JJZJ_FRONT_DEATH     NUMBER(10)           default 0,
   JJZJ_BACK_DEATH      NUMBER(10)           default 0,
   JJZJ_AFTERNOON_DEATH NUMBER(10)           default 0,
   JJZJ_ACD_DEATH       NUMBER(10)           default 0,
   JJZJ_ACD_MAJOR       NUMBER(10)           default 0,
   constraint PK_JLKD_STATISTIC_RESULT primary key (ID)
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
     )
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

comment on table JLKD_STATISTIC_RESULT is
'减量控大统计结果表';

comment on column JLKD_STATISTIC_RESULT.ID is
'主键';

comment on column JLKD_STATISTIC_RESULT.XZQH is
'行政区划';

comment on column JLKD_STATISTIC_RESULT.DEPTID is
'部门编号';

comment on column JLKD_STATISTIC_RESULT.GSGL_ALL_ILLEGAL is
'高速公路查处所有违法行为总量';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_ILLEGAL is
'高速公路现场查处违法总量';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_IMP_ILLEGAL is
'高速公路现场查处重点违法总量';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_SPEED_TWENTY is
'高速公路现场查处超速20%';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_ILLEGAL_RATIO is
'高速公路现场查处违法总量占比';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_IMP_ILLEGAL_RATIO is
'高速公路现场查处重点违法总量占比';

comment on column JLKD_STATISTIC_RESULT.GSGL_XC_SPEED_TWENTY_RATIO is
'高速公路现场查处超速20%占比';

comment on column JLKD_STATISTIC_RESULT.GSD_ALL_ILLEGAL is
'国省道违法总量（现场和非现场）';

comment on column JLKD_STATISTIC_RESULT.GSD_XC_ILLEGAL is
'国省道现场查处违法总量';

comment on column JLKD_STATISTIC_RESULT.GSD_XC_IMP_ILLEGAL is
'国省道现场查处重点违法总量';

comment on column JLKD_STATISTIC_RESULT.GSD_XC_ILLEGAL_RATIO is
'国省道现场查处违法总量占比';

comment on column JLKD_STATISTIC_RESULT.GSD_XC_IMP_ILLEGAL_RATIO is
'国省道现场查处重点违法总量占比';

comment on column JLKD_STATISTIC_RESULT.NCGL_ALL_ILLEGAL is
'农村公路违法总量（现场和非现场）';

comment on column JLKD_STATISTIC_RESULT.NCGL_XC_ILLEGAL is
'农村公路现场违法总量';

comment on column JLKD_STATISTIC_RESULT.NCGL_XC_IMP_ILLEGAL is
'农村公路现场重点违法总量';

comment on column JLKD_STATISTIC_RESULT.NCGL_XC_IMP_ILLEGAL_RATIO is
'农村公路现场重点违法总量占比现场违法总量比率';

comment on column JLKD_STATISTIC_RESULT.JJZJ is
'酒驾醉驾查处量';

comment on column JLKD_STATISTIC_RESULT.JJZJ_ACD is
'涉及酒驾醉驾的普通事故数';

comment on column JLKD_STATISTIC_RESULT.JJZJ_FRONT is
'前半夜酒醉驾查处量';

comment on column JLKD_STATISTIC_RESULT.JJZJ_BACK is
'后半夜酒醉驾查处量';

comment on column JLKD_STATISTIC_RESULT.JJZJ_FRONT_RATIO is
'前半夜酒醉驾查处量占比';

comment on column JLKD_STATISTIC_RESULT.JJZJ_BACK_RATIO is
'后半夜酒醉驾查处量占比';

comment on column JLKD_STATISTIC_RESULT.AQD is
'现场查处乘客未使用安全带';

comment on column JLKD_STATISTIC_RESULT.CITY_ELE_ILLEGAL is
'城市道路现场和非现场电动自行车违法数据';

comment on column JLKD_STATISTIC_RESULT.CITY_ELE_DEATH is
'城市道路现场和非现场电动自行车驾乘死亡人数';

comment on column JLKD_STATISTIC_RESULT.CITY_ELE_ILLEGAL_DEATH_RATIO is
'电动自行车违法数据与死亡人数的比值';

comment on column JLKD_STATISTIC_RESULT.CITY_PROJECT_ZZX_ILLEGAL is
'城市工程运输车重中型货车现场和非现场违法查处量';

comment on column JLKD_STATISTIC_RESULT.CITY_PROJECT_ZZX_DEATH is
'城市工程运输车重中型货车事故死亡人数';

comment on column JLKD_STATISTIC_RESULT.CITY_PROJECT_ZZX_ILLEGAL_RATIO is
'城市工程运输车重中型货车现场和非现场违法查处量与死亡人数比值';

comment on column JLKD_STATISTIC_RESULT.COLLECTDATE is
'数据统计日期';

comment on column JLKD_STATISTIC_RESULT.SAVETIME is
'入库时间';

comment on column JLKD_STATISTIC_RESULT.JJZJ_AFTERNOON is
'下午酒醉驾查处量';

comment on column JLKD_STATISTIC_RESULT.JJZJ_FRONT_DEATH is
'前半夜酒醉驾事故死亡人数';

comment on column JLKD_STATISTIC_RESULT.JJZJ_BACK_DEATH is
'后半夜酒醉驾事故死亡人数';

comment on column JLKD_STATISTIC_RESULT.JJZJ_AFTERNOON_DEATH is
'下午酒醉驾事故死亡人数';

comment on column JLKD_STATISTIC_RESULT.JJZJ_ACD_DEATH is
'全天酒醉驾事故死亡人数';

comment on column JLKD_STATISTIC_RESULT.JJZJ_ACD_MAJOR is
'涉及酒驾醉驾的重大事故数';

/*==============================================================*/
/* Index: IDX_JLKD_STATISTIC_XZQH_DATE                          */
/*==============================================================*/
create index IDX_JLKD_STATISTIC_XZQH_DATE on JLKD_STATISTIC_RESULT (
   XZQH ASC,
   COLLECTDATE ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: JLKD_XZQH                                             */
/*==============================================================*/
create table JLKD_XZQH 
(
   XZQH                 VARCHAR2(10)         not null,
   BMMC                 VARCHAR2(50),
   SSXL                 VARCHAR2(1),
   DEPTID               VARCHAR2(12),
   KEY                  VARCHAR2(10),
   SEQ                  NUMBER               default 0
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

comment on table JLKD_XZQH is
'减量控大行政区划部门编号对应关系';

comment on column JLKD_XZQH.XZQH is
'行政区划';

comment on column JLKD_XZQH.BMMC is
'部门名称简写';

comment on column JLKD_XZQH.SSXL is
'1.市区序列，2.高速序列，3.郊县序列，4.其它';

comment on column JLKD_XZQH.DEPTID is
'部门编号';

comment on column JLKD_XZQH.KEY is
'映射前端属性key';

comment on column JLKD_XZQH.SEQ is
'部门顺序';

/*==============================================================*/
/* Table: RA_ACD_DUTYSIMPLE                                     */
/*==============================================================*/
create table RA_ACD_DUTYSIMPLE 
(
   DJBH                 VARCHAR2(17),
   SGBH                 VARCHAR2(40)         not null,
   XZQH                 VARCHAR2(10),
   XQ                   NUMBER(1),
   SGFSSJ               DATE,
   LH                   VARCHAR2(7)          default '-',
   LM                   VARCHAR2(90),
   GLS                  NUMBER(5),
   MS                   NUMBER(4),
   JDWZ                 NUMBER(8)            default 0,
   SGDD                 VARCHAR2(128),
   SSRS                 NUMBER(3)            default 0,
   ZJCCSS               NUMBER(9)            default 0,
   LWSGLX               CHAR(1),
   RDYYFL               VARCHAR2(2),
   SGRDYY               VARCHAR2(4),
   TQ                   VARCHAR2(2),
   XC                   CHAR(1),
   SWSG                 CHAR(1),
   SGXT                 CHAR(2),
   CLJSG                VARCHAR2(1),
   DCSG                 VARCHAR2(2),
   PZFS                 VARCHAR2(1),
   LBQK                 VARCHAR2(2),
   TJR1                 VARCHAR2(30),
   CCLRSJ               DATE,
   JLLX                 CHAR(1),
   SCSJD                NUMBER,
   SSZD                 VARCHAR2(12),
   DAH                  VARCHAR2(50),
   SB                   CHAR(1),
   TJSGBH               VARCHAR2(64),
   GLBM                 VARCHAR2(12),
   DZZB                 VARCHAR2(1024),
   BADW                 VARCHAR2(100),
   WSBH                 VARCHAR2(30),
   SGSS                 VARCHAR2(2000),
   ZRTJJG               VARCHAR2(2000),
   JAR1                 VARCHAR2(30),
   JAR2                 VARCHAR2(30),
   JBR                  VARCHAR2(30),
   GXSJ                 DATE,
   JYW                  VARCHAR2(64),
   JAFS                 VARCHAR2(1),
   DLLX                 VARCHAR2(2),
   GLXZDJ               VARCHAR2(1),
   TJFS                 VARCHAR2(1),
   SJLY                 VARCHAR2(1)          default '0',
   ZBLX                 VARCHAR2(1),
   ZZRQ                 DATE,
   SPR                  VARCHAR2(30),
   SPRQ                 DATE,
   YWSBH                VARCHAR2(30),
   JMNR                 VARCHAR2(1024),
   SPTHYJ               VARCHAR2(1024),
   RA_ID                VARCHAR2(64)         not null,
   RA_JD                VARCHAR2(32),
   RA_WD                VARCHAR2(32),
   RA_WYSMS             VARCHAR2(512),
   RA_DWSJ              DATE,
   RA_DWZT              VARCHAR2(1)          default '0',
   RA_SJLY              VARCHAR2(1),
   RA_GXSJ              DATE,
   RA_SFYX              VARCHAR2(1)          default '1',
   RA_CCLRSJ            DATE,
   SHPCTJJG             CLOB,
   JTSGSSJZR            CLOB,
   RA_JH                NVARCHAR2(64)        default '',
   RA_BMBH              NVARCHAR2(64)        default '',
   RA_DWR               NVARCHAR2(64),
   RA_SJZT              NVARCHAR2(8)         default '1',
   RASGZD1              NVARCHAR2(512)       default '',
   RASGZD2              NVARCHAR2(512)       default '',
   RASGZD3              NVARCHAR2(512)       default '',
   RASGZD4              NVARCHAR2(512)       default '',
   RASGZD5              NVARCHAR2(512)       default '',
   RASGZD6              NVARCHAR2(512)       default '',
   RASGZD7              NVARCHAR2(512)       default '',
   RASGZD8              NVARCHAR2(512)       default '',
   RASGZD9              NVARCHAR2(512)       default '',
   RASGZD10             NVARCHAR2(512)       default '',
   RASGZD11             NVARCHAR2(512)       default '',
   RASGZD12             NVARCHAR2(512)       default '',
   RASGZD13             NVARCHAR2(512)       default '',
   RASGZD14             NVARCHAR2(512)       default '',
   RASGZD15             NVARCHAR2(512)       default '',
   RASGZD16             NVARCHAR2(512)       default '',
   RASGZD17             NVARCHAR2(512)       default '',
   RASGZD18             NVARCHAR2(512)       default '',
   RASGZD19             NVARCHAR2(512)       default '',
   RASGZD20             NVARCHAR2(512)       default '',
   DWR                  NVARCHAR2(64),
   ETLVER               VARCHAR2(16),
   DZZB_JWT             VARCHAR2(1024),
   constraint PK_RA_ACD_DUTYSIMPLE primary key (RA_ID)
         using index 
     tablespace HIATMPTS
     pctfree 10
     initrans 2
     maxtrans 255
     storage
     (
       initial 15M
       next 1M
       minextents 1
       maxextents unlimited
     )
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 224M
    next 8K
    minextents 1
    maxextents unlimited
  );

comment on table RA_ACD_DUTYSIMPLE is
'简易程序事故认定';

comment on column RA_ACD_DUTYSIMPLE.DJBH is
'登记编号';

comment on column RA_ACD_DUTYSIMPLE.SGBH is
'事故编号';

comment on column RA_ACD_DUTYSIMPLE.XZQH is
'行政区划';

comment on column RA_ACD_DUTYSIMPLE.XQ is
'星期';

comment on column RA_ACD_DUTYSIMPLE.SGFSSJ is
'事故发生时间';

comment on column RA_ACD_DUTYSIMPLE.LH is
'路号';

comment on column RA_ACD_DUTYSIMPLE.LM is
'路名';

comment on column RA_ACD_DUTYSIMPLE.GLS is
'公里数';

comment on column RA_ACD_DUTYSIMPLE.MS is
'米数';

comment on column RA_ACD_DUTYSIMPLE.JDWZ is
'绝对位置';

comment on column RA_ACD_DUTYSIMPLE.SGDD is
'事故地点';

comment on column RA_ACD_DUTYSIMPLE.SSRS is
'受伤人数';

comment on column RA_ACD_DUTYSIMPLE.ZJCCSS is
'直接财产损失';

comment on column RA_ACD_DUTYSIMPLE.LWSGLX is
'路外事故类型';

comment on column RA_ACD_DUTYSIMPLE.RDYYFL is
'事故认定原因分类';

comment on column RA_ACD_DUTYSIMPLE.SGRDYY is
'事故认定原因';

comment on column RA_ACD_DUTYSIMPLE.TQ is
'天气';

comment on column RA_ACD_DUTYSIMPLE.XC is
'现场';

comment on column RA_ACD_DUTYSIMPLE.SWSG is
'涉外事故1是2否';

comment on column RA_ACD_DUTYSIMPLE.SGXT is
'事故形态 ';

comment on column RA_ACD_DUTYSIMPLE.CLJSG is
'车辆间事故';

comment on column RA_ACD_DUTYSIMPLE.DCSG is
'单车事故';

comment on column RA_ACD_DUTYSIMPLE.PZFS is
'碰撞方式 1-单车 2-双车 3-多车 4-车人事故';

comment on column RA_ACD_DUTYSIMPLE.LBQK is
'路表情况';

comment on column RA_ACD_DUTYSIMPLE.TJR1 is
'调解人1';

comment on column RA_ACD_DUTYSIMPLE.CCLRSJ is
'初次录入时间';

comment on column RA_ACD_DUTYSIMPLE.JLLX is
' 1-快报记录 2-快报/全项记录 3全项记录';

comment on column RA_ACD_DUTYSIMPLE.SCSJD is
'上传时间段(天数)';

comment on column RA_ACD_DUTYSIMPLE.SSZD is
'所属中队';

comment on column RA_ACD_DUTYSIMPLE.DAH is
'档案号';

comment on column RA_ACD_DUTYSIMPLE.SB is
'上报 1-是 2-否  为空3-上报但更新不成功';

comment on column RA_ACD_DUTYSIMPLE.TJSGBH is
'统计事故编号';

comment on column RA_ACD_DUTYSIMPLE.GLBM is
'管理部门';

comment on column RA_ACD_DUTYSIMPLE.DZZB is
'电子坐标 格式为地址坐标X,地址坐标Y,地址经度,地址纬度';

comment on column RA_ACD_DUTYSIMPLE.BADW is
'办案单位';

comment on column RA_ACD_DUTYSIMPLE.WSBH is
'文书编号';

comment on column RA_ACD_DUTYSIMPLE.SGSS is
'事故事实';

comment on column RA_ACD_DUTYSIMPLE.ZRTJJG is
'责任调解结果';

comment on column RA_ACD_DUTYSIMPLE.JAR1 is
'接案人1';

comment on column RA_ACD_DUTYSIMPLE.JAR2 is
'接案人2';

comment on column RA_ACD_DUTYSIMPLE.JBR is
'经办人';

comment on column RA_ACD_DUTYSIMPLE.GXSJ is
'更新时间';

comment on column RA_ACD_DUTYSIMPLE.JYW is
'校验位';

comment on column RA_ACD_DUTYSIMPLE.JAFS is
'简易结案方式  1-调解结案 2-不同意结案 3-对认定有异议 4-拒绝签字';

comment on column RA_ACD_DUTYSIMPLE.DLLX is
'道路类型';

comment on column RA_ACD_DUTYSIMPLE.GLXZDJ is
'公路行政等级';

comment on column RA_ACD_DUTYSIMPLE.TJFS is
'调解方式 1-自行协商 2-人民调解 3-行政调解 4-司法调解';

comment on column RA_ACD_DUTYSIMPLE.RA_JD is
'经度';

comment on column RA_ACD_DUTYSIMPLE.RA_WD is
'维度';

comment on column RA_ACD_DUTYSIMPLE.RA_WYSMS is
'五要素描述';

comment on column RA_ACD_DUTYSIMPLE.RA_DWSJ is
'定位时间';

comment on column RA_ACD_DUTYSIMPLE.RA_DWZT is
'定位状态 0未定位 1自动定位 2手工定位';

comment on column RA_ACD_DUTYSIMPLE.RA_SJLY is
'数据来源:0预警系统录入 1六合一导入 2移动警务导入 3六合一控件注入保存';

comment on column RA_ACD_DUTYSIMPLE.RA_GXSJ is
'更新时间，重新抽取六合一信息，或者修改定位信息时更新一次。';

comment on column RA_ACD_DUTYSIMPLE.RA_SFYX is
'是否有效 0无效 1有效';

comment on column RA_ACD_DUTYSIMPLE.RA_CCLRSJ is
'我们自己的初次录入时间';

comment on column RA_ACD_DUTYSIMPLE.RA_JH is
'警号';

comment on column RA_ACD_DUTYSIMPLE.RA_BMBH is
'部门编号';

comment on column RA_ACD_DUTYSIMPLE.RA_DWR is
'定位人';

comment on column RA_ACD_DUTYSIMPLE.RA_SJZT is
'1：原始数据（未编辑过）；11：原始数据（已编辑过）；：编辑后的数据；';

comment on column RA_ACD_DUTYSIMPLE.RASGZD1 is
'预留字段1';

comment on column RA_ACD_DUTYSIMPLE.RASGZD2 is
'预留字段2';

comment on column RA_ACD_DUTYSIMPLE.RASGZD3 is
'预留字段3';

comment on column RA_ACD_DUTYSIMPLE.RASGZD4 is
'预留字段4';

comment on column RA_ACD_DUTYSIMPLE.RASGZD5 is
'预留字段5';

comment on column RA_ACD_DUTYSIMPLE.RASGZD6 is
'预留字段6';

comment on column RA_ACD_DUTYSIMPLE.RASGZD7 is
'预留字段7';

comment on column RA_ACD_DUTYSIMPLE.RASGZD8 is
'预留字段8';

comment on column RA_ACD_DUTYSIMPLE.RASGZD9 is
'预留字段9';

comment on column RA_ACD_DUTYSIMPLE.RASGZD10 is
'预留字段10';

comment on column RA_ACD_DUTYSIMPLE.RASGZD11 is
'预留字段11';

comment on column RA_ACD_DUTYSIMPLE.RASGZD12 is
'预留字段12';

comment on column RA_ACD_DUTYSIMPLE.RASGZD13 is
'预留字段13';

comment on column RA_ACD_DUTYSIMPLE.RASGZD14 is
'预留字段14';

comment on column RA_ACD_DUTYSIMPLE.RASGZD15 is
'预留字段15';

comment on column RA_ACD_DUTYSIMPLE.RASGZD16 is
'预留字段16';

comment on column RA_ACD_DUTYSIMPLE.RASGZD17 is
'预留字段17';

comment on column RA_ACD_DUTYSIMPLE.RASGZD18 is
'预留字段18';

comment on column RA_ACD_DUTYSIMPLE.RASGZD19 is
'预留字段19';

comment on column RA_ACD_DUTYSIMPLE.RASGZD20 is
'预留字段20';

comment on column RA_ACD_DUTYSIMPLE.DWR is
'定位人';

comment on column RA_ACD_DUTYSIMPLE.DZZB_JWT is
'电子坐标警务通';

/*==============================================================*/
/* Index: FDHDSFGSDFG                                           */
/*==============================================================*/
create index FDHDSFGSDFG on RA_ACD_DUTYSIMPLE (
   DJBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: SAGASDGASFDASF                                        */
/*==============================================================*/
create unique index SAGASDGASFDASF on RA_ACD_DUTYSIMPLE (
   SGBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: RA_ACD_DUTYSIMPLEHUMAN                                */
/*==============================================================*/
create table RA_ACD_DUTYSIMPLEHUMAN 
(
   SGBH                 VARCHAR2(18)         not null,
   XZQH                 VARCHAR2(10)         not null,
   RYBH                 NUMBER(3)            not null,
   XM                   VARCHAR2(30),
   XB                   CHAR(1),
   SFZMHM               VARCHAR2(20),
   NL                   NUMBER(3),
   ZZ                   VARCHAR2(128),
   DH                   VARCHAR2(30),
   RYLX                 VARCHAR2(3),
   SHCD                 CHAR(1),
   WFXW1                VARCHAR2(5),
   WFXW2                VARCHAR2(5),
   WFXW3                VARCHAR2(5),
   TK1                  VARCHAR2(20),
   TK2                  VARCHAR2(20),
   TK3                  VARCHAR2(20),
   ZYYSDW               VARCHAR2(128),
   JTFS                 VARCHAR2(3),
   GLXZQH               VARCHAR2(10),
   DABH                 VARCHAR2(20),
   JL                   NUMBER(2),
   JSZZL                CHAR(1),
   ZJCX                 VARCHAR2(10),
   CCLZRQ               DATE,
   JSRGXD               VARCHAR2(20),
   FZJG                 VARCHAR2(10),
   SGZR                 CHAR(1),
   HPHM                 VARCHAR2(20),
   HPZL                 CHAR(2),
   CLFZJG               VARCHAR2(10),
   FDJH                 VARCHAR2(32),
   CLSBDH               VARCHAR2(25),
   JDCXH                VARCHAR2(14),
   CLPP                 VARCHAR2(32),
   CLXH                 VARCHAR2(32),
   CSYS                 VARCHAR2(5),
   CLLX                 CHAR(3),
   JDCZT                VARCHAR2(6),
   SYQ                  CHAR(1),
   JDCSYR               VARCHAR2(128),
   CLSYXZ               CHAR(2),
   BX                   CHAR(1),
   BXGS                 VARCHAR2(50),
   BXPZH                VARCHAR2(32),
   CLZZWP               VARCHAR2(3),
   CLGXD                VARCHAR2(20),
   CJCXBJ               VARCHAR2(10),
   JYW                  VARCHAR2(64),
   SFTY                 VARCHAR2(1),
   SFSD                 VARCHAR2(1),
   WFXW4                VARCHAR2(5),
   WFXW5                VARCHAR2(5),
   TK4                  VARCHAR2(20),
   TK5                  VARCHAR2(20),
   WMSXWNLR             VARCHAR2(1),
   XZMSXWNLR            VARCHAR2(1),
   JSFS                 CHAR(1),
   HPZL1                CHAR(2),
   HPHM1                VARCHAR2(20),
   CLLX1                CHAR(3),
   CLPP1                VARCHAR2(32),
   CLXH1                VARCHAR2(32),
   RA_ID                VARCHAR2(64)         not null,
   RA_PID               VARCHAR2(64),
   RA_SJZT              NVARCHAR2(8)         default '1',
   RARYZD1              NVARCHAR2(512)       default '',
   RARYZD2              NVARCHAR2(512)       default '',
   RARYZD3              NVARCHAR2(512)       default '',
   RARYZD4              NVARCHAR2(512)       default '',
   RARYZD5              NVARCHAR2(512)       default '',
   RARYZD6              NVARCHAR2(512)       default '',
   RARYZD7              NVARCHAR2(512)       default '',
   RARYZD8              NVARCHAR2(512)       default '',
   RARYZD9              NVARCHAR2(512)       default '',
   RARYZD10             NVARCHAR2(512)       default '',
   RARYZD11             NVARCHAR2(512)       default '',
   RARYZD12             NVARCHAR2(512)       default '',
   RARYZD13             NVARCHAR2(512)       default '',
   RARYZD14             NVARCHAR2(512)       default '',
   RARYZD15             NVARCHAR2(512)       default '',
   RARYZD16             NVARCHAR2(512)       default '',
   RARYZD17             NVARCHAR2(512)       default '',
   RARYZD18             NVARCHAR2(512)       default '',
   RARYZD19             NVARCHAR2(512)       default '',
   RARYZD20             NVARCHAR2(512)       default '',
   ETLVER               VARCHAR2(16),
   constraint PK_RA_ACD_DUTYSIMPLEHUMAN primary key (RA_ID)
         using index 
     tablespace HIATMPTS
     pctfree 10
     initrans 2
     maxtrans 255
     storage
     (
       initial 30M
       next 1M
       minextents 1
       maxextents unlimited
     )
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 160M
    next 8K
    minextents 1
    maxextents unlimited
  );

comment on table RA_ACD_DUTYSIMPLEHUMAN is
'简易人员表';

comment on column RA_ACD_DUTYSIMPLEHUMAN.SGBH is
'事故编号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.XZQH is
'行政区划';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RYBH is
'人员编号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.XM is
'姓名';

comment on column RA_ACD_DUTYSIMPLEHUMAN.XB is
'性别';

comment on column RA_ACD_DUTYSIMPLEHUMAN.SFZMHM is
'身份证明号码';

comment on column RA_ACD_DUTYSIMPLEHUMAN.NL is
'年龄';

comment on column RA_ACD_DUTYSIMPLEHUMAN.ZZ is
'住址';

comment on column RA_ACD_DUTYSIMPLEHUMAN.DH is
'电话';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RYLX is
'人员类型';

comment on column RA_ACD_DUTYSIMPLEHUMAN.SHCD is
'伤害程度';

comment on column RA_ACD_DUTYSIMPLEHUMAN.WFXW1 is
'主要违法行为';

comment on column RA_ACD_DUTYSIMPLEHUMAN.WFXW2 is
'其他违法行为一';

comment on column RA_ACD_DUTYSIMPLEHUMAN.WFXW3 is
'其他违法行为二';

comment on column RA_ACD_DUTYSIMPLEHUMAN.TK1 is
'条款内容1';

comment on column RA_ACD_DUTYSIMPLEHUMAN.TK2 is
'条款内容2';

comment on column RA_ACD_DUTYSIMPLEHUMAN.TK3 is
'条款内容3';

comment on column RA_ACD_DUTYSIMPLEHUMAN.ZYYSDW is
'专业运输单位(编号)';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JTFS is
'交通方式';

comment on column RA_ACD_DUTYSIMPLEHUMAN.GLXZQH is
'管理行政区划';

comment on column RA_ACD_DUTYSIMPLEHUMAN.DABH is
'驾证档案编号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JL is
'驾龄';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JSZZL is
'驾驶证种类';

comment on column RA_ACD_DUTYSIMPLEHUMAN.ZJCX is
'准驾车型';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CCLZRQ is
'初次领证日期';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JSRGXD is
'驾驶人管辖地';

comment on column RA_ACD_DUTYSIMPLEHUMAN.FZJG is
'发证机关';

comment on column RA_ACD_DUTYSIMPLEHUMAN.SGZR is
'事故责任';

comment on column RA_ACD_DUTYSIMPLEHUMAN.HPHM is
'号牌号码';

comment on column RA_ACD_DUTYSIMPLEHUMAN.HPZL is
'号牌种类';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLFZJG is
'车辆发证机关';

comment on column RA_ACD_DUTYSIMPLEHUMAN.FDJH is
'发动机号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLSBDH is
'车辆识别代号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JDCXH is
'机动车序号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLPP is
'车辆品牌';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLXH is
'车辆型号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CSYS is
'车身颜色';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLLX is
'车辆类型';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JDCZT is
'机动车状态';

comment on column RA_ACD_DUTYSIMPLEHUMAN.SYQ is
'所有权';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JDCSYR is
'机动车所有人';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLSYXZ is
'车辆使用性质';

comment on column RA_ACD_DUTYSIMPLEHUMAN.BX is
'保险1 是   2 否';

comment on column RA_ACD_DUTYSIMPLEHUMAN.BXGS is
'保险公司';

comment on column RA_ACD_DUTYSIMPLEHUMAN.BXPZH is
'保险凭证号';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLZZWP is
'车辆装载物品';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CLGXD is
'车辆管辖地';

comment on column RA_ACD_DUTYSIMPLEHUMAN.CJCXBJ is
'车驾查询标记';

comment on column RA_ACD_DUTYSIMPLEHUMAN.JYW is
'校验位';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RA_PID is
'一般事故表ID';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RA_SJZT is
'1：原始数据（未编辑过）；11：原始数据（已编辑过）；：编辑后的数据；';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD1 is
'预留字段1';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD2 is
'预留字段2';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD3 is
'预留字段3';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD4 is
'预留字段4';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD5 is
'预留字段5';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD6 is
'预留字段6';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD7 is
'预留字段7';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD8 is
'预留字段8';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD9 is
'预留字段9';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD10 is
'预留字段10';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD11 is
'预留字段11';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD12 is
'预留字段12';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD13 is
'预留字段13';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD14 is
'预留字段14';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD15 is
'预留字段15';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD16 is
'预留字段16';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD17 is
'预留字段17';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD18 is
'预留字段18';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD19 is
'预留字段19';

comment on column RA_ACD_DUTYSIMPLEHUMAN.RARYZD20 is
'预留字段20';

/*==============================================================*/
/* Index: ASDGAFDSHGASDFGA                                      */
/*==============================================================*/
create unique index ASDGAFDSHGASDFGA on RA_ACD_DUTYSIMPLEHUMAN (
   SGBH ASC,
   RYBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: ASDGASDF                                              */
/*==============================================================*/
create index ASDGASDF on RA_ACD_DUTYSIMPLEHUMAN (
   SGBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 14M
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: ASDGASDFASDF                                          */
/*==============================================================*/
create index ASDGASDFASDF on RA_ACD_DUTYSIMPLEHUMAN (
   SGBH||TO_CHAR(RYBH) ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 14M
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: STRHG                                                 */
/*==============================================================*/
create index STRHG on RA_ACD_DUTYSIMPLEHUMAN (
   RA_PID ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: RA_ACD_FILE                                           */
/*==============================================================*/
create table RA_ACD_FILE 
(
   RA_ID                VARCHAR2(40)         not null,
   SGBH                 VARCHAR2(32)         not null,
   XZQH                 VARCHAR2(10)         not null,
   DJBH                 VARCHAR2(17),
   KSKCSJ               DATE,
   JSKCSJ               DATE,
   XQ                   NUMBER(1),
   SGFSSJ               DATE,
   LH                   VARCHAR2(7)          default '-',
   LM                   VARCHAR2(64),
   GLS                  NUMBER(5),
   MS                   NUMBER(4),
   QDMS                 NUMBER(4),
   JDWZ                 NUMBER(8)            default 0,
   SGDD                 VARCHAR2(128),
   ZHDMWZ               CHAR(1),
   ZYGLSS               VARCHAR2(1),
   DLAQSX               VARCHAR2(1),
   JTXHFS               VARCHAR2(5),
   FHSSLX               VARCHAR2(2),
   DLWLGL               CHAR(1),
   LMZK                 CHAR(1),
   LBQK                 VARCHAR2(2),
   LMJG                 CHAR(1),
   LKLDLX               CHAR(2),
   DLXX                 VARCHAR2(2),
   DLLX                 CHAR(2),
   KCR1                 VARCHAR2(30),
   KCR2                 VARCHAR2(30),
   BAR1                 VARCHAR2(30),
   BAR2                 VARCHAR2(30),
   SWRS                 NUMBER(3)            default 0,
   SWRSQ                NUMBER(3)            default 0,
   SWRS24               NUMBER(3)            default 0,
   SSRS24               NUMBER(3)            default 0,
   SWRS3                NUMBER(3)            default 0,
   SSRS3                NUMBER(3)            default 0,
   SWRS7                NUMBER(3)            default 0,
   SSRS7                NUMBER(3)            default 0,
   SWRS30               NUMBER(3)            default 0,
   SSRS30               NUMBER(3)            default 0,
   SZRS                 NUMBER(3)            default 0,
   ZSRS                 NUMBER(3)            default 0,
   QSRS                 NUMBER(3)            default 0,
   SSRS                 NUMBER(3)            default 0,
   JDCSL                NUMBER(3)            default 0,
   FJDCSL               NUMBER(3)            default 0,
   XRSL                 NUMBER(3)            default 0,
   XSGLBM               VARCHAR2(12),
   XSBADW               VARCHAR2(64),
   XSBAR                VARCHAR2(32),
   TPZS                 NUMBER(3)            default 0,
   XCTZS                NUMBER(3)            default 0,
   XCZPZS               NUMBER(3)            default 0,
   ZJCCSS               NUMBER(9)            default 0,
   SGLX                 CHAR(1),
   LWSGLX               CHAR(1),
   CCYYFL               VARCHAR2(2),
   RDYYFL               VARCHAR2(2),
   SGCCYY               VARCHAR2(4),
   SGRDYY               VARCHAR2(4),
   JYAQ                 VARCHAR2(2000),
   TQ                   VARCHAR2(2),
   NJD                  CHAR(1),
   XC                   CHAR(1),
   SWSG                 CHAR(1),
   SGXT                 CHAR(2),
   SFTY                 CHAR(1),
   CLJSG                VARCHAR2(1),
   DCSG                 VARCHAR2(2),
   PZFS                 VARCHAR2(1),
   TYSGZP               CHAR(1),
   TYZPSJ               DATE,
   DX                   CHAR(1),
   ZMTJ                 CHAR(1),
   TJR1                 VARCHAR2(30),
   TJR2                 VARCHAR2(30),
   YZWXP                CHAR(1),
   YZWXPHG              VARCHAR2(2),
   CCLRSJ               DATE,
   JLLX                 CHAR(1),
   SCSJD                NUMBER,
   JBR                  VARCHAR2(30),
   TJSJ                 DATE,
   GXSJ                 DATE,
   SSZD                 VARCHAR2(12),
   GLXZDJ               CHAR(1),
   DAH                  VARCHAR2(50),
   JNH                  NUMBER(3),
   SXXZ                 VARCHAR2(10),
   SB                   CHAR(1),
   TJSGBH               VARCHAR2(64),
   GLBM                 VARCHAR2(12),
   YLZD1                VARCHAR2(100),
   YLZD2                VARCHAR2(100),
   YLZD3                VARCHAR2(100),
   YLZD4                VARCHAR2(100),
   YLZD5                VARCHAR2(100),
   DZZB                 VARCHAR2(1024),
   TDYL1                VARCHAR2(100),
   TDYL2                VARCHAR2(100),
   TDYL3                VARCHAR2(100),
   TDYL4                VARCHAR2(100),
   TDYL5                VARCHAR2(100),
   TDYL6                VARCHAR2(100),
   TDYL7                VARCHAR2(100),
   TDYL8                VARCHAR2(100),
   TDYL9                VARCHAR2(100),
   TDYL10               VARCHAR2(100),
   BALXFS               VARCHAR2(100),
   BADW                 VARCHAR2(100),
   XYXDM                VARCHAR2(12),
   JYW                  VARCHAR2(64),
   SFECSG               CHAR(1),
   SFDXSG               CHAR(1)              default '2',
   DLAQYHDJ             VARCHAR2(1),
   DSRZS                NUMBER(3)            default 0,
   FSJG                 VARCHAR2(10),
   FFJG                 VARCHAR2(128),
   SDSGDSCWZ            VARCHAR2(1),
   HLZT                 VARCHAR2(2),
   ZBLX                 VARCHAR2(1),
   AJMC                 VARCHAR2(128),
   RA_JD                VARCHAR2(32),
   RA_WD                VARCHAR2(32),
   RA_WYSMS             VARCHAR2(512),
   RA_DWSJ              DATE,
   RA_DWZT              VARCHAR2(1)          default '0',
   RA_SJLY              VARCHAR2(1),
   RA_GXSJ              DATE,
   RA_SFYX              VARCHAR2(1)          default '1',
   RA_CCLRSJ            DATE,
   RA_JH                NVARCHAR2(64)        default '',
   RA_BMBH              NVARCHAR2(64)        default '',
   RA_DWR               NVARCHAR2(64),
   RA_SJZT              NVARCHAR2(8)         default '1',
   RASGZD1              NVARCHAR2(512)       default '',
   RASGZD2              NVARCHAR2(512)       default '',
   RASGZD3              NVARCHAR2(512)       default '',
   RASGZD4              NVARCHAR2(512)       default '',
   RASGZD5              NVARCHAR2(512)       default '',
   RASGZD6              NVARCHAR2(512)       default '',
   RASGZD7              NVARCHAR2(512)       default '',
   RASGZD8              NVARCHAR2(512)       default '',
   RASGZD9              NVARCHAR2(512)       default '',
   RASGZD10             NVARCHAR2(512)       default '',
   RASGZD11             NVARCHAR2(512)       default '',
   RASGZD12             NVARCHAR2(512)       default '',
   RASGZD13             NVARCHAR2(512)       default '',
   RASGZD14             NVARCHAR2(512)       default '',
   RASGZD15             NVARCHAR2(512)       default '',
   RASGZD16             NVARCHAR2(512)       default '',
   RASGZD17             NVARCHAR2(512)       default '',
   RASGZD18             NVARCHAR2(512)       default '',
   RASGZD19             NVARCHAR2(512)       default '',
   RASGZD20             NVARCHAR2(512)       default '',
   ETLVER               VARCHAR2(16),
   SGRDYYMS             VARCHAR2(1024),
   DLAQYHLX             VARCHAR2(2),
   DZZB_JWT             VARCHAR2(1024),
   SXXCJ                VARCHAR2(3),
   WSBH                 VARCHAR2(50),
   JBSS                 VARCHAR2(4000),
   DSFQK                VARCHAR2(4000),
   RDNR                 VARCHAR2(4000),
   BARYJ                VARCHAR2(4000),
   constraint PK_RA_ACD_FILE primary key (RA_ID)
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
     )
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 15M
    next 8K
    minextents 1
    maxextents unlimited
  );

comment on table RA_ACD_FILE is
'事故信息主表';

comment on column RA_ACD_FILE.RA_ID is
'ID';

comment on column RA_ACD_FILE.SGBH is
'事故编号';

comment on column RA_ACD_FILE.XZQH is
'行政区划';

comment on column RA_ACD_FILE.DJBH is
'登记编号';

comment on column RA_ACD_FILE.KSKCSJ is
'开始勘查时间';

comment on column RA_ACD_FILE.JSKCSJ is
'结束勘查时间';

comment on column RA_ACD_FILE.XQ is
'星期';

comment on column RA_ACD_FILE.SGFSSJ is
'事故发生时间';

comment on column RA_ACD_FILE.LH is
'路号';

comment on column RA_ACD_FILE.LM is
'路名';

comment on column RA_ACD_FILE.GLS is
'公里数';

comment on column RA_ACD_FILE.MS is
'米数';

comment on column RA_ACD_FILE.QDMS is
'起点米数';

comment on column RA_ACD_FILE.JDWZ is
'绝对位置';

comment on column RA_ACD_FILE.SGDD is
'事故地点';

comment on column RA_ACD_FILE.ZHDMWZ is
'在道路横断面位置';

comment on column RA_ACD_FILE.ZYGLSS is
'中央隔离设施';

comment on column RA_ACD_FILE.DLAQSX is
'道路安全属性';

comment on column RA_ACD_FILE.JTXHFS is
'交通信号方式（控制）';

comment on column RA_ACD_FILE.FHSSLX is
'路侧防护设施类型';

comment on column RA_ACD_FILE.DLWLGL is
'道路物理隔离';

comment on column RA_ACD_FILE.LMZK is
'路面状况';

comment on column RA_ACD_FILE.LBQK is
'路表情况';

comment on column RA_ACD_FILE.LMJG is
'路面结构';

comment on column RA_ACD_FILE.LKLDLX is
'路口路段类型 ';

comment on column RA_ACD_FILE.DLXX is
'道路线型 ';

comment on column RA_ACD_FILE.DLLX is
'道路类型 ';

comment on column RA_ACD_FILE.KCR1 is
'勘查人1';

comment on column RA_ACD_FILE.KCR2 is
'勘查人2';

comment on column RA_ACD_FILE.BAR1 is
'办案人1';

comment on column RA_ACD_FILE.BAR2 is
'办案人2';

comment on column RA_ACD_FILE.SWRS is
'当场死亡人数';

comment on column RA_ACD_FILE.SWRSQ is
'抢救无效死亡人数';

comment on column RA_ACD_FILE.SWRS24 is
'24小时死亡人数';

comment on column RA_ACD_FILE.SSRS24 is
'24小时受伤人数';

comment on column RA_ACD_FILE.SWRS3 is
'3日内死亡人数';

comment on column RA_ACD_FILE.SSRS3 is
'3日内受伤人数';

comment on column RA_ACD_FILE.SWRS7 is
'7日内死亡人数';

comment on column RA_ACD_FILE.SSRS7 is
'7日内受伤人数';

comment on column RA_ACD_FILE.SWRS30 is
'30日内死亡人数';

comment on column RA_ACD_FILE.SSRS30 is
'30日内受伤人数';

comment on column RA_ACD_FILE.SZRS is
'失踪人数';

comment on column RA_ACD_FILE.ZSRS is
'重伤人数';

comment on column RA_ACD_FILE.QSRS is
'轻伤人数';

comment on column RA_ACD_FILE.SSRS is
'受伤人数';

comment on column RA_ACD_FILE.JDCSL is
'机动车数量';

comment on column RA_ACD_FILE.FJDCSL is
'非机动车数量';

comment on column RA_ACD_FILE.XRSL is
'行人数量';

comment on column RA_ACD_FILE.XSGLBM is
'刑事管理部门';

comment on column RA_ACD_FILE.XSBADW is
'刑事办案单位';

comment on column RA_ACD_FILE.XSBAR is
'刑事办案人';

comment on column RA_ACD_FILE.TPZS is
'图片张数';

comment on column RA_ACD_FILE.XCTZS is
'现场图张数';

comment on column RA_ACD_FILE.XCZPZS is
'现场照片张数';

comment on column RA_ACD_FILE.ZJCCSS is
'直接财产损失';

comment on column RA_ACD_FILE.SGLX is
'事故类型';

comment on column RA_ACD_FILE.LWSGLX is
'路外事故类型';

comment on column RA_ACD_FILE.CCYYFL is
'事故初查原因分类';

comment on column RA_ACD_FILE.RDYYFL is
'事故认定原因分类';

comment on column RA_ACD_FILE.SGCCYY is
'事故初查原因';

comment on column RA_ACD_FILE.SGRDYY is
'事故认定原因';

comment on column RA_ACD_FILE.JYAQ is
'简要案情';

comment on column RA_ACD_FILE.TQ is
'天气';

comment on column RA_ACD_FILE.NJD is
'能见度';

comment on column RA_ACD_FILE.XC is
'现场';

comment on column RA_ACD_FILE.SWSG is
'涉外事故1是2否';

comment on column RA_ACD_FILE.SGXT is
'事故形态 ';

comment on column RA_ACD_FILE.SFTY is
'是否逃逸 1-否 2-驾车逃逸 3-弃车逃逸 X';

comment on column RA_ACD_FILE.CLJSG is
'车辆间事故碰撞形态';

comment on column RA_ACD_FILE.DCSG is
'单车事故';

comment on column RA_ACD_FILE.PZFS is
'碰撞方式 1-单车 2-双车 3-多车 4-车人事故';

comment on column RA_ACD_FILE.TYSGZP is
'逃逸事故侦破1-是2-否';

comment on column RA_ACD_FILE.TYZPSJ is
'逃逸事故侦破时间';

comment on column RA_ACD_FILE.DX is
'地形 ';

comment on column RA_ACD_FILE.ZMTJ is
'照明条件';

comment on column RA_ACD_FILE.TJR1 is
'调解人1';

comment on column RA_ACD_FILE.TJR2 is
'调解人2';

comment on column RA_ACD_FILE.YZWXP is
'是否运载危险物品1-是2否';

comment on column RA_ACD_FILE.YZWXPHG is
'运载危险品事故后果';

comment on column RA_ACD_FILE.CCLRSJ is
'初次录入时间';

comment on column RA_ACD_FILE.JLLX is
' 1-快报记录 2-快报/全项记录 3全项记录 9 不立案';

comment on column RA_ACD_FILE.SCSJD is
'上传时间段(天数)';

comment on column RA_ACD_FILE.JBR is
'经办人';

comment on column RA_ACD_FILE.TJSJ is
'提交时间';

comment on column RA_ACD_FILE.GXSJ is
'更新时间';

comment on column RA_ACD_FILE.SSZD is
'所属中队';

comment on column RA_ACD_FILE.GLXZDJ is
'公路行政等级';

comment on column RA_ACD_FILE.DAH is
'档案号';

comment on column RA_ACD_FILE.JNH is
'卷内号';

comment on column RA_ACD_FILE.SXXZ is
'所辖乡镇';

comment on column RA_ACD_FILE.SB is
'上报 1-是 2-否  为空3-上报但更新不成功';

comment on column RA_ACD_FILE.TJSGBH is
'统计事故编号';

comment on column RA_ACD_FILE.GLBM is
'管理部门';

comment on column RA_ACD_FILE.YLZD1 is
'预留字段1';

comment on column RA_ACD_FILE.YLZD2 is
'预留字段2';

comment on column RA_ACD_FILE.YLZD3 is
'预留字段3';

comment on column RA_ACD_FILE.YLZD4 is
'预留字段4';

comment on column RA_ACD_FILE.YLZD5 is
'预留字段5';

comment on column RA_ACD_FILE.DZZB is
'电子坐标 格式为地址坐标X,地址坐标Y,地址经度,地址纬度';

comment on column RA_ACD_FILE.TDYL1 is
'特大预留1';

comment on column RA_ACD_FILE.TDYL2 is
'特大预留2';

comment on column RA_ACD_FILE.TDYL3 is
'特大预留3';

comment on column RA_ACD_FILE.TDYL4 is
'特大预留4';

comment on column RA_ACD_FILE.TDYL5 is
'特大预留5';

comment on column RA_ACD_FILE.TDYL6 is
'特大预留6';

comment on column RA_ACD_FILE.TDYL7 is
'特大预留7';

comment on column RA_ACD_FILE.TDYL8 is
'特大预留8';

comment on column RA_ACD_FILE.TDYL9 is
'特大预留9';

comment on column RA_ACD_FILE.TDYL10 is
'特大预留10';

comment on column RA_ACD_FILE.BALXFS is
'办案联系方式';

comment on column RA_ACD_FILE.BADW is
'办案单位';

comment on column RA_ACD_FILE.XYXDM is
'县以下行政区划';

comment on column RA_ACD_FILE.JYW is
'校验位';

comment on column RA_ACD_FILE.SFECSG is
'是否二次事故 1-是 2-否 * X';

comment on column RA_ACD_FILE.SFDXSG is
'是否典型事故 1-是 2-否';

comment on column RA_ACD_FILE.DLAQYHDJ is
'道路安全隐患等级';

comment on column RA_ACD_FILE.DSRZS is
'事故涉及人员总数';

comment on column RA_ACD_FILE.FSJG is
'发送机关';

comment on column RA_ACD_FILE.FFJG is
'分发机关';

comment on column RA_ACD_FILE.SDSGDSCWZ is
'隧道事故点所处位置030190';

comment on column RA_ACD_FILE.HLZT is
'护栏/交通隔离栏状态030191';

comment on column RA_ACD_FILE.RA_JD is
'经度';

comment on column RA_ACD_FILE.RA_WD is
'纬度';

comment on column RA_ACD_FILE.RA_WYSMS is
'五要素描述';

comment on column RA_ACD_FILE.RA_DWSJ is
'定位时间';

comment on column RA_ACD_FILE.RA_DWZT is
'定位状态 0未定位 1自动定位 2手工定位';

comment on column RA_ACD_FILE.RA_SJLY is
'数据来源： 0预警系统录入 1六合一导入 2移动警务导入 3六合一控件注入保存';

comment on column RA_ACD_FILE.RA_GXSJ is
'更新时间，重新抽取六合一信息时间/定位时间';

comment on column RA_ACD_FILE.RA_SFYX is
'是否有效 0 无效 1有效';

comment on column RA_ACD_FILE.RA_CCLRSJ is
'我们自己的初次录入时间';

comment on column RA_ACD_FILE.RA_JH is
'警号';

comment on column RA_ACD_FILE.RA_BMBH is
'部门编号';

comment on column RA_ACD_FILE.RA_DWR is
'定位人';

comment on column RA_ACD_FILE.RA_SJZT is
'1：原始数据（未编辑过）；11：原始数据（已编辑过）；：编辑后的数据；';

comment on column RA_ACD_FILE.RASGZD1 is
'预留字段1';

comment on column RA_ACD_FILE.RASGZD2 is
'预留字段2';

comment on column RA_ACD_FILE.RASGZD3 is
'预留字段3';

comment on column RA_ACD_FILE.RASGZD4 is
'预留字段4';

comment on column RA_ACD_FILE.RASGZD5 is
'预留字段5';

comment on column RA_ACD_FILE.RASGZD6 is
'预留字段6';

comment on column RA_ACD_FILE.RASGZD7 is
'预留字段7';

comment on column RA_ACD_FILE.RASGZD8 is
'预留字段8';

comment on column RA_ACD_FILE.RASGZD9 is
'预留字段9';

comment on column RA_ACD_FILE.RASGZD10 is
'预留字段10';

comment on column RA_ACD_FILE.RASGZD11 is
'预留字段11';

comment on column RA_ACD_FILE.RASGZD12 is
'预留字段12';

comment on column RA_ACD_FILE.RASGZD13 is
'预留字段13';

comment on column RA_ACD_FILE.RASGZD14 is
'预留字段14';

comment on column RA_ACD_FILE.RASGZD15 is
'预留字段15';

comment on column RA_ACD_FILE.RASGZD16 is
'预留字段16';

comment on column RA_ACD_FILE.RASGZD17 is
'预留字段17';

comment on column RA_ACD_FILE.RASGZD18 is
'预留字段18';

comment on column RA_ACD_FILE.RASGZD19 is
'预留字段19';

comment on column RA_ACD_FILE.RASGZD20 is
'预留字段20';

comment on column RA_ACD_FILE.SGRDYYMS is
'事故认定原因描述';

comment on column RA_ACD_FILE.DLAQYHLX is
'道路安全隐患类型';

comment on column RA_ACD_FILE.DZZB_JWT is
'电子坐标警务通';

/*==============================================================*/
/* Index: ASGSADFGAGASHGSFA                                     */
/*==============================================================*/
create unique index ASGSADFGAGASHGSFA on RA_ACD_FILE (
   SGBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: SDAGHASJJDHGASDFGDF                                   */
/*==============================================================*/
create index SDAGHASJJDHGASDFGDF on RA_ACD_FILE (
   DJBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: RA_ACD_FILEHUMAN                                      */
/*==============================================================*/
create table RA_ACD_FILEHUMAN 
(
   RA_ID                VARCHAR2(64)         not null,
   RA_PID               VARCHAR2(32)         not null,
   SGBH                 VARCHAR2(32)         not null,
   XZQH                 VARCHAR2(10)         not null,
   RYBH                 NUMBER(3)            not null,
   SFDSR                CHAR(1),
   DWGR                 CHAR(1),
   XM                   VARCHAR2(128),
   XB                   CHAR(1),
   SFZMHM               VARCHAR2(20),
   NL                   NUMBER(3),
   CSNY                 VARCHAR2(10),
   MZ                   CHAR(2),
   GJ                   CHAR(3),
   WHCD                 CHAR(2),
   JG                   VARCHAR2(128),
   HJZ                  VARCHAR2(128),
   ZZ                   VARCHAR2(128),
   DH                   VARCHAR2(30),
   RYLX                 VARCHAR2(3),
   WGRLX                VARCHAR2(1),
   DW                   VARCHAR2(128),
   SFTY                 VARCHAR2(1),
   SWSJ                 DATE,
   SHCD                 CHAR(1),
   SHCD24               CHAR(1),
   SHCD3                CHAR(1),
   SHCD7                CHAR(1),
   SHCD30               CHAR(1),
   SSBW                 CHAR(1),
   ZSYY                 VARCHAR2(2),
   HKXZ                 CHAR(1),
   WFXW1                VARCHAR2(5),
   WFXW2                VARCHAR2(5),
   WFXW3                VARCHAR2(5),
   ZYYSDW               VARCHAR2(128),
   YZBM                 VARCHAR2(10),
   JTFS                 VARCHAR2(3),
   GLXZQH               VARCHAR2(10),
   DABH                 VARCHAR2(20),
   JL                   NUMBER(2),
   JSZZL                CHAR(1),
   JSRLX                CHAR(1),
   ZJCX                 VARCHAR2(10),
   CCLZRQ               DATE,
   FZJG                 VARCHAR2(10),
   JXMC                 VARCHAR2(64),
   SGZR                 CHAR(1),
   BX                   CHAR(1),
   BXGS                 VARCHAR2(50),
   BXPZH                VARCHAR2(32),
   XYJJHL               VARCHAR2(1),
   XSZT                 CHAR(2),
   AQDTKQK              VARCHAR2(1),
   XRZT                 VARCHAR2(1),
   XRSD                 VARCHAR2(1),
   PZJS                 VARCHAR2(1),
   CLBSQDW              VARCHAR2(2),
   CLZXDZT              VARCHAR2(1),
   CLZMDZT              VARCHAR2(1),
   CLAQQNZT             VARCHAR2(1),
   HPHM                 VARCHAR2(20),
   HPZL                 CHAR(2),
   CLFZJG               VARCHAR2(10),
   CLPP                 VARCHAR2(32),
   CLXH                 VARCHAR2(32),
   SYQ                  CHAR(1),
   JDCSYR               VARCHAR2(128),
   CLSYXZ               CHAR(2),
   CLSBDH               VARCHAR2(25),
   FDJH                 VARCHAR2(32),
   JDCXH                VARCHAR2(14),
   CSYS                 VARCHAR2(5),
   SFCZ                 CHAR(1),
   HZL                  NUMBER(10),
   SZL                  NUMBER(10),
   CLLX                 CHAR(3),
   JDCZT                VARCHAR2(6),
   HPZL1                CHAR(2),
   HPHM1                VARCHAR2(20),
   CLLX1                CHAR(3),
   CLPP1                VARCHAR2(32),
   CLXH1                VARCHAR2(32),
   HZL1                 NUMBER(10),
   SZL1                 NUMBER(10),
   CLHFZT               CHAR(1),
   CLAQZK               CHAR(1),
   GLKYLC               CHAR(1),
   GLKYJYFS             CHAR(1),
   YZWXP                CHAR(1),
   WXPZL                CHAR(1),
   YSXK                 CHAR(1),
   WXPCYZG              VARCHAR2(1),
   YZWXPHG              VARCHAR2(2),
   CZCLBH               NUMBER(3),
   YLZD1                VARCHAR2(100),
   YLZD2                VARCHAR2(100),
   YLZD3                VARCHAR2(100),
   YLZD4                VARCHAR2(100),
   YLZD5                VARCHAR2(100),
   TDYL1                VARCHAR2(100),
   TDYL2                VARCHAR2(100),
   TDYL3                VARCHAR2(100),
   TDYL4                VARCHAR2(100),
   TDYL5                VARCHAR2(100),
   TDYL6                VARCHAR2(100),
   TDYL7                VARCHAR2(100),
   TDYL8                VARCHAR2(100),
   TDYL9                VARCHAR2(100),
   TDYL10               VARCHAR2(100),
   CJCXBJ               VARCHAR2(10),
   JYW                  VARCHAR2(64),
   FSJG                 VARCHAR2(10),
   FFJG                 VARCHAR2(10),
   CLSYXZY              CHAR(1),
   YTSX                 CHAR(1),
   SFXCFW               CHAR(1),
   XCJSZG               CHAR(1),
   XDZT                 CHAR(1),
   XYXM                 VARCHAR2(64),
   XYSFZMHM             VARCHAR2(20),
   SFGXQC               VARCHAR2(1),
   SGZZKQNWZ            VARCHAR2(20),
   FYDPYW               VARCHAR2(1),
   HCSFZBFHZZ           VARCHAR2(2),
   HCYWFGBS             VARCHAR2(2),
   SFDTJK               VARCHAR2(2),
   DTJKSFZCYX           VARCHAR2(2),
   DDZXCSFCB            VARCHAR2(2),
   DDZXCSFYHP           VARCHAR2(2),
   DDZXCJGTZ            VARCHAR2(2),
   DDZXCYWBX            VARCHAR2(2),
   RLZL                 VARCHAR2(3),
   XNYZL                VARCHAR2(1),
   WFXW4                VARCHAR2(5),
   WFXW5                VARCHAR2(5),
   RA_SJZT              NVARCHAR2(8)         default '1',
   RARYZD1              NVARCHAR2(512)       default '',
   RARYZD2              NVARCHAR2(512)       default '',
   RARYZD3              NVARCHAR2(512)       default '',
   RARYZD4              NVARCHAR2(512)       default '',
   RARYZD5              NVARCHAR2(512)       default '',
   RARYZD6              NVARCHAR2(512)       default '',
   RARYZD7              NVARCHAR2(512)       default '',
   RARYZD8              NVARCHAR2(512)       default '',
   RARYZD9              NVARCHAR2(512)       default '',
   RARYZD10             NVARCHAR2(512)       default '',
   RARYZD11             NVARCHAR2(512)       default '',
   RARYZD12             NVARCHAR2(512)       default '',
   RARYZD13             NVARCHAR2(512)       default '',
   RARYZD14             NVARCHAR2(512)       default '',
   RARYZD15             NVARCHAR2(512)       default '',
   RARYZD16             NVARCHAR2(512)       default '',
   RARYZD17             NVARCHAR2(512)       default '',
   RARYZD18             NVARCHAR2(512)       default '',
   RARYZD19             NVARCHAR2(512)       default '',
   RARYZD20             NVARCHAR2(512)       default '',
   RA_DSRLX             NVARCHAR2(50),
   ETLVER               VARCHAR2(16),
   CXMD                 VARCHAR2(2),
   PZHCLXT              VARCHAR2(2),
   RYLXMS               VARCHAR2(20),
   ZSYYMS               VARCHAR2(20),
   SZLHW                NUMBER(10),
   HZLHW                NUMBER(10),
   constraint HUMAN_PRIMARY primary key (RA_ID)
         using index 
     tablespace HIATMPTS
     pctfree 10
     initrans 2
     maxtrans 255
     storage
     (
       initial 3M
       next 1M
       minextents 1
       maxextents unlimited
     )
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 17M
    next 8K
    minextents 1
    maxextents unlimited
  );

comment on table RA_ACD_FILEHUMAN is
'事故信息人员表';

comment on column RA_ACD_FILEHUMAN.RA_ID is
'ID';

comment on column RA_ACD_FILEHUMAN.RA_PID is
'事故表ID';

comment on column RA_ACD_FILEHUMAN.SGBH is
'事故编号';

comment on column RA_ACD_FILEHUMAN.XZQH is
'行政区划';

comment on column RA_ACD_FILEHUMAN.RYBH is
'人员编号';

comment on column RA_ACD_FILEHUMAN.SFDSR is
'当事人否';

comment on column RA_ACD_FILEHUMAN.DWGR is
'单位个人';

comment on column RA_ACD_FILEHUMAN.XM is
'姓名';

comment on column RA_ACD_FILEHUMAN.XB is
'性别';

comment on column RA_ACD_FILEHUMAN.SFZMHM is
'身份证明号码';

comment on column RA_ACD_FILEHUMAN.NL is
'年龄';

comment on column RA_ACD_FILEHUMAN.CSNY is
'出生年月';

comment on column RA_ACD_FILEHUMAN.MZ is
'民族';

comment on column RA_ACD_FILEHUMAN.GJ is
'国籍';

comment on column RA_ACD_FILEHUMAN.WHCD is
'文化程度';

comment on column RA_ACD_FILEHUMAN.JG is
'籍贯';

comment on column RA_ACD_FILEHUMAN.HJZ is
'户籍地址';

comment on column RA_ACD_FILEHUMAN.ZZ is
'住址';

comment on column RA_ACD_FILEHUMAN.DH is
'电话';

comment on column RA_ACD_FILEHUMAN.RYLX is
'人员类型';

comment on column RA_ACD_FILEHUMAN.WGRLX is
'外国人类型';

comment on column RA_ACD_FILEHUMAN.DW is
'单位';

comment on column RA_ACD_FILEHUMAN.SFTY is
'是否逃逸';

comment on column RA_ACD_FILEHUMAN.SWSJ is
'死亡时间';

comment on column RA_ACD_FILEHUMAN.SHCD is
'伤害程度';

comment on column RA_ACD_FILEHUMAN.SHCD24 is
'24小时内伤害程度';

comment on column RA_ACD_FILEHUMAN.SHCD3 is
'3日内伤害程度';

comment on column RA_ACD_FILEHUMAN.SHCD7 is
'7日内伤害程度';

comment on column RA_ACD_FILEHUMAN.SHCD30 is
'30日内伤害程度';

comment on column RA_ACD_FILEHUMAN.SSBW is
'受伤部位';

comment on column RA_ACD_FILEHUMAN.ZSYY is
'致死原因';

comment on column RA_ACD_FILEHUMAN.HKXZ is
'户口性质1-农业 0-非农业';

comment on column RA_ACD_FILEHUMAN.WFXW1 is
'违法行为一';

comment on column RA_ACD_FILEHUMAN.WFXW2 is
'违法行为二';

comment on column RA_ACD_FILEHUMAN.WFXW3 is
'违法行为三';

comment on column RA_ACD_FILEHUMAN.ZYYSDW is
'专业运输单位';

comment on column RA_ACD_FILEHUMAN.YZBM is
'邮政编码';

comment on column RA_ACD_FILEHUMAN.JTFS is
'交通方式';

comment on column RA_ACD_FILEHUMAN.GLXZQH is
'管理行政区划';

comment on column RA_ACD_FILEHUMAN.DABH is
'驾证档案编号';

comment on column RA_ACD_FILEHUMAN.JL is
'驾龄';

comment on column RA_ACD_FILEHUMAN.JSZZL is
'驾驶证种类';

comment on column RA_ACD_FILEHUMAN.JSRLX is
'驾驶人类型';

comment on column RA_ACD_FILEHUMAN.ZJCX is
'准驾车型';

comment on column RA_ACD_FILEHUMAN.CCLZRQ is
'初次领证日期';

comment on column RA_ACD_FILEHUMAN.FZJG is
'发证机关';

comment on column RA_ACD_FILEHUMAN.JXMC is
'驾校名称';

comment on column RA_ACD_FILEHUMAN.SGZR is
'事故责任';

comment on column RA_ACD_FILEHUMAN.BX is
'保险1 是   2 否';

comment on column RA_ACD_FILEHUMAN.BXGS is
'保险公司';

comment on column RA_ACD_FILEHUMAN.BXPZH is
'保险凭证号';

comment on column RA_ACD_FILEHUMAN.XYJJHL is
'血液酒精含量';

comment on column RA_ACD_FILEHUMAN.XSZT is
'行驶状态';

comment on column RA_ACD_FILEHUMAN.AQDTKQK is
'安全保护装置使用情况';

comment on column RA_ACD_FILEHUMAN.XRZT is
'行人状态';

comment on column RA_ACD_FILEHUMAN.XRSD is
'行人速度';

comment on column RA_ACD_FILEHUMAN.PZJS is
'碰撞中角色';

comment on column RA_ACD_FILEHUMAN.CLBSQDW is
'车辆变速器档位';

comment on column RA_ACD_FILEHUMAN.CLZXDZT is
'车辆转向灯状态';

comment on column RA_ACD_FILEHUMAN.CLZMDZT is
'车辆照明灯状态';

comment on column RA_ACD_FILEHUMAN.CLAQQNZT is
'车辆安全气囊状态';

comment on column RA_ACD_FILEHUMAN.HPHM is
'号牌号码';

comment on column RA_ACD_FILEHUMAN.HPZL is
'号牌种类';

comment on column RA_ACD_FILEHUMAN.CLFZJG is
'车辆发证机关';

comment on column RA_ACD_FILEHUMAN.CLPP is
'车辆品牌';

comment on column RA_ACD_FILEHUMAN.CLXH is
'车辆型号';

comment on column RA_ACD_FILEHUMAN.SYQ is
'所有权';

comment on column RA_ACD_FILEHUMAN.JDCSYR is
'机动车所有人';

comment on column RA_ACD_FILEHUMAN.CLSYXZ is
'车辆使用性质';

comment on column RA_ACD_FILEHUMAN.CLSBDH is
'车辆识别代号';

comment on column RA_ACD_FILEHUMAN.FDJH is
'发动机号';

comment on column RA_ACD_FILEHUMAN.JDCXH is
'机动车序号';

comment on column RA_ACD_FILEHUMAN.CSYS is
'车身颜色*';

comment on column RA_ACD_FILEHUMAN.SFCZ is
'是否超载';

comment on column RA_ACD_FILEHUMAN.HZL is
'核载量';

comment on column RA_ACD_FILEHUMAN.SZL is
'实载量';

comment on column RA_ACD_FILEHUMAN.CLLX is
'车辆类型';

comment on column RA_ACD_FILEHUMAN.JDCZT is
'机动车状态*';

comment on column RA_ACD_FILEHUMAN.HPZL1 is
'号牌种类1';

comment on column RA_ACD_FILEHUMAN.HPHM1 is
'号牌号码1';

comment on column RA_ACD_FILEHUMAN.CLLX1 is
'车辆类型1';

comment on column RA_ACD_FILEHUMAN.CLPP1 is
'车辆品牌1*';

comment on column RA_ACD_FILEHUMAN.CLXH1 is
'车辆型号1*';

comment on column RA_ACD_FILEHUMAN.HZL1 is
'核载量1(KG)';

comment on column RA_ACD_FILEHUMAN.SZL1 is
'实载量1(KG)';

comment on column RA_ACD_FILEHUMAN.CLHFZT is
'车辆合法状态';

comment on column RA_ACD_FILEHUMAN.CLAQZK is
'车辆安全状况';

comment on column RA_ACD_FILEHUMAN.GLKYLC is
'公路客运区间里程数';

comment on column RA_ACD_FILEHUMAN.GLKYJYFS is
'公路客运经营方式';

comment on column RA_ACD_FILEHUMAN.YZWXP is
'是否运载危险物品1-是2否';

comment on column RA_ACD_FILEHUMAN.WXPZL is
'运载危险物品种类';

comment on column RA_ACD_FILEHUMAN.YSXK is
'有无危险品运输许可证1-是2否';

comment on column RA_ACD_FILEHUMAN.WXPCYZG is
'危险品从业资格';

comment on column RA_ACD_FILEHUMAN.YZWXPHG is
'运载危险品事故后果';

comment on column RA_ACD_FILEHUMAN.CZCLBH is
'乘坐车辆人员编号';

comment on column RA_ACD_FILEHUMAN.YLZD1 is
'预留字段1 死亡人员初次录入时间';

comment on column RA_ACD_FILEHUMAN.YLZD2 is
'预留字段2';

comment on column RA_ACD_FILEHUMAN.YLZD3 is
'预留字段3';

comment on column RA_ACD_FILEHUMAN.YLZD4 is
'预留字段4';

comment on column RA_ACD_FILEHUMAN.YLZD5 is
'预留字段5';

comment on column RA_ACD_FILEHUMAN.TDYL1 is
'特大预留1';

comment on column RA_ACD_FILEHUMAN.TDYL2 is
'特大预留2';

comment on column RA_ACD_FILEHUMAN.TDYL3 is
'特大预留3';

comment on column RA_ACD_FILEHUMAN.TDYL4 is
'特大预留4';

comment on column RA_ACD_FILEHUMAN.TDYL5 is
'特大预留5';

comment on column RA_ACD_FILEHUMAN.TDYL6 is
'特大预留6';

comment on column RA_ACD_FILEHUMAN.TDYL7 is
'特大预留7';

comment on column RA_ACD_FILEHUMAN.TDYL8 is
'特大预留8';

comment on column RA_ACD_FILEHUMAN.TDYL9 is
'特大预留9';

comment on column RA_ACD_FILEHUMAN.TDYL10 is
'特大预留10';

comment on column RA_ACD_FILEHUMAN.CJCXBJ is
'车驾查询标记';

comment on column RA_ACD_FILEHUMAN.JYW is
'校验位';

comment on column RA_ACD_FILEHUMAN.FSJG is
'发送发证机关';

comment on column RA_ACD_FILEHUMAN.FFJG is
'分发发证机关';

comment on column RA_ACD_FILEHUMAN.CLSYXZY is
'车辆使用性质（从车管系统查询）';

comment on column RA_ACD_FILEHUMAN.YTSX is
'用途属性';

comment on column RA_ACD_FILEHUMAN.SFXCFW is
'校车服务（1：是2：否）';

comment on column RA_ACD_FILEHUMAN.XCJSZG is
'校车驾驶资格（1：是2：否）';

comment on column RA_ACD_FILEHUMAN.XDZT is
'吸毒状态';

comment on column RA_ACD_FILEHUMAN.XYXM is
'学员姓名';

comment on column RA_ACD_FILEHUMAN.XYSFZMHM is
'学员身份证明号码';

comment on column RA_ACD_FILEHUMAN.SFGXQC is
'是否共享汽车009105';

comment on column RA_ACD_FILEHUMAN.SGZZKQNWZ is
'事故中展开的安全气囊位置030181';

comment on column RA_ACD_FILEHUMAN.FYDPYW is
'检出毒品/管制药物030182';

comment on column RA_ACD_FILEHUMAN.HCSFZBFHZZ is
'货车是否装备侧后防护装置030183';

comment on column RA_ACD_FILEHUMAN.HCYWFGBS is
'货车有无反光标识、车辆尾部标志板030184';

comment on column RA_ACD_FILEHUMAN.SFDTJK is
'是否动态监控009105';

comment on column RA_ACD_FILEHUMAN.DTJKSFZCYX is
'动态监控是否正常运行030185';

comment on column RA_ACD_FILEHUMAN.DDZXCSFCB is
'电动自行车是否超标030186';

comment on column RA_ACD_FILEHUMAN.DDZXCSFYHP is
'电动自行车是否有号牌030187';

comment on column RA_ACD_FILEHUMAN.DDZXCJGTZ is
'电动自行车结构特征030188';

comment on column RA_ACD_FILEHUMAN.DDZXCYWBX is
'电动自行车有无保险030189';

comment on column RA_ACD_FILEHUMAN.RLZL is
'燃料种类010009';

comment on column RA_ACD_FILEHUMAN.XNYZL is
'新能源汽车种类 xtlb=01 dmlb=0022';

comment on column RA_ACD_FILEHUMAN.RA_SJZT is
'1：原始数据（未编辑过）；11：原始数据（已编辑过）；：编辑后的数据；';

comment on column RA_ACD_FILEHUMAN.RARYZD1 is
'预留字段1';

comment on column RA_ACD_FILEHUMAN.RARYZD2 is
'预留字段2';

comment on column RA_ACD_FILEHUMAN.RARYZD3 is
'预留字段3';

comment on column RA_ACD_FILEHUMAN.RARYZD4 is
'预留字段4';

comment on column RA_ACD_FILEHUMAN.RARYZD5 is
'预留字段5';

comment on column RA_ACD_FILEHUMAN.RARYZD6 is
'预留字段6';

comment on column RA_ACD_FILEHUMAN.RARYZD7 is
'预留字段7';

comment on column RA_ACD_FILEHUMAN.RARYZD8 is
'预留字段8';

comment on column RA_ACD_FILEHUMAN.RARYZD9 is
'预留字段9';

comment on column RA_ACD_FILEHUMAN.RARYZD10 is
'预留字段10';

comment on column RA_ACD_FILEHUMAN.RARYZD11 is
'预留字段11';

comment on column RA_ACD_FILEHUMAN.RARYZD12 is
'预留字段12';

comment on column RA_ACD_FILEHUMAN.RARYZD13 is
'预留字段13';

comment on column RA_ACD_FILEHUMAN.RARYZD14 is
'预留字段14';

comment on column RA_ACD_FILEHUMAN.RARYZD15 is
'预留字段15';

comment on column RA_ACD_FILEHUMAN.RARYZD16 is
'预留字段16';

comment on column RA_ACD_FILEHUMAN.RARYZD17 is
'预留字段17';

comment on column RA_ACD_FILEHUMAN.RARYZD18 is
'预留字段18';

comment on column RA_ACD_FILEHUMAN.RARYZD19 is
'预留字段19';

comment on column RA_ACD_FILEHUMAN.RARYZD20 is
'预留字段20';

comment on column RA_ACD_FILEHUMAN.RA_DSRLX is
'当事人类型';

comment on column RA_ACD_FILEHUMAN.CXMD is
'出行目的';

comment on column RA_ACD_FILEHUMAN.PZHCLXT is
'碰撞后车辆形态';

comment on column RA_ACD_FILEHUMAN.RYLXMS is
'人员类型描述';

comment on column RA_ACD_FILEHUMAN.ZSYYMS is
'致死原因描述';

/*==============================================================*/
/* Index: ASDGSADFADSF                                          */
/*==============================================================*/
create index ASDGSADFADSF on RA_ACD_FILEHUMAN (
   RA_PID ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: ASDGSADFF                                             */
/*==============================================================*/
create unique index ASDGSADFF on RA_ACD_FILEHUMAN (
   SGBH ASC,
   RYBH ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: CKPT_RECORD_DANGER_DRIVER                                  */
/*==============================================================*/
create table CKPT_RECORD_DANGER_DRIVER 
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   YHJSRSL              NUMBER               not null,
   TJRQ                 DATE                 not null,
   YQWHZSL              NUMBER               not null,
   YQWSYSL              NUMBER               not null,
   MFWXXSL              NUMBER               not null,
   ZKSL                 NUMBER               not null,
   ZXSL                 NUMBER               not null,
   constraint PK_CKPT_RECORD_DANGER_DRIVER primary key (ID)
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
     )
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

comment on table CKPT_RECORD_DANGER_DRIVER is
'统计隐患驾驶人数量表';

comment on column CKPT_RECORD_DANGER_DRIVER.ID is
'主键';

comment on column CKPT_RECORD_DANGER_DRIVER.YHJSRSL is
'隐患驾驶人数量';

comment on column CKPT_RECORD_DANGER_DRIVER.TJRQ is
'统计时间(每小时统计一次)';

comment on column CKPT_RECORD_DANGER_DRIVER.YQWHZSL is
'逾期未换证数量';

comment on column CKPT_RECORD_DANGER_DRIVER.YQWSYSL is
'逾期未审验数量';

comment on column CKPT_RECORD_DANGER_DRIVER.MFWXXSL is
'满分未学习数量';

comment on column CKPT_RECORD_DANGER_DRIVER.ZKSL is
'驾照暂扣数量';

comment on column CKPT_RECORD_DANGER_DRIVER.ZXSL is
'驾照注销数量';

/*==============================================================*/
/* Table: CKPT_RECORD_DANGER_ENTERPRISE                              */
/*==============================================================*/
create table CKPT_RECORD_DANGER_ENTERPRISE 
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   YHQYSL               NUMBER               not null,
   TJRQ                 DATE                 not null,
   KYQYSL               NUMBER               not null,
   HYQYSL               NUMBER               not null,
   WHPYSQYSL            NUMBER               not null,
   KDQYSL               NUMBER               default 0 not null,
   WMQYSL               NUMBER               default 0 not null,
   constraint PK_CKPT_RECORD_DANGER_ENTERPRISE primary key (ID)
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
     )
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

comment on table CKPT_RECORD_DANGER_ENTERPRISE is
'统计隐患企业数量表';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.ID is
'主键';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.YHQYSL is
'隐患企业数量';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.TJRQ is
'统计时间(每小时统计一次)';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.KYQYSL is
'客运企业数量';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.HYQYSL is
'货运企业数量';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.WHPYSQYSL is
'危化品运输企业数量';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.KDQYSL is
'快递企业数量';

comment on column CKPT_RECORD_DANGER_ENTERPRISE.WMQYSL is
'外卖企业数量';

/*==============================================================*/
/* Table: CKPT_RECORD_DANGER_VEHICLE                                 */
/*==============================================================*/
create table CKPT_RECORD_DANGER_VEHICLE 
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   YHCLSL               NUMBER               not null,
   TJRQ                 DATE                 not null,
   WJYSL                NUMBER               not null,
   WBFSL                NUMBER               not null,
   LKYWSL               NUMBER               not null,
   HYNSL                NUMBER               not null,
   XCNSL                NUMBER               not null,
   constraint PK_CKPT_RECORD_DANGER_VEHICLE primary key (ID)
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
     )
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

comment on table CKPT_RECORD_DANGER_VEHICLE is
'统计隐患车辆数量表';

comment on column CKPT_RECORD_DANGER_VEHICLE.ID is
'主键';

comment on column CKPT_RECORD_DANGER_VEHICLE.YHCLSL is
'隐患车辆数量';

comment on column CKPT_RECORD_DANGER_VEHICLE.TJRQ is
'统计时间(每小时统计一次)';

comment on column CKPT_RECORD_DANGER_VEHICLE.WJYSL is
'未检验数量';

comment on column CKPT_RECORD_DANGER_VEHICLE.WBFSL is
'未报废数量';

comment on column CKPT_RECORD_DANGER_VEHICLE.LKYWSL is
'两客一危3起以上违法未处理数量';

comment on column CKPT_RECORD_DANGER_VEHICLE.HYNSL is
'货运车辆10起以上违法未处理';

comment on column CKPT_RECORD_DANGER_VEHICLE.XCNSL is
'校车存在违法未处理';

/*==============================================================*/
/* Table: CKPT_RECORD_VEHICLE_NUM                                    */
/*==============================================================*/
create table CKPT_RECORD_VEHICLE_NUM 
(
   ID                   VARCHAR2(32)         default sys_guid() not null,
   RJCZS                NUMBER               not null,
   RJCZSWEEK            NUMBER               not null,
   GSDGJCZS             NUMBER               not null,
   GSDGJCZSWEEK         NUMBER               not null,
   GSGJCZS              NUMBER               not null,
   GSGJCZSWEEK          NUMBER               not null,
   ZDCLZS               NUMBER               not null,
   ZDCLZSWEEK           NUMBER               not null,
   TOTALDATE            DATE                 not null,
   CREATE_DATE          DATE                 default SYSDATE
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

comment on table CKPT_RECORD_VEHICLE_NUM is
'入境车统计';

comment on column CKPT_RECORD_VEHICLE_NUM.ID is
'主键';

comment on column CKPT_RECORD_VEHICLE_NUM.RJCZS is
'入境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.RJCZSWEEK is
'上周同比入境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.GSDGJCZS is
'国省道过境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.GSDGJCZSWEEK is
'上周同比国省道过境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.GSGJCZS is
'高速过境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.GSGJCZSWEEK is
'上周同比高速过境车总数';

comment on column CKPT_RECORD_VEHICLE_NUM.ZDCLZS is
'重点车辆总数';

comment on column CKPT_RECORD_VEHICLE_NUM.ZDCLZSWEEK is
'上周同比的重点车辆总数';

comment on column CKPT_RECORD_VEHICLE_NUM.TOTALDATE is
'统计时间';

comment on column CKPT_RECORD_VEHICLE_NUM.CREATE_DATE is
'创建时间';

/*==============================================================*/
/* Table: VDM_HIGH_RISK_DRIVER                                  */
/*==============================================================*/
create table VDM_HIGH_RISK_DRIVER 
(
   ID                   VARCHAR2(100)        not null,
   SFZMHM               VARCHAR2(50),
   SCORE                NUMBER(10)           default 0,
   CARTAG               VARCHAR2(10)         default '0',
   XM                   VARCHAR2(500),
   CSRQ                 DATE,
   XZQH                 VARCHAR2(20),
   CREATE_TIME          DATE,
   ACDTAG               VARCHAR2(10)         default '0',
   ILLTAG               VARCHAR2(10)         default '0',
   SCORE1               NUMBER(10)           default 0,
   SCORE2               NUMBER(10)           default 0,
   SCORE3               NUMBER(10)           default 0,
   SCORE4               NUMBER(10)           default 0,
   SCORE5               NUMBER(10)           default 0,
   SCORE6               NUMBER(10)           default 0,
   constraint PK_VDM_HIGH_RISK_DRIVER primary key (ID)
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
     )
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

comment on table VDM_HIGH_RISK_DRIVER is
'车驾管-高风险驾驶人';

comment on column VDM_HIGH_RISK_DRIVER.ID is
'id';

comment on column VDM_HIGH_RISK_DRIVER.SFZMHM is
'身份证明号码';

comment on column VDM_HIGH_RISK_DRIVER.SCORE is
'权重总评分';

comment on column VDM_HIGH_RISK_DRIVER.CARTAG is
'是否危化品车 0 否 1是';

comment on column VDM_HIGH_RISK_DRIVER.XM is
'姓名';

comment on column VDM_HIGH_RISK_DRIVER.CSRQ is
'出生日期';

comment on column VDM_HIGH_RISK_DRIVER.XZQH is
'行政辖区';

comment on column VDM_HIGH_RISK_DRIVER.CREATE_TIME is
'创建时间';

comment on column VDM_HIGH_RISK_DRIVER.ACDTAG is
'是否事故多发 0 否 1 是';

comment on column VDM_HIGH_RISK_DRIVER.ILLTAG is
'是否违法多发 0 否 1是';

comment on column VDM_HIGH_RISK_DRIVER.SCORE1 is
'年龄/驾龄 评分';

comment on column VDM_HIGH_RISK_DRIVER.SCORE2 is
'逾期未审验/未换证 评分';

comment on column VDM_HIGH_RISK_DRIVER.SCORE3 is
'扣满12分 评分';

comment on column VDM_HIGH_RISK_DRIVER.SCORE4 is
'驾证状态 评分';

comment on column VDM_HIGH_RISK_DRIVER.SCORE5 is
'重违法前科/多次违 评分';

comment on column VDM_HIGH_RISK_DRIVER.SCORE6 is
'事故前科 评分';

/*==============================================================*/
/* Index: INDEX_SFZMHM_DRIVER                                   */
/*==============================================================*/
create index INDEX_SFZMHM_DRIVER on VDM_HIGH_RISK_DRIVER (
   SFZMHM ASC,
   CREATE_TIME ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: VDM_HIGH_RISK_VEHICLE                                 */
/*==============================================================*/
create table VDM_HIGH_RISK_VEHICLE 
(
   ID                   VARCHAR2(100)        not null,
   HPHM                 VARCHAR2(50),
   HPZL                 VARCHAR2(10),
   SCORE                NUMBER(10)           default 0,
   CARTAG               VARCHAR2(10)         default '0',
   SYR                  VARCHAR2(500),
   ACDTAG               VARCHAR2(10)         default '0',
   XZQH                 VARCHAR2(20),
   CREATE_TIME          DATE,
   ILLTAG               VARCHAR2(10)         default '0',
   SCORE1               NUMBER(10)           default 0,
   SCORE2               NUMBER(10)           default 0,
   SCORE3               NUMBER(10)           default 0,
   constraint PK_VDM_HIGH_RISK_VEHICLE primary key (ID)
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
     )
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

comment on table VDM_HIGH_RISK_VEHICLE is
'车驾管-高风险车辆';

comment on column VDM_HIGH_RISK_VEHICLE.ID is
'id';

comment on column VDM_HIGH_RISK_VEHICLE.HPHM is
'号牌号码';

comment on column VDM_HIGH_RISK_VEHICLE.HPZL is
'号牌种类';

comment on column VDM_HIGH_RISK_VEHICLE.SCORE is
'总评分';

comment on column VDM_HIGH_RISK_VEHICLE.CARTAG is
'是否危化品车 0 否 1是';

comment on column VDM_HIGH_RISK_VEHICLE.SYR is
'所有人';

comment on column VDM_HIGH_RISK_VEHICLE.ACDTAG is
'是否事故多发 0 否 1 是';

comment on column VDM_HIGH_RISK_VEHICLE.XZQH is
'行政辖区';

comment on column VDM_HIGH_RISK_VEHICLE.CREATE_TIME is
'创建时间';

comment on column VDM_HIGH_RISK_VEHICLE.ILLTAG is
'是否违法多发 0 否 1是';

comment on column VDM_HIGH_RISK_VEHICLE.SCORE1 is
'逾期未审验/逾期未报废/违法未处理 评分';

comment on column VDM_HIGH_RISK_VEHICLE.SCORE2 is
'车辆前科 评分';

comment on column VDM_HIGH_RISK_VEHICLE.SCORE3 is
'风险驾驶人 评分';

/*==============================================================*/
/* Index: INDEX_HPHM_HPZL_VEHICLE                               */
/*==============================================================*/
create index INDEX_HPHM_HPZL_VEHICLE on VDM_HIGH_RISK_VEHICLE (
   HPHM ASC,
   HPZL ASC,
   CREATE_TIME ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: VDM_ILL_ACD_NUM                                       */
/*==============================================================*/
create table VDM_ILL_ACD_NUM 
(
   ID                   VARCHAR2(32)         not null,
   HPHM                 VARCHAR2(20),
   HPZL                 VARCHAR2(10),
   SFZMHM               VARCHAR2(50),
   NUM                  NUMBER(10),
   TYPE                 VARCHAR2(10),
   CAR_TYPE             VARCHAR2(10),
   CREATE_TIME          DATE,
   XZQH                 VARCHAR2(20),
   SYXZ                 VARCHAR2(10),
   SYR                  VARCHAR2(500),
   XM                   VARCHAR2(500),
   CSRQ                 DATE,
   SGLX                 VARCHAR2(10),
   CCLZRQ               DATE,
   constraint PK_VDM_ILL_ACD_NUM primary key (ID)
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
     )
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

comment on table VDM_ILL_ACD_NUM is
'车驾管-违法及事故次数统计';

comment on column VDM_ILL_ACD_NUM.ID is
'id';

comment on column VDM_ILL_ACD_NUM.HPHM is
'号牌号码';

comment on column VDM_ILL_ACD_NUM.HPZL is
'号牌种类';

comment on column VDM_ILL_ACD_NUM.SFZMHM is
'身份证明号码';

comment on column VDM_ILL_ACD_NUM.NUM is
'次数';

comment on column VDM_ILL_ACD_NUM.TYPE is
'统计类型 1->违法前科 2->违法多发 3-> 事故前科';

comment on column VDM_ILL_ACD_NUM.CAR_TYPE is
'车辆类型 1-> 重点车辆 2->一般车辆';

comment on column VDM_ILL_ACD_NUM.CREATE_TIME is
'创建时间';

comment on column VDM_ILL_ACD_NUM.XZQH is
'行政区号';

comment on column VDM_ILL_ACD_NUM.SYXZ is
'使用性质';

comment on column VDM_ILL_ACD_NUM.SYR is
'机动车所有人';

comment on column VDM_ILL_ACD_NUM.XM is
'驾驶人姓名';

comment on column VDM_ILL_ACD_NUM.CSRQ is
'出生日期';

comment on column VDM_ILL_ACD_NUM.SGLX is
'事故类型 1一般 2是简易 ';

comment on column VDM_ILL_ACD_NUM.CCLZRQ is
'初次领证日期';

/*==============================================================*/
/* Index: INDEX_HPHM_HPZL_VDM                                   */
/*==============================================================*/
create index INDEX_HPHM_HPZL_VDM on VDM_ILL_ACD_NUM (
   HPHM ASC,
   HPZL ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Index: INDEX_SFZMHM_VDM                                      */
/*==============================================================*/
create index INDEX_SFZMHM_VDM on VDM_ILL_ACD_NUM (
   SFZMHM ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: VDM_PROBLEM_VEHICLE                                   */
/*==============================================================*/
create table VDM_PROBLEM_VEHICLE 
(
   ID                   VARCHAR2(100)        not null,
   HPHM                 VARCHAR2(50),
   HPZL                 VARCHAR2(10),
   ACTIVE_NUM           NUMBER(8)            default 0,
   ZT                   VARCHAR2(10),
   XZQH                 VARCHAR2(20),
   CREATE_TIME          DATE,
   constraint PK_VDM_PROBLEM_VEHICLE primary key (ID)
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
     )
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

comment on table VDM_PROBLEM_VEHICLE is
'车驾管-问题车辆';

comment on column VDM_PROBLEM_VEHICLE.ID is
'id';

comment on column VDM_PROBLEM_VEHICLE.HPHM is
'号牌号码';

comment on column VDM_PROBLEM_VEHICLE.HPZL is
'号牌种类';

comment on column VDM_PROBLEM_VEHICLE.ACTIVE_NUM is
'一天的活跃车辆数';

comment on column VDM_PROBLEM_VEHICLE.ZT is
'车辆类型  G 违法未处理  M 逾期未报废 Q 逾期未检验';

comment on column VDM_PROBLEM_VEHICLE.XZQH is
'行政辖区';

comment on column VDM_PROBLEM_VEHICLE.CREATE_TIME is
'创建时间';

/*==============================================================*/
/* Index: PK_VDM_PROBLEM_HPHM_HPZL                              */
/*==============================================================*/
create index PK_VDM_PROBLEM_HPHM_HPZL on VDM_PROBLEM_VEHICLE (
   HPHM ASC,
   HPZL ASC,
   CREATE_TIME ASC
)
tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

/*==============================================================*/
/* Table: VDM_SCORE_DIMENSION                                   */
/*==============================================================*/
create table VDM_SCORE_DIMENSION 
(
   ID                   VARCHAR2(100)        not null,
   HPHM                 VARCHAR2(50),
   HPZL                 VARCHAR2(10),
   SFZMHM               VARCHAR2(50),
   SCORE                NUMBER(10)           default 0,
   TYPE                 VARCHAR2(10),
   XZQH                 VARCHAR2(20),
   SYXZ                 VARCHAR2(10),
   SYR                  VARCHAR2(500),
   XM                   VARCHAR2(500),
   CSRQ                 DATE,
   CREATE_TIME          DATE,
   constraint PK_VDM_SCORE_DIMENSION primary key (ID)
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
     )
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

comment on table VDM_SCORE_DIMENSION is
'车驾管-各个维度的评分';

comment on column VDM_SCORE_DIMENSION.ID is
'id';

comment on column VDM_SCORE_DIMENSION.HPHM is
'号牌号码';

comment on column VDM_SCORE_DIMENSION.HPZL is
'号牌种类';

comment on column VDM_SCORE_DIMENSION.SFZMHM is
'身份证明号码';

comment on column VDM_SCORE_DIMENSION.SCORE is
'评分';

comment on column VDM_SCORE_DIMENSION.TYPE is
'统计类型1-> 驾驶人期未审验/未换证 2->驾驶人扣满12分 3->驾驶人驾证状态 4->机动车逾期未审验/逾期未报废/违法未处理';

comment on column VDM_SCORE_DIMENSION.XZQH is
'行政区号';

comment on column VDM_SCORE_DIMENSION.SYXZ is
'使用性质';

comment on column VDM_SCORE_DIMENSION.SYR is
'机动车所有人';

comment on column VDM_SCORE_DIMENSION.XM is
'驾驶人姓名';

comment on column VDM_SCORE_DIMENSION.CSRQ is
'出生日期';

comment on column VDM_SCORE_DIMENSION.CREATE_TIME is
'创建时间';

/*==============================================================*/
/* Table: CKPT_VEH_DRV_SATISFACTION                                  */
/*==============================================================*/
create table CKPT_VEH_DRV_SATISFACTION 
(
   LSH                  VARCHAR2(18)         not null,
   JBR                  VARCHAR2(10),
   BLCK                 VARCHAR2(10),
   BLBM                 VARCHAR2(500),
   PJR                  VARCHAR2(500),
   PJSJ                 DATE,
   MYD                  VARCHAR2(20),
   ZLLX                 VARCHAR2(200),
   BJSJ                 DATE,
   KSSJ                 DATE,
   PJRSJ                VARCHAR2(15),
   YWXQ                 VARCHAR2(100),
   HFZT                 VARCHAR2(100),
   constraint PRIMARY_LSH primary key (LSH)
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
     )
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

comment on column CKPT_VEH_DRV_SATISFACTION.LSH is
'流水号';

comment on column CKPT_VEH_DRV_SATISFACTION.JBR is
'经办人';

comment on column CKPT_VEH_DRV_SATISFACTION.BLCK is
'办理窗口';

comment on column CKPT_VEH_DRV_SATISFACTION.BLBM is
'办理部门';

comment on column CKPT_VEH_DRV_SATISFACTION.PJR is
'评价人';

comment on column CKPT_VEH_DRV_SATISFACTION.PJSJ is
'评价时间';

comment on column CKPT_VEH_DRV_SATISFACTION.MYD is
'-2 :非常不满意 -1:不满意 0:基本满意 1满意 2: 非常满意';

comment on column CKPT_VEH_DRV_SATISFACTION.ZLLX is
'1 驾驶人 2: 机动车';

comment on column CKPT_VEH_DRV_SATISFACTION.BJSJ is
'办结时间';

comment on column CKPT_VEH_DRV_SATISFACTION.KSSJ is
'开始时间';

comment on column CKPT_VEH_DRV_SATISFACTION.PJRSJ is
'评价人手机';

comment on column CKPT_VEH_DRV_SATISFACTION.YWXQ is
'1-补证换证
,2-补换牌证合格标志,3';

comment on column CKPT_VEH_DRV_SATISFACTION.HFZT is
'1-已回复 , 2-未回复';













-----------------------------------------江门-----------------------
--#--# 新增
--#--#--# FACE_LABEL_CONFIG_MAIN
-- Create table
create table FACE_LABEL_CONFIG_MAIN
(
  label_id          VARCHAR2(32) not null,
  label_name        NVARCHAR2(128) not null,
  visible           CHAR(1),
  strategy          VARCHAR2(100),
  reflect_interface VARCHAR2(128),
  avaiable          VARCHAR2(1),
  label_order       NUMBER,
  is_focus          CHAR(1) default 0,
  case_level        VARCHAR2(1),
  add_type          VARCHAR2(1)
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
comment on column FACE_LABEL_CONFIG_MAIN.label_id
  is 'label_id';
comment on column FACE_LABEL_CONFIG_MAIN.label_name
  is '标签名称';
comment on column FACE_LABEL_CONFIG_MAIN.visible
  is '0：否；1：是';
comment on column FACE_LABEL_CONFIG_MAIN.strategy
  is '1：关键字；2：正则提取；3：算法；4：第三方同步';
comment on column FACE_LABEL_CONFIG_MAIN.reflect_interface
  is '生成策略取值为3时，调用的接口名';
comment on column FACE_LABEL_CONFIG_MAIN.avaiable
  is '0：否；1：是';
comment on column FACE_LABEL_CONFIG_MAIN.label_order
  is '标签顺序';
comment on column FACE_LABEL_CONFIG_MAIN.is_focus
  is '是否重点关注，0否 1是';
comment on column FACE_LABEL_CONFIG_MAIN.case_level
  is '警情级别';
comment on column FACE_LABEL_CONFIG_MAIN.add_type
  is '0-手动，1页面，2区域同步';
-- Create/Recreate indexes 
create unique index UNIQUE_LABEL_NAME_IDX on FACE_LABEL_CONFIG_MAIN (LABEL_NAME, LABEL_ID)
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


--#--#--# FACE_LABEL_CONFIG_SECONDARY

--```sql
create table FACE_LABEL_CONFIG_SECONDARY
(
  LABEL_ID          VARCHAR2(32) not null,
  LABEL_NAME        NVARCHAR2(128) not null,
  VISIBLE           CHAR(1),
  STRATEGY          VARCHAR2(100),
  REFLECT_INTERFACE VARCHAR2(128),
  AVAIABLE          VARCHAR2(1),
  LABEL_ORDER       NUMBER,
  is_focus          CHAR(1) default '0',
  add_type          VARCHAR2(1)
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
-- Add/modify columns 
alter table face_label_config_secondary add case_level VARCHAR2(1);
-- Add comments to the columns 
comment on column FACE_LABEL_CONFIG_MAIN.case_level
  is '警情级别';
-- Add comments to the columns 
comment on column FACE_LABEL_CONFIG_SECONDARY.label_id
  is 'id 对应类型的id';
comment on column FACE_LABEL_CONFIG_SECONDARY.label_name
  is '名称 对应类型的名称';
comment on column FACE_LABEL_CONFIG_SECONDARY.strategy
  is '5 poi点 6 重点区域';
comment on column FACE_LABEL_CONFIG_SECONDARY.reflect_interface
  is '对应的反射类';
comment on column FACE_LABEL_CONFIG_SECONDARY.is_focus
  is '重点关注，1是 0否';
comment on column FACE_LABEL_CONFIG_SECONDARY.case_level
  is '警情级别';
comment on column FACE_LABEL_CONFIG_SECONDARY.add_type
  is '0-手动，1页面，2区域同步';

--```

--#--#--# FACE_AREA_VIDEO

--```sql
-- Create table
create table face_area_video
(
  area_video_id varchar2(32) default sys_guid() not null,
  area_id       varchar2(32) not null,
  deviceid      nvarchar2(18),
  is_select     varchar2(1)
)
;
-- Add comments to the table 
comment on table face_area_video
  is '区域视频设备关联表';
-- Add comments to the columns 
comment on column face_area_video.area_video_id
  is 'uuid';
comment on column face_area_video.area_id
  is '区域编号';
comment on column face_area_video.deviceid
  is '设备id';
comment on column face_area_video.is_select
  is '是否选中';
-- Create/Recreate primary, unique and foreign key constraints 
alter table face_area_video
  add constraint area_video_pk primary key (AREA_VIDEO_ID);

--```

--#--#--# FACE_WEATHER_WARN

--```sql
--后期功能补充脚本
--天气预警列表功能
-- Create table
create table FACE_WEATHER_WARN
(
  uuid        VARCHAR2(32) default sys_guid() not null,
  id          VARCHAR2(32) not null,
  areaid      VARCHAR2(32),
  headline    VARCHAR2(300),
  effective   DATE,
  description VARCHAR2(3000),
  longitude   NUMBER(13,6),
  latitude    NUMBER(13,6),
  title       VARCHAR2(100),
  iconname    VARCHAR2(20),
  status      VARCHAR2(2),
  nlevel      VARCHAR2(20),
  type        VARCHAR2(10),
  createtime  DATE default sysdate
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
-- Add comments to the table 
comment on table FACE_WEATHER_WARN
  is '天气预警表';
-- Add comments to the columns 
comment on column FACE_WEATHER_WARN.id
  is '主键';
comment on column FACE_WEATHER_WARN.areaid
  is '所属辖区';
comment on column FACE_WEATHER_WARN.headline
  is '摘要';
comment on column FACE_WEATHER_WARN.effective
  is '预警时间';
comment on column FACE_WEATHER_WARN.description
  is '详细描述';
comment on column FACE_WEATHER_WARN.longitude
  is '经度';
comment on column FACE_WEATHER_WARN.latitude
  is '维度';
comment on column FACE_WEATHER_WARN.title
  is '标题';
comment on column FACE_WEATHER_WARN.iconname
  is '图标名称';
comment on column FACE_WEATHER_WARN.status
  is '状态（0未解除，1已解除）';
comment on column FACE_WEATHER_WARN.nlevel
  is '预警级别';
comment on column FACE_WEATHER_WARN.type
  is '类型';
comment on column FACE_WEATHER_WARN.createtime
  is '创建时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_WEATHER_WARN
  add constraint FACE_WEATHER_WARN_ID primary key (ID)
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

--```

--#--#--# FACE_DEVICE_INCIDENT_LOG

--```sql
--报修服务
-- Create table
create table FACE_DEVICE_INCIDENT_LOG
(
  id         VARCHAR2(32) not null,
  deviceid   NVARCHAR2(18),
  createtime DATE
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
comment on table FACE_DEVICE_INCIDENT_LOG
  is '设备保修记录';
-- Add comments to the columns 
comment on column FACE_DEVICE_INCIDENT_LOG.id
  is 'UUID，主键';
comment on column FACE_DEVICE_INCIDENT_LOG.deviceid
  is '设备编号（12位部门编号+2位设备类型+4设备号，如市南大队电子警察设备：370200000000019402）';
comment on column FACE_DEVICE_INCIDENT_LOG.createtime
  is '保修时间';
  -- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_DEVICE_INCIDENT_LOG
  add constraint FACE_DEVICE_INCIDENT_LOG_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;
--```

--#--#--# FACE_MAPLAYER_FILTER_FILED

--```sql
 -- Create table 
create table FACE_MAPLAYER_FILTER_FILED
(
  id           VARCHAR2(32) default sys_guid() not null,
  maplayer_id  VARCHAR2(32) not null,
  filter_filed NVARCHAR2(50),
  filter_value NVARCHAR2(50),
  filter_name  NVARCHAR2(50),
  show_order   VARCHAR2(3),
  OPEN_FLAG    VARCHAR2(2)
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
comment on table FACE_MAPLAYER_FILTER_FILED
  is '图层过滤字段表';
-- Add comments to the columns 
comment on column FACE_MAPLAYER_FILTER_FILED.id
  is '主键id';
comment on column FACE_MAPLAYER_FILTER_FILED.maplayer_id
  is '图层id';
comment on column FACE_MAPLAYER_FILTER_FILED.filter_filed
  is '过滤字段 例如:info_stage';
comment on column FACE_MAPLAYER_FILTER_FILED.filter_value
  is '过滤字段的值,多个值的情况，以逗号分隔 例如:03,04';
comment on column FACE_MAPLAYER_FILTER_FILED.filter_name
  is '过滤字段的描述,页面显示用 例如:未办结';
comment on column FACE_MAPLAYER_FILTER_FILED.show_order
  is '过滤字段的显示顺序';
comment on column FACE_MAPLAYER_FILTER_FILED.OPEN_FLAG
  is '默认打开的标志位 0-默认打开 1-默认不打开';
--```



--#--#--# FACE_POSITION_INFO

--```sql
create table FACE_POSITION_INFO
(
  id         VARCHAR2(32) not null,
  deviceid   NVARCHAR2(600) not null,
  presetid   NVARCHAR2(600),
  createtime DATE default sysdate not null
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
comment on table FACE_POSITION_INFO
  is '岗位图层信息表';
-- Add comments to the columns 
comment on column FACE_POSITION_INFO.id
  is '岗位id，主键';
comment on column FACE_POSITION_INFO.deviceid
  is '视频设备编号 多个视频设备编号的情况用,分隔';
comment on column FACE_POSITION_INFO.presetid
  is '预置位编号 每个视频设备匹配一个预置位编号，多个视频设备编号的情况用,分隔。对于不存在预置位编号的视频设备，设置为空。例如有5个视频设备的情况，其中第二个和第三个没有预置位编号，保存为1,,,4,5';
comment on column FACE_POSITION_INFO.createtime
  is '插入时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_POSITION_INFO
  add constraint FACE_POSITION_INFO_PK primary key (ID)
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

--```

--#--#--# FACE_QUESTIONNAIRE

--```sql
 
--调查问卷业务
-- Create table
create table FACE_QUESTIONNAIRE
(
  id               VARCHAR2(32) not null,
  question_code    VARCHAR2(32) not null,
  question_content NVARCHAR2(200) not null
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
comment on table FACE_QUESTIONNAIRE
  is '调查问卷表';
-- Add comments to the columns 
comment on column FACE_QUESTIONNAIRE.id
  is '主键';
comment on column FACE_QUESTIONNAIRE.question_code
  is '问题code';
comment on column FACE_QUESTIONNAIRE.question_content
  is '问题文字说明';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_QUESTIONNAIRE
  add constraint FACE_QUESTIONNAIRE_PK primary key (ID)
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

--```

--#--#--# FACE_QUESTIONNAIRE_LOG

--```sql
-- Create table
create table FACE_QUESTIONNAIRE_LOG
(
  id             VARCHAR2(32) not null,
  project_name   NVARCHAR2(60),
  result_comment NVARCHAR2(600),
  create_time    DATE default sysdate
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
comment on table FACE_QUESTIONNAIRE_LOG
  is '调查问卷日志表';
-- Add comments to the columns 
comment on column FACE_QUESTIONNAIRE_LOG.id
  is '主键';
comment on column FACE_QUESTIONNAIRE_LOG.project_name
  is '市场项目名称';
comment on column FACE_QUESTIONNAIRE_LOG.result_comment
  is '调查结论';
comment on column FACE_QUESTIONNAIRE_LOG.create_time
  is '调查时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_QUESTIONNAIRE_LOG
  add constraint FACE_QUESTIONNAIRE_LOG_PK primary key (ID)
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

  
--```

--#--#--# FACE_QUESTIONNAIRE_RESULT

--```sql
  -- Create table
create table FACE_QUESTIONNAIRE_RESULT
(
  id              VARCHAR2(32) not null,
  log_id          VARCHAR2(32),
  question_code   VARCHAR2(32),
  question_result VARCHAR2(1),
  create_time     DATE default sysdate
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
comment on table FACE_QUESTIONNAIRE_RESULT
  is '调查问卷结果表';
-- Add comments to the columns 
comment on column FACE_QUESTIONNAIRE_RESULT.id
  is '主键';
comment on column FACE_QUESTIONNAIRE_RESULT.log_id
  is '调查问卷日志关联id';
comment on column FACE_QUESTIONNAIRE_RESULT.question_code
  is '问题code';
comment on column FACE_QUESTIONNAIRE_RESULT.question_result
  is '是否满足 0-否 1-是';
comment on column FACE_QUESTIONNAIRE_RESULT.create_time
  is '创建时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_QUESTIONNAIRE_RESULT
  add constraint FACE_QUESTIONNAIRE_RESULT_PK primary key (ID)
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

  
--```

--#--#--# FACE_FUNCTION

--```sql
-- Create table
create table FACE_FUNCTION
(
  function_id   VARCHAR2(32) not null,
  function_name NVARCHAR2(32) not null,
  is_active     VARCHAR2(1) default 1 not null
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
comment on table FACE_FUNCTION
  is '功能点表';
-- Add comments to the columns 
comment on column FACE_FUNCTION.function_id
  is '功能id';
comment on column FACE_FUNCTION.function_name
  is '功能名称';
comment on column FACE_FUNCTION.is_active
  is '是否启动 0-不启用 1-启用';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_FUNCTION
  add constraint FACE_FUNCTION_PK primary key (FUNCTION_ID)
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

--```

--#--#--# FACE_FUNCTION_QUESTION_RELATION

--```sql
  -- Create table
create table FACE_FUNCTION_QUESTION_RELATION
(
  id            VARCHAR2(32) not null,
  function_id   VARCHAR2(32) not null,
  question_code VARCHAR2(32) not null
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
comment on table FACE_FUNCTION_QUESTION_RELATION
  is '问题功能点关系表';
-- Add comments to the columns 
comment on column FACE_FUNCTION_QUESTION_RELATION.id
  is '主键';
comment on column FACE_FUNCTION_QUESTION_RELATION.function_id
  is '功能id';
comment on column FACE_FUNCTION_QUESTION_RELATION.question_code
  is '问题id';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_FUNCTION_QUESTION_RELATION
  add constraint FACE_FUNCTION_QUESTION_RELATION_PK primary key (ID)
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

--```

--#--#--# FACE_TABLE2TABLE_CONFIG

--```sql
--设备状态同步
-- Create table
-- Create table
create table FACE_TABLE2TABLE_CONFIG
(
  id           VARCHAR2(32) default sys_guid() not null,
  source_db    VARCHAR2(50) not null,
  target_db    VARCHAR2(50) not null,
  source_table VARCHAR2(50) not null,
  target_table VARCHAR2(50) not null,
  source_field VARCHAR2(50) not null,
  target_field VARCHAR2(50) not null,
  source_key   VARCHAR2(50) not null,
  target_key   VARCHAR2(50) not null,
  remark       VARCHAR2(50),
  is_asyn      VARCHAR2(1) default 0
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
comment on table FACE_TABLE2TABLE_CONFIG
  is 'oracle数据同步配置表';
-- Add comments to the columns 
comment on column FACE_TABLE2TABLE_CONFIG.id
  is '主键';
comment on column FACE_TABLE2TABLE_CONFIG.source_db
  is '源数据库';
comment on column FACE_TABLE2TABLE_CONFIG.target_db
  is '目标数据库';
comment on column FACE_TABLE2TABLE_CONFIG.source_table
  is '源表';
comment on column FACE_TABLE2TABLE_CONFIG.target_table
  is '目标表';
comment on column FACE_TABLE2TABLE_CONFIG.source_field
  is '源字段。多个的情况以逗号分隔';
comment on column FACE_TABLE2TABLE_CONFIG.target_field
  is '目标字段。与源字段一一对应，多个的情况以逗号分隔';
comment on column FACE_TABLE2TABLE_CONFIG.source_key
  is '源表主键。多个的情况以逗号分隔';
comment on column FACE_TABLE2TABLE_CONFIG.target_key
  is '目标表主键。与源表主键一一对应，多个的情况以逗号分隔';
comment on column FACE_TABLE2TABLE_CONFIG.remark
  is '备注说明';
comment on column FACE_TABLE2TABLE_CONFIG.is_asyn
  is '是否同步';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_TABLE2TABLE_CONFIG
  add constraint FACE_TABLE2TABLE_CONFIG_PK primary key (ID)
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

  
--```

--#--#--# FACE_REPORT

--```sql
-- Create table
create table FACE_REPORT
(
  REPORT_ID            NVARCHAR2(32) not null,
  INFO_ID              NVARCHAR2(32),
  REPORT_CODE          NVARCHAR2(16),
  REPORT_TIME          DATE,
  REPORT_DEPTID        NVARCHAR2(12),
  INFO_TYPE            NVARCHAR2(10),
  RECEIVE_TIME         DATE,
  RECEIVE_BRIGADE_USER NVARCHAR2(6),
  APPROVE_USER         NVARCHAR2(6),
  REPORT_USER          NVARCHAR2(6),
  RECEIVE_DETACH_USER  NVARCHAR2(6),
  DEATH_NUM            NVARCHAR2(2),
  INJURED_NUM          NVARCHAR2(2),
  REPORT_CONTENT       CLOB,
  EDITOR               NVARCHAR2(6),
  HANDLE_STATE         NVARCHAR2(4),
  HANDLE_CONTENT       NVARCHAR2(600),
  REPORT_STATE         NVARCHAR2(2) default 1,
  CREATE_TIME          DATE,
  CHECKDRAFT           NVARCHAR2(6),
  SIGN                 NVARCHAR2(6)
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
comment on table FACE_REPORT
  is '警情上报';
-- Add comments to the columns 
comment on column FACE_REPORT.INFO_ID
  is '警情id';
comment on column FACE_REPORT.REPORT_CODE
  is '上报编号';
comment on column FACE_REPORT.REPORT_TIME
  is '上报时间';
comment on column FACE_REPORT.REPORT_DEPTID
  is '上报大队';
comment on column FACE_REPORT.INFO_TYPE
  is '事故类型输入汉字';
comment on column FACE_REPORT.RECEIVE_TIME
  is '接报时间';
comment on column FACE_REPORT.RECEIVE_BRIGADE_USER
  is '接报人员';
comment on column FACE_REPORT.APPROVE_USER
  is '大队信息上报批准人';
comment on column FACE_REPORT.REPORT_USER
  is '信息上报';
comment on column FACE_REPORT.RECEIVE_DETACH_USER
  is '支队接报人员';
comment on column FACE_REPORT.DEATH_NUM
  is '死亡人数';
comment on column FACE_REPORT.INJURED_NUM
  is '受伤人数';
comment on column FACE_REPORT.REPORT_CONTENT
  is '上报内容';
comment on column FACE_REPORT.EDITOR
  is '编辑';
comment on column FACE_REPORT.HANDLE_STATE
  is '支队处理结果（枚举） 1 报市局，2，报总队';
comment on column FACE_REPORT.HANDLE_CONTENT
  is '支队处理结果内容';
comment on column FACE_REPORT.REPORT_STATE
  is '支队处理状态  1待接收 2 待处理 3已处理';
comment on column FACE_REPORT.CREATE_TIME
  is '表格生成时间';
comment on column FACE_REPORT.CHECKDRAFT
  is '核稿';
comment on column FACE_REPORT.SIGN
  is '签发';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_REPORT
  add constraint PK_ID primary key (REPORT_ID)
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

--```

--#--#--# FACE_TOOLS_CONFIG

--```sql
-- Create table
create table FACE_TOOLS_CONFIG
(
  id VARCHAR2(32) sys_guid(),
  component_id    NVARCHAR2(30),
  component_name  NVARCHAR2(12),
  user_id         NVARCHAR2(6),
  display         NVARCHAR2(1),
  display_order   NVARCHAR2(1),
  component_props VARCHAR2(4000),
  is_common CHAR(1) default '0'
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
comment on table FACE_TOOLS_CONFIG
  is '常用工具配置表';
-- Add comments to the columns 
comment on column FACE_TOOLS_CONFIG.component_id
  is '组件id';
comment on column FACE_TOOLS_CONFIG.component_name
  is '组件名称';
comment on column FACE_TOOLS_CONFIG.user_id
  is '关联用户';
comment on column FACE_TOOLS_CONFIG.display
  is '0显示1隐藏';
comment on column FACE_TOOLS_CONFIG.display_order
  is '顺序';
comment on column FACE_TOOLS_CONFIG.component_props
  is '组件默认要传的参数，没有为空，写为json格式最后不要有逗号';

comment on column FACE_TOOLS_CONFIG.is_common
  is '0不常用 1常用';

comment on column FACE_TOOLS_CONFIG.id
  is 'id';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_TOOLS_CONFIG
  add constraint PK_FACE_TOOL_COMMON primary key (ID)
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
--```

--#--#--# FACE_TOOLS_CONTACT

--```sql
-- Create table
create table FACE_TOOLS_CONTACT
(
  department_id   VARCHAR2(12),
  department_name VARCHAR2(12),
  phone_num       VARCHAR2(13),
  sort            NVARCHAR2(1) default 0
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
comment on column FACE_TOOLS_CONTACT.department_id
  is '部门ID';
comment on column FACE_TOOLS_CONTACT.department_name
  is '部门名称';
comment on column FACE_TOOLS_CONTACT.phone_num
  is '电话号码';
comment on column FACE_TOOLS_CONTACT.sort
  is '排序';
  
--```

--#--# ------------------------------------------

--#--#--# PIS_OPERDETAIL_LOG

--```sql
-- Create table
create table PIS_OPERDETAIL_LOG
(
  ID          VARCHAR2(32),
  MODULE      VARCHAR2(2),
  CASE_ID     VARCHAR2(32),
  RELATIVE_ID VARCHAR2(32),
  START_TIME  DATE,
  END_TIME    DATE,
  RANGE       VARCHAR2(5),
  CONTENT     CLOB,
  TYPE        VARCHAR2(2),
  CREATE_TIME DATE
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
comment on table PIS_OPERDETAIL_LOG
  is '警情详细操作日志';
-- Add comments to the columns 
comment on column PIS_OPERDETAIL_LOG.ID
  is 'id';
comment on column PIS_OPERDETAIL_LOG.MODULE
  is '所属模块（1警情流转）';
comment on column PIS_OPERDETAIL_LOG.CASE_ID
  is '警情id 可为空';
comment on column PIS_OPERDETAIL_LOG.RELATIVE_ID
  is '相关的id （指令，警情补充，视频，诱导，信号）';
comment on column PIS_OPERDETAIL_LOG.START_TIME
  is '相关设备开始时间';
comment on column PIS_OPERDETAIL_LOG.END_TIME
  is '相关设备结束时间';
comment on column PIS_OPERDETAIL_LOG.RANGE
  is '警情的包围圈的范围';
comment on column PIS_OPERDETAIL_LOG.CONTENT
  is '内容';
comment on column PIS_OPERDETAIL_LOG.TYPE
  is '类型（指令，警情补充，视频，诱导，信号）';
comment on column PIS_OPERDETAIL_LOG.CREATE_TIME
  is '入库时间';

  
--```

--#--#--# PIS_INFODETAIL_SHOWCOLUMN

--```sql
 -- Create table
create table PIS_INFODETAIL_SHOWCOLUMN
(
  COLUMN_VALUE NVARCHAR2(200),
  COLUMN_NAME  NVARCHAR2(200),
  SYSCODE      NVARCHAR2(200),
  REMARK       NVARCHAR2(200),
  TYPE         NVARCHAR2(2)
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
comment on table PIS_INFODETAIL_SHOWCOLUMN
  is '警情详情显示的字段';
-- Add comments to the columns 
comment on column PIS_INFODETAIL_SHOWCOLUMN.COLUMN_VALUE
  is '对应pis_info_base中的列名称';
comment on column PIS_INFODETAIL_SHOWCOLUMN.COLUMN_NAME
  is '字段在前台显示的名称';
comment on column PIS_INFODETAIL_SHOWCOLUMN.SYSCODE
  is '显示的系统，逗号间隔';
comment on column PIS_INFODETAIL_SHOWCOLUMN.REMARK
  is '备注';
comment on column PIS_INFODETAIL_SHOWCOLUMN.TYPE
  is '必填 01 必填';


--```



--#--#--# PIS_VMS_EXECUTE

--```sql
-- Create table
create table PIS_VMS_EXECUTE
(
  ID                 NVARCHAR2(32),
  DEVICE_ID          NVARCHAR2(32),
  RELEASE_TIME_START DATE,
  RELEASE_TIME_END   DATE,
  ELEMENT_ID         NVARCHAR2(32),
  PLAN_ID            NVARCHAR2(32),
  ORDER_ID           NVARCHAR2(32),
  CASE_ID            NVARCHAR2(32),
  CREATE_TIME        DATE default SYSDATE,
  WARN_TIME          NVARCHAR2(6)
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
comment on table PIS_VMS_EXECUTE
  is '指令发布诱导表';
-- Add comments to the columns 
comment on column PIS_VMS_EXECUTE.ID
  is 'uuid';
comment on column PIS_VMS_EXECUTE.DEVICE_ID
  is '设备id';
comment on column PIS_VMS_EXECUTE.RELEASE_TIME_START
  is '开始时间';
comment on column PIS_VMS_EXECUTE.RELEASE_TIME_END
  is '结束时间';
comment on column PIS_VMS_EXECUTE.ELEMENT_ID
  is '节目id';
comment on column PIS_VMS_EXECUTE.PLAN_ID
  is '计划id';
comment on column PIS_VMS_EXECUTE.ORDER_ID
  is '指令id 暂时没有';
comment on column PIS_VMS_EXECUTE.CASE_ID
  is '警情id';
comment on column PIS_VMS_EXECUTE.CREATE_TIME
  is '创建时间';
comment on column PIS_VMS_EXECUTE.WARN_TIME
  is '提醒时间';


--```



--#--#--# PIS_POLICECASE_FOCUS

--```sql
-- Create table
create table PIS_POLICECASE_FOCUS
(
  id          VARCHAR2(32),
  case_id     VARCHAR2(32),
  user_id     VARCHAR2(32),
  dept_id     VARCHAR2(32),
  create_time DATE default sysdate
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
-- Add comments to the table 
comment on table PIS_POLICECASE_FOCUS
  is '重点关注警情表';
-- Add comments to the columns 
comment on column PIS_POLICECASE_FOCUS.case_id
  is '警情编号';
comment on column PIS_POLICECASE_FOCUS.user_id
  is '用户编号';
comment on column PIS_POLICECASE_FOCUS.dept_id
  is '部门编号';
comment on column PIS_POLICECASE_FOCUS.create_time
  is '插入时间';

--```



--#--# ------------------------------------------

--#--#--# PSD_ACTION

--```sql
-- Create table
create table PSD_ACTION
(
  code          VARCHAR2(32) not null,
  name          VARCHAR2(32),
  describe      VARCHAR2(200),
  target_status VARCHAR2(32)
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
comment on table PSD_ACTION
  is '警情处置警情操作表';
-- Add comments to the columns 
comment on column PSD_ACTION.code
  is '操作编码';
comment on column PSD_ACTION.name
  is '操作名称';
comment on column PSD_ACTION.describe
  is '操作描述';
comment on column PSD_ACTION.target_status
  is '指向的警情状态默认值';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PSD_ACTION
  add constraint PSD_OPERATION primary key (CODE)
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

--```



--#--#--# PSD_EDGE_RULE

--```sql
------------PSD（警情处置）服务------------------
-- Create table
create table PSD_EDGE_RULE
(
  id        VARCHAR2(32) not null,
  rule_name VARCHAR2(32),
  rule_desc VARCHAR2(1024),
  rule_type VARCHAR2(32) not null
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
-- Add comments to the columns 
comment on column PSD_EDGE_RULE.id
  is '规则ID';
comment on column PSD_EDGE_RULE.rule_name
  is '规则名称';
comment on column PSD_EDGE_RULE.rule_desc
  is '规则描述';
comment on column PSD_EDGE_RULE.rule_type
  is '规则类型';
-- Create/Recreate indexes 
create unique index IDX_ID on PSD_EDGE_RULE (ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

--```

--#--#--# PSD_FLOW_NODE

--> 此表代表警情处置过程中的流转节点（岗位），
-->
--> 其中dept_ids字段请改成现场的部门ID，代表这些岗位都存在于哪些部门，如支队指挥岗，dept_ids填支队部门ID; 大队指挥岗，dept_ids填所有大队的部门ID 逗号分隔

--```sql
-- Create table
create table PSD_FLOW_NODE
(
  id              VARCHAR2(32) not null,
  type            VARCHAR2(20),
  data            VARCHAR2(2000),
  position        VARCHAR2(50),
  target_position VARCHAR2(10),
  source_position VARCHAR2(10),
  draggable       CHAR(1),
  connectable     CHAR(1),
  post_code       VARCHAR2(32),
  dept_ids        VARCHAR2(500),
  label           VARCHAR2(100)
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
comment on table PSD_FLOW_NODE
  is '警情处置流程节点表';
-- Add comments to the columns 
comment on column PSD_FLOW_NODE.id
  is '唯一标识';
comment on column PSD_FLOW_NODE.type
  is '有input，output，default三种，input只有一个输出，output只有一个输入，default输入输出各有一个';
comment on column PSD_FLOW_NODE.data
  is '显示label中的值，可在label中自定义jsx代码 （废弃，data改由前台使用LABEL、DEPT_IDS、POST_CODE字段组装）';
comment on column PSD_FLOW_NODE.position
  is 'node在图中的x，y位置';
comment on column PSD_FLOW_NODE.target_position
  is '有 ‘left’ ，‘right’， ‘top’， ''bottom’用来定义输入口的位置';
comment on column PSD_FLOW_NODE.source_position
  is '同targetPosition，用来定义输出口位置';
comment on column PSD_FLOW_NODE.draggable
  is '控制单个node可否被拖动';
comment on column PSD_FLOW_NODE.connectable
  is '控制单个node可否被连接';
comment on column PSD_FLOW_NODE.post_code
  is '节点对应的岗位';
comment on column PSD_FLOW_NODE.dept_ids
  is '关联部门';
comment on column PSD_FLOW_NODE.label
  is '节点显示的名称';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PSD_FLOW_NODE
  add constraint PSD_FLOW_NODE_PK primary key (ID)
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

--```

--#--#--# PSD_FLOW_EDGE

-- > 此表代表可以执行的操作，source, target 对应psd_flow_node表数据，分别代表可执行操作的部门，以及操作执行以后警情流转向的部门

--```sql
-- Create table
create table PSD_FLOW_EDGE
(
  id            VARCHAR2(32) not null,
  source        VARCHAR2(32),
  target        VARCHAR2(32),
  source_handle VARCHAR2(32),
  target_handle VARCHAR2(32),
  target_status VARCHAR2(12),
  type          VARCHAR2(32),
  animated      CHAR(1) default 0 not null,
  label         VARCHAR2(100),
  action_code   VARCHAR2(32),
  repeatable    CHAR(1) default 0 not null,
  source_status VARCHAR2(12),
  rule_id       VARCHAR2(32)
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
comment on table PSD_FLOW_EDGE
  is '警情处置流程连线表';
-- Add comments to the columns 
comment on column PSD_FLOW_EDGE.id
  is '唯一标识';
comment on column PSD_FLOW_EDGE.source
  is '连接线发出的node的id';
comment on column PSD_FLOW_EDGE.target
  is '连接线接受的node的id';
comment on column PSD_FLOW_EDGE.source_handle
  is '自定义node允许拥有多个输出口，此属性用来确定从哪个输出口发出';
comment on column PSD_FLOW_EDGE.target_handle
  is '同sourceHandle，用来定义哪个口接收';
comment on column PSD_FLOW_EDGE.target_status
  is '操作后指向节点的警情状态';
comment on column PSD_FLOW_EDGE.type
  is '连接线类型，有‘default’（bezier），‘straight’，‘step’，‘smoothstep’几种';
comment on column PSD_FLOW_EDGE.animated
  is '控制连接线是否有动画';
comment on column PSD_FLOW_EDGE.label
  is '在线上显示的文字';
comment on column PSD_FLOW_EDGE.action_code
  is '连线对应的操作';
comment on column PSD_FLOW_EDGE.repeatable
  is '是否允许重复操作，0:不允许，1:允许';
comment on column PSD_FLOW_EDGE.source_status
  is '操作后来源节点的警情状态';
comment on column PSD_FLOW_EDGE.rule_id
  is '关联规则';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PSD_FLOW_EDGE
  add constraint PSD_FLOW_EDGE primary key (ID)
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

--```

--#--#--# PSD_FLOW_INSTANCE

--```sql
-- Create table
create table PSD_FLOW_INSTANCE
(
  pis_info_id      VARCHAR2(32) not null,
  node_id          VARCHAR2(32),
  dept_id          VARCHAR2(32),
  pis_info_status  VARCHAR2(10),
  operate_content  CLOB,
  feedback_content CLOB,
  assist_content   CLOB
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
comment on table PSD_FLOW_INSTANCE
  is '警情处置警情流转实例表';
-- Add comments to the columns 
comment on column PSD_FLOW_INSTANCE.pis_info_id
  is '警情ID，PIS_INFO_BASE表主键';
comment on column PSD_FLOW_INSTANCE.node_id
  is '节点ID';
comment on column PSD_FLOW_INSTANCE.dept_id
  is '部门ID';
comment on column PSD_FLOW_INSTANCE.pis_info_status
  is '警情状态 :  枚举15010 15011 15012 15013 指挥岗：A01待处置， A02待签收，A03处置中，A04已办结
派警岗：B01待派警，B02已派警，B03已反馈
信号岗：C01待调整，C02已调整
诱导岗：D01待发布，D02审核中，D03已驳回，D04已发布，D05已撤销
';
comment on column PSD_FLOW_INSTANCE.operate_content
  is '操作内容';
comment on column PSD_FLOW_INSTANCE.feedback_content
  is '反馈内容';
comment on column PSD_FLOW_INSTANCE.assist_content
  is '协助内容';
-- Create/Recreate indexes 
create index INDEX_PIS_INFO_ID on PSD_FLOW_INSTANCE (PIS_INFO_ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

--```

--#--#--# PSD_FLOW_LOG

--```sql
-- Create table
create table PSD_FLOW_LOG
(
  id          VARCHAR2(32) not null,
  pis_info_id VARCHAR2(32) not null,
  oper_user   VARCHAR2(12),
  oper_dept   VARCHAR2(32),
  action_code VARCHAR2(32),
  oper_time   DATE default SYSDATE,
  log_content CLOB,
  post_code   VARCHAR2(32),
  success     CHAR(1) default 1
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
comment on table PSD_FLOW_LOG
  is '警情处置警情操作日志表';
-- Add comments to the columns 
comment on column PSD_FLOW_LOG.id
  is '唯一标识';
comment on column PSD_FLOW_LOG.pis_info_id
  is '警情ID';
comment on column PSD_FLOW_LOG.oper_user
  is '操作人';
comment on column PSD_FLOW_LOG.oper_dept
  is '操作人所属部门';
comment on column PSD_FLOW_LOG.action_code
  is '操作编码';
comment on column PSD_FLOW_LOG.oper_time
  is '日志时间';
comment on column PSD_FLOW_LOG.log_content
  is '日志内容';
comment on column PSD_FLOW_LOG.post_code
  is '岗位编号  系统为空';
comment on column PSD_FLOW_LOG.success
  is '操作结果  0失败 1成功';
-- Create/Recreate indexes 
create index PSD_FLOW_OPER_TIME_IDX on PSD_FLOW_LOG (OPER_TIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index PSD_FLOW_PIS_INFO_ID_IDX on PSD_FLOW_LOG (PIS_INFO_ID)
  tablespace HIATMPTS
  pctfree 10
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
alter table PSD_FLOW_LOG
  add constraint PSD_FLOW_LOG_PK primary key (ID)
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

--```

--#--#--# PSD_POLICE_HANDLE

--```sql
-- Create table
create table PSD_POLICE_HANDLE
(
  handle_id     VARCHAR2(32),
  case_id       VARCHAR2(32),
  police_id     VARCHAR2(32),
  order_id      VARCHAR2(32),
  police_status VARCHAR2(1),
  create_time   DATE default sysdate,
  deviceid      VARCHAR2(32),
  police_name   NVARCHAR2(32),
  update_time   DATE
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
comment on table PSD_POLICE_HANDLE
  is '警员处理表 下发给警员时插入一条数据，警员反馈时根据警情id和handle_id 只更新警员状态';
-- Add comments to the columns 
comment on column PSD_POLICE_HANDLE.handle_id
  is 'UUID';
comment on column PSD_POLICE_HANDLE.case_id
  is '处理的警情id';
comment on column PSD_POLICE_HANDLE.police_id
  is '警员id';
comment on column PSD_POLICE_HANDLE.order_id
  is '指令id';
comment on column PSD_POLICE_HANDLE.police_status
  is '警员反馈的状态 警员反馈时根据警情id和handle_id 只更新警员状态';
comment on column PSD_POLICE_HANDLE.create_time
  is '创建时间';
comment on column PSD_POLICE_HANDLE.deviceid
  is '处置设备ID';
comment on column PSD_POLICE_HANDLE.police_name
  is '警员名称';
comment on column PSD_POLICE_HANDLE.update_time
  is '警员反馈状态时更新状态的时间';

--```

--#--#--# PSD_POST

--```sql
-- Create table
create table PSD_POST
(
  code      VARCHAR2(32) not null,
  name      VARCHAR2(50),
  describe  VARCHAR2(200),
  operation VARCHAR2(32)
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
comment on table PSD_POST
  is '警情处置岗位表';
-- Add comments to the columns 
comment on column PSD_POST.code
  is '岗位编号';
comment on column PSD_POST.name
  is '岗位名称';
comment on column PSD_POST.describe
  is '岗位描述';
comment on column PSD_POST.operation
  is '权限编码';
-- Create/Recreate primary, unique and foreign key constraints 
alter table PSD_POST
  add constraint PSD_POST_PK primary key (CODE)
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

--```



--#--#--# PSD_POST_MEASURE

--```sql
-- Create table
create table PSD_POST_MEASURE
(
  id         VARCHAR2(32) not null,
  post_code  VARCHAR2(32) not null,
  measure_id VARCHAR2(32) not null
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

--```

--#--#--# MONITOR_ROAD

--#--#--#--# -- 数据需导入

--```sql
-- Create table
create table MONITOR_ROAD
(
  glbm     VARCHAR2(12) not null,
  dldm     VARCHAR2(6) not null,
  xzqh     VARCHAR2(512),
  dlmc     VARCHAR2(128) not null,
  dllx     VARCHAR2(2),
  glxzdj   VARCHAR2(1),
  dx       VARCHAR2(1),
  dlxx     VARCHAR2(2),
  lkldlx   VARCHAR2(2),
  dlwlgl   VARCHAR2(1),
  lmjg     VARCHAR2(1),
  fhsslx   VARCHAR2(2),
  qs       VARCHAR2(6),
  js       VARCHAR2(6),
  xqlc     NUMBER(8),
  cjr      VARCHAR2(32),
  cjsj     DATE,
  gxsj     DATE,
  jlzt     CHAR(1) default '1',
  qsmc     VARCHAR2(128),
  jsmc     VARCHAR2(128),
  xzqhxxlc VARCHAR2(512),
  zyglss   VARCHAR2(1),
  ssglbm   VARCHAR2(4000),
  csbj     CHAR(1) default 0 not null,
  dcbj     CHAR(1) default 0
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
-- Add comments to the table 
comment on table MONITOR_ROAD
  is '道路字典表';

--```

--#--# ------------------------------------------

--#--#--# DIM_HI_FOCUS

--```sql
create table DIM_HI_FOCUS
(
  code   VARCHAR2(32),
  status NUMBER(2),
  userid VARCHAR2(64)
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
-- Add comments to the columns 
comment on column DIM_HI_FOCUS.userid
  is '用户名id';

--```

--#--#--# DIM_HI_AREA_FLAG

--```sql
-- Create table
create table DIM_HI_AREA_FLAG
(
  areacode VARCHAR2(32),
  status   NUMBER(2)
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
--```



--#--#--# BLACK_ALERT_DISPATCH

--```sql
-- Create table
create table BLACK_ALERT_DISPATCH
(
  id               VARCHAR2(32),
  alertid          VARCHAR2(2000),
  dispatch_content VARCHAR2(2000),
  uploadtime       DATE,
  uploaduser       VARCHAR2(12),
  hphm             VARCHAR2(16),
  cllx             VARCHAR2(4)
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
comment on table BLACK_ALERT_DISPATCH
  is '处警调度信息';
-- Add comments to the columns 
comment on column BLACK_ALERT_DISPATCH.id
  is 'UUID';
comment on column BLACK_ALERT_DISPATCH.alertid
  is '稽查报警表主键';
comment on column BLACK_ALERT_DISPATCH.dispatch_content
  is '调度内容';
comment on column BLACK_ALERT_DISPATCH.uploadtime
  is '上传时间';
comment on column BLACK_ALERT_DISPATCH.uploaduser
  is '上传人';
comment on column BLACK_ALERT_DISPATCH.hphm
  is '号牌号码';
comment on column BLACK_ALERT_DISPATCH.cllx
  is '车辆类型';
-- Create/Recreate indexes 
create unique index PRI_BLACK_ALERT_DISPATCH on BLACK_ALERT_DISPATCH (ID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

--```



--#--#--# DIM_HI_SECTION_VIEW【view】

--```sql
CREATE OR REPLACE VIEW DIM_HI_SECTION_VIEW AS
SELECT "SECTION_CODE","SECTION_NAME","SECTION_TYPE","ROAD_CODE","APPROACH_DIR","WIDTH","LANE_NUM","CROSS_FLAG","LEFT_PKT_LANES","RIGHT_PKT_LANES","LENGTH","LEFT_PKT_LANE_LEN","RIGHT_PKT_LANE_LEN","UP_CROSSING_CODE","DOWN_CROSSING_CODE","DOWN_SECTION_CODE","UP_SECTION_CODE","SIDEWALK_WIDTH","IS_ONE_WAY","ONE_WAY_START_TIME","IS_DOWN_RIGHT_CTRL","ISACTIVE","ONE_WAY_END_TIME","AREA_CODE","SPEED","DESCRIPTION","POSITION","CRE_DATE","LAST_MOD_DATE","TRANSPORT_SYS_CODE","FLOW","UP_CROSSING_DIR","DOWN_CROSSING_DIR","GEOMETRY","EXPSPEED","STDTIME" FROM hidcp.dim_hi_section;

--HIDCP (为大数据数据库)
--```

--#--#--# DIM_HI_INOUTCITY_CROSSING_VIEW【view】

--```sql
CREATE OR REPLACE VIEW DIM_HI_INOUTCITY_CROSSING_VIEW AS
SELECT "CROSSING_CODE","CROSSING_NAME","CROSSING_TYPE","COORDINATES","MAXFLOW","INOUTCITY_ID" FROM hidcp.DIM_HI_INOUTCITY_CROSSING;

--```

--#--#--# DIM_HI_AREA_VIEW【view】

--```sql
CREATE OR REPLACE VIEW DIM_HI_AREA_VIEW AS
SELECT "AREA_CODE","AREA_NAME","FULL_LEN","COORDINATE","AREA_TYPE" FROM hidcp.DIM_HI_AREA;
--```

--#--#--# DIM_HI_INDEX_RULES_VIEW【view】

--```sql
CREATE OR REPLACE VIEW DIM_HI_INDEX_RULES_VIEW AS
SELECT "ID","RULE","TYPE","CODE","COLUMN_NAME","LABEL_NAME","AVAILABLE","REMARKS" FROM hidcp.DIM_HI_INDEX_RULES;

--```



---------------------------------------------------cockpit-add-------------------
-- Create table
create table FACE_DEPT_SECTION_LEN
(
  id      VARCHAR2(32) default sys_guid() not null,
  dept_id VARCHAR2(32),
  len     NUMBER(6,1),
  remark  NVARCHAR2(300)
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
comment on table FACE_DEPT_SECTION_LEN
  is '部门路段长度表';
-- Add comments to the columns 
comment on column FACE_DEPT_SECTION_LEN.id
  is '主键';
comment on column FACE_DEPT_SECTION_LEN.dept_id
  is '部门id';
comment on column FACE_DEPT_SECTION_LEN.len
  is '路段公里数。单位：公里';
comment on column FACE_DEPT_SECTION_LEN.remark
  is '描述';
-- Create/Recreate primary, unique and foreign key constraints 
alter table FACE_DEPT_SECTION_LEN
  add constraint PK_DEPT_SECTION_ID primary key (ID)
  using index 
  tablespace HIATMPTS_IDX
  pctfree 10
  initrans 2
  maxtrans 255;


  -- Create table
create table FACE_SOCIAL_DEPT_CENTER
(
  id               VARCHAR2(32) default sys_guid(),
  social_dept_id   VARCHAR2(32),
  coordinate       VARCHAR2(100),
  social_dept_type VARCHAR2(2),
  social_dept_name NVARCHAR2(100)
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
comment on table FACE_SOCIAL_DEPT_CENTER
  is '社会机构中心坐标表';
-- Add comments to the columns 
comment on column FACE_SOCIAL_DEPT_CENTER.id
  is '主键';
comment on column FACE_SOCIAL_DEPT_CENTER.social_dept_id
  is '社会机构id（包括车管所、车管分所、检测站、考试场地、体检医院、4S店和机动车交易中心）';
comment on column FACE_SOCIAL_DEPT_CENTER.coordinate
  is '坐标';
comment on column FACE_SOCIAL_DEPT_CENTER.social_dept_type
  is '社会机构类型';
comment on column FACE_SOCIAL_DEPT_CENTER.social_dept_name
  is '社会机构名称';


  ------------------------------------------
--  Changed table face_district_center  --
------------------------------------------
-- Add comments to the table 
comment on table FACE_DISTRICT_CENTER
  is '社会机构中心坐标表';
-- Add comments to the columns 
comment on column FACE_DISTRICT_CENTER.area_dept_id
  is '区域id（包括车管所、车管分所、检测站、考试场地、体检医院、4S店和机动车交易中心）';



  -- Create table
create table DISTRICT_GEOMETRY
(
  id                VARCHAR2(32) not null,
  dept_id           VARCHAR2(12),
  district_bak_code VARCHAR2(20),
  district_bak_name VARCHAR2(100),
  coordinate        CLOB,
  remark            NVARCHAR2(100),
  short_name        VARCHAR2(100),
  color             VARCHAR2(2),
  geometry          MDSYS.SDO_GEOMETRY
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
comment on table DISTRICT_GEOMETRY
  is '辖区表';
-- Add comments to the columns 
comment on column DISTRICT_GEOMETRY.id
  is 'UUID';
comment on column DISTRICT_GEOMETRY.dept_id
  is '部门表ID';
comment on column DISTRICT_GEOMETRY.district_bak_code
  is '辖区编号(来自市局PGIS服务)';
comment on column DISTRICT_GEOMETRY.district_bak_name
  is '辖区名称(来自市局PGIS服务)';
comment on column DISTRICT_GEOMETRY.coordinate
  is '辖区坐标(来自市局PGIS服务)';
comment on column DISTRICT_GEOMETRY.remark
  is '备注';
comment on column DISTRICT_GEOMETRY.short_name
  is '辖区简称(平台自定义辖区名称)';
comment on column DISTRICT_GEOMETRY.color
  is '地图显示辖区颜色(枚举值)';
comment on column DISTRICT_GEOMETRY.geometry
  is '空间坐标';
-- Create/Recreate indexes 
create index IDX_DISTRICT_BAK_DEPT_ID on DISTRICT_GEOMETRY (DEPT_ID)
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
-- Create/Recreate primary, unique and foreign key constraints 
alter table DISTRICT_GEOMETRY
  add constraint PRI_DISTRICT_BAK primary key (ID)
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



---sql
-- Create table
create table HOTSPOT_ACCIDENT_BASE_DATA
(
  ID           VARCHAR2(32) default sys_guid() not null,
  AREAID       NVARCHAR2(32),
  COORDINATE   CLOB,
  COORTYPE     VARCHAR2(2),
  ACDNUM       NUMBER(5),
  ABLEDATE     DATE default sysdate,
  DISABLEDATE  DATE default sysdate,
  NAME         NVARCHAR2(100),
  DEATHHURTNUM NUMBER(5),
  SIMPLENUM    NUMBER(5),
  COMMONNUM    NUMBER(5),
  DEPTID       NVARCHAR2(12),
  CENTERPOINT  NVARCHAR2(32)
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
comment on table HOTSPOT_ACCIDENT_BASE_DATA
  is '事故黑点基础数据';
-- Add comments to the columns 
comment on column HOTSPOT_ACCIDENT_BASE_DATA.ID
  is '主键';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.COORTYPE
  is '坐标类型 1点 2线 3面';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.ACDNUM
  is '近三年事故数';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.ABLEDATE
  is '生效日期';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.DISABLEDATE
  is '失效日期';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.NAME
  is '事故黑点名称';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.DEATHHURTNUM
  is '伤亡数';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.SIMPLENUM
  is '简易事故数';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.COMMONNUM
  is '一般事故数';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.DEPTID
  is '所属部门';
comment on column HOTSPOT_ACCIDENT_BASE_DATA.CENTERPOINT
  is '中心点';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_ACCIDENT_BASE_DATA
  add constraint PK_HOTSPOT_ACCIDENT_DATA_ID primary key (ID)
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

---

--------- HOTSPOT_ACCIDENT_RELATION

---sql
-- Create table
create table HOTSPOT_ACCIDENT_RELATION
(
  ID              NVARCHAR2(32) default sys_guid() not null,
  IMPORT_POINT_ID NVARCHAR2(32),
  SGBH            VARCHAR2(36),
  ACCIDENT_TYPE   CHAR(1),
  SGFSSJ          DATE,
  XZQH            VARCHAR2(10),
  SGDD            VARCHAR2(128),
  RA_JD           VARCHAR2(32),
  RA_WD           VARCHAR2(32),
  SGXT            VARCHAR2(10),
  SWRS            NUMBER(3) default 0,
  SSRS            NUMBER(3) default 0
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
comment on table HOTSPOT_ACCIDENT_RELATION
  is '事故黑点与事故数据关联表';
-- Add comments to the columns 
comment on column HOTSPOT_ACCIDENT_RELATION.ID
  is 'uuid';
comment on column HOTSPOT_ACCIDENT_RELATION.IMPORT_POINT_ID
  is '事故黑点主键';
comment on column HOTSPOT_ACCIDENT_RELATION.SGBH
  is '事故编号 对应事故表';
comment on column HOTSPOT_ACCIDENT_RELATION.ACCIDENT_TYPE
  is '事故类型1简易事故，2一般事故';
comment on column HOTSPOT_ACCIDENT_RELATION.SGFSSJ
  is '事故发生时间';
comment on column HOTSPOT_ACCIDENT_RELATION.XZQH
  is '行政区划';
comment on column HOTSPOT_ACCIDENT_RELATION.SGDD
  is '事故地点';
comment on column HOTSPOT_ACCIDENT_RELATION.RA_JD
  is '经度';
comment on column HOTSPOT_ACCIDENT_RELATION.RA_WD
  is '纬度';
comment on column HOTSPOT_ACCIDENT_RELATION.SGXT
  is '事故形态 枚举11211';
comment on column HOTSPOT_ACCIDENT_RELATION.SWRS
  is '死亡人数';
comment on column HOTSPOT_ACCIDENT_RELATION.SSRS
  is '受伤人数';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_ACCIDENT_RELATION
  add constraint HOTSPOT_ACCIDENT_RELATION_PK primary key (ID)
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

---

--------- HOTSPOT_FIVE_VEH

---sql
-- Create table
create table HOTSPOT_FIVE_VEH
(
  CARNO   VARCHAR2(16),
  CARTYPE VARCHAR2(16),
  CLLX    VARCHAR2(16)
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
comment on table HOTSPOT_FIVE_VEH
  is '江门五车（两客一危 校车 泥头车）';
-- Add comments to the columns 
comment on column HOTSPOT_FIVE_VEH.CARNO
  is '车牌';
comment on column HOTSPOT_FIVE_VEH.CARTYPE
  is '车辆类型';
comment on column HOTSPOT_FIVE_VEH.CLLX
  is '车辆类型-中';

---

--------- HOTSPOT_FOCUS_POINT_BASE_DATA

---sql
-- Create table
create table HOTSPOT_FOCUS_POINT_BASE_DATA
(
  ID          VARCHAR2(32) default sys_guid() not null,
  AREAID      NVARCHAR2(32),
  COORDINATE  CLOB,
  COORTYPE    VARCHAR2(2),
  ABLEDATE    DATE default sysdate,
  DISABLEDATE DATE default sysdate,
  NAME        NVARCHAR2(100),
  DEPTID      NVARCHAR2(12)
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
comment on table HOTSPOT_FOCUS_POINT_BASE_DATA
  is '重点关注基础数据';
-- Add comments to the columns 
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.ID
  is '主键';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.COORTYPE
  is '坐标类型 1点 2线 3面';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.ABLEDATE
  is '生效日期';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.DISABLEDATE
  is '失效日期';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.NAME
  is '重点关注名称';
comment on column HOTSPOT_FOCUS_POINT_BASE_DATA.DEPTID
  is '所属部门';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_FOCUS_POINT_BASE_DATA
  add constraint PK_HOTSPOT_FOCUS_POINT_BASE_DATA_ID primary key (ID)
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
---

--------- HOTSPOT_FOUR_VEH_BASE_DATA

---sql
-- Create table
create table HOTSPOT_FOUR_VEH_BASE_DATA
(
  ID            VARCHAR2(32) default sys_guid() not null,
  AREAID        NVARCHAR2(32),
  COORDINATE    CLOB,
  COORTYPE      VARCHAR2(2),
  TRF_FREQUENCY NUMBER(5),
  TRF_NUM       NUMBER(5) default 0,
  ABLEDATE      DATE default sysdate,
  DISABLEDATE   DATE default sysdate,
  NAME          NVARCHAR2(100),
  DEPTID        NVARCHAR2(12)
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
comment on table HOTSPOT_FOUR_VEH_BASE_DATA
  is '四车聚点基础数据';
-- Add comments to the columns 
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.ID
  is '主键';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.COORTYPE
  is '坐标类型 1点 2线 3面';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.TRF_FREQUENCY
  is '近三年过车频率（次/天）';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.TRF_NUM
  is '近三年过车数量';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.ABLEDATE
  is '生效日期';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.DISABLEDATE
  is '失效日期';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.NAME
  is '四车聚点名称';
comment on column HOTSPOT_FOUR_VEH_BASE_DATA.DEPTID
  is '所属部门';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_FOUR_VEH_BASE_DATA
  add constraint PK_HOTSPOT_VEH_DATA_ID primary key (ID)
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
---

--------- HOTSPOT_ORDER_CHAOS_BASE_DATA

---sql
-- Create table
create table HOTSPOT_ORDER_CHAOS_BASE_DATA
(
  ID          VARCHAR2(32) default sys_guid() not null,
  AREAID      NVARCHAR2(32),
  COORDINATE  CLOB,
  COORTYPE    VARCHAR2(2),
  ILLEGALNUM  NUMBER(5),
  ABLEDATE    DATE default sysdate,
  DISABLEDATE DATE default sysdate,
  NAME        NVARCHAR2(100),
  DEPTID      NVARCHAR2(12)
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
comment on table HOTSPOT_ORDER_CHAOS_BASE_DATA
  is '秩序乱点基础数据';
-- Add comments to the columns 
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.ID
  is '主键';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.COORTYPE
  is '坐标类型 1点 2线 3面';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.ILLEGALNUM
  is '近一年违法数';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.ABLEDATE
  is '生效日期';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.DISABLEDATE
  is '失效日期';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.NAME
  is '秩序乱点名称';
comment on column HOTSPOT_ORDER_CHAOS_BASE_DATA.DEPTID
  is '所属部门';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_ORDER_CHAOS_BASE_DATA
  add constraint PK_HOTSPOT_CHAOS_DATA_ID primary key (ID)
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

---

--------- HOTSPOT_POLICE_DAY

---sql
-- Create table
create table HOTSPOT_POLICE_DAY
(
  ID           VARCHAR2(32) default sys_guid() not null,
  CVEHID       NVARCHAR2(60) not null,
  DECARLONG    NUMBER(16,10) not null,
  DTRECORDTIME DATE not null,
  DECARLAT     NUMBER(16,10)
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
comment on table HOTSPOT_POLICE_DAY
  is '热点覆盖警力表';
-- Add comments to the columns 
comment on column HOTSPOT_POLICE_DAY.ID
  is '主键';
comment on column HOTSPOT_POLICE_DAY.CVEHID
  is '设备编号';
comment on column HOTSPOT_POLICE_DAY.DECARLONG
  is '经度';
comment on column HOTSPOT_POLICE_DAY.DTRECORDTIME
  is '采集时间';
comment on column HOTSPOT_POLICE_DAY.DECARLAT
  is '纬度';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_POLICE_DAY
  add constraint PK_HOTSPOT_POLICE primary key (ID)
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
-- Create/Recreate indexes 
create index INDEX_HOTSPOT_POLICE on HOTSPOT_POLICE_DAY (DTRECORDTIME)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );
create index INDEX_HOTSPOT_POLICEID on HOTSPOT_POLICE_DAY (CVEHID)
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255
  storage
  (
    initial 64K
    next 1M
    minextents 1
    maxextents unlimited
  );

---



--------- HOTSPOT_ROAD_RELATION

---sql
-- Create table
create table HOTSPOT_ROAD_RELATION
(
  ID                NVARCHAR2(32) default sys_guid() not null,
  IMPORT_POINT_ID   NVARCHAR2(32),
  IMPORT_POINT_TYPE CHAR(1),
  ROAD_TYPE         CHAR(1),
  ROAD_ID           NVARCHAR2(32)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255
  storage
  (
    initial 64
    minextents 1
    maxextents unlimited
  );
-- Add comments to the table 
comment on table HOTSPOT_ROAD_RELATION
  is '关注点与路段路口关联表';
-- Add comments to the columns 
comment on column HOTSPOT_ROAD_RELATION.ID
  is 'uuid';
comment on column HOTSPOT_ROAD_RELATION.IMPORT_POINT_ID
  is '关注点主键 对应各点位表';
comment on column HOTSPOT_ROAD_RELATION.IMPORT_POINT_TYPE
  is '1-事故黑点';
comment on column HOTSPOT_ROAD_RELATION.ROAD_TYPE
  is '1路口,2路段';
comment on column HOTSPOT_ROAD_RELATION.ROAD_ID
  is '路口,路段的编号';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_ROAD_RELATION
  add constraint HOTSPOT_ROAD_RELATION_PK primary key (ID)
  using index 
  tablespace HIATMPTS
  pctfree 10
  initrans 2
  maxtrans 255;

---

--------- HOTSPOT_TIME_OVERLAP_DATA

---sql
-- Create table
create table HOTSPOT_TIME_OVERLAP_DATA
(
  ID               VARCHAR2(32) not null,
  AREAID           NVARCHAR2(32),
  HOTSPOTID        VARCHAR2(32),
  HOT_DURATION     NUMBER(7,2),
  POLICEIDS        CLOB,
  POLICENUM        NUMBER,
  OVERLAP_DURATION NUMBER(7,2),
  RATIO            NUMBER(5,4),
  COORDINATE       CLOB,
  COLLECTDATE      DATE,
  SAVTIME          DATE default sysdate,
  BEGINTIME        VARCHAR2(8),
  ENDTIME          VARCHAR2(8)
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
comment on table HOTSPOT_TIME_OVERLAP_DATA
  is '热点警力覆盖度结果表';
-- Add comments to the columns 
comment on column HOTSPOT_TIME_OVERLAP_DATA.ID
  is '主键';
comment on column HOTSPOT_TIME_OVERLAP_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_TIME_OVERLAP_DATA.HOTSPOTID
  is '热点区域主键（hotspot_xxx_base_data主键）';
comment on column HOTSPOT_TIME_OVERLAP_DATA.HOT_DURATION
  is '该时段总时长';
comment on column HOTSPOT_TIME_OVERLAP_DATA.POLICEIDS
  is '警员policeid集合';
comment on column HOTSPOT_TIME_OVERLAP_DATA.POLICENUM
  is '警员总数';
comment on column HOTSPOT_TIME_OVERLAP_DATA.OVERLAP_DURATION
  is '覆盖总时长';
comment on column HOTSPOT_TIME_OVERLAP_DATA.RATIO
  is '时长覆盖比率';
comment on column HOTSPOT_TIME_OVERLAP_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_TIME_OVERLAP_DATA.COLLECTDATE
  is '计算日期';
comment on column HOTSPOT_TIME_OVERLAP_DATA.SAVTIME
  is '入库时间';
comment on column HOTSPOT_TIME_OVERLAP_DATA.BEGINTIME
  is '开始时段';
comment on column HOTSPOT_TIME_OVERLAP_DATA.ENDTIME
  is '结束时间';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_TIME_OVERLAP_DATA
  add constraint PK_HOTSPOT_OVERLAP_DATA primary key (ID)
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
---

--------- HOTSPOT_TIMEINTERVAL_DATA
---sql
-- Create table
create table HOTSPOT_TIMEINTERVAL_DATA
(
  ID        VARCHAR2(32) default sys_guid() not null,
  HOTSPOTID VARCHAR2(32),
  WEEK      NUMBER default 0,
  BEGINTIME VARCHAR2(8),
  ENDTIME   VARCHAR2(8),
  TYPE      VARCHAR2(2),
  LABEL_ID  VARCHAR2(32)
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
comment on table HOTSPOT_TIMEINTERVAL_DATA
  is '热点时段数据';
-- Add comments to the columns 
comment on column HOTSPOT_TIMEINTERVAL_DATA.ID
  is '主键';
comment on column HOTSPOT_TIMEINTERVAL_DATA.HOTSPOTID
  is '热点数据主键';
comment on column HOTSPOT_TIMEINTERVAL_DATA.WEEK
  is '周历，0默认每天，1-7表示周历';
comment on column HOTSPOT_TIMEINTERVAL_DATA.BEGINTIME
  is '开始时段（hh24:mi:ss）';
comment on column HOTSPOT_TIMEINTERVAL_DATA.ENDTIME
  is '结束时段（hh24:mi;ss）';
comment on column HOTSPOT_TIMEINTERVAL_DATA.TYPE
  is '类型 1-事故黑点 2-秩序乱点 3-常发堵点 4-重点关注 5-四车聚点';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_TIMEINTERVAL_DATA
  add constraint PK_HOTSPOT_TIMEINTERVAL_ID primary key (ID)
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

---

--------- HOTSPOT_TRF_BLOCK_BASE_DATA
---sql
-- Create table
create table HOTSPOT_TRF_BLOCK_BASE_DATA
(
  ID          VARCHAR2(32) default sys_guid() not null,
  AREAID      NVARCHAR2(32),
  COORDINATE  CLOB,
  COORTYPE    VARCHAR2(2),
  TPI         NUMBER(6,1),
  AVG_SPEED   NUMBER(3,1) default 0,
  ABLEDATE    DATE default sysdate,
  DISABLEDATE DATE default sysdate,
  NAME        NVARCHAR2(100),
  DEPTID      NVARCHAR2(12)
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
comment on table HOTSPOT_TRF_BLOCK_BASE_DATA
  is '常发堵点基础数据';
-- Add comments to the columns 
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.ID
  is '主键';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.AREAID
  is '所属辖区';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.COORDINATE
  is '坐标';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.COORTYPE
  is '坐标类型 1点 2线 3面';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.TPI
  is '拥堵指数';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.AVG_SPEED
  is '平均速度';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.ABLEDATE
  is '生效日期';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.DISABLEDATE
  is '失效日期';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.NAME
  is '常发堵点名称';
comment on column HOTSPOT_TRF_BLOCK_BASE_DATA.DEPTID
  is '所属部门';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_TRF_BLOCK_BASE_DATA
  add constraint PK_HOTSPOT_TRAFFIC_DATA_ID primary key (ID)
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
---

--------- HOTSPOT_ABLE_DATE_DATA【未知】

---sql
--江门跑数据用
--Create table
create table HOTSPOT_ABLE_DATE_DATA
(
  id          VARCHAR2(32) default sys_guid() not null,
  hotspotid   VARCHAR2(32),
  type        VARCHAR2(2),
  abledate    DATE default sysdate,
  disabledate DATE default sysdate
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
comment on table HOTSPOT_ABLE_DATE_DATA
  is '热点有效期数据表';
-- Add comments to the columns 
comment on column HOTSPOT_ABLE_DATE_DATA.id
  is '主键';
comment on column HOTSPOT_ABLE_DATE_DATA.hotspotid
  is '热点id';
comment on column HOTSPOT_ABLE_DATE_DATA.type
  is '热点类型 1-事故黑点 2-秩序乱点 3-常发堵点 4-五车汇聚 5-重点关注';
comment on column HOTSPOT_ABLE_DATE_DATA.abledate
  is '生效日期';
comment on column HOTSPOT_ABLE_DATE_DATA.disabledate
  is '失效日期';
-- Create/Recreate primary, unique and foreign key constraints 
alter table HOTSPOT_ABLE_DATE_DATA
  add constraint HOTSPOT_ABLE_DATE_DATA_PK primary key (ID)
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
  
  
prompt PL/SQL Developer import file
prompt Created on 2022年8月1日 by linan3
set feedback off
set define off
prompt Creating FACE_MAPLAYER_OPEN_INFO...
create table FACE_MAPLAYER_OPEN_INFO
(
  id          VARCHAR2(32) default sys_guid() not null,
  scene_id    VARCHAR2(32),
  page_id     VARCHAR2(32) not null,
  maplayer_id VARCHAR2(32) not null
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
comment on table FACE_MAPLAYER_OPEN_INFO
  is '场景默认打开图层表';
comment on column FACE_MAPLAYER_OPEN_INFO.id
  is '主键';
comment on column FACE_MAPLAYER_OPEN_INFO.scene_id
  is '场景id';
comment on column FACE_MAPLAYER_OPEN_INFO.page_id
  is '页面id';
comment on column FACE_MAPLAYER_OPEN_INFO.maplayer_id
  is '图层id';
alter table FACE_MAPLAYER_OPEN_INFO
  add constraint FACE_MAPLAYER_OPEN_INFO_PK primary key (ID)
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

prompt 4 records loaded
set feedback on
set define on
prompt Done.



prompt PL/SQL Developer import file
prompt Created on 2022年8月1日 by linan3
set feedback off
set define off
prompt Creating SVM_KEYVEH_WARNING...
create table SVM_KEYVEH_WARNING
(
  id                  VARCHAR2(32),
  carno               VARCHAR2(12),
  cartype             VARCHAR2(5),
  warntype            VARCHAR2(2),
  warntime            DATE,
  areaid              VARCHAR2(10),
  state               NUMBER,
  remark              VARCHAR2(2000),
  gpsid               VARCHAR2(32),
  longitude           VARCHAR2(100),
  latitude            VARCHAR2(100),
  warnaddress         VARCHAR2(500),
  direction           VARCHAR2(10),
  updatetime          DATE,
  speed               NUMBER,
  handstate           VARCHAR2(2),
  quanceng            VARCHAR2(10),
  speedlimit          NUMBER,
  no_entry_id         VARCHAR2(32),
  no_entry_time       VARCHAR2(20),
  passport_id         VARCHAR2(32),
  vehicleproperties   VARCHAR2(2),
  duration            NUMBER,
  vehicletype         VARCHAR2(3),
  limit_id            VARCHAR2(32),
  ccollectionagencies VARCHAR2(12),
  clicensetype        VARCHAR2(2),
  datasource          VARCHAR2(2),
  pemcial             VARCHAR2(2)
)
tablespace HIATMPTS
  pctfree 10
  initrans 1
  maxtrans 255;
comment on table SVM_KEYVEH_WARNING
  is '重点车辆预警表';
comment on column SVM_KEYVEH_WARNING.carno
  is '号牌号码';
comment on column SVM_KEYVEH_WARNING.cartype
  is '号牌类型 枚举9500';
comment on column SVM_KEYVEH_WARNING.warntype
  is '预警类型 枚举9501';
comment on column SVM_KEYVEH_WARNING.warntime
  is '预警时间';
comment on column SVM_KEYVEH_WARNING.areaid
  is '辖区id， 枚举180';
comment on column SVM_KEYVEH_WARNING.state
  is '警情状态 1-报警 2-消警';
comment on column SVM_KEYVEH_WARNING.remark
  is '预警描述';
comment on column SVM_KEYVEH_WARNING.gpsid
  is '关联的gps表id';
comment on column SVM_KEYVEH_WARNING.longitude
  is '经度';
comment on column SVM_KEYVEH_WARNING.latitude
  is '纬度';
comment on column SVM_KEYVEH_WARNING.warnaddress
  is '预警地点';
comment on column SVM_KEYVEH_WARNING.direction
  is '方向';
comment on column SVM_KEYVEH_WARNING.updatetime
  is '更新时间';
comment on column SVM_KEYVEH_WARNING.speed
  is '速度';
comment on column SVM_KEYVEH_WARNING.handstate
  is '0-未处置，1-派警，2-签收，5-反馈，3-结案，4-忽略';
comment on column SVM_KEYVEH_WARNING.quanceng
  is '圈层';
comment on column SVM_KEYVEH_WARNING.speedlimit
  is '速度阈值';
comment on column SVM_KEYVEH_WARNING.no_entry_id
  is '禁行区域ID';
comment on column SVM_KEYVEH_WARNING.no_entry_time
  is '禁行时段';
comment on column SVM_KEYVEH_WARNING.passport_id
  is '通行证ID';
comment on column SVM_KEYVEH_WARNING.vehicleproperties
  is '车辆属性';
comment on column SVM_KEYVEH_WARNING.duration
  is '疲劳驾驶持续时长';
comment on column SVM_KEYVEH_WARNING.vehicletype
  is '车辆类型 对应枚举类型 833';
comment on column SVM_KEYVEH_WARNING.ccollectionagencies
  is '采集机关';
comment on column SVM_KEYVEH_WARNING.clicensetype
  is '号牌种类';
comment on column SVM_KEYVEH_WARNING.datasource
  is '数据来源（1适配器分析，2烽火）';
comment on column SVM_KEYVEH_WARNING.pemcial
  is '1 已拦截 2 未拦截';

prompt Loading SVM_KEYVEH_WARNING...
prompt Table is empty
set feedback on
set define on
prompt Done.


-- Create table
create table AREA_DEPARTMENT_RELATION
(
  area_id   VARCHAR2(32),
  dept_id   VARCHAR2(32),
  area_name VARCHAR2(400)
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
comment on table AREA_DEPARTMENT_RELATION
  is '辖区和大队关联表';
-- Add comments to the columns 
comment on column AREA_DEPARTMENT_RELATION.area_id
  is '辖区编号';
comment on column AREA_DEPARTMENT_RELATION.dept_id
  is '部门编号';
comment on column AREA_DEPARTMENT_RELATION.area_name
  is '辖区名称';


  

