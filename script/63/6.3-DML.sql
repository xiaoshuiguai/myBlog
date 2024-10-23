

------ ENUM_TYPE

-------- 1101

-- sql
delete from ENUM_TYPE where ENUMTYPEID = 1101;

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '01', '事故逃逸车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '02', '套牌车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '03', '假牌车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '04', '逾期未年检车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '05', '报废车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '06', '违法未处理车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '07', '多次违法未处理车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '08', '营转非', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '21', '刑事案件', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '22', '重大治安事件', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '23', '违法犯罪嫌疑交通工具', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '24', '被盗抢车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '25', '治安常态管控', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '27', '改装车', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '28', '危化品车辆', null, null, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '29', '高速违法未分拣', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '30', '安全隐患车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '32', '秋风行动-逾期未报废', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '33', '秋风行动-逾期未检验', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '34', '测试类型', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '35', '秋风行动-违法未处理', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '36', '拼包车高风险车辆', 0, 0, null, null);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1101, '37', '秋风行动-农村面包车', 0, 0, null, null);

COMMIT;

-- 

-------- 62020

-- sql
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62020, '1', '报市局', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62020, '2', '报总队', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62020, '3', '不上报', 0, 0, 0, '');
COMMIT;

-- 

-------- 62017

-- sql
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '0', '忽略/拒绝', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '1', '签收', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '2', '到达现场', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '3', '过程反馈', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '4', '请求支援', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '5', '办结', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '6', '撤离现场', 0, 0, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62017, '7', '签收超时', 0, 0, 0, '');

commit;
-- 

-------- 1320

-- sql
insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1320, '11', '警力机构', 0, 0, null, null);

-- 

-------- 12241

-- sql
insert into enum_define (ENUMTYPEID, ENUMNAME, ENUMDESCRIBE, DOFLAG)
values (12241, '122坐标类型', '122警情坐标类型', '0');

insert into ENUM_type (ENUMTYPEID, ENUMNAME, ENUMVALUE)
values (12241, '无坐标', '0');
insert into ENUM_type (ENUMTYPEID, ENUMNAME, ENUMVALUE)
values (12241, '122坐标', '1');

insert into ENUM_type (ENUMTYPEID, ENUMNAME, ENUMVALUE)
values (12241, '语义解析', '2');

insert into ENUM_type (ENUMTYPEID, ENUMNAME, ENUMVALUE)
values (12241, '人工修订', '3');

insert into ENUM_type (ENUMTYPEID, ENUMNAME, ENUMVALUE)
values (12241, '短信定位', '4');
commit;
-- 

-------- 1180
-- sql
INSERT INTO ENUM_TYPE T (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
  VALUES (1180, '0', '所有(0' || CHR(58) || '00-23' || CHR(58) || '59)', 0, 0, NULL, NULL);
INSERT INTO ENUM_TYPE T (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
  VALUES (1180, '1', '工作日(8' || CHR(58) || '30-12' || CHR(58) || '00,14' || CHR(58) || '30-17' || CHR(58) || '30)', 0, 0, NULL, NULL);
INSERT INTO ENUM_TYPE T (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
  VALUES (1180, '2', '非工作日(8' || CHR(58) || '00-22' || CHR(58) || '00)', 0, 0, NULL, NULL);
INSERT INTO ENUM_TYPE T (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)

-- 





------ SYSPARAMS
-------- DUTY_SCORE_WEIGHT
-------- DUTY_SCORE_THRESHOID 
-------- SCS_DEPTER_THRESS_BM

-------- FTP_TO_HTTP_IMAGE

-------- scs_carnoprofix

-------- JCBK_ZDHMD

-------- JCBK_ZDHMDRY

-------- JCBK_ZDHMDTPC

-------- YCYD_IP_PORT

-------- BKGL_ZDBK_WF

-------- JCBK_ZDHMDBF

-------- JCBK_ZDHMDZX

delete from SYSPARAMS WHERE PARAMCODE = 'DUTY_SCORE_WEIGHT';
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('DUTY_SCORE_WEIGHT', '计算勤务督查中得分的各个类型所占的权重', '0.5,0.2,0.1,0.1,0.1', '计算勤务督查中得分的各个类型所占的权重。共有5个值，每个值以逗号分隔。这五个值分别代表事故黑点权重、秩序乱点权重、常发堵点权重、四车聚点权重、重点关注权重。要求这5个值的和为1', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'DUTY_SCORE_THRESHOID';
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('DUTY_SCORE_THRESHOID', '计算得分时使用的匹配度阈值', '0.8', '匹配度阈值，大于等于该阈值的情况，得分为100分，小于该阈值的情况，匹配度/阈值*100为得分', '0');


-- sql
delete from SYSPARAMS WHERE PARAMCODE = 'SCS_DEPTER_THRESS_BM';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('SCS_DEPTER_THRESS_BM', '稽查布控-布控管理拦截大队限制大队', '''440792000010'',
''440791000010'',
''440784000000'',
''440781000000'',
''440783000000'',
''440785000000'',
''440796000000'',
''440705000000'',
''440704000000'',
''440793000010'',
''440703000000''
', '稽查布控-布控管理拦截大队限制大队', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'SCS_DEPTER_FOUR_BM';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('SCS_DEPTER_FOUR_BM', '稽查布控-布控管理拦截大队中队限制', '''440704000700'',
''440704005300'',
''440704005000'',
''440704005100'',
''440703000300'',
''440703005100'',
''440703005200'',
''440703005600'',
''440703005700'',
''440704001100'',
''440703000700'',
''440703005300'',
''440704000300'',
''440704005200'',
''440703001100'',
''440703005000'',
''440703005400'',
''440703005500''
', '稽查布控-布控管理拦截大队中队限制', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'FTP_TO_HTTP_IMAGE';
INSERT INTO SYSPARAMS T (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
  VALUES ('FTP_TO_HTTP_IMAGE', 'ftp图http转发', 'http' || CHR(58) || '//44.111.50.169' || CHR(58) || '9900/ftp2http/urlforward?url=', '使用方法http' || CHR(58) || '//44.111.50.169' || CHR(58) || '9900/ftp2http/urlforward?url=ftp' || CHR(58) || '//xxx.xxx/xxx.jpg', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'scs_carnoprofix';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('scs_carnoprofix', '一车一档业务配置', '粤', '一车一档业务配置', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'JCBK_ZDHMD';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('JCBK_ZDHMD', '稽查布控自动黑名单违法未处理', '1', '稽查布控自动黑名单违法未处理 1(开启自动布控) 0(关闭自动布控) ', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'JCBK_ZDHMDRY';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('JCBK_ZDHMDRY', '稽查布控自动黑名单开启人员', '176850', '稽查布控自动黑名单开启人员', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'JCBK_ZDHMDTPC';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('JCBK_ZDHMDTPC', '稽查布控自动黑名单套牌车', '1', '稽查布控自动黑名单套牌车 1(开启自动布控) 0(关闭自动布控) ', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'YCYD_IP_PORT';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('YCYD_IP_PORT', '一车一档ip端口', 'http://44.111.50.166:9990', '一车一档ip端口', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'BKGL_ZDBK_WF';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('BKGL_ZDBK_WF', '自动布控配置违法次数', '20', '自动布控配置违法次数', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'JCBK_ZDHMDBF';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('JCBK_ZDHMDBF', '稽查布控自动黑名单报废车辆', '1', '稽查布控自动黑名单报废车辆 1(开启自动布控) 0(关闭自动布控)', '0');

delete from SYSPARAMS WHERE PARAMCODE = 'JCBK_ZDHMDZX';
insert into SYSPARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('JCBK_ZDHMDZX', '稽查布控自动黑名单注销车辆', '1', '稽查布控自动黑名单注销车辆 1(开启自动布控) 0(关闭自动布控)', '0');


-- 

-------- CARNOPROFIX

-------- FACE_VMS_DEFAULT_TIME

-------- FACE_VMS_TIMER

-------- FACE_VMS_WANRN_TIME

-- sql
--后期对应功能补充脚本
--一键查车
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('CARNOPROFIX', '车辆查询默认号牌前缀', '鲁', '车辆查询默认号牌前缀', '0');

commit;

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('FACE_VMS_DEFAULT_TIME', '场景化指挥诱导默认时间', '120', '场景化指挥诱导默认时间 分钟', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('FACE_VMS_TIMER', '前台定时查询时间', '5', '前台定时查询时间 秒', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('FACE_VMS_WANRN_TIME', '场景化指挥诱导提醒时间', '10', '场景化指挥诱导提醒时间 分钟', '');


-- 

-------- HIFACE62_VIDEO_INIT

-------- QWTS_ZGQY

-- sql
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('HIFACE62_VIDEO_INIT', '场景化指挥第一次打开是否播放视频', '0', '0->不播放 1->播放视域 2->播放包围圈内第一个视频', '0');
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('QWTS_ZGQY', '指挥调度一张图_勤务态势_在岗区域阈值', '440703,440704,440796', null, null);

-- 

-------- PIS_SHOW_FOUCUS

-------- PIS_SHOW_YESTODAY_STATIC

-- sql
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PIS_SHOW_FOUCUS', '重点关注是否展示', '1', '0不展示，1展示', '0');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PIS_SHOW_YESTODAY_STATIC', '昨日接警时间等指标是否展示', '1', '0不展示，1展示', '0');

commit;
-- 

------ PSD_SYS_PARAMS

-- sql
delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'QUERY_MAP_ADD_METER';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('QUERY_MAP_ADD_METER', '警力范围默认增加米数', '500', '警力范围默认增加米数（米）');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'TGS_URL';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('TGS_URL', '诱导发布页面路径', 'http://44.111.50.153:8990/HiatmpPro/index.html#/home', '诱导发布页面路径');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'SCS_WEBSOCKET';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SCS_WEBSOCKET', '稽查布控websocket', 'ws://44.111.50.154:8700/HiatmpPro', '稽查布控websocket');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'DDM_URL';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DDM_URL', '高分勤务管理链接', 'http://44.111.50.156:1400/HiatmpPro/index.html#/view/ddm', '高分勤务管理链接');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'SCS_URL';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SCS_URL', '稽查布控链接', 'http://44.111.50.154:8700/HiatmpPro/index.html#/', '稽查布控链接');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'PLATFORM_IP';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('PLATFORM_IP', '信号平台platformIp', '44.111.50.150', 'platformIp在信号平台config.properties文件中');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'FILTER_DEPART';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FILTER_DEPART', '过滤显示的大队', '440700000000,440703000000,440704000000,440781000000,440785000000,440792000010,440793000010,440784000000,440781230000,440783000000,440791000010,440796000000', '过滤显示的大队，大队id多个用逗号分隔');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'UTC_URL';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('UTC_URL', '信号平台页面路径', 'http://44.111.50.170:8090/hicon-monitor/signalmonitor/', '信号平台页面路径');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'FTP_TO_HTTP_IMAGE';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FTP_TO_HTTP_IMAGE', '图片FTP转HTTP的URL', 'http://44.111.50.169:9900/ftp2http/urlforward?url=', '图片FTP转HTTP的URL');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'GPS_ONLINE_TIME_TAMB';
insert into PSD_SYS_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('GPS_ONLINE_TIME_TAMB', '120救护车GPS在线判断时长', '5', '即多长时间内在tgpsmessage表中有数据即认为在线(单位：分钟)');
COMMIT;

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'BIGDATA_ANALYSIS';
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('BIGDATA_ANALYSIS', '大数据研判工具', 'http://44.111.50.101:9085/login', '大数据研判工具url');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'SHOW_CONTROLTYPES';
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SHOW_CONTROLTYPES', '布控类型', '05,27,28,36,04,01', '一张图配置的布控类型');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'UNIFIED_QUERY';
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('UNIFIED_QUERY', '统一查询工具', 'http://44.111.50.166:9990/HiatmpPro/index.html#/search', '统一查询工具url');

delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'VIP_GREEN_WAVE';
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('VIP_GREEN_WAVE', 'VIP绿波', 'http://44.111.50.170/HiatmpPro/home/hileg', 'VIP绿波url');


delete from PSD_SYS_PARAMS WHERE PARAMCODE = 'ZHDD_UTC_SYSTEM_LOGIN';
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('ZHDD_UTC_SYSTEM_LOGIN', '智能信号控制登录', 'http://44.111.50.170:8090/hicon-monitor/?userid=admin1&platformIp=44.111.50.150&business=login', '智能信号控制登录url');
COMMIT;

-- 



------ PSD_ACTION

-- sql
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-1', '警情派警', '针对警情派警', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-2', '警员签收', '警员签收警情', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-3', '警员反馈', '警员反馈警情处理情况', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('E1000-1', '信号调整', '信号调整', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('F1000-1', '节目添加', '添加诱导节目', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('F1000-2', '诱导发布', '诱导发布', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('F1000-3', '诱导撤销', '诱导撤销', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('J1000-1', '部门协助', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('J1000-2', '周边联动', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('J1000-3', '路面清障', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('J1000-4', '交通管制', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('J1000-5', '信息服务', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('C1000-1', '警情结案', '结案', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('A1000-1', '警情下发', '支队向大队下发警情', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('G1000-1', '警情补充', '补充、修改警情信息', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('B1000-1', '警情签收', '签收', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('B1000-2', '警情回退', '大队将警情回退给支队', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('B1000-3', '警情上报', '大队将警情上报给支队', null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-4', '忽略', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-5', '到达现场', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-6', '请求支援', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-7', '撤离现场', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-8', '中止', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('D1000-99', '其它', null, null);
insert into PSD_ACTION (code, name, describe, target_status)
values ('H1000-1', '指令下发', '指令下发', null);
commit;
prompt 25 records loaded
prompt Enabling triggers for PSD_ACTION...
alter table PSD_ACTION enable all triggers;
set feedback on
set define on
prompt Done.

-- 





------ PSD_EDGE_RULE

-- sql
insert into PSD_EDGE_RULE (id, rule_name, rule_desc, rule_type)
values ('1', '警情部门检验', '根据警情表pis_info_base的deptid 判断是否下发大队,进行警情初始化', 'if_dept_id');
commit;
-- 

------ PSD_FLOW_EDGE

--> 以下数据配置了两级式指挥所有可以执行的操作，根据情况可酌情删减
-->
--> source, target 对应psd_flow_node表数据，分别代表可执行操作的部门，以及操作执行以后警情流转向的部门

-- sql
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e1-2', '1', '2', null, null, 'A01', 'bezier', '0', '系统', null, '0', null, null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e1-3', '1', '3', null, '1t', 'A02', 'bezier', '0', '系统', null, '0', null, '1');
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-10', '2', '10', '6t', null, 'A04', 'bezier', '0', '结案', 'C1000-1', '0', null, null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-3', '2', '3', '2t', '1t', 'A02', 'bezier', '0', '下发', 'A1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-4', '2', '4', '6t', '1t', 'B01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-5', '2', '5', '6t', '1t', 'C01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-6', '2', '6', '6t', '1t', 'D01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e3-7', '3', '7', '6t', '2t', 'B01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e3-8', '3', '8', '6t', '2t', 'C01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e3-9', '3', '9', '6t', '2t', 'D01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e3-2', '3', '2', '9t', '3t', 'A05', 'bezier', '0', '回退', 'B1000-2', '1', 'A05', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e3-2-1', '3', '2', '8t', '4t', 'A06', 'bezier', '0', '上报', 'B1000-3', '1', 'A06', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e6-14', '6', '14', null, null, 'D02', 'bezier', '0', '发布诱导', 'F1000-2', '1', 'D01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e4-11', '4', '11', null, null, 'B02', 'bezier', '0', '派警', 'D1000-1', '1', 'B01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e5-12', '5', '12', null, null, 'C02', 'bezier', '0', '调整信号', 'E1000-1', '1', 'C01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e6-13', '6', '13', null, null, 'D01', 'bezier', '0', '添加节目', 'F1000-1', '1', 'D01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e7-11', '7', '16', null, null, 'B02', 'bezier', '0', '派警', 'D1000-1', '1', 'B01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e8-12', '8', '17', null, null, 'C02', 'bezier', '0', '调整信号', 'E1000-1', '1', 'C01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e9-13', '9', '18', null, null, 'D01', 'bezier', '0', '添加节目', 'F1000-1', '1', 'D01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e9-14', '9', '19', null, null, 'D02', 'bezier', '0', '发布诱导', 'F1000-2', '1', 'D01', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status, rule_id)
values ('e2-20', '2', '20', '6t', '1t', 'E01', 'bezier', '0', '签收', 'B1000-1', '0', 'A03', null);
commit;

update psd_flow_edge t set t.rule_id = '1' where t.id = 'e1-3';
commit;

insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status)
values ('e2-21', '2', '21', '6t', null, null, 'bezier', '0', '警情补充', 'G1000-1', '1', null);
insert into PSD_FLOW_EDGE (id, source, target, source_handle, target_handle, target_status, type, animated, label, action_code, repeatable, source_status)
values ('e3-21', '3', '21', '6t', null, null, 'bezier', '0', '警情补充', 'G1000-1', '1', null);

delete from psd_flow_edge t where t.label = '签收' or t.label = '上报';

commit;

-- 



------ PSD_FLOW_NODE

--> 以下数据配置了两级式指挥所有可以执行的操作，根据情况可酌情删减
-->
--> dept_ids字段请改成现场的部门ID，代表这些岗位都存在于哪些部门，如支队指挥岗，dept_ids填支队部门ID; 大队指挥岗，dept_ids填所有大队的部门ID 逗号分隔

-- sql
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('1', 'input', '{label:''开始''}', '{ x: 600, y: -100 }', null, null, null, null, null, null, '开始');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('10', 'output', '{label:''结束''}', '{ x: 200, y: 300 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('2', 'multihandle', '{' || chr(10) || '      label: ''支队指挥岗''    }', '{ x: 600, y: 100 }', null, null, null, null, 'A1000', '370200000000', '支队指挥岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('3', 'multihandle', '{' || chr(10) || '      label:''大队指挥岗''      }', '{ x: 1690, y: 100 }', null, null, null, null, 'A1000', '370203000000,370212000000,370211000000,370202000000,370213000000,370282000000,370281000000,370214000000,370285000000,370283000000,370200000100,370200000300,370200000400,370200000600,370200000700,370200000800,370200000900,370200001100,370200001200,370200001300,370200001600,370200001700,370200001800,370284000000,370296000010,370295000010,370298000010,370297000010,370299000000,370291000000,370292000000,370293000000,370200000200,370200000010,370200001400,370288888888', '大队指挥岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('4', 'defaulthandle', '{' || chr(10) || '      label: ''支队派警岗''    }', '{ x: 400, y: 300 }', null, null, null, null, 'B1000', '370200000000', '支队派警岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('5', 'defaulthandle', '{' || chr(10) || '      label: ''支队信号岗''' || chr(10) || '    }', '{ x: 580, y: 300 }', null, null, null, null, 'C1000', '370200000000', '支队信号岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('6', 'defaulthandle', '{' || chr(10) || '      label:''支队诱导岗''' || chr(10) || '    }', '{ x: 760, y: 300 }', null, null, null, null, 'D1000', '370200000000', '支队诱导岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('7', 'defaulthandle', '{' || chr(10) || '      label:''大队派警岗''    }', '{ x: 1510, y: 700 }', null, null, null, null, 'B1000', '370203000000,370212000000,370211000000,370202000000,370213000000,370282000000,370281000000,370214000000,370285000000,370283000000,370200000100,370200000300,370200000400,370200000600,370200000700,370200000800,370200000900,370200001100,370200001200,370200001300,370200001600,370200001700,370200001800,370284000000,370296000010,370295000010,370298000010,370297000010,370299000000,370291000000,370292000000,370293000000,370200000200,370200000010,370200001400,370288888888', '大队派警岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('8', 'defaulthandle', '{' || chr(10) || '      label: ''大队信号岗''' || chr(10) || '    }', '{ x: 1810, y: 700 }', null, null, null, null, 'C1000', '370203000000,370212000000,370211000000,370202000000,370213000000,370282000000,370281000000,370214000000,370285000000,370283000000,370200000100,370200000300,370200000400,370200000600,370200000700,370200000800,370200000900,370200001100,370200001200,370200001300,370200001600,370200001700,370200001800,370284000000,370296000010,370295000010,370298000010,370297000010,370299000000,370291000000,370292000000,370293000000,370200000200,370200000010,370200001400,370288888888', '大队信号岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('9', 'defaulthandle', '{' || chr(10) || '      label:''大队诱导岗''    }', '{ x:2110, y: 700 }', null, null, null, null, 'D1000', '370203000000,370212000000,370211000000,370202000000,370213000000,370282000000,370281000000,370214000000,370285000000,370283000000,370200000100,370200000300,370200000400,370200000600,370200000700,370200000800,370200000900,370200001100,370200001200,370200001300,370200001600,370200001700,370200001800,370284000000,370296000010,370295000010,370298000010,370297000010,370299000000,370291000000,370292000000,370293000000,370200000200,370200000010,370200001400,370288888888', '大队诱导岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('20', 'defaulthandle', '{' || chr(10) || '      label:''事故快处岗''    }', '{ x: 940, y: 300 }', null, null, null, null, 'E1000', '370200000000', '事故快处岗');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('11', 'output', '{label:''结束''}', '{ x: 400, y: 600 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('12', 'output', '{label:''结束''}', '{ x: 580, y: 600 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('13', 'output', '{label:''结束''}', '{ x: 760, y: 600 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('14', 'output', '{label:''结束''}', '{ x: 960, y: 600 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('16', 'output', '{label:''结束''}', '{ x: 1510, y: 1300 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('17', 'output', '{label:''结束''}', '{ x: 1810, y: 1300 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('18', 'output', '{label:''结束''}', '{ x: 2110, y: 1300 }', null, null, null, null, null, null, '结束');
insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('19', 'output', '{label:''结束''}', '{ x: 2310, y: 1300 }', null, null, null, null, null, null, '结束');
commit;

insert into PSD_FLOW_NODE (id, type, data, position, target_position, source_position, draggable, connectable, post_code, dept_ids, label)
values ('21', 'output', '{label:''结束''}', '{ x: 1140, y: 300 }', null, null, null, null, null, null, '结束');
-- 

------ PSD_POST_MEASURE

-- sql
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('1', 'D1000', '1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('2', 'D1000', '2');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('3', 'D1000', '3');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('4', 'D1000', '4');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('5', 'D1000', '5');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('6', 'D1000', '6');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('7', 'D1000', '7');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('8', 'D1000', '8');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('9', 'D1000', '9');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('10', 'D1000', '10');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('11', 'D1000', '11');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('12', 'D1000', '12');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('13', 'D1000', '13');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('14', 'D1000', '-1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('15', 'A1000', '1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('16', 'A1000', '2');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('17', 'A1000', '3');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('18', 'A1000', '4');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('19', 'A1000', '5');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('20', 'A1000', '6');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('21', 'A1000', '7');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('22', 'A1000', '8');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('23', 'A1000', '9');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('24', 'A1000', '10');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('25', 'A1000', '11');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('26', 'A1000', '12');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('27', 'A1000', '13');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('28', 'A1000', '-1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('29', 'B1000', '1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('30', 'B1000', '2');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('31', 'B1000', '3');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('32', 'B1000', '4');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('33', 'B1000', '5');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('34', 'B1000', '6');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('35', 'B1000', '7');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('36', 'B1000', '8');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('37', 'B1000', '9');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('38', 'B1000', '10');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('39', 'B1000', '11');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('40', 'B1000', '12');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('41', 'B1000', '13');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('42', 'B1000', '-1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('43', 'C1000', '1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('44', 'C1000', '2');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('45', 'C1000', '3');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('46', 'C1000', '4');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('47', 'C1000', '5');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('48', 'C1000', '6');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('49', 'C1000', '7');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('50', 'C1000', '8');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('51', 'C1000', '9');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('52', 'C1000', '10');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('53', 'C1000', '11');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('54', 'C1000', '12');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('55', 'C1000', '13');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('56', 'C1000', '-1');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('57', 'D1000', '14');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('58', 'D1000', '15');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('59', 'A1000', '14');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('60', 'A1000', '15');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('61', 'B1000', '14');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('62', 'B1000', '15');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('63', 'C1000', '14');
insert into PSD_POST_MEASURE (id, post_code, measure_id)
values ('64', 'C1000', '15');
commit;
-- 

---- -----------------------

------ FACE_LABEL_CONFIG_MAIN

-- sql

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('200003', '突发', '1', '1', null, null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('200002', '常发', '1', '1', null, null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100022', '危化品泄露', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100038', '市区', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.UrbanDistrict.analyseLabel', '1', '1', '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100042', '服务区', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100043', '行人穿越', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100044', '遗撒', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100046', '大雨预警', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100047', '抛锚', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100048', '大雪预警', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100049', '积雪/结冰', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100050', '大雾预警', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100051', '闯禁行', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100052', '未办通行证', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100053', '不按通行路线行驶', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100054', '不按通行时段行驶', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100055', '超速', '1', '2', '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100056', '逾期未年检', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100057', '逾期未报废', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100058', '多次违法未处理', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100059', '疲劳驾驶', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100060', '通勤高峰', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100061', '集市', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100062', '违停', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100063', '瓶颈', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100064', '溢出', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100065', '进出城高峰', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100066', '出收费站流量密集', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100067', '面向小车车位饱和', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100068', '区域流量饱和', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100069', '停车场饱和', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100070', '旅游大巴闯禁行', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('200001', '清障', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100024', '降雪未结冰', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100025', '积雪未结冰', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100026', '部分结冰', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100027', '全线结冰', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100028', '能见度＜50米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibilityLess50.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100029', '50米≤能见度＜100米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility50To100.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100030', '100米≤能见度＜200米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility100To200.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100031', '200米≤能见度＜500米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility200To500.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100032', '蔓延', '1', '4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100033', '区域', '1', '4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100034', '通勤', '1', '4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100036', '隧道', '1', '4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100037', '警卫', '1', '4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100017', '事故', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100001', '伤人', '1', '1,4         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100002', '高速', '1', '4         ', null, '1', '2', '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100003', '危化品', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100040', '测试', '1', '1         ', null, null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100005', '占道施工', '1', '3         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100006', '收费站溢出', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100007', '违法停车', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100008', '团雾', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100009', '拥堵超3KM', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.Jam3KM.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100010', '事故风险', '1', '2', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100011', '信号灯故障', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100012', '积水阻断', '1', '1,3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.PondingBlock.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100013', '绿波降效', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100014', '主干道', '1', '3         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100015', '多车道', '1', '1         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100019', '服务区饱和', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100021', '主线溢出', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100020', '匝道排队', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100023', '积雪阻断', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.AccumulatedSnowBlock.analyseLabel', '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100039', '高速路大小车混行', '1', '2         ', null, '1', null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100041', '拥堵超5KM', '1', null, '1', null, null, '0', null, null);

insert into FACE_LABEL_CONFIG_MAIN (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER, IS_FOCUS, CASE_LEVEL, ADD_TYPE)
values ('100071', '拥堵', '1', '2', '1', '1', null, '0', null, null);


-- 

------ FACE_MAPLAYER_BASE_INFO

-- sql
--图层公共服务
delete from face_maplayer_base_info where MAPLAYER_ID = 'M01';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M01', '路况', '01', null, null, null, null, null, null, null, null, null, null, null, 0, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M02';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M02', '警情', '01', null, null, null, null, null, null, null, null, null, null, null, 1, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M03';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M03', '警力', '01', null, null, null, null, null, null, null, null, null, null, null, 2, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M04';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M04', '交通管制', '01', null, null, null, null, null, null, null, null, null, null, null, 3, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M05';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M05', '占路施工', '01', null, null, null, null, null, null, null, null, null, null, null, 4, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M06';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M06', '交通设备', '01', null, null, null, null, null, null, null, null, null, null, null, 5, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M07';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M07', '交通设施', '01', null, null, null, null, null, null, null, null, null, null, null, 6, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M08';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M08', '关键点位', '01', null, null, null, null, null, null, null, null, null, null, null, 7, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M09';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M09', '重点车辆+预警', '01', null, null, null, null, null, null, null, null, null, null, null, 8, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M15';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M15', '主干道', '01', null, null, null, null, null, null, null, null, null, null, null, 12, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M16';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M16', '重点区域', '01', null, null, null, null, null, null, null, null, null, null, null, 13, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M17';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M17', '停车场', '01', null, null, null, null, null, null, null, null, null, null, null, 14, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M18';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M18', '风险路段', '01', null, null, null, null, null, null, null, null, null, null, null, 15, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M20';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M20', '交警辖区分界', '01', null, null, null, null, null, null, null, null, null, null, null, 17, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M21';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M21', '行政区', '01', null, null, null, null, null, null, null, null, null, null, null, 18, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M22';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M22', '学校', '01', null, null, null, null, null, null, null, null, null, null, null, 19, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M28';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M28', '岗位', '01', null, null, null, null, null, null, null, null, null, null, null, 20, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = 'M29';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('M29', '拥堵路段', '01', null, null, null, null, null, null, null, null, null, null, null, 21, '0', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0101';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0101', '路况', '02', 'M01', '0', null, 'SELECT MS.SECTIONID,
       ms.sectionlevel,
       P.POSITIONS,
       ST.STATUS,
       P.GEOMETRY,
       P.ZOOMLEVEL
  FROM MONITOR_SECTION MS
  LEFT JOIN SECTION_STATUS_CURRENT ST
    ON MS.SECTIONID = ST.SECTION_ID
  LEFT JOIN MONITOR_SECTION_POSITIONS P
    ON P.SECTIONID = MS.SECTIONID', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 0, '1', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0102';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('0102', '路况', '02', 'M01', '2', null, null, null, null, null, 'sde:sectionstatus', 'vms_fault', '201', '0', '0', '0', '3', '0', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '02';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('02', '警情', '02', 'M02', '1', '60', null, 'PoliceCaseServiceImpl', 'getPoliceCaseInfo', null, 'maplayerpop2', 'policecase', null, '0', '1', '0', '0', '0', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '03';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('03', '警力', '02', 'M03', '0', '60', 'select ''警员详情'' as "keyTitle",
       case when NVL(ei.gpstype,'''') = ''3'' then NVL(p.policeid,'''')
            else NVL(ei.gpscarno,'''')
       end as "keyId",
       case when NVL(ei.gpstype,'''') = ''3'' then to_char(NVL(p.policename,''''))
            else NVL(ei.gpscarno,'''')
       end as "keyName",
       case when NVL(ei.gpstype,'''') = ''3'' then  ''警员姓名''
            else ''号牌号码''
       end as "keyLabel",
       NVL(p.policename,'''') as "name",
       NVL(p.policename,'''') as policename,
       NVL(p.policeid,'''') as policeid,
       NVL(p.phone,'''') as phone,
       NVL(e.enumname,'''') as enumname,
       NVL(p.depid,'''') as depid,
       NVL(d.deptshortname,'''' ) as deptshortname,
       NVL(ei.gpstype,'''') as gpstype,
       NVL(ei.gpscarno,'''') as gpscarno,
       case when t.police_status = ''0'' then ''备勤''
            when t.police_status = ''1'' then ''待命''
            when t.police_status = ''2'' then ''执勤''
            else ''''
       end as statusname,
       t.police_status as status,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid,
       substr(t.coordinate,0,instr(t.coordinate,'','')-1) as "longitude",
       substr(t.coordinate,instr(t.coordinate,'','')+1) as "latitude",
       cardept.deptshortname as cardeptshortname,
       t.device_id as deviceid
  from pis_police_info t
  left join police p
    on p.policeid = t.police_id
  left join equipment_info ei
    on ei.thirdsyscode = t.device_id
  left join enum_type e
    on e.enumtypeid = ''734''
   and e.enumvalue = ei.gpstype
  left join department d
    on d.cdepartmentid = p.depid
  left join department cardept
    on cardept.cdepartmentid = ei.departmentid
 where t.dtrecordtime > sysdate - (SELECT NVL(PARAM.PARAMVALUE, 5)
                  FROM (SELECT T.PARAMVALUE
                          FROM SYSPARAMS T
                         WHERE T.PARAMCODE = ''GPS_ONLINE_TIME_INTERVAL'') PARAM) / 1440', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '0', '2', '0', '0', '1', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0301';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0301', '公车定位（车）', '02', 'M03', '0', null, null, 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '1', 3, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0302';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0302', '车载定位（车）', '02', 'M03', '0', null, 'select ''警员详情'' as "keyTitle",
       NVL(ei.gpscarno,'''') as "keyId",
       NVL(ei.gpscarno,'''') as "keyName",
       ''号牌号码'' as "keyLabel",
       NVL(p.policename,'''') as "name",
       NVL(p.policename,'''') as policename,
       NVL(p.policeid,'''') as policeid,
       NVL(p.phone,'''') as phone,
       NVL(e.enumname,'''') as enumname,
       NVL(p.depid,'''') as depid,
       NVL(d.deptshortname,'''' ) as deptshortname,
       NVL(ei.gpstype,'''') as gpstype,
       NVL(ei.gpscarno,'''') as gpscarno,
       case when t.police_status = ''0'' then ''备勤''
            when t.police_status = ''1'' then ''待命''
            when t.police_status = ''2'' then ''执勤''
            else ''''
       end as statusname,
       t.police_status as status,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid,
       substr(t.coordinate,0,instr(t.coordinate,'','')-1) as "longitude",
       substr(t.coordinate,instr(t.coordinate,'','')+1) as "latitude",
       cardept.deptshortname as cardeptshortname,
       t.device_id as deviceid
  from pis_police_info t
  left join police p
    on p.policeid = t.police_id
  left join equipment_info ei
    on ei.thirdsyscode = t.device_id
  left join enum_type e
    on e.enumtypeid = ''734''
   and e.enumvalue = ei.gpstype
  left join department d
    on d.cdepartmentid = p.depid
  left join department cardept
    on cardept.cdepartmentid = ei.departmentid
 where t.dtrecordtime > sysdate - (SELECT NVL(PARAM.PARAMVALUE, 5)
                  FROM (SELECT T.PARAMVALUE
                          FROM SYSPARAMS T
                         WHERE T.PARAMCODE = ''GPS_ONLINE_TIME_INTERVAL'') PARAM) / 1440
   and (NVL(ei.gpstype,'''') = ''1'' OR  NVL(ei.gpstype,'''') = ''2'')', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '1', 4, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0303';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0303', '350M对讲机（人）', '02', 'M03', '1', null, null, 'PoliceGpsServiceImpl', 'getPoliceGpsInfo', null, 'maplayerpop2', 'police', null, '1', 5, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0304';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0304', '4G执法记录仪（人）', '02', 'M03', '0', null, 'select ''警员详情'' as "keyTitle",
       NVL(p.policeid,'''') as "keyId",
       to_char(NVL(p.policename,'''')) as "keyName",
       ''警员姓名'' as "keyLabel",
       NVL(p.policename,'''') as "name",
       NVL(p.policename,'''') as policename,
       NVL(p.policeid,'''') as policeid,
       NVL(p.phone,'''') as phone,
       NVL(e.enumname,'''') as enumname,
       NVL(p.depid,'''') as depid,
       NVL(d.deptshortname,'''' ) as deptshortname,
       NVL(ei.gpstype,'''') as gpstype,
       NVL(ei.gpscarno,'''') as gpscarno,
       case when t.police_status = ''0'' then ''备勤''
            when t.police_status = ''1'' then ''待命''
            when t.police_status = ''2'' then ''执勤''
            else ''''
       end as statusname,
       t.police_status as status,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid,
       substr(t.coordinate,0,instr(t.coordinate,'','')-1) as "longitude",
       substr(t.coordinate,instr(t.coordinate,'','')+1) as "latitude",
       cardept.deptshortname as cardeptshortname,
       t.device_id as deviceid
  from pis_police_info t
  left join police p
    on p.policeid = t.police_id
  left join equipment_info ei
    on ei.thirdsyscode = t.device_id
  left join enum_type e
    on e.enumtypeid = ''734''
   and e.enumvalue = ei.gpstype
  left join department d
    on d.cdepartmentid = p.depid
  left join department cardept
    on cardept.cdepartmentid = ei.departmentid
 where t.dtrecordtime > sysdate - (SELECT NVL(PARAM.PARAMVALUE, 5)
                  FROM (SELECT T.PARAMVALUE
                          FROM SYSPARAMS T
                         WHERE T.PARAMCODE = ''GPS_ONLINE_TIME_INTERVAL'') PARAM) / 1440

   and NVL(ei.gpstype,'''') = ''5''', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '1', 6, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0305';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0305', '移动警务通（人）', '02', 'M03', '0', null, null, 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '1', 7, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '04';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('04', '交通管制', '02', 'M04', '0', null, '
select ''交通管制详情'' as "keyTitle",
       NVL(c.id, '''') as "keyId",
       to_char(NVL(c.constructname, '''')) as "keyName",
       ''管制名称'' as "keyLabel",
       NVL(c.constructname, '''') as "name",
       to_char(c.id) as "projectId",
       C.LOCATION as "location",
       C.CONTACTPERSON as "contactPerson",
       C.CONTACTMODE as "contactMode",
       to_char(c.status) as "status",
       c.projectname as "title",
       to_char(c.starttime, ''yyyy-mm-dd hh:mm:ss'') as "startTime",
       to_char(c.endtime, ''yyyy-mm-dd hh:mm:ss'') as "endTime",
       C.CONSTRUCTOR as "constructor",
       C.LONGITUDE as "longitude",
       C.LATITUDE as "latitude",
       C.INFLUENCEDSECTIONS as "influencedSections",
       C.EFFECTAREA as "effectArea",
       C.DESCRIPTION as "description"
  from CONSTRUCTION c
 where c.starttime <= sysdate
   and c.endtime >= sysdate
   and c.status = 0', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'guanzhi', null, '1', 8, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '05';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('05', '占路施工', '02', 'M05', '0', null, '

 SELECT ''占路施工详情'' as "keyTitle",
       NVL(DR.NID, '''') as "keyId",
       to_char(NVL(DR.PROJECTNAME, '''')) as "keyName",
       ''管制名称'' as "keyLabel",
       NVL(DR.PROJECTNAME, '''') as "name",
       DR.NID as "nid",
       DR.REQUESTDEPT as "requestDept",
       DR.DIGDEPT as "digDept",
       DR.DIGROAD_INFO as "digroadInfo",
       DR.PRINCIPAL as "principal",
       DR.TELEPHONE as "telephone",
       DR.LONGITUDEANDLATITUDE  AS "coordinate",
       DR.COORDINATE_TYPE  AS "coordType",
       to_char(dr.begindate, ''yyyy-mm-dd'') as "beginDate",
       to_char(dr.enddate, ''yyyy-mm-dd'') as "endDate",
       DR.DIGPERIOD as "digPeriod",
       DR.DIGTYPE as "digType",
       DEP.DEPTSHORTNAME as "deptShortName"
  from digroad dr
  left join department dep
    on dr.CDEPARTMENTID = dep.cdepartmentid
 WHERE dr.NODEID = ''effecting''
 order by dr.coordinate_type desc', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'zhanlu', null, '1', 9, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '06';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('06', '卡口', '02', 'M06', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
       E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       e.vmstype,
       e.videotype,
       e.ctrlflag,
       e.devicestate,
       e.devicemodel,
        e.image1path,
       e.image2path,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       ES.DEVICESTATENAME,
     DEP.deptshortname,
      case when DEP.nlevel = ''4'' then DEP.parentdepartment
            else DEP.cdepartmentid
       end as deptid
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
   LEFT JOIN department DEP
    on E.DEPARTMENTID = DEP.cdepartmentid
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICETYPE = ''02''
    and e.devicestate in (''1'')
', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'video_normal', null, '1', 23, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0613';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0613', '人脸抓拍', '02', 'M06', null, null, null, null, null, null, null, null, null, '1', 24, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0701';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0701', '人行横道信号灯', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
 where t.typecode1 = ''02''
   and t.typecode2 = ''0202''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 25, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0702';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0702', '机动车信号灯', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
 where t.typecode1 = ''02''
   and t.typecode2 = ''0204''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 26, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0703';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0703', '中心分离', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
 where t.typecode1 = ''004''
   and t.typecode2 = ''00401''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 27, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0704';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0704', '人行道分离', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
 where t.typecode1 = ''004''
   and t.typecode2 = ''00402''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 28, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0705';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0705', '警告标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
 where t.typecode1 = ''01''
   and t.typecode2 = ''0101''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 29, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0706';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0706', '禁令标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''01''
   and t.typecode2 = ''0102''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 30, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0707';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0707', '指路标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''01''
   and t.typecode2 = ''0103''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 31, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0708';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0708', '提示标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''01''
   and t.typecode2 = ''0104''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 32, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0709';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0709', '旅游区标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''01''
   and t.typecode2 = ''0105''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 33, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0710';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0710', '道路施工安全标志', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''01''
   and t.typecode2 = ''0106''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 34, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0711';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0711', '人行横道线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinate",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00701''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 35, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0712';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0712', '导向线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinate",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00702'' ', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 36, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0713';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0713', '黄黄线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinate",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00703'' ', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 37, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0714';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0714', '单实线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinates",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00704''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 38, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0715';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0715', '虚线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinate",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00705''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 39, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0716';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0716', '网格线', '02', 'M07', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''设备名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.coordinates as "coordinate",
       t.imageurl1 as "imageurl1",
       t.imageurl2 as "imageurl2",
       t.imageurl3 as "imageurl3",
       t.imageurl4 as "imageurl4",
       case when t.status = ''1'' then ''正常''
            when t.status = ''2'' then ''申请中''
            when t.status = ''9'' then ''驳回''
       end as "statusName",
       t.status as "status"
  from faci_info t
where t.typecode1 = ''007''
   and t.typecode2 = ''00706''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'vms_fault', null, '1', 40, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0803';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0803', '进出城点位', '02', 'M08', '0', null, 'select t.crossing_code as "crossingCode", t.crossing_name as "crossingName",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude" from face_inoutcity_crossing t', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, null, null, '1', 46, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0805';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0805', '执法站', '02', 'M08', '0', null, 'SELECT ''点位详情'' as "keyTitle",
       NVL(t.code, '''') as "keyId",
       to_char(NVL(t.name, '''')) as "keyName",
       ''点位名称'' as "keyLabel",
       NVL(t.name, '''') as "name",
       t.CODE as "code",
       t.name           AS "title",
       t.DIRECTION as "direction",
       et.enumname      as "status",
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.MANAGEMENTDEPT as "managementDept",
       d1.deptshortname as "ddeptname",
       d2.deptshortname as "zhongdeptname",
       r.dlmc as "dlmc"
  from TRAFFIC_INFO t
  LEFT JOIN department d1
    ON d1.cdepartmentid = t.dadept
  LEFT JOIN department d2
    ON d2.cdepartmentid = t.zhongdept
  LEFT JOIN vio_coderoad r
    ON r.nid = t.dldm
  left join enum_type et
    on et.enumtypeid = ''3100''
   and et.enumvalue = t.status
 WHERE t.delflag = 0
   and t.type = ''26''', 'MaplayerServiceImpl2', 'queryDataBySql', null, null, 'zhifazhan', null, '1', 44, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0806';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0806', '建筑垃圾回填场', '02', 'M08', '0', null, '   select ''点位详情'' as "keyTitle",
       NVL(t.area_code, '''') as "keyId",
       to_char(NVL(t.area_name, '''')) as "keyName",
       ''点位名称'' as "keyLabel",
	   t.area_code    as "areaCode",
       t.area_name    as "areaName",
       t.back_address as "backAddress",
       t.unit_name    as "unitName",
       t.telephone    as "telephone",
       t.contacts     as "contacts"
  from construction_waste_back t', 'MaplayerServiceImpl2', 'queryDataBySql', null, '1', 'vms_fault', null, '1', 45, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0904';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0904', '出租车定位', '02', 'M09', '1', null, null, 'VehicleGpsServiceImpl', 'getVehicleGpsInfo', '{"type":"2"}', '1', 'vms_fault', null, '1', 50, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0905';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0905', '网约车定位', '02', 'M09', '1', null, null, 'VehicleGpsServiceImpl', 'getVehicleGpsInfo', '{"type":"3"}', null, 'vms_fault', null, '1', 51, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0906';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0906', '公交车定位', '02', 'M09', '1', null, null, 'VehicleGpsServiceImpl', 'getVehicleGpsInfo', '{"type":"4"}', null, 'vms_fault', null, '1', 52, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '0907';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('0907', '渣土车', '02', 'M09', null, null, null, null, null, null, null, null, null, '1', 53, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1201';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1201', '交通基础设施隐患', '02', 'M12', null, null, null, null, null, null, null, null, null, '1', 54, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1202';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1202', '占掘路施工隐患', '02', 'M12', null, null, null, null, null, null, null, null, null, '1', 55, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1203';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1203', '“物”要素隐患', '02', 'M12', null, null, null, null, null, null, null, null, null, '1', 56, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1204';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1204', '其他隐患（农村地区隐患）', '02', 'M12', null, null, null, null, null, null, null, null, null, '1', 57, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '13';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('13', '事故高发点', '02', 'M13', null, null, null, null, null, null, null, null, null, '1', 58, '1', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '14';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('14', '安全指数', '02', 'M14', null, null, null, null, null, null, null, null, null, '1', 59, '1', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '15';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('15', '主干道', '02', 'M15', '0', null, 'select ''主干道详情'' as "keyTitle",
       NVL(t.line_id, '''') as "keyId",
       to_char(NVL(t.line_name, '''')) as "keyName",
       ''主干道名称'' as "keyLabel",
       NVL(t.line_name, '''') as "name",
	   t.line_id as "lineId",
       t.line_name  as "lineName",
       t.line_len  as "lineLen",
       t.coordinate  as "coordinate",
       t.line_type  as "lineType",
       case
         when t.line_type = ''60'' then
          ''拥堵干线''
         when t.line_type = ''61'' then
          ''协调干线''
         when t.line_type = ''20'' then
          ''通勤干道''
         when t.line_type = ''30'' then
          ''高速''
         when t.line_type = ''31'' then
          ''隧道''
         when t.line_type = ''32'' then
          ''桥梁''
       end as "lineTypeName"
  from face_line t
 where t.line_model = ''2''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'mainline', null, '1', 60, '0', '3', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1601';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1601', '政府单位', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
	   a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''5''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'government', null, '1', 61, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1602';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1602', '景区', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
	   a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''1''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'scenic', null, '1', 62, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1603';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1603', '场馆', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
     a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''2''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'venue', null, '1', 63, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1604';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1604', '商圈', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
	   a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''6''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'trade', null, '1', 64, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1605';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1605', '枢纽', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
	   a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''3''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'hub', null, '1', 65, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1606';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1606', '学校', '02', 'M16', '0', null, 'select ''重点区域详情'' as "keyTitle",
       NVL(a.area_id, '''') as "keyId",
       to_char(NVL(a.area_name, '''')) as "keyName",
       ''重点区域名称'' as "keyLabel",
       NVL(a.area_name, '''') as "name",
	   a.area_id           "areaId",
       a.area_name         "areaName",
       a.area_type         "areaType",
       ai.jampercent       "jamPercent",
       ai.jampercentchange "jamPercentChange",
       a.coordinates  "coordinate",
       ai.jamlength        "jamLength"
  from face_area a
  left join face_area_index_view ai
    on a.area_id = ai.area_id
   and ai.collect_time > sysdate - 1 / 48
 where a.coordinates is not null
   and a.area_model = ''2''
   and (a.date_flag = ''1'' or
       (a.area_model = ''2'' and
       a.area_id in
       (select ah.area_id
            from face_area_holiday   ah,
                 face_holiday        h,
                 face_holiday_config hc
           where ah.holiday_id = h.holiday_id
             and h.holiday_id = hc.holiday_id
             and trunc(sysdate) >= hc.start_date
             and trunc(sysdate) <= hc.end_date
             and nvl(instr(hc.workday_off, to_char(sysdate, ''yyyy-mm-dd'')),
                     0) = 0)))
 and a.area_type = ''4''
 order by NVL(ai.jampercent, -1) desc', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'school', null, '1', 66, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '17';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('17', '停车场', '02', 'M17', '0', null, 'SELECT ''停车场详情'' as "keyTitle",
       a.PARKINGID as "keyId",
       a.PARKINGNAME as "keyName",
       ''停车场名称'' as "keyLabel",
       a.PARKINGNAME as "name",
       a.*
  FROM (SELECT t.serial PARKINGID,
               t.name PARKINGNAME,
               decode(nvl(p.berthcount, 0), 0, t.berthcount, p.berthcount) BERTHCOUNT,
               case
                 when occupiedcount is null then
                  null
                 else
                  (decode(nvl(p.berthcount, 0), 0, t.berthcount, p.berthcount) -
                  occupiedcount)
               end as SPARECOUNT,
               P.OCCUPIEDCOUNT,
               T.COORDINATES as "coordinate",
               case
                 when nvl(p.berthcount, 0) = 0 and nvl(t.berthcount, 0) = 0 then
                  null
                 when to_char(p.occupiedcount * 100 /
                              decode(nvl(p.berthcount, 0),
                                     0,
                                     t.berthcount,
                                     p.berthcount),
                              ''999990.9'') like ''%.0'' then
                  to_char(p.occupiedcount * 100 /
                          decode(nvl(p.berthcount, 0),
                                 0,
                                 t.berthcount,
                                 p.berthcount),
                          ''999990'')
                 else
                  to_char(p.occupiedcount * 100 /
                          decode(nvl(p.berthcount, 0),
                                 0,
                                 t.berthcount,
                                 p.berthcount),
                          ''999990.9'')
               end as USERATIO
          FROM faci_vehiclepark t
          left join parkingspace p
            on p.serial = t.serial
           and p.normal = ''1''
           and p.savetime > sysdate - 30 / (24 * 60)
         where 1 = 1) a
 order by a.useRatio desc nulls last', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'park', null, '1', 67, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1802';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1802', '易滑路段', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"4"}', null, 'jishuidian', null, '1', 69, '0', '1', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1803';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1803', '团雾易发路段', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"5"}', null, 'jishuidian', null, '1', 70, '0', '1', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1804';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1804', '长下坡', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"2"}', null, 'jishuidian', null, '1', 71, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1805';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1805', '急转弯', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"3"}', null, 'jishuidian', null, '1', 72, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1806';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1806', '隧道', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"6"}', null, 'jishuidian', null, '1', 73, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1807';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1807', '涵洞', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"7"}', null, 'jishuidian', null, '1', 74, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1808';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1808', '桥梁', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"8"}', null, 'jishuidian', null, '1', 75, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1901';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1901', '能见度', '02', 'M19', '0', null, 'select mp.longitude as "longitude",
       mp.latitude as "latitude",
       ''设备检测'' as "dataSource",
       t.visibility as "visibility",
       t.pointname as "pointName"
  from meteorology t
inner join monitor_point mp
on t.pointid = mp.pointcode
 where t.detecttime =
       (select NVL(max(detecttime), sysdate - 30 / 1440)
          from meteorology
         where detecttime > sysdate - 30 / 1440)', 'MaplayerServiceImpl', 'queryDataBySql', null, null, null, null, '1', 76, '1', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1902';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1902', '降水量', '02', 'M19', '0', null, 'select mp.longitude as "longitude",
       mp.latitude as "latitude",
       ''设备检测'' as "dataSource",
       t.rainfall as "rainfall",
       t.pointname as "pointName"
  from meteorology t
inner join monitor_point mp
on t.pointid = mp.pointcode
 where t.detecttime =
       (select NVL(max(detecttime), sysdate - 30 / 1440)
          from meteorology
         where detecttime > sysdate - 30 / 1440)', 'MaplayerServiceImpl', 'queryDataBySql', null, null, null, null, '1', 77, '1', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1903';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1903', '积水量', '02', 'M19', '0', null, 'select mp.longitude as "longitude",
       mp.latitude as "latitude",
       ''设备检测'' as "dataSource",
       t.waterthickness as "waterThickness",
       t.pointname as "pointName"
  from meteorology t
inner join monitor_point mp
on t.pointid = mp.pointcode
 where t.detecttime =
       (select NVL(max(detecttime), sysdate - 30 / 1440)
          from meteorology
         where detecttime > sysdate - 30 / 1440)', 'MaplayerServiceImpl', 'queryDataBySql', null, null, null, null, '1', 78, '1', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '1904';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('1904', '结冰量', '02', 'M19', '0', null, 'select mp.longitude as "longitude",
       mp.latitude as "latitude",
       ''设备检测'' as "dataSource",
       t.icethickness as "iceThickness",
       t.pointname as "pointName"
  from meteorology t
inner join monitor_point mp
on t.pointid = mp.pointcode
 where t.detecttime =
       (select NVL(max(detecttime), sysdate - 30 / 1440)
          from meteorology
         where detecttime > sysdate - 30 / 1440)', 'MaplayerServiceImpl', 'queryDataBySql', null, null, null, null, '1', 79, '1', null, '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '2001';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('2001', '大队', '02', 'M20', '0', null, 'select ''辖区详情'' as "keyTitle",
       nvl(d.DISTRICT_CODE,'''') as "keyId",
       nvl(d.DISTRICT_NAME,'''') as "keyName",
       ''辖区名称'' as "keyLabel",
       NVL(d.DISTRICT_NAME,'''') as "name",
       d.DISTRICT_CODE as districtCode,
       d.DISTRICT_NAME as districtName,
       d.COORDINATE as "coordinate",
       d.SHORT_NAME as shortName,
       d.REMARK as remark,
       t.cdepartmentid as deptid,
       nvl(fdc.coordinate, '''') as "centercoordinate"
  from district d
 inner join department t
    on d.dept_id = t.cdepartmentid
  left join FACE_DISTRICT_CENTER fdc
       on fdc.AREA_DEPT_ID = d.dept_id
 where t.nlevel = ''3''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'dadui', null, '0', 80, '0', '2', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '2002';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('2002', '中队', '02', 'M20', '0', null, 'select ''辖区详情'' as "keyTitle",
       nvl(d.DISTRICT_CODE,'''') as "keyId",
       nvl(d.DISTRICT_NAME,'''') as "keyName",
       ''辖区名称'' as "keyLabel",
       NVL(d.DISTRICT_NAME,'''') as "name",
       d.DISTRICT_CODE as districtCode,
       d.DISTRICT_NAME as districtName,
       d.COORDINATE as "coordinate",
       d.SHORT_NAME as shortName,
       d.REMARK as remark,
       t.parentdepartment as deptid,
       nvl(fdc.coordinate, '''') as "centercoordinate"
  from district d
 inner join department t
    on d.dept_id = t.cdepartmentid
  left join FACE_DISTRICT_CENTER fdc
       on fdc.AREA_DEPT_ID = d.dept_id
 where t.nlevel = ''4''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'zhongdui', null, '0', 81, '0', '2', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '2003';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('2003', '警区', '02', 'M20', '0', null, 'select ''辖区详情'' as "keyTitle",
       nvl(d.DISTRICT_CODE,'''') as "keyId",
       nvl(d.DISTRICT_NAME,'''') as "keyName",
       ''辖区名称'' as "keyLabel",
       NVL(d.DISTRICT_NAME,'''') as "name",
       d.DISTRICT_CODE as districtCode,
       d.DISTRICT_NAME as districtName,
       d.COORDINATE as "coordinate",
       d.SHORT_NAME as shortName,
       d.REMARK as remark,
       NVL(dt.parentdepartment,'''') as deptId,
       nvl(fdc.coordinate, '''') as "centercoordinate"
  from district d
 inner join department t
    on d.dept_id = t.cdepartmentid
  left join department dt
         on dt.cdepartmentid = t.parentdepartment
  left join FACE_DISTRICT_CENTER fdc
       on fdc.AREA_DEPT_ID = d.dept_id
 where t.nlevel = ''5''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'jingqu', null, '0', 82, '0', '2', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '22';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('22', '信号', '02', 'M06', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
       BC.HICON_CROSSING AS SIGNALCODE,
       BC.HICON_CROSSING AS "signalcode",
       E.THIRDSYSCODE,
       E.PROVIDER,
       E.DEVICEID,
       E.DEVICENAME,
       E.Deviceip,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        M.LONGITUDE as "longitude",
       M.LATITUDE as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME,
     case when DEP.nlevel = ''4'' then DEP.parentdepartment
            else DEP.cdepartmentid
       end as deptid
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN BIS_CROSSING BC
     ON BC.CROSSING_CODE = M.Crossingcode
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''11''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'utc', null, '0', '10', '0', '0', '1', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '23';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('23', '诱导', '02', 'M06', '0', null, ' SELECT E.DEVICEID as "DEVICEID",
        E.DEVICENAME as "DEVICENAME",
        ''设备详情'' as "keyTitle",
        E.DEVICEID as "keyId",
        E.DEVICENAME as "keyName",
        ''设备名称'' as "keyLabel",
        E.DEVICENAME as "name",
        E.DEVICETYPE as "DEVICETYPE",
        E.THIRDSYSCODE as "THIRDSYSCODE",
        E.PROVIDER as "PROVIDER",
        E.Deviceip,
        to_char(E.PROVIDEDATE, ''yyyy-MM-dd'') as "PROVIDEDATE",
        E.EPFUNC as "EPFUNC",
        NVL(Et.Enumname,'''') as "VMSTYPE",
        E.VIDEOTYPE as "VIDEOTYPE",
        E.CTRLFLAG as "CTRLFLAG",
        E.DEVICESTATE as "DEVICESTATE",
        E.DEVICEMODEL as "DEVICEMODEL",
        --NVL(tmp.ELEMENT_URL,'''') as "ELEMENTURL",
        M.LONGITUDE as "longitude",
        M.LATITUDE as "latitude",
        M.POINTCODE as "POINTCODE",
        M.POINTNAME as "POINTNAME",
        ES.DEVICESTATENAME as "DEVICESTATENAME",
        DEP.DEPTSHORTNAME as "DEPTSHORTNAME",
        e.image1path,
        e.image2path
        FROM EQUIPMENT_INFO E
        --LEFT JOIN (SELECT vs.vms_id,
        --listagg(vpe.element_url,'';'') within group(order by vpe.element_id ) as element_url
        --FROM vms_showlist vs
        --INNER JOIN vms_preset_element vpe
        --on instr(vs.element_ids, vpe.element_id) > 0
        --and (trim(vpe.vms_type) = ''2'' or trim(vpe.vms_type) = ''3'')
       -- group by vs.vms_id) TMP
       -- ON TMP.vms_id = E.DEVICEID
        LEFT JOIN MONITOR_POINT M
        ON M.POINTCODE = E.POINTID
        LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
        FROM ENUM_TYPE ET
        WHERE ET.ENUMTYPEID = ''100'') ES
        ON ES.ESTATUS = E.DEVICESTATE
        LEFT JOIN DEPARTMENT DEP
        ON E.DEPARTMENTID = DEP.CDEPARTMENTID
        LEFT join enum_type et on et.enumtypeid = ''186''
        and et.enumvalue = E.VMSTYPE
        WHERE 1 = 1
        AND M.LONGITUDE > 0
        AND M.LATITUDE > 0
        AND E.DEVICESTATE IN (''1'', ''4'', ''5'')
        AND E.DEVICETYPE = ''10''        ', 'GuideServiceImpl', 'getGuideInfo', null, null, 'vms', null, '0', '11', '0', '0', '0', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '24';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT, SHOW_PAGE, OPEN_FLAG, SHOW_SCENE)
values ('24', '视频', '02', 'M06', '0', null, 'SELECT ''设备详情'' as "keyTitle",
       E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
       E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.Deviceip,
       e.vmstype,
       e.videotype,
       e.ctrlflag,
       e.devicestate,
       e.devicemodel,
        e.image1path,
       e.image2path,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''no'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.deptshortname,
      case when DEP.nlevel = ''4'' then DEP.parentdepartment
            else DEP.cdepartmentid
       end as deptid
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
   LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN department DEP
    on E.DEPARTMENTID = DEP.cdepartmentid
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''13''
    AND E.videotype IN (''1'',''2'',''8'',''9'')
    AND E.THIRDSYSCODE is not null', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'video', null, '0', '12', '0', '0', '0', null, null, 'BASIC', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '25';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('25', '气象检测器', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME as "name",
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME,
     mete.RAINFALL, mete.VISIBILITY, mete.WATERTHICKNESS,mete.ICETHICKNESS
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
   left join meteorology mete on e.pointid = mete.pointid and mete.detecttime >= sysdate - 30/1440
   and not exists(select 1 from meteorology m2 where m2.pointid=mete.pointid and m2.detecttime>mete.detecttime)
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''34''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 13, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '26';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('26', '事件检测器', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICENAME,
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''33''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 14, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '27';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('27', '控距设备', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICETYPE,
       E.DEVICENAME as "name",
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
   join face_maplayer_device_ref ref on ref.pointid = e.pointid and ref.devicetype=''01''
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 15, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '28';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('28', '流量检测', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''16''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 16, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '29';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('29', '雾区防撞', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''36''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 17, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '30';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('30', '喊话', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''35''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 18, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '31';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('31', '电子警察', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''01''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 19, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '32';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('32', '公路卡口', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')
    AND E.DEVICETYPE = ''02''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 20, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '33';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('33', '雾气浓见度检测', '02', 'M06', '0', null, 'SELECT E.DEVICEID,
       E.DEVICENAME,
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
     E.THIRDSYSCODE,
       E.PROVIDER,
       to_char(E.PROVIDEDATE,''yyyy-MM-dd'') as PROVIDEDATE,
       E.EPFUNC,
       E.VMSTYPE,
       E.VIDEOTYPE,
       E.CTRLFLAG,
       E.DEVICESTATE,
       E.DEVICEMODEL,
        E.IMAGE1PATH,
       E.IMAGE2PATH,
        m.longitude as "longitude",
       m.latitude as "latitude",
       M.POINTCODE,
       M.POINTNAME,
       NVL(RES.RESOURCEID, ''NO'') HASBUTTON,
       ES.DEVICESTATENAME,
     DEP.DEPTSHORTNAME
   FROM EQUIPMENT_INFO E
   LEFT JOIN MONITOR_POINT M
     ON M.POINTCODE = E.POINTID
   LEFT JOIN (SELECT ET.ENUMVALUE AS ESTATUS, ET.ENUMNAME AS DEVICESTATENAME
                FROM ENUM_TYPE ET
               WHERE ET.ENUMTYPEID = ''100'') ES
     ON ES.ESTATUS = E.DEVICESTATE
     LEFT JOIN (SELECT URR.NUSERID, RRR.RESOURCEID
                FROM USER_ROLE_RELATION URR
                JOIN ROLE_RESOURCE_RELATION RRR
                  ON RRR.ROLEID = URR.ROLEID
                 AND URR.NUSERID = ''(userId)'') RES
     ON RES.RESOURCEID = M.POINTCODE
   LEFT JOIN DEPARTMENT DEP
    ON E.DEPARTMENTID = DEP.CDEPARTMENTID
   join face_maplayer_device_ref ref on ref.pointid = e.pointid and ref.devicetype=''02''
  WHERE 1 = 1
    AND M.LONGITUDE > 0
    AND M.LATITUDE > 0
    AND E.DEVICESTATE IN (''1'')', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'vms_fault', null, '1', 21, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '34';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('34', '公路客运', '02', 'M09', '0', null, 'select gps.carno as "keyId",
       gps.carno as "keyName",
       ''号牌号码'' as "keyLabel",
       gps.carno as "name",
       gps.carno "carno",
       to_char(gps.collectiondate,''yyyy-MM-dd hh24:mi:ss'') "collectiondate",
       gps.latitude "latitude",
       gps.longitude "longitude",
       gps.speed || '' Km/h'' as  "speed",
       car.carcolor "carcolor",
       car.cartype "cartype",
       car.carbrand "carbrand",
       car.transporttype "transporttype",
       car.companyname "companyname",
       '''' as deptid
  from (select b.*
          from (select row_number() over(partition by carno order by collectiondate desc) as rd,
                       tmp.*
                  from (select *
                          from keycar_loction_inqd_new tmp
                         where collectiondate > sysdate - 5 / 1440) tmp) b
         where b.rd = 1) gps
  join (select a.carno,
               a.carcolor,
               a.cartype,
               a.carbrand,
               a.transporttype,
               a.companyname
          from keycar_vehicle_base a
         where a.transporttype = ''班线客车''
        union
        select b.carno,
               b.carcolor,
               b.cartype,
               b.carbrand,
               b.transporttype,
               b.companyname
          from (select row_number() over(partition by carno order by intoqddate desc) as rd,
                       tmp.*
                  from keycar_vehicle_base_inqd tmp
                 where tmp.transporttype = ''班线客车'') b
         where b.rd = 1) car
    on gps.carno = car.carno', 'MaplayerServiceImpl3', 'queryDataBySql', null, null, 'bus', null, '1', 47, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '35';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('35', '旅游客运', '02', 'M09', '0', null, 'select gps.carno as "keyId",
       gps.carno as "keyName",
       ''号牌号码'' as "keyLabel",
       gps.carno as "name",
        gps.carno "carno",
        to_char(gps.collectiondate,''yyyy-MM-dd hh24:mi:ss'') "collectiondate",
       gps.latitude "latitude",
       gps.longitude "longitude",
       gps.speed  || '' Km/h'' "speed",
       car.carcolor "carcolor",
       car.cartype "cartype",
       car.carbrand "carbrand",
       car.transporttype "transporttype",
       car.companyname "companyname",
       '''' as deptid
  from (select b.*
          from (select row_number() over(partition by carno order by collectiondate desc) as rd,
                       tmp.*
                  from (select *
                          from keycar_loction_inqd_new tmp
                         where collectiondate > sysdate - 5 / 1440) tmp) b
         where b.rd = 1) gps
  join (select a.carno,
               a.carcolor,
               a.cartype,
               a.carbrand,
               a.transporttype,
               a.companyname
          from keycar_vehicle_base a
         where a.transporttype = ''旅游包车''
        union
        select b.carno,
               b.carcolor,
               b.cartype,
               b.carbrand,
               b.transporttype,
               b.companyname
          from (select row_number() over(partition by carno order by intoqddate desc) as rd,
                       tmp.*
                  from keycar_vehicle_base_inqd tmp
                 where tmp.transporttype = ''旅游包车'') b
         where b.rd = 1) car
    on gps.carno = car.carno', 'MaplayerServiceImpl3', 'queryDataBySql', null, null, 'tour', null, '1', 48, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '36';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('36', '危化品', '02', 'M09', '0', null, 'select gps.carno as "keyId",
       gps.carno as "keyName",
       ''号牌号码'' as "keyLabel",
       gps.carno as "name",
       gps.carno "carno",
       to_char(gps.collectiondate,''yyyy-MM-dd hh24:mi:ss'') "collectiondate",
       gps.latitude "latitude",
       gps.longitude "longitude",
       gps.speed  || '' Km/h'' "speed",
       car.carcolor "carcolor",
       car.cartype "cartype",
       car.carbrand "carbrand",
       car.transporttype "transporttype",
       car.companyname "companyname",
       '''' as deptid
  from (select b.*
          from (select row_number() over(partition by carno order by collectiondate desc) as rd,
                       tmp.*
                  from (select *
                          from keycar_loction_inqd_new tmp
                         where collectiondate > sysdate - 5 / 1440) tmp) b
         where b.rd = 1) gps
  join (select a.carno,
               a.carcolor,
               a.cartype,
               a.carbrand,
               a.transporttype,
               a.companyname
          from keycar_vehicle_base a
         where a.transporttype = ''危险品''
        union
        select b.carno,
               b.carcolor,
               b.cartype,
               b.carbrand,
               b.transporttype,
               b.companyname
          from (select row_number() over(partition by carno order by intoqddate desc) as rd,
                       tmp.*
                  from keycar_vehicle_base_inqd tmp
                 where tmp.transporttype = ''危险品'') b
         where b.rd = 1) car
    on gps.carno = car.carno', 'MaplayerServiceImpl3', 'queryDataBySql', null, null, 'danger', null, '1', 49, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '37';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('37', '服务区', '02', 'M08', '0', null, 'SELECT  ''服务区详情'' as "keyTitle",
       t.name as "keyId",
       t.name as "keyName",
       ''服务区名称'' as "keyLabel",
       t.name as "name",
       t.CODE as "code",
       t.name           AS "title",
       t.DIRECTION as "direction",
       NVL(et.enumname,''正常'')      as "statusname",
       t.status,
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       t.MANAGEMENTDEPT as "managementDept",
       d1.deptshortname as "ddeptname",
       d2.deptshortname as "zhongdeptname",
       r.dlmc as "dlmc",
       NVL(tt.LARGE_USENUM,0) || ''/'' || NVL(t.large_berthnum, 0) as "largeUseNum",
       NVL(tt.SMALL_USENUM,0) || ''/'' || NVL(t.small_berthnum, 0) as "smallUseNum",
       case when d1.nlevel = ''4'' then d1.parentdepartment
            else d1.cdepartmentid
       end as deptid
  from FACE_SERVICE_AREA t
  left join face_service_berthnum tt
  on t.code = tt.code
  LEFT JOIN department d1
    ON d1.cdepartmentid = t.dadept
  LEFT JOIN department d2
    ON d2.cdepartmentid = t.zhongdept
  LEFT JOIN vio_coderoad r
    ON r.nid = t.dldm
  left join enum_type et
    on et.enumtypeid = ''3100''
   and et.enumvalue = t.status
 WHERE 1 = 1
   and t.status = ''1''', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'service', null, '0', 41, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '38';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('38', '收费站', '02', 'M08', '0', null, '
SELECT ''收费站详情'' as "keyTitle",
       t.name as "keyId",
       t.name as "keyName",
       ''收费站名称'' as "keyLabel",
       t.name as "name",
       t.CODE as "code",
       t.name           AS "title",
       NVL(et.enumname,''正常'')      as "statusname",
       t.status,
       substr(t.coordinates,0,instr(t.coordinates,'','')-1)    as "longitude",
       substr(t.coordinates,instr(t.coordinates,'','')+1)    as "latitude",
       d1.deptshortname as "ddeptname",
       d2.deptshortname as "zhongdeptname",
       NVL(tt.INFLOW, 0) as "inFlow",
       NVL(tt.OUTFLOW, 0) as "outFlow",
       NVL(tt.TOTALFLOW, 0) as "totalFlow",
       case when d1.nlevel = ''4'' then d1.parentdepartment
            else d1.cdepartmentid
       end as deptid
  from FACE_TOLLGATE t
  left join face_tollgate_berthnum tt
  on t.code = tt.code
  LEFT JOIN department d1
    ON d1.cdepartmentid = t.dadept
  LEFT JOIN department d2
    ON d2.cdepartmentid = t.zhongdept
  left join enum_type et
    on et.enumtypeid = ''3100''
   and et.enumvalue = t.status
 where 1 = 1
   and t.status = ''1''', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'station', null, '0', 42, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '39';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('39', '易积水点', '02', 'M18', '1', null, null, 'PondPointServiceImpl', 'getAllPondPointInfo', '{"type":"1"}', null, 'jishuidian', null, '0', 68, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '40';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('40', '行政区', '02', 'M21', '0', null, 'select ''行政区详情'' as "keyTitle",
       tmp.areaId as "keyId",
       tmp.areaName as "keyName",
       ''行政区名称'' as "keyLabel",
       tmp.areaName as "name",
       tmp.areaName as areaName,
       tmp.tpi,
       tmp.transitvehiclenum,
       tmp.policenum,
       fa.coordinates as "coordinate",
       dt.cdepartmentcode as deptId,
       NVL(fdc.coordinate,'''') as "centercoordinate"
  from (select distinct d.area_id as areaId,
                        d.area_name as areaName,
                        case
                          when fair.tpi = -1 then
                           ''''
                          else
                           fair.tpi || ''''
                        end as tpi,
                        case
                          when fair.transit_vehicle_num = -1 then
                           ''''
                          else
                           fair.transit_vehicle_num || ''''
                        end as transitvehiclenum,
                        sum(case
                              when tttt.case_id is null then
                               0
                              else
                               1
                            end) over(partition by d.area_id) as policenum
          from face_area d
          left join face_area_index_real fair
            on fair.area_id = d.area_id
           and fair.collect_time > sysdate - 30 / 1440
           and not exists
         (select tt.index_id
                  from face_area_index_real tt
                 where tt.area_id = fair.area_id
                   and tt.collect_time > fair.collect_time)
          left join (
                    select f.reason,ppci.case_id
                      from pis_police_case_info ppci    
                     inner join face_policecase_label f
                        on f.label_id = ''100033''
                       and f.create_time > trunc(sysdate)
                       and f.case_id = ppci.case_id
                     where ppci.status in (''03'', ''04'')
                    ) tttt
            on instr(tttt.reason, d.area_id) > 0
         where d.area_model = ''3'') tmp
 inner join face_area fa
    on fa.area_id = tmp.areaId
  left join department dt
         on dt.nlevel = ''3''
        and substr(dt.cdepartmentcode,0,6) = fa.area_id
  left join FACE_DISTRICT_CENTER fdc
         on fdc.AREA_DEPT_ID = fa.area_id', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'xingzhengqu', null, '0', 83, '0', '1', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '42';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('42', '互通立交', '02', 'M08', '0', null, 'SELECT ''互通立交详情'' as "keyTitle",
       E.code,
       E.NAME,
       E.id as "keyId",
       E.NAME as "keyName",
       ''互通立交名称'' as "keyLabel",
       E.NAME as "name",
       E.LENGTH,
       E.STARTPOINT,
       E.ENDPOINT,
       E.REMARK,
       e.STATUS,
       case
         when e.STATUS = ''1'' then
          ''正常''
         when e.STATUS = ''2'' then
          ''申请中''
         when e.STATUS = ''9'' then
          ''驳回''
       end as statusname,
       e.PIC1 as image1path,
       e.PIC2 as image2path,
       substr(e.coordinates, 0, instr(e.coordinates, '','') - 1) as "longitude",
       substr(e.coordinates, instr(e.coordinates, '','') + 1) as "latitude",
       NVL(d.deptshortname, '''') as deptBigName,
       NVL(dm.deptshortname, '''') as deptMiddleName,
       case
         when d.nlevel = ''4'' then
          d.parentdepartment
         else
          d.cdepartmentid
       end as deptid
  FROM traffic_info@HIATMP_DB E
  left join department d
    on e.dadept = d.cdepartmentid
  left join department dm
    on e.zhongdept = dm.cdepartmentid
 WHERE 1 = 1
 AND e.type = ''12''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'flyover', null, '1', 43, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '43';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('43', '小学', '02', 'M22', '0', null, 'SELECT  ''学校详情'' as "keyTitle",
       t.name as "keyId",
       t.name as "keyName",
       ''学校名称'' as "keyLabel",
       t.name as "name",
       t.pid as "code",
       t.name           AS "title",
       t.address,
       t.area,
       t.type,
       t.display_x    as "longitude",
       t.display_y    as "latitude",
       d.deptshortname as deptName,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid
  from gaode_poi_point t
  LEFT JOIN department d
    ON d.cdepartmentid = t.dept
 WHERE 1 = 1
   and t.name like ''%小学''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'xiaoxue', null, '1', 84, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '44';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('44', '中学', '02', 'M22', '0', null, 'SELECT  ''学校详情'' as "keyTitle",
       t.name as "keyId",
       t.name as "keyName",
       ''学校名称'' as "keyLabel",
       t.name as "name",
       t.pid as "code",
       t.name           AS "title",
       t.address,
       t.area,
       t.type,
       t.display_x    as "longitude",
       t.display_y    as "latitude",
       d.deptshortname as deptName,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid
  from gaode_poi_point t
  LEFT JOIN department d
    ON d.cdepartmentid = t.dept
 WHERE 1 = 1
   and t.name like ''%中学'' ', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'zhongxue', null, '1', 85, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '45';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('45', '大学', '02', 'M22', '0', null, 'SELECT  ''学校详情'' as "keyTitle",
       t.name as "keyId",
       t.name as "keyName",
       ''学校名称'' as "keyLabel",
       t.name as "name",
       t.pid as "code",
       t.name           AS "title",
       t.address,
       t.area,
       t.type,
       t.display_x    as "longitude",
       t.display_y    as "latitude",
       d.deptshortname as deptName,
       case when d.nlevel = ''4'' then d.parentdepartment
            else d.cdepartmentid
       end as deptid
  from gaode_poi_point t
  LEFT JOIN department d
    ON d.cdepartmentid = t.dept
 WHERE 1 = 1
   and t.name like ''%大学'' ', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'daxue', null, '1', 86, '0', '0', '0', null, null);

delete from face_maplayer_base_info where MAPLAYER_ID = '46';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('46', '岗位', '02', 'M28', '1', null, null, 'PositionServiceImpl', 'getPositionInfo', null, null, 'gangwei', null, '0', 87, '0', '4', '0', null, null);


delete from face_maplayer_base_info where MAPLAYER_ID = '47';
insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE, IS_OVERLAP, WIDTH, HEIGHT)
values ('47', '拥堵路段', '02', 'M29', '1', null, 'SELECT ''路段详情'' as "keyTitle",
       ssc.section_id as "keyId",
       ms.sectionname as "keyName",
       ''路段名称'' as "keyLabel",
       ms.sectionname as "name",
       ssc.section_id as sectionid,
       ms.sectionname,
       ssc.indey,
       ssc.volume,
       ssc.speed,
       DEP.DEPTSHORTNAME,
       case
         when DEP.nlevel = ''4'' then
          DEP.parentdepartment
         else
          DEP.cdepartmentid
       end as deptid
  FROM section_status_current ssc
  inner join monitor_section ms
  on ms.sectionid = ssc.section_id
  LEFT JOIN DEPARTMENT DEP
    ON ms.department = DEP.CDEPARTMENTID
 WHERE 1 = 1', 'BisSectionServiceImpl', 'getJamBisSectionInfo', null, null, 'yongduluduan', null, '0', 88, '0', '3', '0', null, null);
 commit;
 
-- 

------ FACE_MAPLAYER_DATA_FILED_INFO

-- sql
delete from face_maplayer_data_filed_info where ID = '1B212665920E437EA81209F2CCBB8D68';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'REPORTUSERNAME', '报警人', '1B212665920E437EA81209F2CCBB8D68', 1);

delete from face_maplayer_data_filed_info where ID = '5E9006E7E7E245ED9B7A22994872ADDC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'PHONENUM', '报警电话', '5E9006E7E7E245ED9B7A22994872ADDC', 2);

delete from face_maplayer_data_filed_info where ID = '49A2EA821F8141BF8B01B4BBCC614FEF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'DEPTNAME', '所属部门', '49A2EA821F8141BF8B01B4BBCC614FEF', 3);

delete from face_maplayer_data_filed_info where ID = 'C3C27259B5A2473C8DA5A0838F2E008F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'TIME', '发生时间', 'C3C27259B5A2473C8DA5A0838F2E008F', 5);

delete from face_maplayer_data_filed_info where ID = '4AA5443847A14CC0A31D936122DC6B09';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'TYPE', '警情类型', '4AA5443847A14CC0A31D936122DC6B09', 7);

delete from face_maplayer_data_filed_info where ID = '11A5443847A14CC0A31D936122DC6B09';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'SUBTYPE', '警情子类型', '11A5443847A14CC0A31D936122DC6B09', null);

delete from face_maplayer_data_filed_info where ID = '13BBCF4675494A939AE5E4A5998DB352';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('020202', 'DESCRIPTION', '警情描述', '13BBCF4675494A939AE5E4A5998DB352', 6);

delete from face_maplayer_data_filed_info where ID = '11FE4DE32AA74CD0B43DE1041710B815';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'POLICEID', '警员号码', '11FE4DE32AA74CD0B43DE1041710B815', 1);

delete from face_maplayer_data_filed_info where ID = '22FCC41022054936B767130BA5806BFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'DEVICEID', '对讲机号', '22FCC41022054936B767130BA5806BFA', 2);

delete from face_maplayer_data_filed_info where ID = '33FCC41022054936B767130BA5806BFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'PHONE', '手机号码', '33FCC41022054936B767130BA5806BFA', 3);

delete from face_maplayer_data_filed_info where ID = '44FCC41022054936B767130BA5806BFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'ENUMNAME', 'GPS类型', '44FCC41022054936B767130BA5806BFA', 4);

delete from face_maplayer_data_filed_info where ID = '62FCC41022054936B767130BA5806BFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'STATUSNAME', '警员状态', '62FCC41022054936B767130BA5806BFA', 5);

delete from face_maplayer_data_filed_info where ID = '110A1BCBE1E14A0FABD3DCFFA62C3D55';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'DEPTSHORTNAME', '所属部门', '110A1BCBE1E14A0FABD3DCFFA62C3D55', 6);

delete from face_maplayer_data_filed_info where ID = '11FE4DE32AA74CD0B43DE1041710B812';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'GPSCARNO', '号牌号码', '11FE4DE32AA74CD0B43DE1041710B812', 1);

delete from face_maplayer_data_filed_info where ID = '22FCC41022054936B767130BA5806BF1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'DEVICEID', '对讲机号', '22FCC41022054936B767130BA5806BF1', 2);

delete from face_maplayer_data_filed_info where ID = '33FCC41022054936B767130BA5806BF1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'PHONE', '手机号码', '33FCC41022054936B767130BA5806BF1', 3);

delete from face_maplayer_data_filed_info where ID = '44FCC41022054936B767130BA5806BF1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'ENUMNAME', 'GPS类型', '44FCC41022054936B767130BA5806BF1', 4);

delete from face_maplayer_data_filed_info where ID = '62FCC41022054936B767130BA5806BF1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'STATUSNAME', '警员状态', '62FCC41022054936B767130BA5806BF1', 5);

delete from face_maplayer_data_filed_info where ID = '110A1BCBE1E14A0FABD3DCFFA62C3D52';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0301', 'DEPTSHORTNAME', '所属部门', '110A1BCBE1E14A0FABD3DCFFA62C3D52', 6);

delete from face_maplayer_data_filed_info where ID = '87A73A975AA44B6EB08123EB59C15E60';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'POLICEID', '警号', '87A73A975AA44B6EB08123EB59C15E60', 1);

delete from face_maplayer_data_filed_info where ID = '81FD18779F1349339A5C656AC8A49D51';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'POLICENAME', '警员姓名', '81FD18779F1349339A5C656AC8A49D51', 2);

delete from face_maplayer_data_filed_info where ID = '9AD347D914334399B0FCF939D789BA12';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'COORDINATE', '警情位置坐标', '9AD347D914334399B0FCF939D789BA12', 3);

delete from face_maplayer_data_filed_info where ID = 'CBF0CCD0E01244CB84971C952D58BBE2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'LONGITUDE', '经度', 'CBF0CCD0E01244CB84971C952D58BBE2', 4);

delete from face_maplayer_data_filed_info where ID = 'B9A776284E544C3695672A305DC97F12';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'LATITUDE', '纬度', 'B9A776284E544C3695672A305DC97F12', 5);

delete from face_maplayer_data_filed_info where ID = '40FE4DE32AA74CD0B43DE1041710B815';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'STATUS', '状态', '40FE4DE32AA74CD0B43DE1041710B815', 6);

delete from face_maplayer_data_filed_info where ID = 'DA0A1BCBE1E14A0FABD3DCFFA62C3D55';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'THIRDSYSCODE', '呼号', 'DA0A1BCBE1E14A0FABD3DCFFA62C3D55', 7);

delete from face_maplayer_data_filed_info where ID = 'A8D5B873357546F3B04F1E95E896B580';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'PHONE', '电话', 'A8D5B873357546F3B04F1E95E896B580', 8);

delete from face_maplayer_data_filed_info where ID = 'C94BF11E0DC244869C9A0F129C3F7156';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSTYPE', 'GPS类型', 'C94BF11E0DC244869C9A0F129C3F7156', 9);

delete from face_maplayer_data_filed_info where ID = '353D1DC9E06640C18810DE7A70F958BA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSCARNO', 'GPS车牌号码', '353D1DC9E06640C18810DE7A70F958BA', 10);

delete from face_maplayer_data_filed_info where ID = '2D105E7576DC4B2FA202EBCE67DB64FE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSTYPENAME', 'GPS类型名称', '2D105E7576DC4B2FA202EBCE67DB64FE', 11);

delete from face_maplayer_data_filed_info where ID = '8B4317DE227441DCBDA939E0EB03BE86';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'DEPTSHORTNAME', '部门简称', '8B4317DE227441DCBDA939E0EB03BE86', 12);

delete from face_maplayer_data_filed_info where ID = '41FCC41022054936B767130BA5806BFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'CARDEPTSHORTNAME', '设备部门简称', '41FCC41022054936B767130BA5806BFA', 13);

delete from face_maplayer_data_filed_info where ID = 'C7F5D056288349978C0B09BDC9A051AE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'policeId', '警员编号', 'C7F5D056288349978C0B09BDC9A051AE', 2);

delete from face_maplayer_data_filed_info where ID = '7AD249DDFBA94C96A50F30D740CD0AFE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'phone', '联系方式', '7AD249DDFBA94C96A50F30D740CD0AFE', null);

delete from face_maplayer_data_filed_info where ID = '1FA5360391DB4754A83FEEFF7E915E17';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'depName', '部门名称', '1FA5360391DB4754A83FEEFF7E915E17', null);

delete from face_maplayer_data_filed_info where ID = 'AA4453335C484ED0B14B7BC38D731FDC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'policeName', '警员姓名', 'AA4453335C484ED0B14B7BC38D731FDC', null);

delete from face_maplayer_data_filed_info where ID = 'D9F7636003984CF09401937F615770BE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'POLICEID', '警号', 'D9F7636003984CF09401937F615770BE', 1);

delete from face_maplayer_data_filed_info where ID = '11FE4DE32AA74CD0B43DE1041710B813';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'POLICEID', '警员号码', '11FE4DE32AA74CD0B43DE1041710B813', 1);

delete from face_maplayer_data_filed_info where ID = 'F68FC8C39411422F99F60058FDACC226';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'POLICENAME', '警员姓名', 'F68FC8C39411422F99F60058FDACC226', 2);

delete from face_maplayer_data_filed_info where ID = '22FCC41022054936B767130BA5806BF3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'DEVICEID', '对讲机号', '22FCC41022054936B767130BA5806BF3', 2);

delete from face_maplayer_data_filed_info where ID = 'EFE462EB82CA49C1BDBC223237D77825';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'COORDINATE', '警情位置坐标', 'EFE462EB82CA49C1BDBC223237D77825', 3);

delete from face_maplayer_data_filed_info where ID = '33FCC41022054936B767130BA5806BF2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'PHONE', '手机号码', '33FCC41022054936B767130BA5806BF2', 3);

delete from face_maplayer_data_filed_info where ID = '44FCC41022054936B767130BA5806BF2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'ENUMNAME', 'GPS类型', '44FCC41022054936B767130BA5806BF2', 4);

delete from face_maplayer_data_filed_info where ID = 'DF2D832991454B34AA1B5C9C68BD2FD8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'LONGITUDE', '经度', 'DF2D832991454B34AA1B5C9C68BD2FD8', 4);

delete from face_maplayer_data_filed_info where ID = '62FCC41022054936B767130BA5806BF2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'STATUSNAME', '警员状态', '62FCC41022054936B767130BA5806BF2', 5);

delete from face_maplayer_data_filed_info where ID = 'B4A714AD5B744AFEAB552FAFF81C6659';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'LATITUDE', '纬度', 'B4A714AD5B744AFEAB552FAFF81C6659', 5);

delete from face_maplayer_data_filed_info where ID = '110A1BCBE1E14A0FABD3DCFFA62C3D53';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'DEPTSHORTNAME', '所属部门', '110A1BCBE1E14A0FABD3DCFFA62C3D53', 6);

delete from face_maplayer_data_filed_info where ID = '8AB3F035BE9245A49E765A82502E9AED';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'STATUS', '状态', '8AB3F035BE9245A49E765A82502E9AED', 6);

delete from face_maplayer_data_filed_info where ID = '3CEED70B50F9493D9DEAFB9A174368C9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'THIRDSYSCODE', '呼号', '3CEED70B50F9493D9DEAFB9A174368C9', 7);

delete from face_maplayer_data_filed_info where ID = '3511869D7AC34FBB8C12932FC9D0435E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'PHONE', '电话', '3511869D7AC34FBB8C12932FC9D0435E', 8);

delete from face_maplayer_data_filed_info where ID = '387B59994CBA4E51A120BD099B1CC241';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSTYPE', 'GPS类型', '387B59994CBA4E51A120BD099B1CC241', 9);

delete from face_maplayer_data_filed_info where ID = '6BEC8A2D12F74728B61099E713C657B3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSCARNO', 'GPS车牌号码', '6BEC8A2D12F74728B61099E713C657B3', 10);

delete from face_maplayer_data_filed_info where ID = '938DAD1D37A04AECBA99B2D08B457AF7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSTYPENAME', 'GPS类型名称', '938DAD1D37A04AECBA99B2D08B457AF7', 11);

delete from face_maplayer_data_filed_info where ID = 'C602CC7946D94426809B72EE8DA6820C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'DEPTSHORTNAME', '部门简称', 'C602CC7946D94426809B72EE8DA6820C', 12);

delete from face_maplayer_data_filed_info where ID = '3422A8D878E34172A3928F0C135AABF8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'CARDEPTSHORTNAME', '设备部门简称', '3422A8D878E34172A3928F0C135AABF8', 13);

delete from face_maplayer_data_filed_info where ID = '8654D2B584F745659975A3A19C5B51BA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'POLICEID', '警号', '8654D2B584F745659975A3A19C5B51BA', 1);

delete from face_maplayer_data_filed_info where ID = 'B9EBA4E60FAC4B8C8AC5A0E0537B018A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'POLICENAME', '警员姓名', 'B9EBA4E60FAC4B8C8AC5A0E0537B018A', 2);

delete from face_maplayer_data_filed_info where ID = 'F53EDFAE5D854956AEC971CBD63BDC61';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'COORDINATE', '警情位置坐标', 'F53EDFAE5D854956AEC971CBD63BDC61', 3);

delete from face_maplayer_data_filed_info where ID = '538038B16B1447B9B213CCC3D3BBCC41';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'LONGITUDE', '经度', '538038B16B1447B9B213CCC3D3BBCC41', 4);

delete from face_maplayer_data_filed_info where ID = '7D0A72679AB8452B8EBD69A192C1D2CF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'LATITUDE', '纬度', '7D0A72679AB8452B8EBD69A192C1D2CF', 5);

delete from face_maplayer_data_filed_info where ID = '822AD658144F4955A36D4033401015E5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'STATUS', '状态', '822AD658144F4955A36D4033401015E5', 6);

delete from face_maplayer_data_filed_info where ID = '463CA64572F849E88704F816C12CB595';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'THIRDSYSCODE', '呼号', '463CA64572F849E88704F816C12CB595', 7);

delete from face_maplayer_data_filed_info where ID = 'F3A5641F847D4AEEB41E4FDA0296611E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'PHONE', '电话', 'F3A5641F847D4AEEB41E4FDA0296611E', 8);

delete from face_maplayer_data_filed_info where ID = 'CF42F27538B241A9A19FE3BCF60E3A83';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSTYPE', 'GPS类型', 'CF42F27538B241A9A19FE3BCF60E3A83', 9);

delete from face_maplayer_data_filed_info where ID = '8C07C42DC6384EC2B6D5C23C3D2A91C9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSCARNO', 'GPS车牌号码', '8C07C42DC6384EC2B6D5C23C3D2A91C9', 10);

delete from face_maplayer_data_filed_info where ID = 'A80F1601A0954DF8B1658522534A76A6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSTYPENAME', 'GPS类型名称', 'A80F1601A0954DF8B1658522534A76A6', 11);

delete from face_maplayer_data_filed_info where ID = '2EB924276A3C42018BF13F0CF6C78B48';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'DEPTSHORTNAME', '部门简称', '2EB924276A3C42018BF13F0CF6C78B48', 12);

delete from face_maplayer_data_filed_info where ID = 'D831650F187C4660B27951CD74C5365E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'CARDEPTSHORTNAME', '设备部门简称', 'D831650F187C4660B27951CD74C5365E', 13);

delete from face_maplayer_data_filed_info where ID = 'DAF355033A4B782CE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('031', 'POLICEID', '警员号码', 'DAF355033A4B782CE055000000000001', 1);

delete from face_maplayer_data_filed_info where ID = 'DAF355033A4E782CE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('031', 'THIRDSYSCODE', '对讲机号', 'DAF355033A4E782CE055000000000001', 2);

delete from face_maplayer_data_filed_info where ID = 'DAF355033A4D782CE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('031', 'PHONE', '手机号码', 'DAF355033A4D782CE055000000000001', 3);

delete from face_maplayer_data_filed_info where ID = 'DAF355033A4F782CE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('031', 'GPSTYPENAME', 'GPS类型', 'DAF355033A4F782CE055000000000001', 5);

delete from face_maplayer_data_filed_info where ID = 'DAF355033A4A782CE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('031', 'DEPTSHORTNAME', '所属部门', 'DAF355033A4A782CE055000000000001', 6);

delete from face_maplayer_data_filed_info where ID = '9E89277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'location', '项目位置', '9E89277CD61D42E9A3AE5B52B89F0FB0', 2);

delete from face_maplayer_data_filed_info where ID = '5800A694C87C45438E26548486671B44';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'contactPerson', '联系人', '5800A694C87C45438E26548486671B44', 3);

delete from face_maplayer_data_filed_info where ID = 'F2635914797245F6853A8551A16A7D14';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'contactMode', '联系方式', 'F2635914797245F6853A8551A16A7D14', 4);

delete from face_maplayer_data_filed_info where ID = '9444D19D27154B3B8EB180B08ED6F410';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'status', '状态', '9444D19D27154B3B8EB180B08ED6F410', 5);

delete from face_maplayer_data_filed_info where ID = '50679FEE30214148BE23303853008D44';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'title', '项目名称', '50679FEE30214148BE23303853008D44', 6);

delete from face_maplayer_data_filed_info where ID = '1EF9604FDDBB452FAC2A8766F1F2D9D6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'startTime', '开始时间', '1EF9604FDDBB452FAC2A8766F1F2D9D6', 7);

delete from face_maplayer_data_filed_info where ID = '9F33465A1EF04E8BA5E9D8EBB6766DC1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'endTime', '结束时间', '9F33465A1EF04E8BA5E9D8EBB6766DC1', 8);

delete from face_maplayer_data_filed_info where ID = '75866CB8710C4F2B8BAD0EBE86034C94';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'constructor', '施工单位', '75866CB8710C4F2B8BAD0EBE86034C94', 9);

delete from face_maplayer_data_filed_info where ID = 'AAFAF78A11DA4FF48C6DC24C54334737';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'influencedSections', '受影响路段ID', 'AAFAF78A11DA4FF48C6DC24C54334737', 12);

delete from face_maplayer_data_filed_info where ID = 'F89200E4622E451099D188FEFBCCCC7D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'effectArea', '影响区域', 'F89200E4622E451099D188FEFBCCCC7D', 13);

delete from face_maplayer_data_filed_info where ID = '1AB455E0DBE64E3FA50E65F3CE9BEEE8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'description', '项目简要说明', '1AB455E0DBE64E3FA50E65F3CE9BEEE8', 14);

delete from face_maplayer_data_filed_info where ID = '23F7757C120949F988B025D569A936D5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'requestDept', '申请单位', '23F7757C120949F988B025D569A936D5', 3);

delete from face_maplayer_data_filed_info where ID = '918DB79E2A82462D91339412CA746C4C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digDept', '施工单位', '918DB79E2A82462D91339412CA746C4C', 4);

delete from face_maplayer_data_filed_info where ID = '4CF567314C054A93AD6E7ECD4FA22583';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digroadInfo', '占用道路名', '4CF567314C054A93AD6E7ECD4FA22583', 5);

delete from face_maplayer_data_filed_info where ID = 'F7C8A8C5BC8F438A9695620F049B735C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'principal', '责任人', 'F7C8A8C5BC8F438A9695620F049B735C', 6);

delete from face_maplayer_data_filed_info where ID = 'C7157B02653341A08642E961BF0F20F0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'telephone', '联系方式', 'C7157B02653341A08642E961BF0F20F0', 7);

delete from face_maplayer_data_filed_info where ID = 'DD4E0AC74DB74E03B19ED3E16D4AE9B6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'coordinate', '经纬度', 'DD4E0AC74DB74E03B19ED3E16D4AE9B6', 8);

delete from face_maplayer_data_filed_info where ID = 'EB77271AABEE42938968D71EC2D3BF26';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'coordType', '坐标形态', 'EB77271AABEE42938968D71EC2D3BF26', 9);

delete from face_maplayer_data_filed_info where ID = '24BCE9C23C514490AB9D3044C08BC353';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'beginDate', '工程开始时间', '24BCE9C23C514490AB9D3044C08BC353', 10);

delete from face_maplayer_data_filed_info where ID = 'CF86E293BA5E4D8C84695DBE36B496F3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'endDate', '工程结束时间', 'CF86E293BA5E4D8C84695DBE36B496F3', 11);

delete from face_maplayer_data_filed_info where ID = 'B9EA7D69571746E09BC2C9886E608084';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digPeriod', '施工时段', 'B9EA7D69571746E09BC2C9886E608084', 12);

delete from face_maplayer_data_filed_info where ID = '210D9BF7EBE94ED588B6C891495C99BD';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digType', '施工形式', '210D9BF7EBE94ED588B6C891495C99BD', 13);

delete from face_maplayer_data_filed_info where ID = '389B73826342469ABB646699C2162CC8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'deptShortName', '部门简称', '389B73826342469ABB646699C2162CC8', 14);

delete from face_maplayer_data_filed_info where ID = '3337C2A62F0F4640804884238FA361C5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'DEVICEMODEL', '设备型号', '3337C2A62F0F4640804884238FA361C5', 1);

delete from face_maplayer_data_filed_info where ID = '6662A50F244F413D8C54BA3785F63FA2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'DEPTSHORTNAME', '所属部门', '6662A50F244F413D8C54BA3785F63FA2', 2);

delete from face_maplayer_data_filed_info where ID = '111B61DFD6244965AAA5582C07DD9BF4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'POINTNAME', '安装地点', '111B61DFD6244965AAA5582C07DD9BF4', 3);

delete from face_maplayer_data_filed_info where ID = '444D73213FB34032AC798DA7B1FFF755';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'PROVIDEDATE', '安装日期', '444D73213FB34032AC798DA7B1FFF755', 4);

delete from face_maplayer_data_filed_info where ID = '555B188D78BE42CD8DE9447B125608C1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'THIRDSYSCODE', '第三方编号', '555B188D78BE42CD8DE9447B125608C1', 5);

delete from face_maplayer_data_filed_info where ID = '22234EED41B541EBAE7BC066EF83CDBE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('06', 'DEVICESTATENAME', '设备状态', '22234EED41B541EBAE7BC066EF83CDBE', 6);

delete from face_maplayer_data_filed_info where ID = 'FFEADCEE11064C6E96CAA27E134C0B94';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'name', '设施名称', 'FFEADCEE11064C6E96CAA27E134C0B94', 1);

delete from face_maplayer_data_filed_info where ID = '2C32E7C500854C988ADB2C92C9FF579D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'statusName', '状态', '2C32E7C500854C988ADB2C92C9FF579D', 2);

delete from face_maplayer_data_filed_info where ID = '1A7713ADE2C6427E8B428C9466615C14';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl1', '图片1', '1A7713ADE2C6427E8B428C9466615C14', 3);

delete from face_maplayer_data_filed_info where ID = '8EBCA43283DB4DB1B1767AA40F3678B8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl2', '图片2', '8EBCA43283DB4DB1B1767AA40F3678B8', 4);

delete from face_maplayer_data_filed_info where ID = 'C2214F7E37A147638E30F4B2422779C5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl3', '图片3', 'C2214F7E37A147638E30F4B2422779C5', 5);

delete from face_maplayer_data_filed_info where ID = 'DF9AAD6CE1A342E284085E332A8A78BF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl4', '图片4', 'DF9AAD6CE1A342E284085E332A8A78BF', 6);

delete from face_maplayer_data_filed_info where ID = '1A4388858AFD4EAF8BBDEC5E12AAB991';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'name', '设施名称', '1A4388858AFD4EAF8BBDEC5E12AAB991', 1);

delete from face_maplayer_data_filed_info where ID = '99FEB46BA6014426B707ED923FE24BF2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'statusName', '状态', '99FEB46BA6014426B707ED923FE24BF2', 2);

delete from face_maplayer_data_filed_info where ID = '59E94E4D34CE4A40A285A863FE1886F8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl1', '图片1', '59E94E4D34CE4A40A285A863FE1886F8', 3);

delete from face_maplayer_data_filed_info where ID = '378A5299CD4F47A4A73C7BFE9A57C9D9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl2', '图片2', '378A5299CD4F47A4A73C7BFE9A57C9D9', 4);

delete from face_maplayer_data_filed_info where ID = 'D453E9E872474741A2759616E16625ED';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl3', '图片3', 'D453E9E872474741A2759616E16625ED', 5);

delete from face_maplayer_data_filed_info where ID = '7E2945C6FF0542FCBCE31D3ACD4FFAA0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl4', '图片4', '7E2945C6FF0542FCBCE31D3ACD4FFAA0', 6);

delete from face_maplayer_data_filed_info where ID = 'F26C3792E88E47289CA8A46C65F20F12';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'name', '设施名称', 'F26C3792E88E47289CA8A46C65F20F12', 1);

delete from face_maplayer_data_filed_info where ID = '4DE8C075302F463E8E0B55C6025AF6E6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'statusName', '状态', '4DE8C075302F463E8E0B55C6025AF6E6', 2);

delete from face_maplayer_data_filed_info where ID = '316C5BF81E5F42CA82842B64DDCEE245';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl1', '图片1', '316C5BF81E5F42CA82842B64DDCEE245', 3);

delete from face_maplayer_data_filed_info where ID = '525EE7DFF3154410B5FE3D0C13A09537';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl2', '图片2', '525EE7DFF3154410B5FE3D0C13A09537', 4);

delete from face_maplayer_data_filed_info where ID = 'CFC262E5C7AA4438862A8CCB7290402B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl3', '图片3', 'CFC262E5C7AA4438862A8CCB7290402B', 5);

delete from face_maplayer_data_filed_info where ID = 'D6E4E658E1A54CFB873C3812532B3480';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl4', '图片4', 'D6E4E658E1A54CFB873C3812532B3480', 6);

delete from face_maplayer_data_filed_info where ID = '4E8B304038404DE995A7B3549A591259';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'name', '设施名称', '4E8B304038404DE995A7B3549A591259', 1);

delete from face_maplayer_data_filed_info where ID = 'D074CFF59F8F41049D9D6FDB1BBEE8AA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'statusName', '状态', 'D074CFF59F8F41049D9D6FDB1BBEE8AA', 2);

delete from face_maplayer_data_filed_info where ID = '9DBABC84CFCA47A7A4CA4639DF94BA1A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl1', '图片1', '9DBABC84CFCA47A7A4CA4639DF94BA1A', 3);

delete from face_maplayer_data_filed_info where ID = '5935FEF12485400E98AFE5FA3A11DCF7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl2', '图片2', '5935FEF12485400E98AFE5FA3A11DCF7', 4);

delete from face_maplayer_data_filed_info where ID = '8568C4213BBA41C4BE86C9FCADA970F7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl3', '图片3', '8568C4213BBA41C4BE86C9FCADA970F7', 5);

delete from face_maplayer_data_filed_info where ID = '01198EF2D83F4AFC9C731A38E58086CE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl4', '图片4', '01198EF2D83F4AFC9C731A38E58086CE', 6);

delete from face_maplayer_data_filed_info where ID = '3BF13A970DF44598AF82E202DCB7223C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'name', '设施名称', '3BF13A970DF44598AF82E202DCB7223C', 1);

delete from face_maplayer_data_filed_info where ID = 'DF318A57DF2645929D7C847064ED86F1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'statusName', '状态', 'DF318A57DF2645929D7C847064ED86F1', 2);

delete from face_maplayer_data_filed_info where ID = 'DBC10423BF43474CA5F73D2BF09425F5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl1', '图片1', 'DBC10423BF43474CA5F73D2BF09425F5', 3);

delete from face_maplayer_data_filed_info where ID = 'A417D34B822242C9A24B5424D13195D2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl2', '图片2', 'A417D34B822242C9A24B5424D13195D2', 4);

delete from face_maplayer_data_filed_info where ID = '8A569E6837A74E5EA7A87F3305978F63';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl3', '图片3', '8A569E6837A74E5EA7A87F3305978F63', 5);

delete from face_maplayer_data_filed_info where ID = '09D37C0D12E1498886A5C035426EF4DC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl4', '图片4', '09D37C0D12E1498886A5C035426EF4DC', 6);

delete from face_maplayer_data_filed_info where ID = 'F2DC7CC80EA3447384235F64BD2320A5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'name', '设施名称', 'F2DC7CC80EA3447384235F64BD2320A5', 1);

delete from face_maplayer_data_filed_info where ID = 'B4438C09C17C40968A079A721FBD5507';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'statusName', '状态', 'B4438C09C17C40968A079A721FBD5507', 2);

delete from face_maplayer_data_filed_info where ID = '3ACB8A3DFEB747339BC1D9B5AF68E516';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl1', '图片1', '3ACB8A3DFEB747339BC1D9B5AF68E516', 3);

delete from face_maplayer_data_filed_info where ID = '3541820E65B64A61BB36FAB8D9721062';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl2', '图片2', '3541820E65B64A61BB36FAB8D9721062', 4);

delete from face_maplayer_data_filed_info where ID = 'C96B5AE5039144E8818F3573A21708C3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl3', '图片3', 'C96B5AE5039144E8818F3573A21708C3', 5);

delete from face_maplayer_data_filed_info where ID = '2F60DA05BF304E27811FD7EAF600C739';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl4', '图片4', '2F60DA05BF304E27811FD7EAF600C739', 6);

delete from face_maplayer_data_filed_info where ID = '71D547062FFB49A4B48B74B5F31584FF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'name', '设施名称', '71D547062FFB49A4B48B74B5F31584FF', 1);

delete from face_maplayer_data_filed_info where ID = '02759CB5405F4790B1E92332A53E23CA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'statusName', '状态', '02759CB5405F4790B1E92332A53E23CA', 2);

delete from face_maplayer_data_filed_info where ID = 'A82A1B6B7C364537A081A0BE02455B98';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl1', '图片1', 'A82A1B6B7C364537A081A0BE02455B98', 3);

delete from face_maplayer_data_filed_info where ID = '24B3FF3D728D4C7CA652C453F12AD3E4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl2', '图片2', '24B3FF3D728D4C7CA652C453F12AD3E4', 4);

delete from face_maplayer_data_filed_info where ID = '121D7800808E489C9B68D34486B5CA75';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl3', '图片3', '121D7800808E489C9B68D34486B5CA75', 5);

delete from face_maplayer_data_filed_info where ID = 'C8E01E3A6D774647B4B15D2CE972D89C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl4', '图片4', 'C8E01E3A6D774647B4B15D2CE972D89C', 6);

delete from face_maplayer_data_filed_info where ID = '3585AF535DB84EEB94B914974A10D4B0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'name', '设施名称', '3585AF535DB84EEB94B914974A10D4B0', 1);

delete from face_maplayer_data_filed_info where ID = '0EB767184BCB4226B9DD35FEDB6E5175';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'statusName', '状态', '0EB767184BCB4226B9DD35FEDB6E5175', 2);

delete from face_maplayer_data_filed_info where ID = '9632DF7739104060B8FC7EA26A971239';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl1', '图片1', '9632DF7739104060B8FC7EA26A971239', 3);

delete from face_maplayer_data_filed_info where ID = '0A0A7E847C084DB8AAEEF45BEEE39CF4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl2', '图片2', '0A0A7E847C084DB8AAEEF45BEEE39CF4', 4);

delete from face_maplayer_data_filed_info where ID = 'DD35770911624B15A6AAAF53BD38DB28';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl3', '图片3', 'DD35770911624B15A6AAAF53BD38DB28', 5);

delete from face_maplayer_data_filed_info where ID = 'AB9F07980EDC4520A4A26554D4FEA540';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl4', '图片4', 'AB9F07980EDC4520A4A26554D4FEA540', 6);

delete from face_maplayer_data_filed_info where ID = '9F4507019F344A6EBB16FEBC4CEC1B68';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'name', '设施名称', '9F4507019F344A6EBB16FEBC4CEC1B68', 1);

delete from face_maplayer_data_filed_info where ID = '522A2C14AEB24837AB187A6F07616C7D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'statusName', '状态', '522A2C14AEB24837AB187A6F07616C7D', 2);

delete from face_maplayer_data_filed_info where ID = 'E88F983BDD6444FEBBE4B6D739B3387B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl1', '图片1', 'E88F983BDD6444FEBBE4B6D739B3387B', 3);

delete from face_maplayer_data_filed_info where ID = 'A0D6FD1B52A2445CA86978E034700FCA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl2', '图片2', 'A0D6FD1B52A2445CA86978E034700FCA', 4);

delete from face_maplayer_data_filed_info where ID = '0E4355132A50438F8AD10C8A5F1392B0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl3', '图片3', '0E4355132A50438F8AD10C8A5F1392B0', 5);

delete from face_maplayer_data_filed_info where ID = 'B0467CF429CD4617A13BB956AA9AB1FD';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl4', '图片4', 'B0467CF429CD4617A13BB956AA9AB1FD', 6);

delete from face_maplayer_data_filed_info where ID = '86BE4D0D2BD94633A7A46A84411C31E8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'name', '设施名称', '86BE4D0D2BD94633A7A46A84411C31E8', 1);

delete from face_maplayer_data_filed_info where ID = '47DFEAA6D97147F4B0D0A543E37016C6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'statusName', '状态', '47DFEAA6D97147F4B0D0A543E37016C6', 2);

delete from face_maplayer_data_filed_info where ID = 'B3152840F7FA49DB90C4501EC15F844C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl1', '图片1', 'B3152840F7FA49DB90C4501EC15F844C', 3);

delete from face_maplayer_data_filed_info where ID = 'B51A6643BC26465A94B91C7C31DB4279';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl2', '图片2', 'B51A6643BC26465A94B91C7C31DB4279', 4);

delete from face_maplayer_data_filed_info where ID = 'AF4C90A4E15843E7812F8FAF7E48AB4D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl3', '图片3', 'AF4C90A4E15843E7812F8FAF7E48AB4D', 5);

delete from face_maplayer_data_filed_info where ID = '4881CA8C9EA8472AAFD0898EA7B56224';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl4', '图片4', '4881CA8C9EA8472AAFD0898EA7B56224', 6);

delete from face_maplayer_data_filed_info where ID = '82060E9CFCDA4FF0B82D590257524CCF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'name', '设施名称', '82060E9CFCDA4FF0B82D590257524CCF', 1);

delete from face_maplayer_data_filed_info where ID = '7E5C09181F7E4E10A634C25BDD41BD83';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'statusName', '状态', '7E5C09181F7E4E10A634C25BDD41BD83', 2);

delete from face_maplayer_data_filed_info where ID = 'F41C695E655A449B8FA15F4B8422FEB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl1', '图片1', 'F41C695E655A449B8FA15F4B8422FEB0', 3);

delete from face_maplayer_data_filed_info where ID = '28C3DDA5DE2D4DEAA6274EFD49D2A17A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl2', '图片2', '28C3DDA5DE2D4DEAA6274EFD49D2A17A', 4);

delete from face_maplayer_data_filed_info where ID = '0C0E179C27F04BD1B4CE6BEC0CE34031';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl3', '图片3', '0C0E179C27F04BD1B4CE6BEC0CE34031', 5);

delete from face_maplayer_data_filed_info where ID = 'F83720C4CD3645489B7B3CE6E18A925C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl4', '图片4', 'F83720C4CD3645489B7B3CE6E18A925C', 6);

delete from face_maplayer_data_filed_info where ID = '4529AB52EE6B4A199AB5477A3ADB2877';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'name', '设施名称', '4529AB52EE6B4A199AB5477A3ADB2877', 1);

delete from face_maplayer_data_filed_info where ID = 'EF32FEBF30444DF0A73D4508AEAC1F11';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'statusName', '状态', 'EF32FEBF30444DF0A73D4508AEAC1F11', 2);

delete from face_maplayer_data_filed_info where ID = 'CF0E855F7102494C9E3D6358F57E7B5C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl1', '图片1', 'CF0E855F7102494C9E3D6358F57E7B5C', 3);

delete from face_maplayer_data_filed_info where ID = 'A2D2E6AA808B46D28898332494EF7A3C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl2', '图片2', 'A2D2E6AA808B46D28898332494EF7A3C', 4);

delete from face_maplayer_data_filed_info where ID = '532B31B55E734F649AC309BE20BCC1B2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl3', '图片3', '532B31B55E734F649AC309BE20BCC1B2', 5);

delete from face_maplayer_data_filed_info where ID = 'F0741D0C65714530885D5DDA6CBC2695';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl4', '图片4', 'F0741D0C65714530885D5DDA6CBC2695', 6);

delete from face_maplayer_data_filed_info where ID = 'C4C3DFA725FE43A18DE85DD4DCD907E8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'name', '设施名称', 'C4C3DFA725FE43A18DE85DD4DCD907E8', 1);

delete from face_maplayer_data_filed_info where ID = 'A02942B186FB43C1BBCFC4D9F6F830BC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'statusName', '状态', 'A02942B186FB43C1BBCFC4D9F6F830BC', 2);

delete from face_maplayer_data_filed_info where ID = 'D884A055BC7A48449940FAA42B6AD274';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl1', '图片1', 'D884A055BC7A48449940FAA42B6AD274', 3);

delete from face_maplayer_data_filed_info where ID = 'DD9C1B48A5FC4C9B8EED3CC89C7B369C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl2', '图片2', 'DD9C1B48A5FC4C9B8EED3CC89C7B369C', 4);

delete from face_maplayer_data_filed_info where ID = 'D8C0E563B4384752B5AC84D34C67E367';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl3', '图片3', 'D8C0E563B4384752B5AC84D34C67E367', 5);

delete from face_maplayer_data_filed_info where ID = 'F05BAFDE517D4763BC56937FE3232400';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl4', '图片4', 'F05BAFDE517D4763BC56937FE3232400', 6);

delete from face_maplayer_data_filed_info where ID = '8BFE0C394B1947FB8A56A964ED803A10';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'name', '设施名称', '8BFE0C394B1947FB8A56A964ED803A10', 1);

delete from face_maplayer_data_filed_info where ID = '7891928652414C24A4DF6844B71B88D4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'statusName', '状态', '7891928652414C24A4DF6844B71B88D4', 2);

delete from face_maplayer_data_filed_info where ID = '807EEE8CAEE94FBFB0A7738C615AFFDE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl1', '图片1', '807EEE8CAEE94FBFB0A7738C615AFFDE', 3);

delete from face_maplayer_data_filed_info where ID = 'AC15D82C08444549944679031829B16F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl2', '图片2', 'AC15D82C08444549944679031829B16F', 4);

delete from face_maplayer_data_filed_info where ID = '8DBA423BE12E49319C4973853600E304';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl3', '图片3', '8DBA423BE12E49319C4973853600E304', 5);

delete from face_maplayer_data_filed_info where ID = '9F9B208F1CF0403B8737113F70247642';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl4', '图片4', '9F9B208F1CF0403B8737113F70247642', 6);

delete from face_maplayer_data_filed_info where ID = 'C7B74FFA4AB94D799DD600D2E1E5B7DB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'name', '设施名称', 'C7B74FFA4AB94D799DD600D2E1E5B7DB', 1);

delete from face_maplayer_data_filed_info where ID = '1A0D62D6163C4A5F9599381D58CF94A5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'statusName', '状态', '1A0D62D6163C4A5F9599381D58CF94A5', 2);

delete from face_maplayer_data_filed_info where ID = '440D9463DF624A029A0892753E9E9A93';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl1', '图片1', '440D9463DF624A029A0892753E9E9A93', 3);

delete from face_maplayer_data_filed_info where ID = '72E456AA7FE84308B17F501B214D26B5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl2', '图片2', '72E456AA7FE84308B17F501B214D26B5', 4);

delete from face_maplayer_data_filed_info where ID = '599D1212F4D7489F8176BD0F194BA1ED';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl3', '图片3', '599D1212F4D7489F8176BD0F194BA1ED', 5);

delete from face_maplayer_data_filed_info where ID = 'B14A8E82F06A4AB48137CBE18D4F4363';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl4', '图片4', 'B14A8E82F06A4AB48137CBE18D4F4363', 6);

delete from face_maplayer_data_filed_info where ID = 'D1613AD1CC60492B86E8EF413C2D4FA9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'name', '设施名称', 'D1613AD1CC60492B86E8EF413C2D4FA9', 1);

delete from face_maplayer_data_filed_info where ID = '864B6F84EE7D425EAD1FE4DD6B19E372';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'statusName', '状态', '864B6F84EE7D425EAD1FE4DD6B19E372', 2);

delete from face_maplayer_data_filed_info where ID = '1C6B4B4807444F499FDBEC4FD9501815';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl1', '图片1', '1C6B4B4807444F499FDBEC4FD9501815', 3);

delete from face_maplayer_data_filed_info where ID = '487798DF992348D2BA8AFF122CB0D2D7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl2', '图片2', '487798DF992348D2BA8AFF122CB0D2D7', 4);

delete from face_maplayer_data_filed_info where ID = 'F2B4E9315A644D65A025F3DF723FF71F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl3', '图片3', 'F2B4E9315A644D65A025F3DF723FF71F', 5);

delete from face_maplayer_data_filed_info where ID = '4202CBB7D365453AB8A55AF9D4DA33A5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl4', '图片4', '4202CBB7D365453AB8A55AF9D4DA33A5', 6);

delete from face_maplayer_data_filed_info where ID = '86CB91AFCB90427791532B38199C0F7D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'coordinates', '坐标', '86CB91AFCB90427791532B38199C0F7D', 7);

delete from face_maplayer_data_filed_info where ID = '2CE4755D94384722BD4081785543F9FE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0803', 'crossingCode', '点位编号', '2CE4755D94384722BD4081785543F9FE', 1);

delete from face_maplayer_data_filed_info where ID = '5AC3B83DD31A44D58AA4591A641F5559';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0803', 'crossingName', '点位名称', '5AC3B83DD31A44D58AA4591A641F5559', 2);

delete from face_maplayer_data_filed_info where ID = '8AB5074D9DC5489BACF478E7F720DDE2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'title', '隧道名称', '8AB5074D9DC5489BACF478E7F720DDE2', 1);

delete from face_maplayer_data_filed_info where ID = 'E8CF58A9F695461FB52F5062028BF453';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'direction', '方向', 'E8CF58A9F695461FB52F5062028BF453', 2);

delete from face_maplayer_data_filed_info where ID = '2C4AC05525DB4D30BE7F95C852144522';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'status', '状态', '2C4AC05525DB4D30BE7F95C852144522', 3);

delete from face_maplayer_data_filed_info where ID = 'A572EB81928F43D69A989CE5619BD64D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'dlmc', '道路名称', 'A572EB81928F43D69A989CE5619BD64D', 4);

delete from face_maplayer_data_filed_info where ID = 'BE2DCFFC543F4AC8955E3F64F81594F0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'ddeptname', '所属大队', 'BE2DCFFC543F4AC8955E3F64F81594F0', 5);

delete from face_maplayer_data_filed_info where ID = '267D68A5AE3D44479B5890495CF17094';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'zhongdeptname', '所属中队', '267D68A5AE3D44479B5890495CF17094', 6);

delete from face_maplayer_data_filed_info where ID = 'B1481E790C364EA695F8358ABF207B10';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'managementDept', '管理部门', 'B1481E790C364EA695F8358ABF207B10', 7);

delete from face_maplayer_data_filed_info where ID = '7FBBD47441274E17BB444ABCDEE2A54B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'title', '隧道名称', '7FBBD47441274E17BB444ABCDEE2A54B', 1);

delete from face_maplayer_data_filed_info where ID = '27C4FFA072A740869B4F5F527068FA22';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'direction', '方向', '27C4FFA072A740869B4F5F527068FA22', 2);

delete from face_maplayer_data_filed_info where ID = '0123E5BCF8A042E780B091F10F221DFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'status', '状态', '0123E5BCF8A042E780B091F10F221DFA', 3);

delete from face_maplayer_data_filed_info where ID = '1BEB27E1F5004EB49344BE93241E9E1B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'dlmc', '道路名称', '1BEB27E1F5004EB49344BE93241E9E1B', 4);

delete from face_maplayer_data_filed_info where ID = 'D0852828C1EF409EBF48C0E6EAD741D7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'ddeptname', '所属大队', 'D0852828C1EF409EBF48C0E6EAD741D7', 5);

delete from face_maplayer_data_filed_info where ID = '40B58BC01DAA4FD1A1E33D80DDD984DC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'zhongdeptname', '所属中队', '40B58BC01DAA4FD1A1E33D80DDD984DC', 6);

delete from face_maplayer_data_filed_info where ID = 'BD9DFF6387814A788F492866F799C032';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'managementDept', '管理部门', 'BD9DFF6387814A788F492866F799C032', 7);

delete from face_maplayer_data_filed_info where ID = 'B8D8772E86C342DFBE9154492B4DD293';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'areaName', '辖区名称', 'B8D8772E86C342DFBE9154492B4DD293', 1);

delete from face_maplayer_data_filed_info where ID = '40D566B0CA334132AD5203976E44E726';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'backAddress', '回填地址', '40D566B0CA334132AD5203976E44E726', 2);

delete from face_maplayer_data_filed_info where ID = 'B15276323EDD47A7AF0E5F7C5D410A42';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'unitName', '单位名称', 'B15276323EDD47A7AF0E5F7C5D410A42', 3);

delete from face_maplayer_data_filed_info where ID = '48AD677E900A4BE99A8FE516F9E11E38';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'telephone', '联系电话', '48AD677E900A4BE99A8FE516F9E11E38', 4);

delete from face_maplayer_data_filed_info where ID = '11D1072EAA7949E59ED43CE4F9278983';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'contacts', '联系人', '11D1072EAA7949E59ED43CE4F9278983', 5);

delete from face_maplayer_data_filed_info where ID = '2F8B82B08B5A443CA6D5CE0631C89972';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0904', 'clbh', '号牌号码', '2F8B82B08B5A443CA6D5CE0631C89972', 1);

delete from face_maplayer_data_filed_info where ID = 'BDA404E034C4431ABE1888AE4D72BA04';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0904', 'speed', '速度', 'BDA404E034C4431ABE1888AE4D72BA04', 2);

delete from face_maplayer_data_filed_info where ID = '6B6397CA49F6437583AD399A0591AAC0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0905', 'clbh', '号牌号码', '6B6397CA49F6437583AD399A0591AAC0', 1);

delete from face_maplayer_data_filed_info where ID = 'CD699AB1D9DF4BC49681AA5606F3146B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0905', 'speed', '速度', 'CD699AB1D9DF4BC49681AA5606F3146B', 2);

delete from face_maplayer_data_filed_info where ID = 'CC68BCFC91CF455ABFC785A7C85F5576';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0906', 'clbh', '号牌号码', 'CC68BCFC91CF455ABFC785A7C85F5576', 1);

delete from face_maplayer_data_filed_info where ID = 'C807BB04747A4FB1BD73F9019C013273';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0906', 'speed', '速度', 'C807BB04747A4FB1BD73F9019C013273', 2);

delete from face_maplayer_data_filed_info where ID = 'D37EBDB0CC4640299F1CE4C17CA17D7C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineName', '通勤干道名称', 'D37EBDB0CC4640299F1CE4C17CA17D7C', 1);

delete from face_maplayer_data_filed_info where ID = 'BB06C1F578F240AEB9BAB066532B4E7B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineLen', '通勤干道长度', 'BB06C1F578F240AEB9BAB066532B4E7B', 2);

delete from face_maplayer_data_filed_info where ID = '87642064170245AF93497F04BD826175';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineTypeName', '通勤干道类型', '87642064170245AF93497F04BD826175', 3);

delete from face_maplayer_data_filed_info where ID = '3C94579105D340C48739E08A35FDCCFB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaId', '区域编号', '3C94579105D340C48739E08A35FDCCFB', 1);

delete from face_maplayer_data_filed_info where ID = 'BE8E065FB1D64480BF23F33FCEC2C63C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaName', '区域名称', 'BE8E065FB1D64480BF23F33FCEC2C63C', 2);

delete from face_maplayer_data_filed_info where ID = '46B43A5E4E674D04BD07497D342B1301';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaType', '区域类型', '46B43A5E4E674D04BD07497D342B1301', 3);

delete from face_maplayer_data_filed_info where ID = '0550FE2E54554222B3F1F1E8DCFA9E1A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamPercent', '拥堵占比', '0550FE2E54554222B3F1F1E8DCFA9E1A', 4);

delete from face_maplayer_data_filed_info where ID = '6EDB2BC332164BBB8C04C5C324CC00F3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamPercentChange', '周同比', '6EDB2BC332164BBB8C04C5C324CC00F3', 5);

delete from face_maplayer_data_filed_info where ID = 'B8C4AE2250EF47F5964F11DA88011829';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamLength', '拥堵长度', 'B8C4AE2250EF47F5964F11DA88011829', 7);

delete from face_maplayer_data_filed_info where ID = '7F3B5E3E47B14DFABAAF8A55465CA155';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaId', '区域编号', '7F3B5E3E47B14DFABAAF8A55465CA155', 1);

delete from face_maplayer_data_filed_info where ID = '62A61E2C83994EA3B9FC72E2AC89B0FF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaName', '区域名称', '62A61E2C83994EA3B9FC72E2AC89B0FF', 2);

delete from face_maplayer_data_filed_info where ID = 'C952B0808E2E4342A757C01831780064';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaType', '区域类型', 'C952B0808E2E4342A757C01831780064', 3);

delete from face_maplayer_data_filed_info where ID = '2611BB3A794A4210B13E368A742F8C7B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamPercent', '拥堵占比', '2611BB3A794A4210B13E368A742F8C7B', 4);

delete from face_maplayer_data_filed_info where ID = 'DE6458F84A804FD2B6A1F8B7C757C329';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamPercentChange', '周同比', 'DE6458F84A804FD2B6A1F8B7C757C329', 5);

delete from face_maplayer_data_filed_info where ID = 'E8329461E25B411FA4B3C75563E558A4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamLength', '拥堵长度', 'E8329461E25B411FA4B3C75563E558A4', 7);

delete from face_maplayer_data_filed_info where ID = '8771CBE2232D4E4A8339D1E3D14A74E9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaId', '区域编号', '8771CBE2232D4E4A8339D1E3D14A74E9', 1);

delete from face_maplayer_data_filed_info where ID = 'CFB7E91890524115864F53CA95824813';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaName', '区域名称', 'CFB7E91890524115864F53CA95824813', 2);

delete from face_maplayer_data_filed_info where ID = '624D838B5BAC445D9F62165FA8A14527';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaType', '区域类型', '624D838B5BAC445D9F62165FA8A14527', 3);

delete from face_maplayer_data_filed_info where ID = '492B0186D88E45AB9EBDF9FAA2351BEA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamPercent', '拥堵占比', '492B0186D88E45AB9EBDF9FAA2351BEA', 4);

delete from face_maplayer_data_filed_info where ID = '734A597B8F0A4BFC960E0F0A65011B73';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamPercentChange', '周同比', '734A597B8F0A4BFC960E0F0A65011B73', 5);

delete from face_maplayer_data_filed_info where ID = '45BEC7118143472BB6B0A007003BF435';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'coordinates', '坐标', '45BEC7118143472BB6B0A007003BF435', 6);

delete from face_maplayer_data_filed_info where ID = 'EE3ECD931CF04C7AB6C2E57B0F3A4D11';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamLength', '拥堵长度', 'EE3ECD931CF04C7AB6C2E57B0F3A4D11', 7);

delete from face_maplayer_data_filed_info where ID = 'C782593C22F34EFF9D3BE1A09ABA9BA7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaId', '区域编号', 'C782593C22F34EFF9D3BE1A09ABA9BA7', 1);

delete from face_maplayer_data_filed_info where ID = '103F6945D280443EAF0A2B4B06B5CEFA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaName', '区域名称', '103F6945D280443EAF0A2B4B06B5CEFA', 2);

delete from face_maplayer_data_filed_info where ID = '420135FEC02348DA83C5D1A44CA0492E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaType', '区域类型', '420135FEC02348DA83C5D1A44CA0492E', 3);

delete from face_maplayer_data_filed_info where ID = '1262D6F62CF948A08522F09680F0CA90';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamPercent', '拥堵占比', '1262D6F62CF948A08522F09680F0CA90', 4);

delete from face_maplayer_data_filed_info where ID = '1E18CEF614DF474187297A29FCBBBA43';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamPercentChange', '周同比', '1E18CEF614DF474187297A29FCBBBA43', 5);

delete from face_maplayer_data_filed_info where ID = '6716951430334CA48BA718B512AB4CD4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamLength', '拥堵长度', '6716951430334CA48BA718B512AB4CD4', 7);

delete from face_maplayer_data_filed_info where ID = 'F5051112AADE4C0B9357141B8DAB777E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaId', '区域编号', 'F5051112AADE4C0B9357141B8DAB777E', 1);

delete from face_maplayer_data_filed_info where ID = '93971A5C842C45559EBDF8D938F77318';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaName', '区域名称', '93971A5C842C45559EBDF8D938F77318', 2);

delete from face_maplayer_data_filed_info where ID = '86880D5CFE7049D18A3DADC7FD8F4517';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaType', '区域类型', '86880D5CFE7049D18A3DADC7FD8F4517', 3);

delete from face_maplayer_data_filed_info where ID = 'FD8ABFB4558B492E91E53A83511AC68E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamPercent', '拥堵占比', 'FD8ABFB4558B492E91E53A83511AC68E', 4);

delete from face_maplayer_data_filed_info where ID = '2A64A29726B84E44A0A0ACF2B0E8BB7D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamPercentChange', '周同比', '2A64A29726B84E44A0A0ACF2B0E8BB7D', 5);

delete from face_maplayer_data_filed_info where ID = 'AE2FBF3387FB4242900C948A72A86B12';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamLength', '拥堵长度', 'AE2FBF3387FB4242900C948A72A86B12', 7);

delete from face_maplayer_data_filed_info where ID = '9E3A72702AEC43C59D43B61F3032AD96';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaId', '区域编号', '9E3A72702AEC43C59D43B61F3032AD96', 1);

delete from face_maplayer_data_filed_info where ID = '7D88BFC7DE07473D9D2A2F7D5A54D0A9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaName', '区域名称', '7D88BFC7DE07473D9D2A2F7D5A54D0A9', 2);

delete from face_maplayer_data_filed_info where ID = 'B3FA00E8C8D14398BED96996E833EA12';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaType', '区域类型', 'B3FA00E8C8D14398BED96996E833EA12', 3);

delete from face_maplayer_data_filed_info where ID = '9AE6DAB35F8D485F8A450B9B8E1B1551';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamPercent', '拥堵占比', '9AE6DAB35F8D485F8A450B9B8E1B1551', 4);

delete from face_maplayer_data_filed_info where ID = '1F50D09433CD499BA91B4B18B61D8A25';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamPercentChange', '周同比', '1F50D09433CD499BA91B4B18B61D8A25', 5);

delete from face_maplayer_data_filed_info where ID = 'E2A755FF0F404D8DBC5B41D4CD600B64';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamLength', '拥堵长度', 'E2A755FF0F404D8DBC5B41D4CD600B64', 7);

delete from face_maplayer_data_filed_info where ID = '92DA1E4216C1416693D5C229B005FA19';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'PARKINGID', '停车场ID', '92DA1E4216C1416693D5C229B005FA19', 1);

delete from face_maplayer_data_filed_info where ID = '3C27570B955D40FBA23298DDA67CB217';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'PARKINGNAME', '停车场名称', '3C27570B955D40FBA23298DDA67CB217', 2);

delete from face_maplayer_data_filed_info where ID = 'ED8E5FD049B242229AF027E7CE71D937';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'BERTHCOUNT', '泊位总数', 'ED8E5FD049B242229AF027E7CE71D937', 3);

delete from face_maplayer_data_filed_info where ID = '212F8AA32AF44740982DCF9BCEAD6E6F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'SPARECOUNT', '空闲数', '212F8AA32AF44740982DCF9BCEAD6E6F', 4);

delete from face_maplayer_data_filed_info where ID = 'C1ACE4A357A146C2946C571D09E54FFD';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'OCCUPIEDCOUNT', '占用数', 'C1ACE4A357A146C2946C571D09E54FFD', 5);

delete from face_maplayer_data_filed_info where ID = '45E90CBBFC684157B543EF7745202A8B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'USERATIO', '使用率', '45E90CBBFC684157B543EF7745202A8B', 6);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D751';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1802', 'RISKPOINTNAME', '路段名称', '1100356D492B41D3995980516F08D751', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D751';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1802', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D751', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D751';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1802', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D751', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D752';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1803', 'RISKPOINTNAME', '路段名称', '1100356D492B41D3995980516F08D752', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D752';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1803', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D752', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D752';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1803', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D752', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D753';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1804', 'RISKPOINTNAME', '长下坡名称', '1100356D492B41D3995980516F08D753', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D753';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1804', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D753', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D753';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1804', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D753', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D754';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1805', 'RISKPOINTNAME', '急转弯名称', '1100356D492B41D3995980516F08D754', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D754';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1805', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D754', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D754';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1805', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D754', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D755';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1806', 'RISKPOINTNAME', '隧道名称', '1100356D492B41D3995980516F08D755', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D755';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1806', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D755', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D755';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1806', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D755', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D756';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1807', 'RISKPOINTNAME', '涵洞名称', '1100356D492B41D3995980516F08D756', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D756';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1807', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D756', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D756';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1807', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D756', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D757';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1808', 'RISKPOINTNAME', '桥梁名称', '1100356D492B41D3995980516F08D757', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D757';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1808', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D757', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D757';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1808', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D757', 3);

delete from face_maplayer_data_filed_info where ID = 'D353D483AC164594B675ACB9B73CD7D5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'pointName', '点位名称', 'D353D483AC164594B675ACB9B73CD7D5', 1);

delete from face_maplayer_data_filed_info where ID = 'DADE64AE648543F7893E7288D0262B6C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'visibility', '能见度', 'DADE64AE648543F7893E7288D0262B6C', 2);

delete from face_maplayer_data_filed_info where ID = '09F3794588044015AC4C4753543CDAC2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'dataSource', '数据来源', '09F3794588044015AC4C4753543CDAC2', 3);

delete from face_maplayer_data_filed_info where ID = '71BA0D90012D4957851BE43A53497A89';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'pointName', '点位名称', '71BA0D90012D4957851BE43A53497A89', 1);

delete from face_maplayer_data_filed_info where ID = '57444048FE674EE29193B7C194524031';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'rainfall', '降水量', '57444048FE674EE29193B7C194524031', 2);

delete from face_maplayer_data_filed_info where ID = '007CAC8070C34826AE0FAE4178A07365';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'dataSource', '数据来源', '007CAC8070C34826AE0FAE4178A07365', 3);

delete from face_maplayer_data_filed_info where ID = 'E927DDCDF95B4CC69A6E78E12A8CD6B2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'pointName', '点位名称', 'E927DDCDF95B4CC69A6E78E12A8CD6B2', 1);

delete from face_maplayer_data_filed_info where ID = 'F04FABB8722C45BF9D51819CF12ECA96';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'waterThickness', '积水量', 'F04FABB8722C45BF9D51819CF12ECA96', 2);

delete from face_maplayer_data_filed_info where ID = 'C27489DAE3214D12B29D54F8B16910F9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'dataSource', '数据来源', 'C27489DAE3214D12B29D54F8B16910F9', 3);

delete from face_maplayer_data_filed_info where ID = '9B34CF2A4D544521BD3D272E529F21BA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'iceThickness', '结冰量', '9B34CF2A4D544521BD3D272E529F21BA', 1);

delete from face_maplayer_data_filed_info where ID = '3DD5886469164A39934B621841EE4B46';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'pointName', '点位名称', '3DD5886469164A39934B621841EE4B46', 2);

delete from face_maplayer_data_filed_info where ID = 'E78BA00ABA0C4B11A5A8D62732327E5E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'dataSource', '数据来源', 'E78BA00ABA0C4B11A5A8D62732327E5E', 3);

delete from face_maplayer_data_filed_info where ID = 'E3C8914494524D6E8BE570DC909956B6';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'stdName', '站点名称', 'E3C8914494524D6E8BE570DC909956B6', 1);

delete from face_maplayer_data_filed_info where ID = '29ACFA097E0E42ED98320B4961BD9043';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'zdlxName', '站点类型名称', '29ACFA097E0E42ED98320B4961BD9043', 2);

delete from face_maplayer_data_filed_info where ID = 'EC35A886388B4996A7ADF9FDD5E69090';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'ZDZT', '站点状态', 'EC35A886388B4996A7ADF9FDD5E69090', 3);

delete from face_maplayer_data_filed_info where ID = '7C050C8658734EB7B415C017808B44C9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'REGIONDIV', '辖区编号', '7C050C8658734EB7B415C017808B44C9', 4);

delete from face_maplayer_data_filed_info where ID = '793388030BE641A689FB93ED74BAAF68';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEVICEMODEL', '设备型号', '793388030BE641A689FB93ED74BAAF68', 1);

delete from face_maplayer_data_filed_info where ID = '7622567DB48E43DBBEC84C8601ED798D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEPTSHORTNAME', '所属部门', '7622567DB48E43DBBEC84C8601ED798D', 2);

delete from face_maplayer_data_filed_info where ID = '990E6FAADDA94DBD8E92C2091E6B5DE2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'POINTNAME', '安装地点', '990E6FAADDA94DBD8E92C2091E6B5DE2', 3);

delete from face_maplayer_data_filed_info where ID = 'BF5D3198C5A64DE38D49FE32E1282AA1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'PROVIDEDATE', '安装日期', 'BF5D3198C5A64DE38D49FE32E1282AA1', 4);

delete from face_maplayer_data_filed_info where ID = '422E7088E3B24EDAB35738CCC4872D1E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'THIRDSYSCODE', '第三方编号', '422E7088E3B24EDAB35738CCC4872D1E', 5);

delete from face_maplayer_data_filed_info where ID = '2312C55FF5344BD5AE07F16A369D473B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEVICESTATENAME', '设备状态', '2312C55FF5344BD5AE07F16A369D473B', 6);

delete from face_maplayer_data_filed_info where ID = '6ECC0A285ADC4E74A819BD8596FCB071';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'SIGNALCODE', '信号路口ID', '6ECC0A285ADC4E74A819BD8596FCB071', 8);

delete from face_maplayer_data_filed_info where ID = '1B0BDC0843D84B4083B521D5570BCAED';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEVICEMODEL', '设备型号', '1B0BDC0843D84B4083B521D5570BCAED', 1);

delete from face_maplayer_data_filed_info where ID = '597E933DF4D8482B94E83A2469BDF039';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEPTSHORTNAME', '所属部门', '597E933DF4D8482B94E83A2469BDF039', 2);

delete from face_maplayer_data_filed_info where ID = 'FCECCB82F0E34C87BBA7C102259B2878';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'POINTNAME', '安装地点', 'FCECCB82F0E34C87BBA7C102259B2878', 3);

delete from face_maplayer_data_filed_info where ID = '33D26EA54D4543439662C1B80170E4E2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'PROVIDEDATE', '安装日期', '33D26EA54D4543439662C1B80170E4E2', 4);

delete from face_maplayer_data_filed_info where ID = '0236E927435148DABF1233B790025665';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'THIRDSYSCODE', '第三方编号', '0236E927435148DABF1233B790025665', 5);

delete from face_maplayer_data_filed_info where ID = 'A9D5FCA8B7814C4495B0EAAF0530FEBA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEVICESTATENAME', '设备状态', 'A9D5FCA8B7814C4495B0EAAF0530FEBA', 6);

delete from face_maplayer_data_filed_info where ID = 'CC90299364219695E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'VMSTYPE', '诱导屏类型', 'CC90299364219695E055000000000001', 7);

delete from face_maplayer_data_filed_info where ID = 'C427C2A62F0F4640804884238FA361C5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEVICEMODEL', '设备型号', 'C427C2A62F0F4640804884238FA361C5', 1);

delete from face_maplayer_data_filed_info where ID = '5A92A50F244F413D8C54BA3785F63FA2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEPTSHORTNAME', '所属部门', '5A92A50F244F413D8C54BA3785F63FA2', 2);

delete from face_maplayer_data_filed_info where ID = '879B61DFD6244965AAA5582C07DD9BF4';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'POINTNAME', '安装地点', '879B61DFD6244965AAA5582C07DD9BF4', 3);

delete from face_maplayer_data_filed_info where ID = '545D73213FB34032AC798DA7B1FFF755';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'PROVIDEDATE', '安装日期', '545D73213FB34032AC798DA7B1FFF755', 4);

delete from face_maplayer_data_filed_info where ID = '036B188D78BE42CD8DE9447B125608C1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'THIRDSYSCODE', '第三方编号', '036B188D78BE42CD8DE9447B125608C1', 5);

delete from face_maplayer_data_filed_info where ID = 'CCB34EED41B541EBAE7BC066EF83CDBE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEVICESTATENAME', '设备状态', 'CCB34EED41B541EBAE7BC066EF83CDBE', 6);

delete from face_maplayer_data_filed_info where ID = 'BD98E3969B9042378B1EA1AC183CBA81';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICETYPE', '设备类型', 'BD98E3969B9042378B1EA1AC183CBA81', 3);

delete from face_maplayer_data_filed_info where ID = 'E0CE3F0262704FE499E7179568C3BFDB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'THIRDSYSCODE', '第三方编号', 'E0CE3F0262704FE499E7179568C3BFDB', 4);

delete from face_maplayer_data_filed_info where ID = '1DEB9F5674A24F85A37D5D1F4ABAD7C1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'PROVIDER', '设备提供商 ', '1DEB9F5674A24F85A37D5D1F4ABAD7C1', 5);

delete from face_maplayer_data_filed_info where ID = '829F14B419704CB3855241CCBBDB6940';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'PROVIDEDATE', '安装日期', '829F14B419704CB3855241CCBBDB6940', 6);

delete from face_maplayer_data_filed_info where ID = '94B039D65162418DBCC40478C4CAC076';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICEMODEL', '设备型号', '94B039D65162418DBCC40478C4CAC076', 12);

delete from face_maplayer_data_filed_info where ID = '9015F736CF8D4E82B89ED2BA986DF7FC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'POINTNAME', '点位名称', '9015F736CF8D4E82B89ED2BA986DF7FC', 18);

delete from face_maplayer_data_filed_info where ID = '6D8672D5EAB64CBAB95CDB6C34E2C3EB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICESTATENAME', '设备状态', '6D8672D5EAB64CBAB95CDB6C34E2C3EB', 20);

delete from face_maplayer_data_filed_info where ID = 'D1A483AA7C64464FB9AFC3F6FFAF5203';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEPTSHORTNAME', '部门简称', 'D1A483AA7C64464FB9AFC3F6FFAF5203', 21);

delete from face_maplayer_data_filed_info where ID = '0D2EDBB3C1934FBDB10DCC61E05AA591';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'RAINFALL', '降水量', '0D2EDBB3C1934FBDB10DCC61E05AA591', 22);

delete from face_maplayer_data_filed_info where ID = 'C7885A1A57E04808A6FFFDC930217427';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'VISIBILITY', '能见度', 'C7885A1A57E04808A6FFFDC930217427', 23);

delete from face_maplayer_data_filed_info where ID = '1013DB1F4EBF478C9374BE43C1F3858E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'WATERTHICKNESS', '积水量', '1013DB1F4EBF478C9374BE43C1F3858E', 24);

delete from face_maplayer_data_filed_info where ID = 'E3C8D36BDEAC4DC2AB5B8926AFF64404';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'ICETHICKNESS', '结冰量', 'E3C8D36BDEAC4DC2AB5B8926AFF64404', 25);

delete from face_maplayer_data_filed_info where ID = '5723CA4492C84BC4A8E7DB89D89F5924';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICETYPE', '设备类型', '5723CA4492C84BC4A8E7DB89D89F5924', 3);

delete from face_maplayer_data_filed_info where ID = 'A9F86498D9A84E3B8529A8F31D57469D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'THIRDSYSCODE', '第三方编号', 'A9F86498D9A84E3B8529A8F31D57469D', 4);

delete from face_maplayer_data_filed_info where ID = '8A028B89CFB9402CB968AEDF7C32F07D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'PROVIDER', '设备提供商 ', '8A028B89CFB9402CB968AEDF7C32F07D', 5);

delete from face_maplayer_data_filed_info where ID = 'CB50E00618EE4E6C8F33F69B122C8BF3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'PROVIDEDATE', '安装日期', 'CB50E00618EE4E6C8F33F69B122C8BF3', 6);

delete from face_maplayer_data_filed_info where ID = 'E95B13D71CB541938BC1F216A3901CC5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'VMSTYPE', '屏幕类型', 'E95B13D71CB541938BC1F216A3901CC5', 8);

delete from face_maplayer_data_filed_info where ID = '8114A4FA94AB49B0B1F89267F3269F15';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICEMODEL', '设备型号', '8114A4FA94AB49B0B1F89267F3269F15', 12);

delete from face_maplayer_data_filed_info where ID = '3440C3A205EC449A981053A56339248F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'POINTNAME', '点位名称', '3440C3A205EC449A981053A56339248F', 18);

delete from face_maplayer_data_filed_info where ID = '9F57F52A694C461693E21E49F7AD21C2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICESTATENAME', '设备状态', '9F57F52A694C461693E21E49F7AD21C2', 20);

delete from face_maplayer_data_filed_info where ID = 'E3DC70FA43854249A10FF503CEBA70E2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEPTSHORTNAME', '部门简称', 'E3DC70FA43854249A10FF503CEBA70E2', 21);

delete from face_maplayer_data_filed_info where ID = '13EE060729DC4EA592FEE741C8941851';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICETYPE', '设备类型', '13EE060729DC4EA592FEE741C8941851', 3);

delete from face_maplayer_data_filed_info where ID = 'B108C8AF759D4672B88292CC5BF084A7';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'THIRDSYSCODE', '第三方编号', 'B108C8AF759D4672B88292CC5BF084A7', 4);

delete from face_maplayer_data_filed_info where ID = 'E386614B67D04BB3A3BF871E25EE429C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'PROVIDER', '设备提供商 ', 'E386614B67D04BB3A3BF871E25EE429C', 5);

delete from face_maplayer_data_filed_info where ID = 'C4BD77DC965E4E488A948D9C18FE6E2D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'PROVIDEDATE', '安装日期', 'C4BD77DC965E4E488A948D9C18FE6E2D', 6);

delete from face_maplayer_data_filed_info where ID = 'C992D6F8998346C291D7FA359928D4C8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICEMODEL', '设备型号', 'C992D6F8998346C291D7FA359928D4C8', 12);

delete from face_maplayer_data_filed_info where ID = '9DDB5566F62C4B36AE62EC2D5C34DB44';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'POINTNAME', '点位名称', '9DDB5566F62C4B36AE62EC2D5C34DB44', 18);

delete from face_maplayer_data_filed_info where ID = 'BC758AB1E6B247898339421E84FFA19F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICESTATENAME', '设备状态', 'BC758AB1E6B247898339421E84FFA19F', 20);

delete from face_maplayer_data_filed_info where ID = '033D70CDBEF04F5498BCC04E3F7E3D71';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEPTSHORTNAME', '部门简称', '033D70CDBEF04F5498BCC04E3F7E3D71', 21);

delete from face_maplayer_data_filed_info where ID = '7786B041FE3A4342A5D21F414A2BE302';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICETYPE', '设备类型', '7786B041FE3A4342A5D21F414A2BE302', 3);

delete from face_maplayer_data_filed_info where ID = 'EE2D0694A7A6490DA493680E7F1E9F3F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'THIRDSYSCODE', '第三方编号', 'EE2D0694A7A6490DA493680E7F1E9F3F', 4);

delete from face_maplayer_data_filed_info where ID = '58D808F681E64A6D8998EF1FEC598CB1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'PROVIDER', '设备提供商 ', '58D808F681E64A6D8998EF1FEC598CB1', 5);

delete from face_maplayer_data_filed_info where ID = '8BDD01C43AFD44E18A3D698C3E488230';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'PROVIDEDATE', '安装日期', '8BDD01C43AFD44E18A3D698C3E488230', 6);

delete from face_maplayer_data_filed_info where ID = '14DF0543E3F84284BFAF01FE2CC9B8D3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICEMODEL', '设备型号', '14DF0543E3F84284BFAF01FE2CC9B8D3', 12);

delete from face_maplayer_data_filed_info where ID = 'E1F619E3A4334236AE3241BBDDEADDFF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'POINTNAME', '点位名称', 'E1F619E3A4334236AE3241BBDDEADDFF', 18);

delete from face_maplayer_data_filed_info where ID = 'DF83D0F7ECDA453F9BEAAAADB30B4C7A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICESTATENAME', '设备状态', 'DF83D0F7ECDA453F9BEAAAADB30B4C7A', 20);

delete from face_maplayer_data_filed_info where ID = 'EA6748AEE89A4BC6BED2C323193A0CBB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEPTSHORTNAME', '部门简称', 'EA6748AEE89A4BC6BED2C323193A0CBB', 21);

delete from face_maplayer_data_filed_info where ID = '11F25370D43C4F14B1CC929F79A1F072';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICETYPE', '设备类型', '11F25370D43C4F14B1CC929F79A1F072', 3);

delete from face_maplayer_data_filed_info where ID = '94FDEB0B49D14CDA90C46241C54E674B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'THIRDSYSCODE', '第三方编号', '94FDEB0B49D14CDA90C46241C54E674B', 4);

delete from face_maplayer_data_filed_info where ID = 'FA1B36D24EBF45139CD129397DE672AE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'PROVIDER', '设备提供商 ', 'FA1B36D24EBF45139CD129397DE672AE', 5);

delete from face_maplayer_data_filed_info where ID = '0D927DF6A42E49EA9F115FCE0C3765AF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'PROVIDEDATE', '安装日期', '0D927DF6A42E49EA9F115FCE0C3765AF', 6);

delete from face_maplayer_data_filed_info where ID = '4DAC6926A61E4258B1A6A16BFC2BC185';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICEMODEL', '设备型号', '4DAC6926A61E4258B1A6A16BFC2BC185', 12);

delete from face_maplayer_data_filed_info where ID = '2543879DABD2490397DA3EDA35AAD3EA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'POINTNAME', '点位名称', '2543879DABD2490397DA3EDA35AAD3EA', 18);

delete from face_maplayer_data_filed_info where ID = '222141ABFF31465CA553E1E935E85191';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICESTATENAME', '设备状态', '222141ABFF31465CA553E1E935E85191', 20);

delete from face_maplayer_data_filed_info where ID = 'A98AC453722342C98161AADE8D3BB24C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEPTSHORTNAME', '部门简称', 'A98AC453722342C98161AADE8D3BB24C', 21);

delete from face_maplayer_data_filed_info where ID = 'A5597C4CC9B94DC19AC5790C7DE6D2C9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICETYPE', '设备类型', 'A5597C4CC9B94DC19AC5790C7DE6D2C9', 3);

delete from face_maplayer_data_filed_info where ID = 'C85B3603B8AC4886BC2D547AAC9DFE39';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'THIRDSYSCODE', '第三方编号', 'C85B3603B8AC4886BC2D547AAC9DFE39', 4);

delete from face_maplayer_data_filed_info where ID = '2ACAAD11C9FC4F66B130AA516BDA7F72';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'PROVIDER', '设备提供商 ', '2ACAAD11C9FC4F66B130AA516BDA7F72', 5);

delete from face_maplayer_data_filed_info where ID = '6E4E5843C2BF4037AA62D20432707D91';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'PROVIDEDATE', '安装日期', '6E4E5843C2BF4037AA62D20432707D91', 6);

delete from face_maplayer_data_filed_info where ID = '9D4D0E6A0CB147069A13CF3B36DB552A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICEMODEL', '设备型号', '9D4D0E6A0CB147069A13CF3B36DB552A', 12);

delete from face_maplayer_data_filed_info where ID = '24BFE508121F4381ABEDC7CAE14FFD9F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'POINTNAME', '点位名称', '24BFE508121F4381ABEDC7CAE14FFD9F', 18);

delete from face_maplayer_data_filed_info where ID = 'CF94FB7705AF4B019264874E469DF83E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICESTATENAME', '设备状态', 'CF94FB7705AF4B019264874E469DF83E', 20);

delete from face_maplayer_data_filed_info where ID = 'E9FFCA28C0EC482ABDEF6F25A45E5819';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEPTSHORTNAME', '部门简称', 'E9FFCA28C0EC482ABDEF6F25A45E5819', 21);

delete from face_maplayer_data_filed_info where ID = 'A371E68734CD4DA7A5E49B4BFAB720B3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICETYPE', '设备类型', 'A371E68734CD4DA7A5E49B4BFAB720B3', 3);

delete from face_maplayer_data_filed_info where ID = '48D900FE09784473BBFB18AA64567CBC';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'THIRDSYSCODE', '第三方编号', '48D900FE09784473BBFB18AA64567CBC', 4);

delete from face_maplayer_data_filed_info where ID = '6CE7A4767E0842819066433579DF600F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'PROVIDER', '设备提供商 ', '6CE7A4767E0842819066433579DF600F', 5);

delete from face_maplayer_data_filed_info where ID = '2222A1CFA65E4BC4865E9BDC6865111D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'PROVIDEDATE', '安装日期', '2222A1CFA65E4BC4865E9BDC6865111D', 6);

delete from face_maplayer_data_filed_info where ID = 'CD3273249A2C46A3AF33B189B584F990';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'VMSTYPE', '屏幕类型', 'CD3273249A2C46A3AF33B189B584F990', 8);

delete from face_maplayer_data_filed_info where ID = '247A2D5C897F4BA9968F81481FE678DF';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICEMODEL', '设备型号', '247A2D5C897F4BA9968F81481FE678DF', 12);

delete from face_maplayer_data_filed_info where ID = 'B390AA4DD8D34AF6B3BA5B85B81EF2DA';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'POINTNAME', '点位名称', 'B390AA4DD8D34AF6B3BA5B85B81EF2DA', 18);

delete from face_maplayer_data_filed_info where ID = '325E4BE0567A4EF3AAAF081C6CC3A019';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICESTATENAME', '设备状态', '325E4BE0567A4EF3AAAF081C6CC3A019', 20);

delete from face_maplayer_data_filed_info where ID = '0812A06258274CF5AF70CBE2B94DB5E0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEPTSHORTNAME', '部门简称', '0812A06258274CF5AF70CBE2B94DB5E0', 21);

delete from face_maplayer_data_filed_info where ID = 'D6B45BFB83314ECC8EEB266DEC73648F';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICETYPE', '设备类型', 'D6B45BFB83314ECC8EEB266DEC73648F', 3);

delete from face_maplayer_data_filed_info where ID = '321B24F940E149F38C1773BE64FB6D0C';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'THIRDSYSCODE', '第三方编号', '321B24F940E149F38C1773BE64FB6D0C', 4);

delete from face_maplayer_data_filed_info where ID = 'BFCBB9AAC94A47B38266FF5CA902C1D5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'PROVIDER', '设备提供商 ', 'BFCBB9AAC94A47B38266FF5CA902C1D5', 5);

delete from face_maplayer_data_filed_info where ID = '718A677B84D54269B3EF06C454B5043E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'PROVIDEDATE', '安装日期', '718A677B84D54269B3EF06C454B5043E', 6);

delete from face_maplayer_data_filed_info where ID = 'C71B390D71E24E2BA53081339FD84230';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICEMODEL', '设备型号', 'C71B390D71E24E2BA53081339FD84230', 12);

delete from face_maplayer_data_filed_info where ID = '828C66615BBF406A81B2805CFC1D4C05';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'POINTNAME', '点位名称', '828C66615BBF406A81B2805CFC1D4C05', 18);

delete from face_maplayer_data_filed_info where ID = '47B9B540416A4DB7BAD504BC38C30DCE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICESTATENAME', '设备状态', '47B9B540416A4DB7BAD504BC38C30DCE', 20);

delete from face_maplayer_data_filed_info where ID = '07A9E1D5FE124BA6A35B7874914EE78A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEPTSHORTNAME', '部门简称', '07A9E1D5FE124BA6A35B7874914EE78A', 21);

delete from face_maplayer_data_filed_info where ID = 'BDBFD8E662CE4F99B66CF664C8A0C973';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICETYPE', '设备类型', 'BDBFD8E662CE4F99B66CF664C8A0C973', 3);

delete from face_maplayer_data_filed_info where ID = '67A7097639734F9480F56C209C548547';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'THIRDSYSCODE', '第三方编号', '67A7097639734F9480F56C209C548547', 4);

delete from face_maplayer_data_filed_info where ID = '10F0E1585B484866B2C38F0882397B6D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'PROVIDER', '设备提供商 ', '10F0E1585B484866B2C38F0882397B6D', 5);

delete from face_maplayer_data_filed_info where ID = '4DAA2661C4D04940A4549298831DD477';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'PROVIDEDATE', '安装日期', '4DAA2661C4D04940A4549298831DD477', 6);

delete from face_maplayer_data_filed_info where ID = '2D8B51E4E9D547F78CBF294D74D55A11';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICEMODEL', '设备型号', '2D8B51E4E9D547F78CBF294D74D55A11', 12);

delete from face_maplayer_data_filed_info where ID = '39409E76C0124403B05CA022B6E4110E';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'POINTNAME', '点位名称', '39409E76C0124403B05CA022B6E4110E', 18);

delete from face_maplayer_data_filed_info where ID = 'C8DE85800A444561841BF51BABBDAF17';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICESTATENAME', '设备状态', 'C8DE85800A444561841BF51BABBDAF17', 20);

delete from face_maplayer_data_filed_info where ID = '894F1C65708544FA9220E88C365B969D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEPTSHORTNAME', '部门简称', '894F1C65708544FA9220E88C365B969D', 21);

delete from face_maplayer_data_filed_info where ID = 'C0F128BFAA3245458F232DF95E24ECA3';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carno', '车牌号', 'C0F128BFAA3245458F232DF95E24ECA3', 1);

delete from face_maplayer_data_filed_info where ID = '0BB0E47B4D4E4A7B94A345A7B10C6188';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'collectiondate', '采集时间', '0BB0E47B4D4E4A7B94A345A7B10C6188', 2);

delete from face_maplayer_data_filed_info where ID = 'D73DF22E5A314520B192143C98C134FE';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'speed', '速度', 'D73DF22E5A314520B192143C98C134FE', 5);

delete from face_maplayer_data_filed_info where ID = 'FFF8818A31314CB88BBD5AC7391A0505';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carcolor', '车牌颜色', 'FFF8818A31314CB88BBD5AC7391A0505', 6);

delete from face_maplayer_data_filed_info where ID = '97046E5EC9954E9BB54721F128296F73';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'cartype', '车辆类型', '97046E5EC9954E9BB54721F128296F73', 7);

delete from face_maplayer_data_filed_info where ID = '542E19BD931B44BCA2E618D2C41932AB';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carbrand', '车辆型号', '542E19BD931B44BCA2E618D2C41932AB', 8);

delete from face_maplayer_data_filed_info where ID = '149E4B347C3F4A8591DD74EC03516797';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'transporttype', '运输类型', '149E4B347C3F4A8591DD74EC03516797', 9);

delete from face_maplayer_data_filed_info where ID = '99EBFE09BAF647BE94C1F32DF6F1D0A1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'companyname', '所属公司', '99EBFE09BAF647BE94C1F32DF6F1D0A1', 10);

delete from face_maplayer_data_filed_info where ID = '384BA3F57E5F4E7F8A033D7AB485239A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carno', '车牌号', '384BA3F57E5F4E7F8A033D7AB485239A', 1);

delete from face_maplayer_data_filed_info where ID = 'C0AF08640FDA4E818778F9CCA30594C5';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'collectiondate', '采集时间', 'C0AF08640FDA4E818778F9CCA30594C5', 2);

delete from face_maplayer_data_filed_info where ID = '5E91C79657B64F27BA488F42EB7DDF78';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'speed', '速度', '5E91C79657B64F27BA488F42EB7DDF78', 5);

delete from face_maplayer_data_filed_info where ID = 'B94D7B06B9DB47C1AE503DE4FAB28790';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carcolor', '车牌颜色', 'B94D7B06B9DB47C1AE503DE4FAB28790', 6);

delete from face_maplayer_data_filed_info where ID = '6ADE3732BB1F4C608BEE3FDA135963A8';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'cartype', '车辆类型', '6ADE3732BB1F4C608BEE3FDA135963A8', 7);

delete from face_maplayer_data_filed_info where ID = '5FB5845BC9B74E43A379D74F19A85445';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carbrand', '车辆型号', '5FB5845BC9B74E43A379D74F19A85445', 8);

delete from face_maplayer_data_filed_info where ID = 'A04E295944624AC89A3790A9F0A0DFF2';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'transporttype', '运输类型', 'A04E295944624AC89A3790A9F0A0DFF2', 9);

delete from face_maplayer_data_filed_info where ID = '7D79DF2921C141B59A5E8F73C4D1F6C1';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'companyname', '所属公司', '7D79DF2921C141B59A5E8F73C4D1F6C1', 10);

delete from face_maplayer_data_filed_info where ID = '752A09CD13004880B5DE77B16866DC7D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carno', '车牌号', '752A09CD13004880B5DE77B16866DC7D', 1);

delete from face_maplayer_data_filed_info where ID = 'E40528FDE2714377A8D94775AB603466';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'collectiondate', '采集时间', 'E40528FDE2714377A8D94775AB603466', 2);

delete from face_maplayer_data_filed_info where ID = '53AFEB0736104ED2920D965110D7A61B';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'speed', '速度', '53AFEB0736104ED2920D965110D7A61B', 5);

delete from face_maplayer_data_filed_info where ID = '55417E39A4434DE8B0A02AE1AAAC8307';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carcolor', '车牌颜色', '55417E39A4434DE8B0A02AE1AAAC8307', 6);

delete from face_maplayer_data_filed_info where ID = '1B1ECF6FF74A46768EB4F0B42C3BC973';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'cartype', '车辆类型', '1B1ECF6FF74A46768EB4F0B42C3BC973', 7);

delete from face_maplayer_data_filed_info where ID = '400CF2719A8C45AEBFF31227989EE11A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carbrand', '车辆型号', '400CF2719A8C45AEBFF31227989EE11A', 8);

delete from face_maplayer_data_filed_info where ID = '21F5F30F7E864AC6A2F6445ED94B628A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'transporttype', '运输类型', '21F5F30F7E864AC6A2F6445ED94B628A', 9);

delete from face_maplayer_data_filed_info where ID = 'AFFB6835D80B4AAC96200F35923D8231';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'companyname', '所属公司', 'AFFB6835D80B4AAC96200F35923D8231', 10);

delete from face_maplayer_data_filed_info where ID = '2A2893190A2D4ABEA1C420F3FAC4045D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'ddeptname', '所属大队', '2A2893190A2D4ABEA1C420F3FAC4045D', 1);

delete from face_maplayer_data_filed_info where ID = '4AC1F15351D44C859B2F86A23ED822E9';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'zhongdeptname', '所属中队', '4AC1F15351D44C859B2F86A23ED822E9', 2);

delete from face_maplayer_data_filed_info where ID = 'CFB119D7A34214BAE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'largeUseNum', '大车泊位', 'CFB119D7A34214BAE055000000000001', 3);

delete from face_maplayer_data_filed_info where ID = 'CFB119D7A34114BAE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'smallUseNum', '小车泊位', 'CFB119D7A34114BAE055000000000001', 4);

delete from face_maplayer_data_filed_info where ID = 'C75109C8F41C4BC1A25D1E375CAAF113';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'ddeptname', '所属大队', 'C75109C8F41C4BC1A25D1E375CAAF113', 1);

delete from face_maplayer_data_filed_info where ID = 'E78E185FD9D74E74AF1EBB4481152E62';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'zhongdeptname', '所属中队', 'E78E185FD9D74E74AF1EBB4481152E62', 2);

delete from face_maplayer_data_filed_info where ID = 'CFB119D7A34314BAE055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'totalFlow', '5分钟流量', 'CFB119D7A34314BAE055000000000001', 3);

delete from face_maplayer_data_filed_info where ID = '1100356D492B41D3995980516F08D75A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'RISKPOINTNAME', '积水点名称', '1100356D492B41D3995980516F08D75A', 1);

delete from face_maplayer_data_filed_info where ID = '2200356D492B41D3995980516F08D75A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D75A', 2);

delete from face_maplayer_data_filed_info where ID = '3300356D492B41D3995980516F08D75A';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D75A', 3);

delete from face_maplayer_data_filed_info where ID = '68111AEE7F1347F9A6DB104967E5D55D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'AREANAME', '行政区名称', '68111AEE7F1347F9A6DB104967E5D55D', 2);

delete from face_maplayer_data_filed_info where ID = '11111AEE7F1347F9A6DB104967E5D55D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'TPI', '交通指数', '11111AEE7F1347F9A6DB104967E5D55D', 4);

delete from face_maplayer_data_filed_info where ID = '22111AEE7F1347F9A6DB104967E5D55D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'TRANSITVEHICLENUM', '在途车辆数', '22111AEE7F1347F9A6DB104967E5D55D', 5);

delete from face_maplayer_data_filed_info where ID = '33111AEE7F1347F9A6DB104967E5D55D';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'POLICENUM', '警情数', '33111AEE7F1347F9A6DB104967E5D55D', 6);

delete from face_maplayer_data_filed_info where ID = '68111AEE7F1347F9A6DB104967E5D222';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('42', 'DEPTBIGNAME', '所属大队', '68111AEE7F1347F9A6DB104967E5D222', 1);

delete from face_maplayer_data_filed_info where ID = '33111AEE7F1347F9A6DB104967E5D333';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('42', 'DEPTMIDDLENAME', '所属中队', '33111AEE7F1347F9A6DB104967E5D333', 2);

delete from face_maplayer_data_filed_info where ID = '22111AEE7F1347F9A6DB104967E5D444';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('42', 'STATUSNAME', '状态', '22111AEE7F1347F9A6DB104967E5D444', 3);

delete from face_maplayer_data_filed_info where ID = '11111AEE7F1347F9A6DB104967E5D111';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('42', 'LENGTH', '长度', '11111AEE7F1347F9A6DB104967E5D111', 4);

delete from face_maplayer_data_filed_info where ID = '22111AEE7F1347F9A6DB104967E5D555';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('42', 'REMARK', '备注', '22111AEE7F1347F9A6DB104967E5D555', 5);

delete from face_maplayer_data_filed_info where ID = '0089277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('43', 'AREA', '所属区域', '0089277CD61D42E9A3AE5B52B89F0FB0', 0);

delete from face_maplayer_data_filed_info where ID = '2289277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('43', 'TYPE', '类型', '2289277CD61D42E9A3AE5B52B89F0FB0', 1);

delete from face_maplayer_data_filed_info where ID = '1189277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('43', 'ADDRESS', '地址', '1189277CD61D42E9A3AE5B52B89F0FB0', 2);

delete from face_maplayer_data_filed_info where ID = '3389277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('43', 'DEPTNAME', '所属部门', '3389277CD61D42E9A3AE5B52B89F0FB0', 3);

delete from face_maplayer_data_filed_info where ID = '0019277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('44', 'AREA', '所属区域', '0019277CD61D42E9A3AE5B52B89F0FB0', 0);

delete from face_maplayer_data_filed_info where ID = '2219277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('44', 'TYPE', '类型', '2219277CD61D42E9A3AE5B52B89F0FB0', 1);

delete from face_maplayer_data_filed_info where ID = '1119277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('44', 'ADDRESS', '地址', '1119277CD61D42E9A3AE5B52B89F0FB0', 2);

delete from face_maplayer_data_filed_info where ID = '3319277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('44', 'DEPTNAME', '所属部门', '3319277CD61D42E9A3AE5B52B89F0FB0', 3);

delete from face_maplayer_data_filed_info where ID = '0029277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('45', 'AREA', '所属区域', '0029277CD61D42E9A3AE5B52B89F0FB0', 0);

delete from face_maplayer_data_filed_info where ID = '2229277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('45', 'TYPE', '类型', '2229277CD61D42E9A3AE5B52B89F0FB0', 1);

delete from face_maplayer_data_filed_info where ID = '1129277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('45', 'ADDRESS', '地址', '1129277CD61D42E9A3AE5B52B89F0FB0', 2);

delete from face_maplayer_data_filed_info where ID = '3329277CD61D42E9A3AE5B52B89F0FB0';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('45', 'DEPTNAME', '所属部门', '3329277CD61D42E9A3AE5B52B89F0FB0', 3);

delete from face_maplayer_data_filed_info where ID = 'D884442982C88933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('46', 'TYPENAME', '岗位类型', 'D884442982C88933E055000000000001', 0);

delete from face_maplayer_data_filed_info where ID = 'D884442982C98933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('46', 'LOCATION', '位置说明', 'D884442982C98933E055000000000001', 1);

delete from face_maplayer_data_filed_info where ID = 'D884442982CA8933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('46', 'DEPTSHORTNAME', '所属部门', 'D884442982CA8933E055000000000001', 2);

delete from face_maplayer_data_filed_info where ID = 'D884442982CB8933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('47', 'SECTIONID', '路段id', 'D884442982CB8933E055000000000001', 0);

delete from face_maplayer_data_filed_info where ID = 'D884442982CC8933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('47', 'SECTIONNAME', '路段名称', 'D884442982CC8933E055000000000001', 1);

delete from face_maplayer_data_filed_info where ID = 'D884442982CE8933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('47', 'TPI', '交通指数', 'D884442982CE8933E055000000000001', 3);

delete from face_maplayer_data_filed_info where ID = 'D884442982CF8933E055000000000001';
insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('47', 'SPEED', '速度', 'D884442982CF8933E055000000000001', 4);
commit;

-- 

------ FACE_TOOLS_CONFIG
insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('reportInfo', '信息上报', null, '0', '1', '{
"left": "window.innerWidth / 2 - 450",
        "top": "75px",
        "width": "900px",
        "height": "810px"
}', '1', '1');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('carSearch', '一键搜车', null, '0', null, '{
"left": "window.innerWidth - 750",
        "top": "600px",
        "width": "200px",
        "height": "96px"
}', '0', '2');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('dangerSection', '高风险路段', null, '0', '1', '{
"key":"dangerSection",
"left": "window.innerWidth - 716",
        "top": "218px",
        "width": "330px",
        "height": "190px"
}', '1', '17');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('devicePoint', '设备布设建议', null, '0', '1', '{
"key":"devicePoint",
"left": "window.innerWidth - 933",
        "top": "106px",
        "width": "550px",
        "height": "616px"
}', '1', '18');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('areaService', '服务区分析', null, '0', '9', '{
"key":"serviceArea",
"status":"37",
"left": "window.innerWidth - 800",
        "top": "120px",
        "width": "900px",
        "height": "810px"
}', '0', '3');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('areaService', '收费站分析', null, '0', '8', '{
"key":"tollstation",
"status": "38",
"left": "window.innerWidth - 800",
        "top": "200px",
        "width": "900px",
        "height": "810px"
}', '0', '4');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('trace', '溯源', null, '0', '7', '{
"apitype": "getTrace",
"left": "window.innerWidth - 800",
        "top": "120px",
        "width": "900px",
        "height": "810px"
}', '0', '5');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('track', '追踪', null, '0', '6', '{
"apitype":"getTrack",
"left": "window.innerWidth - 750",
        "top": "450px",
        "width": "200px",
        "height": "138px"
}', '0', '6');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('jstx', '即时通信', null, '0', '5', '{
"left": "window.innerWidth / 2 - 450",
        "top": "75px",
        "width": "900px",
        "height": "810px",
        "hichatUrl": "http://10.16.3.179:8101/HiatmpView/hichat/#/jstx"
}', '1', '7');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('jiaojieban', '交接班', null, '0', '4', '{
"left": "window.innerWidth / 2 - 450",
        "top": "75px",
        "width": "900px",
        "height": "810px"
}', '1', '8');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('poiSearch', 'POI搜索', null, '0', '3', '{
"left": "window.innerWidth - 750",
        "top": "175px",
        "width": "200px",
        "height": "96px"
}', '0', '9');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('videoSearch', '视频搜索', null, '0', '2', '{
"left": "window.innerWidth - 750",
        "top": "70px",
        "width": "200px",
        "height": "96px"
}', '0', '10');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('iframeWnd', '警情录入', null, '0', null, '{
"left": "window.innerWidth / 2 - 675",
        "top": "75px",
        "width": "1350px",
        "height": "850px",
        "url": "http://10.16.3.179:8101/HiatmpView/pisCommon/#/policeCaseInput?module=pis"
}', '0', '12');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('carIndex', '一车一档', null, '0', null, '{
"left": "window.innerWidth / 2 - 800",
 "top": "75px",
  "width": "1600px",
  "height": "800px"
}', '0', '13');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('personIndex', '一人一档', null, '0', null, '{
"left": "window.innerWidth / 2 - 800",
 "top": "75px",
  "width": "1600px",
  "height": "800px"
}', '0', '14');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('dangerHotSpot', '隐患热点分析', null, '0', '1', '{
"key":"dangerHotSpot",
"left": "window.innerWidth - 891",
        "top": "106px",
        "width": "335px",
        "height": "288px"
}', '1', '15');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('iframeWnd', '实时追踪', null, '0', '0', '{
"left": "window.innerWidth / 2 - 675",
        "top": "75px",
        "width": "1350px",
        "height": "850px",
        "url": "http://10.16.3.179:8101/scs/#/"
}', '0', '19');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('fileView', '在线预览', null, '0', null, '{
"left": "window.innerWidth / 2 - 200",
        "top": "75px",
  "width": "625px",
  "height": "750px",
  "fileUrl": "http://127.0.0.1:8001/file/muban.docx"
}', '0', '20');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('highIllegal', '违法高发', null, '0', null, '{
"left": "window.innerWidth / 2 - 200",
        "top": "75px",
  "width": "400px",
  "height": "600px"
}', '0', '21');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('roadCondition', '路况预测', null, '0', null, '{
"left": "window.innerWidth / 2 - 200",
        "top": "75px",
  "width": "400px",
  "height": "600px"
}', '0', '22');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('singleVehicleAnalyze', '单车出行规律', null, '0', null, '{
"left": "window.innerWidth / 2 - 225",
        "top": "75px",
  "width": "450px",
  "height": "250px"
}', '0', '23');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('toolsContact', '联络表', null, '0', '1', '{
"left": "window.innerWidth / 2 - 200",
        "top": "75px",
  "width": "400px",
  "height": "600px"
}', '0', '11');

insert into FACE_TOOLS_CONFIG (COMPONENT_ID, COMPONENT_NAME, USER_ID, DISPLAY, DISPLAY_ORDER, COMPONENT_PROPS, IS_COMMON, ID)
values ('launchPlan', '交通预案', null, '0', null, '{
"left": "window.innerWidth / 2 - 200",
        "top": "75px",
  "width": "400px",
  "height": "600px"
}', '0', '16');
commit;

-- 

------ FACE_DISTRICT_CENTER

-- 区域中心点，如江门：

-- sql
/*
insert into FACE_DISTRICT_CENTER (ID, AREA_DEPT_ID, COORDINATE)
values ('CC284B8BFC6C2BE3E055000000000001', '440784', '112.756425,22.666035');

insert into FACE_DISTRICT_CENTER (ID, AREA_DEPT_ID, COORDINATE)
values ('CC284B8BFC6D2BE3E055000000000001', '440700', '112.98153,22.67483');
*/
-- 

---- -----------------------

------ PIS_INFODETAIL_SHOWCOLUMN

-- sql
insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('infodesc', '警情详情', 'pis', '警情详情', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('attachlist', '上传附件', 'pis', '警情详情', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('infocoordinate', '坐标', 'pis', '警情详情', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('reportDept', '部门', 'pis', '上报信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('repname', '姓名', 'pis', '上报信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('repphone', '联系方式', 'pis', '上报信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('repsex', '性别', 'pis', '上报信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('carlist', '车辆信息', 'pis', '车辆信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('injured', '受伤', 'pis', '事故信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('death', '死亡', 'pis', '事故信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('form', '事故形态', 'pis', '事故信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('handerdept', '单位名称', 'pis', '交班信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('handerusername', '姓名', 'pis', '交班信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('handerphone', '联系方式', 'pis', '交班信息', '');

insert into PIS_INFODETAIL_SHOWCOLUMN (COLUMN_VALUE, COLUMN_NAME, SYSCODE, REMARK, TYPE)
values ('url', '舆情网页链接', 'pis', '警情详情', '');











???prompt Importing table CKPT_COC_CONFIG...
set feedback off
set define off
insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010001', 'SAFE_RRC_SGLX', '事故统计范围 0-全部 01-一般事故 02-简易事故', '01', 'safe', 'roadriskcontrol');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010002', 'SAFE_PRC_TOP', '事故统计获取top n的数据。例如：top2', '2', 'safe', 'roadriskcontrol');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010003', 'SAFE_PRC_DEAD_CNT', '事故死亡的期限。1-7天内死亡  2-30天内死亡', '2', 'safe', 'roadriskcontrol');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010004', 'SAFE_INDEX_THRESHOLD_HIGH', '安全指数得分高风险阈值', '80', 'safe', 'safeStatus');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010005', 'SAFE_INDEX_THRESHOLD_MIDDLE', '安全指数得分中风险阈值', '60', 'safe', 'safeStatus');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020010', 'SAFE_VEHICLE_RATIO', '风险算法-机动车各指标阈值占比，总和为1', '0.1,0.15,0.2,0.3,0.1,0.15', null, null);

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010003', 'SAFE_PRC_INJURE_CNT', '受伤统计的期限。1-24小时内受伤  2-3天内受伤 3-7天内受伤 4-30天内受伤', '2', 'safe', 'roadriskcontrol');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020009', 'SAFE_DRIVER_RATIO', '风险算法-驾驶人各指标阈值占比，总和为1', '0.1,0.15,0.2,0.3,0.1,0.15', null, null);

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020001', 'SAFE_DRIVER_NAME', '风险驾驶人对应各项得分的指标项名称,格式(name1,name2),当前5项', '年龄/驾龄,逾期未审验/未换证,扣满12分,驾证状态,严重违法前科/多次违法,事故前科', 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020002', 'SAFE_VEHICLE_NAME', '风险车辆对应各项得分的指标项名称,格式(name1,name2),当前3项', null, 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020003', 'SAFE_COMPANY_NAME', '风险企业对应各项得分的指标项名称,格式(name1,name2),当前12项', '车辆未检验,车辆未报废,车辆违法未处理,车辆违法量,车辆车均违法量,车辆重点违法量,一般事故量,车均一般事故量,驾驶人未审验,驾驶人未换', 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020004', 'SAFE_ROAD_NAME', '风险道路对应各项得分的指标项名称,格式(name1,name2),当前3项', null, 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020005', 'SAFE_ACCIDENT_NAME', '风险事故对应各项得分的指标项名称,格式(name1,name2),当前3项', null, 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020008', 'SAFE_LABEL_NAME', '风险算法中5种指标对应标签枚举（enum_type）11-驾驶人，21-车辆，31-公司，41-道路，51-事故', '63006', 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63010006', 'SAFE_RRC_LIST_CNT', '道路防控中的列表显示的数据条数', '5', 'safe', 'roadriskcontrol');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020006', 'SAFE_IMPORT_DRIVER_WFXW', '驾驶人-严重违法前科对应违法行为小类范围，如减量控大', '1039,1021,1312', 'safe', 'riskalgorithm');

insert into CKPT_COC_CONFIG (ID, PARAM_CODE, PARAM_NAME, PARAM_VALUE, BIG_TYPE, SUB_TYPE)
values ('63020007', 'SAFE_IMPORT_VEHICLE_WFXW', '重点车辆-严重违法前科对应违法行为小类范围，如减量控大', '1039,1021,1312', 'safe', 'riskalgorithm');

prompt Done.




commit;
-- 





-----------------------------------------------------新--------------------------------


-- A4  role_operation_relation
insert into role_operation_relation (roleid,operationid) values ('822128785d2045e59463d792f58faca1','02030110');--指挥岗
insert into role_operation_relation (roleid,operationid) values ('beda7bffb4ac40128e2762fcc5c7543a','02030111');--派警岗
insert into role_operation_relation (roleid,operationid) values ('aa04dbeda35e42e39db09ef63a0055c4','02030112');--信号岗
insert into role_operation_relation (roleid,operationid) values ('ca25db45f5d446e0a4fb0350f2d38093','02030113');--诱导岗

-- A4  enum_define
insert into enum_define (enumtypeid,enumname,enumdescribe,doflag) values ('15010','指挥岗警情状态','指挥岗警情状态（警情处置通用版本）',null);
insert into enum_define (enumtypeid,enumname,enumdescribe,doflag) values ('15011','派警岗警情状态','派警岗警情状态（警情处置通用版本）',null);
insert into enum_define (enumtypeid,enumname,enumdescribe,doflag) values ('15012','信号岗警情状态','信号岗警情状态（警情处置通用版本）',null);
insert into enum_define (enumtypeid,enumname,enumdescribe,doflag) values ('15013','诱导岗警情状态','诱导岗警情状态（警情处置通用版本）',null);

-- A4  enum_type
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A01','待处置',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A02','待签收',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A03','处置中',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A04','已办结',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A05','已回退',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15010','A06','已上报',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15011','B01','待派警',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15011','B02','已派警',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15011','B03','已反馈',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15012','C01','待调整',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15012','C02','已调整',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15013','D01','待发布',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15013','D02','审核中',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15013','D03','已驳回',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15013','D04','已发布',0,0,null,null);
insert into enum_type (enumtypeid,enumvalue,enumname,isdefault,dispindex,valid,enumdesc) values ('15013','D05','已撤销',0,0,null,null);

-- A4  sysparams
insert into sysparams (paramcode, paramname, paramvalue,paramcontent,paramstate) values ('PSD_ORDER_ACTIVE','警情处置-指令流转开关','1','警情处置-指令流转开关  0关 1开','0');

--A4 psd_post 
insert into psd_post (CODE, NAME, DESCRIBE, OPERATION)
values ('D1000', '诱导岗', null, '02030113');
insert into psd_post (CODE, NAME, DESCRIBE, OPERATION)
values ('A1000', '指挥岗', null, '02030110');
insert into psd_post (CODE, NAME, DESCRIBE, OPERATION)
values ('B1000', '派警岗', null, '02030111');
insert into psd_post (CODE, NAME, DESCRIBE, OPERATION)
values ('C1000', '信号岗', null, '02030112');
insert into psd_post (CODE, NAME, DESCRIBE, OPERATION)
values ('E1000', '事故快处岗', null, '02030114');

