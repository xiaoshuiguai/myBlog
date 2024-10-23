
------------------------------6.2 start -----------------------------------------------------------
------HiATMP-DB-DML6.2.0.1101.A1提测关联脚本 开始------

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '1', '易积水点', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '2', '长下坡', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '3', '急转弯', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '4', '易积雪/结冰', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '5', '团雾高发', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '6', '隧道', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '7', '涵洞', 0, 0, null, '风险点管理之类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610010, '8', '桥梁', 0, 0, null, '风险点管理之类型');
commit;




--预警参数
insert into face_sysparam (PARAM_ID, PARAM_NAME, PARAM_VALUE, PARAM_DESCRIBE, PARAM_CODE, PARAM_TYPE, ORDER_NUM)
values ('pre_big_parkinglot_use_rate', '服务区饱和预警大车使用率阈值', '0.7', '服务区饱和预警大车使用率阈值', 'pre_big_parkinglot_use_rate', '04', null);

insert into face_sysparam (PARAM_ID, PARAM_NAME, PARAM_VALUE, PARAM_DESCRIBE, PARAM_CODE, PARAM_TYPE, ORDER_NUM)
values ('pre_tollgate_rate', '收费站预警流量阈值', '0.7', '收费站预警流量阈值', 'pre_tollgate_rate', '04', null);
commit;


insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('FEEDBACKCRITICALVALUE', '400', '反馈超时阈值', null, '反馈超时阈值', '71');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('FINISHCRITICALVALUE', '400', '完结超时阈值', null, '完结超时阈值', '72');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('RECEIVECRITICALVALUE', '400', '接收超时阈值', null, '接收超时阈值', '73');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('SIGNCRITICALVALUE', '400', '签收超时阈值', null, '签收超时阈值', '74');

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '1', 0, 0, null, '指挥岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '2', 0, 0, null, '调度岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '3', 0, 0, null, '警卫岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '4', 0, 0, null, '处警岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '5', 0, 0, null, '事故快处岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '6', 0, 0, null, '信号岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '7', 0, 0, null, '诱导岗', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (20000, '8', 0, 0, null, '视频岗', 0);

commit;

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('2', '1', null, '{"2":"2,3,4,5,6,7,8","3":"1"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('2', '2', null, '{"2":"4,5,6,7,8","3":"1"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('2', '3', null, '{"2":"4,5,6,7,8","3":"1"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '1', '1', '{"2":"","3":"2,3,4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '2', '1', '{"2":"","3":"4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '3', '1', '{"2":"","3":"4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '1', '2', '{"2":"","3":"2,3,4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '2', '2', '{"2":"","3":"4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '3', '2', '{"2":"","3":"4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '1', '3', '{"2":"","3":"2,3,4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '2', '3', '{"2":"","3":"4,5,6,7,8"}');

insert into PIS_SENDPOSTS_CONFIG (NLEVEL, POST_TYPE, DEPT_TYPE, SEND_POSTS)
values ('3', '3', '3', '{"2":"","3":"4,5,6,7,8"}');
commit;

update face_window_component t set t.h = '55' where t.componentid = 'handlerecord';
commit;


insert into FACE_WINDOW (windowid, windowname, w, h, x, y, create_time)
values ('00001', '警情处置', null, null, null, null, to_date('29-03-2021 17:59:14', 'dd-mm-yyyy hh24:mi:ss'));
commit;

insert into FACE_WINDOW_COMPONENT (windowid, componentid, name, basefont, w, h, x, y, status, creat_time, update_time, create_user, i, border, maxw, minw, minh, maxh)
values ('00001', 'policecasedetail', '警情详情', 22, 18, 30, 0, 0, '1', to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), null, 'policecasedetail', '1', 200, 100, 100, 200);
insert into FACE_WINDOW_COMPONENT (windowid, componentid, name, basefont, w, h, x, y, status, creat_time, update_time, create_user, i, border, maxw, minw, minh, maxh)
values ('00001', 'handlerecord', '处置记录', 22, 18, 40, 19, 0, '0', to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), null, 'handlerecord', '1', 200, 100, 200, 200);
insert into FACE_WINDOW_COMPONENT (windowid, componentid, name, basefont, w, h, x, y, status, creat_time, update_time, create_user, i, border, maxw, minw, minh, maxh)
values ('00001', 'sendorder', '发送指令', 22, 18, 40, 0, 31, '0', to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-03-2021 18:00:22', 'dd-mm-yyyy hh24:mi:ss'), null, 'sendorder', '1', 200, 100, 100, 200);
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1502', '收费站溢出', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1501', '服务区饱和', 0, 0, 0, null);
commit;

-----以下是2021.8.12增加开始----
--先删除表face_mode全部数据
delete from face_mode;
commit;

--再添加表face_mode的默认数据
insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('gssecurity', '高速安全', null, '0', to_date('28-07-2021 08:09:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('rainday', '雨天', null, '0', to_date('28-07-2021 09:09:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('snowday', '雪天', null, '0', to_date('28-07-2021 10:09:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('foggyday', '雾天', null, '0', to_date('28-07-2021 11:09:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('holiday', '节假日', null, '0', to_date('28-07-2021 07:09:38', 'dd-mm-yyyy hh24:mi:ss'));

insert into face_mode (MODE_ID, MODE_NAME, COMPONENT_ID_ALLOW, ISUPDATE, INSERT_DATE)
values ('peak', '早晚高峰', null, '0', to_date('28-07-2021 06:09:38', 'dd-mm-yyyy hh24:mi:ss'));

commit;


--先删除表face_component的全部数据
delete from face_component;
commit;

--再添加表face_component的数据
insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('policecase', '事件');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('parkinglot', '停车场');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('area', '重点区域');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('inoutcity', '进出城口');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('district', '行政区');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('commuterline', '通勤干道');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('tollgate', '收费站');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('servicearea', '服务区');

commit;
---2021.8.12增加结束----

----以上部分已于2012年8月12日16点53分全部运行

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1110, '15', '预警信息', 0, 0, 0, '');

commit;

----以上部分已于2012年8月13日17点15分全部运行

delete  from face_scene;
delete  from face_theme;
delete  from face_component_config;
delete  from face_theme_config;
commit;

insert into face_scene (SCENEID, SCENENAME, DESCRIPTION, VISIABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER, TITLEFLAG)
values ('fullsandplate', '场景化指挥', '场景化指挥', '1', null, null, null, '1');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('97b84706ba3e4609a34d3ca494373910', 'fullsandplate', 'test', null, 0, 'screen-2k', '1', to_date('04-06-2021 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('81820157ac5948d2a6f6d91a454f7262', 'fullsandplate', 'testfull', null, 0, 'screen-4k', '1', to_date('11-08-2021 11:06:39', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('directives1', '指令场景化指挥', '场景化指挥', '2', '场景化指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'directives1', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('maplayer', '地图图层', '地图图层', '2', '地图图层', null, null, null, null, null, null, 6, 12, 0, 0, 'maplayer', 22, 20, 3, 4, 40, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('policecasefast', '智慧指挥', '智慧指挥快情报', '1', '智慧指挥快情报', null, null, null, null, null, null, 6, 12, 0, 0, 'policecasefast', 22, 20, 3, 4, 70, '1', null);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'directives1', '指令场景化指挥', 1, 22, 5, 59, 6, 0, 'directives1', '1', null, to_date('12-08-2021 15:04:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'a459861d08cf47059d0606d2b51e7e90', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'maplayer', '地图图层', 1, 22, 10, 14, 14, 46, 'maplayer', '1', null, to_date('12-08-2021 15:04:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, '74b89474b2e745f38c0f32542c2fa51e', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'policecasefast', '智慧指挥', 1, 22, 6, 60, 0, 0, 'policecasefast', '1', null, to_date('12-08-2021 15:04:22', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'd620e7491a6e4ed69baf6d8f26bc5adb', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'directives1', '指令场景化指挥', 1, 22, 10, 60, 10, 0, 'directives1', '1', null, to_date('16-08-2021 09:37:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'c1ea1b17a7a54fe6865a4059c7512b4a', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'maplayer', '地图图层', 1, 22, 16, 12, 20, 48, 'maplayer', '1', null, to_date('16-08-2021 09:37:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, '935191b2c92c4f91a1c43b091e89e7d3', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'policecasefast', '智慧指挥', 1, 22, 10, 61, 0, 0, 'policecasefast', '1', null, to_date('16-08-2021 09:37:56', 'dd-mm-yyyy hh24:mi:ss'), null, null, '08a1432196f14a6d931a377d69fce399', '1', 20, 3, 4, 70);

commit;


insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38077', '7', 'ca25db45f5d446e0a4fb0350f2d38093');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38011', '1', '822128785d2045e59463d792f58faca1');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38022', '2', '35723072ef0244be907965b448a76d00');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38033', '3', '3534d77f1ce9475caafeecdda1876f91');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38044', '4', 'beda7bffb4ac40128e2762fcc5c7543a');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38055', '5', 'fef53aaa1ac8474c96a5d13766cd7447');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38066', '6', 'aa04dbeda35e42e39db09ef63a0055c4');

insert into pic_post_role_relation (POST_ROLE_ID, POST_TYPE, ROLE_ID)
values ('ca25db45f5d446e0a4fb0350f2d38088', '8', '3fc0d00d94cb449eb510996aca13572f');


insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('ca25db45f5d446e0a4fb0350f2d38093', '诱导岗', '诱导岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('822128785d2045e59463d792f58faca1', '指挥岗', '指挥岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('aa04dbeda35e42e39db09ef63a0055c4', '信号岗', '信号岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('beda7bffb4ac40128e2762fcc5c7543a', '处警岗', '处警岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('fef53aaa1ac8474c96a5d13766cd7447', '事故快处岗', '事故快处岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('35723072ef0244be907965b448a76d00', '调度岗', '调度岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('3534d77f1ce9475caafeecdda1876f91', '警卫岗', '警卫岗', 'admin1');

insert into role (ROLEID, ROLENAME, DETAIL, CREATOR)
values ('3fc0d00d94cb449eb510996aca13572f', '视频岗', '视频岗', 'admin1');



------------------角色权限表---------------------------
insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '05070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010305');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010306');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '01030701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '010307');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '03030501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '030305');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0404');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '040402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '04040203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010703');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010704');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05010901');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011001');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011404');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011505');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011506');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011504');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011603');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011604');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05011602');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020404');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020405');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05020406');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0504');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050404');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040404');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040405');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040406');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '05040501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '050405');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '0507');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('aa04dbeda35e42e39db09ef63a0055c4', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '0507');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '05070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('beda7bffb4ac40128e2762fcc5c7543a', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0602');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0603');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '06040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '060401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0604');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '0702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070205');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070206');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070207');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070208');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '070209');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('822128785d2045e59463d792f58faca1', '07020901');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '0507');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '05070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('fef53aaa1ac8474c96a5d13766cd7447', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '0301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '0302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '0303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '030305');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('35723072ef0244be907965b448a76d00', '03030501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '0301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '0302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '0303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030303');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03030301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '030305');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3534d77f1ce9475caafeecdda1876f91', '03030501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '0507');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '05070201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('3fc0d00d94cb449eb510996aca13572f', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '0201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010501');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010502');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010503');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010601');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02010801');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '0202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020104');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020105');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020106');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020107');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020108');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020109');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020110');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020111');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020112');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020113');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020114');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020115');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020116');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020117');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02020118');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '0203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02030101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02030102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02030103');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020302');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02030201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020304');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02030401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '0204');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020402');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '020403');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '02040301');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '0507');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '050701');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '05070101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '050702');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('ca25db45f5d446e0a4fb0350f2d38093', '05070201');

commit;

-----------admin1 加入指挥岗角色----------
insert into user_role_relation (NUSERID, ROLEID, AUTHORIZABLE)
values ('admin1', '822128785d2045e59463d792f58faca1', '1');

commit;

------HiATMP-DB-DML6.2.0.1101.A1提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A2提测关联脚本 开始------
----青岛现场会一张图脚本

insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建设备', 12345, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建设备', 15789, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建设备', 12549, to_date('01-03-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建设备', 16450, to_date('01-02-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建系统', 2356, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('自建系统', 3215, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('公安共享', 549, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('公安共享', 600, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('政府共享', 123, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('政府共享', 165, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('企业共享', 33, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_ACCESS (menuname, todaynum, compdate)
values ('企业共享', 55, to_date('01-04-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01', '内部自建', null, '00', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101', '设备感知', null, '01', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101', '视频摄像头', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010101', '实时视频', null, '010101', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010102', '视频巡检', null, '010101', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101010201', '事件类型', null, '01010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101020101', '拥堵', null, '0101010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101020102', '事故', null, '0101010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101020103', '积水', null, '0101010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101020104', '积雪', null, '0101010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101010202', '事件地点', null, '01010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101010203', '事件时间', null, '01010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101010204', '事件级别', null, '01010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102', '电警', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010201', '过车记录', null, '010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020101', '车牌号', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020102', '号牌种类', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020103', '采集时间', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:49:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020104', '行驶速度', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020105', '行驶方向', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020106', '行驶车道', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020107', '点位编号', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020108', '采集机关', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020109', '点位名称', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020110', '采集设备', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020111', '采集照片', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020112', '二次识别号牌种类', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020113', '二次识别号牌号码', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020114', '二次识别车辆类型', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020115', '二次识别车身颜色', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020116', '二次识别遮阳板', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020117', '二次识别安全带', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020118', '二次识别拨打电话', null, '01010201', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010202', '违法记录', null, '010102', null, '0', '1', null, null, '2021-05-22', to_date('20-05-2021 17:56:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020201', '号牌类型', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020202', '号牌号码', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020203', '违法时间', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020204', '违法地点', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020205', '违法照片', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101020206', '违法行为', null, '01010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102020601', '闯红灯', null, '0101020206', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102020602', '压实线', null, '0101020206', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102020603', '不按导向行驶', null, '0101020206', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102020604', '不礼让行人', null, '0101020206', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102020605', '禁行区行驶', null, '0101020206', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010103', '过车卡口', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010301', '过车记录', null, '010103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101030101', '同电子警察', null, '01010301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010302', '过车图片', null, '010103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010303', '违法行为', null, '010103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101030301', '超速', null, '01010303', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101030302', '接打电话', null, '01010303', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101030303', '不系安全带', null, '01010303', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010304', '违法图片', null, '010103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010305', '人脸抠图', null, '010103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010104', '交通流检测器', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010401', '断面流量', null, '010104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040101', '采集点位', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040102', '采集时间', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040103', '方向', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040104', '车道', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040105', '速度', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040106', '流量', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040107', '占有率', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101040108', '排队长度', null, '01010401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010105', '信号机', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010501', '信号配时', null, '010105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010502', '控制子区', null, '010105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010106', '事件检测器', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010601', '超速', null, '010106', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010602', '违法停车', null, '010106', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010603', '逆行', null, '010106', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010604', '抛洒物', null, '010106', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010605', '行人上高速', null, '010106', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010107', '超速控距设备', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010701', '车牌号', null, '010107', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010702', '发生位置', null, '010107', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010703', '前后车距', null, '010107', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010704', '违法照片', null, '010107', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010108', '气象检测器', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010801', '温度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010802', '湿度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010803', '风速', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:07:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010804', '风向', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010805', '风力', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010806', '气压', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010807', '降雨量', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010808', '路表温度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010809', '路表水厚度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010810', '路表冰厚度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010811', '路表雪厚度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010812', '浓见度', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010813', '采集时间', null, '010108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010109', '警卫单警终端', null, '0101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010901', '终端编号', null, '010109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010902', '经度', null, '010109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010903', '维度', null, '010109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010904', '速度', null, '010109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010905', '采集时间', null, '010109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102', '自建系统', null, '01', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010201', '122', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020101', '接警单', null, '010201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010101', '接警单编号', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010102', '接警时间', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010103', '报案人姓名', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010104', '案发地点', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010105', '报案人手机号', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010106', '地点坐标', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010107', '警情简述', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010108', '警情一级类型', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102010109', '警情二级类型', null, '01020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020102', '处警单', null, '010201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020103', '反馈单', null, '010201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010202', '管控平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020201', '稽查布控', null, '010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020101', '黑名单车辆', null, '01020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020102', '稽查报警数据', null, '01020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020202', '诱导发布', null, '010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020201', '节目单', null, '01020202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020202', '发布计划', null, '01020202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020203', '行政审批', null, '010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020301', '通行证', null, '01020203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020302', '占路施工', null, '01020203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020204', '基础信息', null, '010202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020401', '交通管制', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020402', '路段', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020403', '路口', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:20:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020404', '服务区', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020405', '收费站', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020406', '互通立交', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020407', '标线标牌', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020408', '护栏', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102020409', '信号灯', null, '01020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010203', '安保平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020301', '警卫任务', null, '010203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020302', '警卫路线', null, '010203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020303', '警卫要素', null, '010203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020304', '特勤岗位', null, '010203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010204', '信号系统', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010205', '交通流平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010206', '运维云平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010207', '二次识别平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020701', '雾气浓见度检测', null, '010207', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070101', '雾气浓见度', null, '01020701', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070102', '检测点位', null, '01020701', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070103', '检测时间', null, '01020701', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020702', '信号灯故障检测', null, '010207', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070201', '检测时间', null, '01020702', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070202', '信号灯点位', null, '01020702', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102070203', '故障类型', null, '01020702', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010208', '舆情平台', null, '0102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020801', '舆情标题', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020802', '舆情内容', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020803', '舆情类型', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020804', '舆情来源', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020805', '网站地址', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020806', '热度', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020807', '抓取时间', null, '010208', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02', '外部共享', null, '00', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201', '公安共享', null, '02', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020101', '12122', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010101', '交通警情', null, '020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010101', '接警单号', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010102', '事发时间', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010103', '报警电话', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010104', '事件类型', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010105', '所属支队', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010106', '所属大队', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010107', '事件标题', null, '02010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020102', '六合一平台', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010201', '机动车数据', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010202', '驾驶人数据', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010203', '驾驶证业务办理流水', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010204', '机动车业务办理流水', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010205', '驾驶人体检信息', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010206', '违法记录', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010207', '简易事故', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010208', '一般事故', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010209', '强制措施', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010210', '处罚决定书', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010211', '暂扣记录', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010212', '吊销记录', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010213', '扣留物品记录', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010214', '银行对账记录', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010215', '行政复议诉讼表', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010216', '处罚公示', null, '020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020103', '集成指挥平台', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 10:33:56', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010301', '基础路网数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010302', '车驾管数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010303', '执法站数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010304', '警车数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010305', '组织结构数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010306', '流量数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010307', '事故数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010308', '违法数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010309', '警力资源数据', null, '020103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020104', '涉毒人员接口', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010401', '姓名', null, '020104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010402', '身份证号码', null, '020104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010403', '吸毒时间', null, '020104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020105', '在逃人员接口', null, '020104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010501', '姓名', null, '020105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010502', '身份证号码', null, '020105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010503', '犯罪时间', null, '020105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010504', '犯罪原因', null, '020105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020106', '违法犯罪人员接口', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020107', '全国人口接口', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020108', '智慧安防小区系统', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010801', '车辆类型', null, '020108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010802', '车牌号码', null, '020108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010803', '采集时间', null, '020108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010804', '车辆图片', null, '020108', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020109', '执法记录仪', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010901', '实时定位', null, '020109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010902', '实时视频', null, '020109', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020110', '民生警务平台', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011001', '事发地点', null, '020110', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011002', '诉求类型', null, '020110', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011003', '诉求信息', null, '020110', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011004', '诉求人信息', null, '020110', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020111', '警力定位', null, '0201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011101', '警务通定位', null, '020111', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110101', '警员编号', null, '02011101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110102', '警务通号码', null, '02011101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110103', '定位信息', null, '02011101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110104', '时间', null, '02011101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011102', '公车定位', null, '020111', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110201', '车牌号码', null, '02011102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110202', '采集时间', null, '02011102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110203', '定位信息', null, '02011102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011103', '350M定位', null, '020111', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110301', '装备编号', null, '02011103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110302', '定位信息', null, '02011103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110303', '采集时间', null, '02011103', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011104', '车载定位', null, '020111', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:18:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110401', '车牌号码', null, '02011104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110402', '采集时间', null, '02011104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110403', '定位信息', null, '02011104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02011105', '执法记录仪定位', null, '020111', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110501', '装备编号', null, '02011105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110502', '定位信息', null, '02011105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201110503', '采集时间', null, '02011105', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202', '政府共享', null, '02', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201', '建委', null, '0202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020101', '停车一体化平台', null, '020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202010101', '泊位信息', null, '02020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010101', '停车场编号', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010102', '停车场名称', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010103', '总泊位数', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010104', '当前利用数', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010105', '当前剩余数', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010106', '采集时间', null, '0202010101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202010102', '进出场信息', null, '02020101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010201', '车牌号码', null, '0202010102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010202', '停车场编号', null, '0202010102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010203', '停车场名称', null, '0202010102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010204', '进出标记', null, '0202010102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201010205', '通行时间', null, '0202010102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020102', '渣土车管理系统', null, '020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202010201', '渣土车实时位置', null, '02020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202010202', '施工点位', null, '02020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202010203', '全市建筑垃圾回填预约信息', null, '02020102', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020202', '城管局', null, '0202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020201', '城管网格化系统', null, '020202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202020101', '部件', null, '02020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202020102', '问题描述', null, '02020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202020103', '所属街道', null, '02020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202020104', '所属社区', null, '02020201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020203', '气象局', null, '0202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020301', '气象数据', null, '020203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202030101', '气象监测点', null, '02020301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202030102', '实时气象', null, '02020301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020204', '保险协会', null, '0202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020401', '机动车保险数据', null, '020204', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202040101', '投保记录', null, '02020401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202040102', '出险记录', null, '02020401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202040103', '理赔记录', null, '02020401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205', '交通委', null, '0202', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020501', '运输企业从业人员', null, '020205', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020502', '道路运输车辆信息', null, '020205', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050201', '公交车信息', null, '02020502', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:30:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050202', '出租车信息', null, '02020502', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050203', '网约车信息', null, '02020502', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050204', '危化品运输车辆信息', null, '02020502', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050205', '客运车辆信息', null, '02020502', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020503', '长途客运站数据', null, '020205', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020504', '营运车辆轨迹信息', null, '020205', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050401', '网约车数据', null, '02020504', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040101', '车辆位置', null, '0202050401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040102', '车辆速度', null, '0202050401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040103', '车辆编号', null, '0202050401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040104', '采集时间', null, '0202050401', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050402', '出租车数据', null, '02020504', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040201', '车辆位置', null, '0202050402', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:34:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040202', '车辆速度', null, '0202050402', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040203', '车辆编号', null, '0202050402', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040204', '采集时间', null, '0202050402', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050403', '公交车数据', null, '02020504', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040301', '车辆位置', null, '0202050403', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040302', '车辆速度', null, '0202050403', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040303', '车辆编号', null, '0202050403', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020205040304', '采集时间', null, '0202050403', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020505', '客流数据', null, '020205', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050501', '公交客流', null, '02020505', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050502', '地铁客流', null, '02020505', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050503', '航空到发客流', null, '02020505', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050504', '铁路到发客流', null, '02020505', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202050505', '水运发送量', null, '02020505', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203', '企业共享', null, '02', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301', '山东九通', null, '0203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030101', '两客一危平台', null, '020301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203010101', '车辆备案信息', null, '02030101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203010102', '车辆位置信息', null, '02030101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203010103', '电子运单', null, '02030101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203010104', '违法预警', null, '02030101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301010401', '疲劳驾驶', null, '0203010104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301010402', '超速', null, '0203010104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301010403', '抽烟', null, '0203010104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301010404', '打电话', null, '0203010104', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203010105', '实时视频', null, '02030101', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 11:42:11', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020302', '山东高速', null, '0203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030201', '高速ETC', null, '020302', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203020101', '车牌类型', null, '02030201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203020102', '车牌号码', null, '02030201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203020103', '车辆类型', null, '02030201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203020104', '点位信息', null, '02030201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203020105', '线路信息', null, '02030201', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020303', '高德', null, '0203', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030301', '高德路况', null, '020303', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203030101', 'link编号', null, '02030301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203030102', '速度', null, '02030301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203030103', '路况状态', null, '02030301', null, '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:10:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_GOVERN (govern_num, repair_num, compdate)
values (121, 222, to_date('02-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN (govern_num, repair_num, compdate)
values (232, 258, to_date('01-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据完整性校验', 1233, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('空值校验', 2544, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('长度校验', 5421, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('格式校验', 2154, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据类型校验', 2136, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据范围校验', 1549, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据真实性校验', 5412, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据完整性校验', 1333, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('空值校验', 2644, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('长度校验', 5521, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('格式校验', 2254, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据类型校验', 2236, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据范围校验', 1649, to_date('06-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_GOVERN_TYPE (govern_type, govern_num, collect_time)
values ('数据真实性校验', 5512, to_date('06-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0101', 115456789, to_date('23-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0102', 553456789, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0201', 773456789, to_date('01-03-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0202', 567456789, to_date('01-02-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0203', 755456789, to_date('01-01-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0204', 677456789, to_date('01-12-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0205', 866456789, to_date('01-11-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0301', 588456789, to_date('01-10-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0302', 766456789, to_date('01-09-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0303', 355456789, to_date('01-08-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0304', 677456789, to_date('01-07-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0401', 599456789, to_date('01-06-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0501', 711756789, to_date('01-05-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0601', 453456789, to_date('01-04-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0602', 673456789, to_date('01-03-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0701', 967456789, to_date('01-02-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0801', 555456789, to_date('01-01-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SHARE (menuid, todaynum, compdate)
values ('0102', 653456789, to_date('01-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01', '大数据局', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02', '高德', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03', '市局', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('04', '城市管理局', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05', '山东高速', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('06', '青岛新闻网', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('07', '城市规划设计院', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('08', '交运、公交集团', null, null, '1', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:47:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101', '路况数据', null, '01', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102', '交通拥堵指数', null, '01', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201', '路况数据', null, '02', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202', '交通拥堵指数', null, '02', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203', '交通事件', null, '02', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0204', '执法设备点位', null, '02', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205', '隧道交通流量', null, '02', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301', '过车轨迹', null, '03', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302', '违法数据', null, '03', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0303', '货车通行证数据', null, '03', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0304', '占路施工数据', null, '03', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0401', '交通情报办理过程', null, '04', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0501', '交通路况快照', null, '05', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0601', '路况信息', null, '06', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0602', '交通路况快照', null, '06', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0701', '过车轨迹', null, '07', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_SHARE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0801', '公交车违法数据', null, '08', '2', '0', '1', 54321, 87654321, '2021-05-20', to_date('20-05-2021 12:51:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_SOURCE_TYPE (device_type_name, device_type_num, collect_time)
values ('卡口', 232, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SOURCE_TYPE (device_type_name, device_type_num, collect_time)
values ('电子警察', 124, to_date('07-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_SOURCE_TYPE (device_type_name, device_type_num, collect_time)
values ('气象检测器', 255, to_date('06-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('01', 555456789, to_date('01-05-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('01', 186456789, to_date('23-05-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('02', 453456789, to_date('01-04-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('03', 673456789, to_date('01-03-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('01', 967456789, to_date('01-02-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('02', 555456789, to_date('01-01-2021', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('03', 777456789, to_date('01-12-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('01', 666456789, to_date('01-11-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('02', 888456789, to_date('01-10-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('03', 666456789, to_date('01-09-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('01', 555456789, to_date('01-08-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('02', 777456789, to_date('01-07-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('03', 999456789, to_date('01-06-2020', 'dd-mm-yyyy'));
insert into FEEL_DAAS_STORE (menuid, todaynum, compdate)
values ('02', 453456789, to_date('01-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01', '人', null, '00', '1', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02', '车', null, '00', '1', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03', '路', null, '00', '1', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('04', '环境', null, '00', '1', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05', '事件', null, '00', '1', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:34:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101', '机动车驾驶人', null, '01', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:36:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102', '非机动车驾驶人', null, '01', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:36:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0103', '重点车辆驾驶人', null, '01', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:36:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0104', '警员', null, '01', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:36:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0105', '涉案人员', null, '01', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:36:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010101', '驾驶人基本信息', null, '0101', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:42:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010102', '驾龄', null, '0101', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:42:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010103', '证件状态', null, '0101', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:42:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010104', '违法', null, '0101', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:42:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010105', '事故', null, '0101', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:42:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010301', '记分情况', null, '010103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:43:31', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010302', '吊销', null, '010103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:43:31', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01010303', '逾期未审验', null, '010103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:43:31', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010201', '驾驶人基本信息', null, '0102', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:45:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010202', '标签', null, '0102', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:45:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010203', '违法', null, '0102', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:45:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010204', '事故', null, '0102', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:45:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020201', '外卖车', null, '010202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:46:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020202', '快递车', null, '010202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:46:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020203', '共享单车', null, '010202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:46:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01020204', '私人非机动车', null, '010202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:46:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010301', '驾驶人基本信息', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010302', '所属企业', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010303', '驾龄', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010304', '证件状态', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010305', '违法', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010306', '事故', null, '0103', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:47:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01030401', '记分情况', null, '010304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:48:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01030402', '吊销', null, '010304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:48:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01030403', '逾期未审验', null, '010304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:48:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01030404', '逾期未换证', null, '010304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:48:20', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010401', '警员基本信息', null, '0104', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:49:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010402', '勤务信息', null, '0104', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:49:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040101', '警号', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040102', '所属单位', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040103', '岗位类型', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040104', '岗位名称', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040105', '岗位范围', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040106', '岗位时段', null, '010401', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:01', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040201', '在岗状态', null, '010402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040202', 'GPS', null, '010402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01040203', '考核信息', null, '010402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:50:57', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010501', '基本信息', null, '0105', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:51:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010502', '人脸头像', null, '0105', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:51:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('010503', '名下车辆', null, '0105', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:51:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01050301', '出现时间', null, '010503', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:52:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01050302', '出现地点', null, '010503', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:52:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01050303', '出行规律', null, '010503', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 15:52:40', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201', '公交车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202', '地铁', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203', '私家车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0204', '摩托车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205', '非机动车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0206', '农村面包车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207', '营运车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0208', '特种车辆', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0209', '公务车辆', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0210', '警车', null, '02', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:14:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020101', '线路', null, '0201', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:15:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020102', '站点', null, '0201', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:15:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010101', '班次', null, '020101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:15:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010102', '车辆', null, '020101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:15:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010201', '实时载客量', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010202', '公交GPS', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010203', '驾驶员疲劳驾驶预警', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010204', '违法数据', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010205', '事故数据', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201010206', '延误情况', null, '02010102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:16:50', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02010201', '上下客流', null, '020102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:17:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020201', '线路', null, '0202', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:18:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020202', '站点', null, '0202', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:18:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020101', '班次', null, '020201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:19:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020201', '上下客流', null, '020202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:19:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02020202', '站点封闭情况', null, '020202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:19:21', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020301', '车辆基本信息', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020302', '车辆状态', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020303', '车辆标签', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020304', '出行习惯', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020305', '车辆违法', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020306', '车辆事故', null, '0203', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:23', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030201', '逾期未年检', null, '020302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030202', '多次违法未处理', null, '020302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:20:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030301', '通勤车', null, '020303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030302', '网约车', null, '020303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030303', '家长车', null, '020303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:17', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030401', '停留点', null, '020304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030402', '出行时段', null, '020304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02030403', '常用路线', null, '020304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:21:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020401', '车辆基本信息', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020402', '车辆状态', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020403', '车辆标签', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020404', '车辆出行规律', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020405', '车辆事故信息', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020406', '车辆违法信息', null, '0204', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040201', '未年检', null, '020402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:23:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040301', '外卖车', null, '020403', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:25:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040302', '快递车', null, '020403', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:25:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040303', '私人车', null, '020403', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:25:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040601', '不带头盔', null, '020406', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:26:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040602', '闯红灯', null, '020406', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:26:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02040603', '违规遮棚', null, '020406', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:26:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020501', '共享单车', null, '0205', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:38:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020502', '私人非机动车', null, '0205', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:38:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020503', '外卖车/快递车', null, '0205', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:38:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050101', '共享车信息', null, '020501', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:39:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050102', '所属单位', null, '020501', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:39:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050103', '共享单车位置', null, '020501', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:39:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050104', '共享单车停车位', null, '020501', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:39:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205010401', '可停车量', null, '02050104', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:39:42', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050201', '车辆信息', null, '020502', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050202', '车辆所属辖区、社区', null, '020502', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050203', '车辆违法信息', null, '020502', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020101', '车辆所有人', null, '02050201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020301', '不带头盔', null, '02050203', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020302', '伞架', null, '02050203', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020303', '手机支架', null, '02050203', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020304', '闯红灯', null, '02050203', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205020305', '违规遮棚', null, '02050203', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050301', '轨迹数据', null, '020503', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02050302', '违法信息', null, '020503', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:41:55', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205030101', '分析停留热点', null, '02050301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205030201', '不带头盔', null, '02050302', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205030202', '闯红灯', null, '02050302', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0205030203', '逆行', null, '02050302', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020601', '车辆信息', null, '0206', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:43:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020602', '车辆状态', null, '0206', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:43:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020603', '车辆出行规律', null, '0206', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:43:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020604', '车辆违法超员', null, '0206', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:43:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020605', '车辆事故', null, '0206', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:43:33', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020701', '公路客运/旅游客运', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020702', '危化品运输车', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020703', '渣土车', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020704', '出租车', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020705', '网约车', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020706', '校车', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020707', '营转非', null, '0207', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:45:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070101', '整体', null, '020701', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:46:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070102', '车辆实时位置', null, '020701', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:46:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070103', '车辆违法信息', null, '020701', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:46:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070104', '车辆事故', null, '020701', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:46:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070105', '驾驶员主动防御报警信息', null, '020701', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:46:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010101', '检验率', null, '02070101', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:47:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010102', '报废率', null, '02070101', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:47:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010103', '违法处理率', null, '02070101', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:47:10', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010201', '红眼客车', null, '02070102', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:47:34', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010301', '逾期未年检', null, '02070103', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:48:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010302', '逾期未报废', null, '02070103', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:48:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010303', '报废车辆上路', null, '02070103', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:48:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207010304', '超员', null, '02070103', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:48:22', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070201', '整体', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070202', '车辆通行证', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070203', '车辆实时GPS', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070204', '车辆实时位置', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070205', '车辆载货信息', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070206', '车辆违法信息', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070207', '车辆事故', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070208', '驾驶员主动防御报警信息', null, '020702', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020101', '检验率', null, '02070201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020102', '报废率', null, '02070201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020103', '违法处理率', null, '02070201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020201', '路线偏离预警', null, '02070202', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020202', '闯禁行预警', null, '02070202', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020601', '逾期未年检', null, '02070206', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020602', '逾期未报废', null, '02070206', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207020603', '报废车辆上路', null, '02070206', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:51:07', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070301', '车辆信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070302', '车辆活动轨迹', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070303', '车辆通行证信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070304', '车辆GPS信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070305', '事故信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070306', '违法信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070307', '驾驶员主动防御报警信息', null, '020703', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207030401', '车辆闯禁行预警', null, '02070304', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207030402', '车辆连续超速预警', null, '02070304', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207030403', '车辆连续闯红灯预警', null, '02070304', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207030601', '车牌污损预警', null, '02070306', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0207030602', '超载', null, '02070306', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:05', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070401', '车辆信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070402', '车辆GPS信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070403', '车辆上下客信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070404', '订单信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070405', '事故信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070406', '违法信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070407', '驾驶员主动防御报警信息', null, '020704', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:53:54', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070501', '车辆信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070502', '车辆GPS信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070503', '车辆上下客信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070504', '订单信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070505', '营运里程', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070506', '营运时间', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070507', '事故信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070508', '违法信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070509', '驾驶员主动防御报警信息', null, '020705', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070601', '车辆信息', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070602', '车辆活动轨迹', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070603', '车辆GPS信息', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070604', '车辆载客量', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070605', '事故信息', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070606', '违法信息', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070607', '驾驶员主动防御报警信息', null, '020706', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070701', '车辆信息', null, '020707', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070702', '营运里程', null, '020707', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070703', '报废时间', null, '020707', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02070704', '活动轨迹', null, '020707', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:56:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020801', '救护车', null, '0208', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:37', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020802', '消防车', null, '0208', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020803', '救援工程车', null, '0208', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020804', '环卫车', null, '0208', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020805', '军车', null, '0208', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080101', '车辆实时信息', null, '020801', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080102', '车辆应急请求', null, '020801', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080201', '车辆实时信息', null, '020802', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080202', '车辆应急请求', null, '020802', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080301', '车辆信息', null, '020803', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080302', '维修任务信息', null, '020803', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080401', '车辆信息', null, '020804', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080402', '车辆出行规律', null, '020804', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080501', '车辆信息', null, '020805', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02080502', '车辆违法信息', null, '020805', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 16:59:38', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020901', '车辆信息', null, '0209', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:00:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('020902', '车辆出行计划', null, '0209', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:00:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('021001', '车辆信息', null, '0210', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:00:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('021002', 'GPS信息', null, '0210', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:00:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('021003', '勤务信息', null, '0210', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:00:43', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301', '城市道路', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302', '高速公路', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0303', '国省道', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0304', '农村道路', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0305', '隧道', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0306', '桥梁', null, '03', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:02:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030101', '道路基本信息', null, '0301', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:03:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030102', '路口', null, '0301', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:03:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030103', '路段', null, '0301', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:03:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030104', '上下桥', null, '0301', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:03:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030105', '关键POI', null, '0301', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:03:30', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010101', '道路基本信息', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010102', '路宽', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010103', '车道数', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010104', '坡度', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010105', '弯度', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010106', '路上标牌', null, '030101', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301010601', '禁停', null, '03010106', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301010602', '限速', null, '03010106', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010201', '路口渠化', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010202', '流量', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010203', '速度', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010204', '平均延误', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010205', '排队长度', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010206', '饱和度', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010207', '不均衡系数', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010208', '拥堵', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010209', '事故', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010210', '信号灯故障', null, '030102', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301020101', '车道渠化', null, '03010201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301020102', '禁左', null, '03010201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301020103', '禁右', null, '03010201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301020104', '禁掉头', null, '03010201', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:06:18', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010301', '流量', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010302', '速度', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010303', '路况', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010304', '旅行时间', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010305', '通勤规律', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010306', '拥堵', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010307', '事故', null, '030103', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010401', '桥口流量', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010402', '速度', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010403', '流量', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010404', '排队', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010405', '事故', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010406', '拥堵', null, '030104', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010501', '景点', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010502', '商圈', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010503', '枢纽', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010504', '医院', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010505', '学校', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010506', '政府', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010507', '小区', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010508', '建筑工地', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010509', '农贸市场', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010510', '停车场', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03010511', '出入市重点部位', null, '030105', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:09:14', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030201', '收费站', null, '0302', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030202', '服务区', null, '0302', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030203', '高速路段', null, '0302', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020101', '进出流量', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020102', '收费站状态', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020103', '车费站开启车道', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020104', '收费站称重信息', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020105', '收费站的过车信息', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020106', '收费站布控车辆报警', null, '030201', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020201', '进出流量', null, '030202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020202', '泊位信息', null, '030202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020203', '实时泊位信息', null, '030202', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302020201', '大车泊位', null, '03020202', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302020202', '小车泊位', null, '03020202', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:22:28', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020301', '道路基础信息', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020302', '流量', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020303', '路况', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020304', '车速', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020305', '过车', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020306', '大车占比', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03020307', '事件', null, '030203', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030101', '施工', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030102', '坑洼', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030103', '遗撒', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030104', '火焰', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030105', '障碍', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030106', '能见度', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030107', '事故', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302030108', '拥堵', null, '03020301', '5', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:24:58', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030301', '支路路口', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030302', '隔离路段', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030303', '过车', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030304', '流量', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030305', '大车流量占比', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030306', '速度', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030307', '事件', null, '0303', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030401', '流量', null, '0304', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030402', '事件', null, '0304', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03040201', '积雪', null, '030402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03040202', '结冰', null, '030402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03040203', '事故', null, '030402', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:27:00', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030501', '流量', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030502', '过车', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030503', '速度', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030504', '路况', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030505', '车道状态', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030506', '事件', null, '0305', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050601', '停车', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050602', '行人', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050603', '非机动车', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050604', '逆行', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050605', '遗撒', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050606', '火焰', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050607', '烟雾', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050608', '气体监测', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050609', '事故', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03050610', '拥堵', null, '030506', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:29:19', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030601', '流量', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030602', '过车', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030603', '排队长度', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030604', '速度', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030605', '路况', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('030606', '事件', null, '0306', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060601', '结霜', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060602', '结冰', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060603', '能见度', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060604', '遗撒', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060605', '事故', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03060606', '拥堵', null, '030606', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:30:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0401', '温度', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0402', '湿度', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0403', '风力', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0404', '雨', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0405', '雪', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0406', '雾', null, '04', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040401', '时间', null, '0404', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040402', '位置', null, '0404', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040403', '降水量', null, '0404', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040404', '积水路段', null, '0404', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040405', '能见度', null, '0404', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040501', '时间', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040502', '位置', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040503', '雪量等级', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040504', '结冰路段', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040505', '能见度', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040506', '坡道', null, '0405', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040601', '时间', null, '0406', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040602', '位置', null, '0406', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040603', '能见度', null, '0406', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040604', '团雾多发路段', null, '0406', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:42:35', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0501', '事故', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0502', '拥堵', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0503', '违法', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0504', '施工 ', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0505', '管制', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0506', '热点舆情', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0507', '大型活动', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0508', '警卫任务', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0509', '设备故障', null, '05', '2', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050101', '报警人', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050102', '发生时间', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050103', '地点', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050104', '涉及车辆数', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050105', '死伤人数', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050106', '事故形态', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050107', '原因', null, '0501', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050201', '常发拥堵', null, '0502', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050202', '突发拥堵', null, '0502', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050301', '机动车', null, '0503', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050302', '摩托车', null, '0503', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050303', '非机动车', null, '0503', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050304', '行人', null, '0503', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030101', '失驾在驾', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030102', '准驾不符', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030103', '疲劳驾驶', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030104', '酒醉驾', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030105', '超速', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030106', '闯红灯', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030107', '不系安全带', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030108', '打电话', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030109', '不按规定车道行驶', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030110', '违法停车', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030111', '逆行', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030112', '压线', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030113', '不礼让行人', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030114', '无证驾驶', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030115', '假套牌', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030116', '违法占用应急车道（高速）', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030117', '大货车闯禁', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030118', '渣土车超载', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030119', '面包车超员', null, '050301', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:49:44', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030201', '酒驾', null, '050302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030202', '闯红灯', null, '050302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030203', '不戴头盔', null, '050302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030204', '不按规定车道行驶', null, '050302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030205', '逆行', null, '050302', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030301', '闯红灯', null, '050303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030302', '不戴头盔', null, '050303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030303', '不按规定车道行驶', null, '050303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030304', '逆行', null, '050303', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030401', '闯红灯', null, '050304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030402', '不走人行横道', null, '050304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030403', '翻越护栏', null, '050304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05030404', '行人上高速', null, '050304', '4', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:52:24', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050401', '项目名称', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050402', '起止时间', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050403', '影响范围', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050404', '审批情况', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050405', '施工单位', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050406', '分管大队', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050407', '施工形式', null, '0504', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 17:55:04', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050501', '时间段', null, '0505', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050502', '影响范围', null, '0505', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050503', '管制事由', null, '0505', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050601', '舆情种类', null, '0506', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050602', '舆情类型', null, '0506', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050603', '地点', null, '0506', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050604', '舆情来源', null, '0506', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050605', '热度', null, '0506', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050701', '活动时间', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050702', '影响范围', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050703', '活动预案', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050704', '岗位安排', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050705', '占用道路审批', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050706', '车辆来源分析', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050707', '周边停车场信息', null, '0507', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050801', '时间', null, '0508', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050802', '任务路线', null, '0508', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050803', '任务等级', null, '0508', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050804', '特勤预案', null, '0508', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050805', '车辆实时位置', null, '0508', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050901', '设备类型', null, '0509', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050902', '故障类型', null, '0509', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050903', '故障时间', null, '0509', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_DAAS_STORE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, menutype, isactive, menulocation, subnum, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('050904', '工单信息', null, '0509', '3', '0', null, '1', null, null, null, null, '2021-05-19', to_date('19-05-2021 18:00:09', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_DATA_STANDARD (standard_id, standard_name, standard_num)
values ('F91776080D5B4A2D9834D49181F823C2', '国际/航标', 12);
insert into FEEL_DATA_STANDARD (standard_id, standard_name, standard_num)
values ('A3B8B12B52984E13BD5F212E71762709', '字段标准', 20);
insert into FEEL_DATA_STANDARD (standard_id, standard_name, standard_num)
values ('593B8FE5B9E948D6AFD1B93514C8A154', '数据字典标准', 30);
insert into FEEL_DATA_STANDARD (standard_id, standard_name, standard_num)
values ('E126561D07844D35A8F8FA917AFE280D', '数据表标准', 40);
insert into FEEL_DATA_STANDARD (standard_id, standard_name, standard_num)
values ('B0143BD779D446BDAB5293CEA1388EAC', '开发规范', 22);
commit;

insert into FEEL_LAAS_HOME (cloudserver_num, vcpu_num, memory_num, blockstorage_num, cpu_use_rate, collect_date)
values (320756, 123555, 365879, 167840, 66, to_date('19-05-2021', 'dd-mm-yyyy'));
insert into FEEL_LAAS_HOME (cloudserver_num, vcpu_num, memory_num, blockstorage_num, cpu_use_rate, collect_date)
values (330756, 144542, 455777, 166003, 56, to_date('18-05-2021', 'dd-mm-yyyy'));
insert into FEEL_LAAS_HOME (cloudserver_num, vcpu_num, memory_num, blockstorage_num, cpu_use_rate, collect_date)
values (321007, 124581, 366115, 167582, 61, to_date('16-05-2021', 'dd-mm-yyyy'));
insert into FEEL_LAAS_HOME (cloudserver_num, vcpu_num, memory_num, blockstorage_num, cpu_use_rate, collect_date)
values (201245, 96545, 125477, 142545, 52, to_date('15-05-2021', 'dd-mm-yyyy'));
commit;

insert into FEEL_PAAS_ALGORITHM_TOP (algorithm_name, call_num)
values ('交通流融合', 19);
insert into FEEL_PAAS_ALGORITHM_TOP (algorithm_name, call_num)
values ('常发拥堵识别', 26);
insert into FEEL_PAAS_ALGORITHM_TOP (algorithm_name, call_num)
values ('勤务科学布岗', 11);
commit;

insert into FEEL_PAAS_ALGORITHM_TYPE (algorithm_type_name, algorithm_num)
values ('交通畅通', 20);
insert into FEEL_PAAS_ALGORITHM_TYPE (algorithm_type_name, algorithm_num)
values ('交通安全', 22);
insert into FEEL_PAAS_ALGORITHM_TYPE (algorithm_type_name, algorithm_num)
values ('交通秩序', 13);
insert into FEEL_PAAS_ALGORITHM_TYPE (algorithm_type_name, algorithm_num)
values ('交通优化', 19);
commit;

insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('01', '交通畅通', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0101', '早晚高峰自动预警', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0102', '常发拥堵识别', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0103', '突发拥堵识别', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0104', '拥堵成因分析', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0105', '拥堵蔓延预测', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0106', '交通流量溯源', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0107', '路况预测', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0108', '通勤车识别', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0109', '低频车预警', null, '01', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('02', '交通安全', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0201', '事故时空分析', null, '02', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0202', '高速事故风险预警', null, '02', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0203', '红眼客车识别', null, '02', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0204', '危化品集散地分析', null, '02', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('03', '交通秩序', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0301', '黑校车识别', null, '03', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0302', '停车场饱和预警', null, '03', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0303', '单车规律分析', null, '03', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0304', '群车规律分析', null, '03', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('04', '交通优化', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0401', '信控策略推荐', null, '04', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040101', '单点控制', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040102', '协调优化', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040103', '缓进快出', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040104', '区域拥堵', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040105', '单点瓶颈', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040106', '交通组织渠化', null, '0401', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0402', '交通问题诊断', null, '04', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040201', '车道数量不合理', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040202', '绿信比分配不均', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040203', '潮汐交通的问题', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040204', '时段划分不合理', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040205', '绿灯时间过长', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040206', '右转车流应受控', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040207', '车道干扰的问题', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040208', '路口车道不合理', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('040209', '相位相序不合理', null, '0402', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05', '涉案车辆（车辆技战法）', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0501', '假套牌分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('05010', '连续违法分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0502', '昼伏夜出', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0503', '落脚点分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0504', '嫌疑车辆分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0505', '出入案发现场车辆分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0506', '首次入城', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0507', '同行车辆', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0508', '区域碰撞分析', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0509', '频繁过车', null, '05', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('06', '业务提效', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0601', '情报智能去重', null, '06', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0602', '最优派警', null, '06', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0603', '勤务科学布岗', null, '06', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0604', '勤务考核算法', null, '06', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('07', '警务风险预警', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 14:29:51', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0701', '酒醉驾业务', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070101', '未开具强制措施', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0701010', '强制措施值与酒精检测值不一致', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070102', '强制措施违规跨档', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070103', '再次酒驾违规处罚', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070104', '营运酒驾违规处罚', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070105', '处罚决定书跨档', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070106', '未吊销/暂扣驾驶证', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070107', '未开启执法记录仪', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070108', '酒精检测仪信息记录不全', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070109', '超期未处理', null, '0701', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0702', '涉案车辆业务', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070201', '扣车未入停车场', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070202', '违规申请放行', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070203', '无放车条放车', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070204', '未上传现场照片', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070205', '扣车手续不全', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070206', '放行申请被频繁驳回', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070207', '违法记录消除未放车', null, '0702', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0703', '危货品车辆处罚', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070301', '非工作时间处理交通违法', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0703010', '篡改当事人类型', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070302', '对有证人员按无证处罚', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070303', '一人为多车处理违法', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070304', '违法拆单', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070305', '非现场违法不计分', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070306', '满60周岁驾驶员涉嫌违规处理违法', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070307', '多人为一车处理违法', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070308', '违法信息采集质量较差', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070309', '大量开具处罚决定书', null, '0703', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0704', '危货品车辆处罚', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070401', '处置滞留时间过长', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0704010', '超期未处理', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070402', '录入滞留时间过长', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070403', '未按规定扣车', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070404', '扣车未入停车场', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070405', '扣车违规放行', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070406', '扣证违规归还', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070407', '未暂扣/吊销驾驶证', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070408', '开启执法记录仪', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070409', '违法时间录入不一致', null, '0704', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0705', '事故处理业务', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070501', '事故录入超时', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:17:13', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070502', '检验鉴定委托超期', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070503', '检验鉴定超期', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070504', '文书送达超期', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070505', '结案归档超期', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070506', '同一人同一民警多起事故', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070507', '同一车同一民警多起事故', null, '0705', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0706', '超载车辆处罚', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070601', '处置滞留时间过长', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070602', '录入滞留时间过长', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070603', '未按规定扣车', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070604', '危化品车辆超载违规处罚', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070605', '扣车违规放行', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070606', '未开启执法记录仪', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070607', '超期未处理', null, '0706', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0707', '占路施工管理', null, '07', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070701', '审批申请超期未处理', null, '0707', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070702', '延期验收', null, '0707', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070703', '验收申请被驳回', null, '0707', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('070704', '施工申请驳回分析', null, '0707', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:40:49', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('08', '视频分析', null, '00', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0801', '目标物检测', null, '08', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080101', '机动车', null, '0801', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080102', '非机动车', null, '0801', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080103', '行人', null, '0801', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0802', '交通参数', null, '08', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080201', '流量', null, '0802', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080202', '速度', null, '0802', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080203', '占有率', null, '0802', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080204', '排队长度', null, '0802', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0803', '事件检测', null, '08', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080301', '行人闯入', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080302', '异常停车', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080303', '拥堵', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080304', '路口堵死', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080305', '排队溢出', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080306', '车车事故', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080307', '信号灯故障', null, '0803', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080308', '抛洒物', null, '0808', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0804', '违法行为', null, '08', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080401', '逆向行驶', null, '0804', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080402', '违法停车', null, '0804', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080403', '闯禁行', null, '0804', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080404', '非机动车逆向骑行', null, '0804', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('0805', '驾驶员行为', null, '08', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080501', '拨打电话', null, '0805', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
insert into FEEL_PAAS_CENTRE_MENU (menuid, menuname, onclick, parmenuid, menulevel, menuorder, isactive, todaynum, allnum, compdate, cretime, userid, menuexplain)
values ('080502', '未系安全带', null, '0805', '4', '0', '1', null, null, '2021-05-22', to_date('21-05-2021 15:53:48', 'dd-mm-yyyy hh24:mi:ss'), null, null);
commit;

insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('datastore', 10);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('datashare', 10);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('laas层', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('paas层', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('daas层', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('saas层', 0);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('数据感知', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('数据治理', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('分类储存', 60);
insert into FEEL_REFRESH_FREQUENCY (model_name, model_frequency)
values ('对外共享', 60);
commit;

insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('CE7F8846C85241DD8912323E730C9929', '青岛全时全域警务一张图', 'http://www.baidu.com', '1');
insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('483E4AB7F61C41CB87BC0805C2B502E6', '安全防控', null, '2');
insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('BE1C9506616041C398707FC25931C50C', '集成指挥', null, '2');
insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('C57FAF5C62CA404F9DBC7BA07B383470', '警务管理', null, '2');
insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('116B4434F3C7454691FCC080AE43550B', '交通执法', null, '3');
insert into FEEL_SAAS_HOME (saas_id, saas_name, saas_url, saas_level)
values ('B01D01AE8AAD49CC806F4568728FDF1F', '交通信息采集', null, '3');
commit;

insert into FEEL_SAAS_ONCLICK (onclick_url)
values ('https://www.baidu.com');
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (6101, '08', 0, 0, '警情重要原因', '服务区', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (6101, '09', 0, 0, '警情重要原因', '收费站', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (6101, '10', 0, 0, '警情重要原因', '天气', 0);
commit;


insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1503','0','0','','两客一危','0');
insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1504','0','0','','高速安全风险','0');
insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1505','0','0','','高德路况','0');
insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1506','0','0','','停车场饱和','0');
insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1507','0','0','','大小车混行','0');
commit;

insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1120','1508','0','0','','突变降速','0');
commit;

update enum_type e set e.enumname = '12122' where e.enumtypeid = '1118' and e.enumvalue = '18';
insert into enum_type(enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) values ('1118','25','0','0','','122高速','0');
commit;





insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('overview', '智慧感知', '智慧感知', '1', '智慧感知', null, null, null, null, null, null, 6, 12, 0, 0, 'overview', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:999/HiatmpPro/index.html#/view/intelligence');
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('psa', '智慧风控', '智慧风控', '1', '智慧风控', null, null, null, null, null, null, 6, 12, 0, 0, 'psa', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:8080/HiatmpPro/index.html#/psa/policesupervise');
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('publicopinion', '舆情关注', '舆情关注', '1', '舆情关注', null, null, null, null, null, null, 6, 12, 0, 0, 'publicopinion', 22, 20, 3, 4, 70, '1', 'http://172.29.41.121:999/HiatmpPro/index.html#/view/intelligence');
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('ddm', '智慧勤务', '智慧勤务', '1', '智慧勤务', null, null, null, null, null, null, 6, 12, 0, 0, 'ddm', 22, 20, 3, 4, 70, '1', 'http://56.39.133.11:8180/edd-admin/#/big-assessment');
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('policecase', '智慧指挥', '智慧指挥', '1', '智慧指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'policecase', 22, 20, 3, 4, 70, '1', 'http://172.29.41.211:8101/HiatmpPro/hiface/#/view/sandplate');
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('autorecommend', '自动化推荐', '自动化推荐', '1', '自动化推荐', null, null, null, null, null, null, 6, 12, 0, 0, 'autorecommend', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('recommenddetail', '推荐详情', '推荐详情', '3', '推荐详情', null, null, null, null, null, null, 6, 12, 0, 0, 'recommenddetail', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('signalopt', '信号优化', '信号优化', '1', '信号优化', null, null, null, null, null, null, 6, 12, 0, 0, 'signalopt', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('trafficdatamonitor', '交通数据监视', '交通数据监视', '1', '交通数据监视', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficdatamonitor', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('signaloptdetail', '信号优化详情', '信号优化详情', '3', '信号优化详情', null, null, null, null, null, null, 6, 12, 0, 0, 'signaloptdetail', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('organizationopt', '组织优化', '组织优化列表', '1', '组织优化', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationopt', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('organizationoptdetail', '组织优化详情', '组织优化弹窗详情', '1', '组织优化弹窗详情', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptdetail', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('organizationoptecharts', '组织优化图表', '组织优化图表信息', '1', '组织优化图表', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptecharts', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('riskcontrolofexpressway', '高速风控', '高速风控', '1', '高速风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofexpressway', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('riskcontrolofsource', '源头风控', '源头风控', '1', '源头风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofsource', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('trafficsafeindex', '交通安全指数', '交通安全指数', '3', '交通安全指数', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficsafeindex', 22, 20, 3, 4, 70, '1', null);
insert into FACE_COMPONENT_CONFIG (componentid, name, description, type, title, showborder, transparent, refresh_interval, create_time, update_time, create_user, w, h, x, y, i, basefont, maxw, minw, minh, maxh, border, url)
values ('security', '特勤任务', '特勤任务', '1', '特勤任务', null, null, null, null, null, null, 6, 12, 0, 0, 'security', 22, 20, 3, 4, 70, '1', null);
commit;

insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('8df235fd952d44cf958272a880641d98', 'fullsandplate', '组织优化', null, 0, 'screen-4k', '0', to_date('07-04-2021 11:12:45', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');
insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('c1b528ebeff3423dbb500c21fcd04634', 'fullsandplate', '综合指挥', null, 0, 'screen-4k', '1', to_date('24-03-2021 10:17:21', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');
insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('ad28e397e92041c88cc2bd27cedbe547', 'fullsandplate', '风险防控', null, 0, 'screen-4k', '0', to_date('07-04-2021 15:39:58', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');
insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'fullsandplate', '信号优化', null, 0, 'screen-4k', '0', to_date('08-04-2021 14:08:55', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');
insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('08aa24b46d7441259cbceb1f198f5be2', 'fullsandplate', '单屏幕', null, 0, 'screen-2k', '1', to_date('07-04-2021 13:47:43', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');
insert into FACE_THEME (themeid, sceneid, themename, colortheme, basefont, adaptscreen, isenable, create_time, update_time, create_user)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'fullsandplate', '日常指挥', null, 0, 'screen-4k', '0', to_date('14-07-2021 16:00:50', 'dd-mm-yyyy hh24:mi:ss'), null, 'zdzhg1');
commit;

insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('8df235fd952d44cf958272a880641d98', 'organizationopt', '组织优化', 1, 22, 6, 66, 0, 0, 'organizationopt', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '1f4d8f5a8c964c15a9dfe463b2a17d52', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptdetail', '组织优化详情', 1, 22, 6, 66, 6, 0, 'organizationoptdetail', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '3b662b42848f46afb85481f9ff4b566e', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptecharts', '组织优化图表', 1, 22, 6, 67, 30, 0, 'organizationoptecharts', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '825da51975aa42568086030571f126c8', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('ad28e397e92041c88cc2bd27cedbe547', 'trafficsafeindex', '交通安全指数', 1, 22, 11, 67, 0, 0, 'trafficsafeindex', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, '939e663cf4b946e3b7585df48d514750', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofexpressway', '高速风控', 1, 22, 6, 66, 24, 0, 'riskcontrolofexpressway', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f24b63de68e3488093fc6810687401e5', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofsource', '源头风控', 1, 22, 6, 66, 30, 0, 'riskcontrolofsource', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'caf115112d8f4519a3979613812755cb', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('08aa24b46d7441259cbceb1f198f5be2', 'policecase', '智慧指挥', 1, 22, 11, 61, 0, 0, 'policecase', '1', null, to_date('22-07-2021 13:32:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, '55a437276c3842ce9e75db2424bdc975', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('03eebc1a52e544eab675151e9e17ba14', 'policecase', '智慧指挥', 1, 22, 10, 58, 0, 0, 'policecase', '1', null, to_date('01-04-2021 19:46:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8450935519d14cbdaf7b6fbc44d9a718', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c1b528ebeff3423dbb500c21fcd04634', 'psa', '智慧风控', 1, 22, 5, 60, 31, 0, 'psa', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e80629cd30ad448aafa6d390669abd90', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'overview', '智慧感知', 1, 22, 6, 12, 0, 75, 'overview', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'efeac34a87474b0d896f897e172d1e42', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'ddm', '智慧勤务', 1, 22, 9, 64, 25, 82, 'ddm', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b3ea4b93a78e46b9ac39c356fbd2e541', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c1b528ebeff3423dbb500c21fcd04634', 'ddm', '智慧勤务', 1, 22, 5, 60, 26, 0, 'ddm', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f2374faedcd04e75a881a24646db5e13', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c1b528ebeff3423dbb500c21fcd04634', 'policecase', '智慧指挥', 1, 22, 5, 60, 5, 0, 'policecase', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e4e94563af23465cb3c156e06b549993', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('19d8187b1adf494b8af2fe85aba138b5', 'psa', '智慧风控', 1, 22, 11, 29, 25, 0, 'psa', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '89253644aa694880abef55a970b6768b', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('19d8187b1adf494b8af2fe85aba138b5', 'publicopinion', '舆情关注', 1, 22, 11, 29, 0, 29, 'publicopinion', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '97789a54c9e44ab98d0906a7a15e3f95', '1', 20, 3, 4, 40);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('19d8187b1adf494b8af2fe85aba138b5', 'policecase', '警情指挥', 1, 22, 10, 58, 11, 0, 'policecase', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e3a6333f90574e269f4bc850c02bbda2', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c1b528ebeff3423dbb500c21fcd04634', 'maplayer', '地图图层', 1, 22, 11, 10, 12, 50, 'maplayer', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e77e5d1e2bb434087c68cae7e4c54c3', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'policecasefast', '智慧指挥', 1, 22, 6, 67, 0, 0, 'policecasefast', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '9bc06f3625d04bcdb354ea0bfbb76a92', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'maplayer', '地图图层', 1, 22, 14, 13, 13, 47, 'maplayer', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '41a3022b4af1407aabae208e02685e76', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('c1b528ebeff3423dbb500c21fcd04634', 'overview', '智慧感知', 1, 22, 5, 60, 0, 0, 'overview', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '74cd2cb96a824226b5edc4dc33e26e51', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'autorecommend', '自动化推荐', 1, 22, 6, 67, 30, 0, 'autorecommend', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b8e5c9c24c884b06a1d109b54bbadbbc', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signalopt', '信号优化', 1, 22, 6, 52, 0, 0, 'signalopt', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '72f5a9f7b14341909b6c0cb5f9e73826', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'trafficdatamonitor', '交通数据监视', 1, 22, 6, 14, 0, 52, 'trafficdatamonitor', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f96043655194423a9dd25a33cb1063d2', '1', 20, 3, 4, 70);
insert into FACE_THEME_CONFIG (themeid, componentid, name, page, basefont, w, h, x, y, i, status, creat_time, update_time, create_user, sceneid, id, border, maxw, minw, minh, maxh)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signaloptdetail', '信号优化详情', 1, 22, 6, 66, 6, 0, 'signaloptdetail', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e262fd3a59845d79c89cfe39fa4c069', '1', 20, 3, 4, 70);
commit;


insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011201', 30);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011202', 20);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011203', 25);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011204', 30);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011301', 10);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011302', 15);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011303', 20);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76011304', 20);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021201', 30);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021202', 35);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021203', 25);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021204', 10);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021301', 15);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021302', 20);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021303', 30);
insert into SECTION_WARN_THRESHOLD (section_id, speed)
values ('76021304', 25);
commit;


--高德路段预警适配器初始化数据
insert into section_warn_threshold
  (section_id, speed)
  select sectionid, 10 from monitor_section;
commit;


---立项6.2A2脚本

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610011, '1', '救援停车场', 0, 0, null, '联动单位类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610011, '2', '应急部门', 0, 0, null, '联动单位类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610011, '3', '高速公路管理部门', 0, 0, null, '联动单位类型');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (610011, '4', '市政部门', 0, 0, null, '联动单位类型');
commit;

insert into face_weather (ID, PROVINCE, ADCODE, CITY, WEATHER, TEMPERATURE, WINDDIRECTION, WINDPOWER, HUMIDITY, REPORTTIME, INSERTDATE)
values ('1', '山东', '370200', '青岛市', '晴', '25', '南', '4', '75', '2021-08-25 17:31:30', to_date('25-08-2021 17:45:01', 'dd-mm-yyyy hh24:mi:ss'));
commit;

delete  from face_scene;
delete  from face_theme;
delete  from face_component_config;
delete  from face_theme_config;
commit;

insert into face_scene (SCENEID, SCENENAME, DESCRIPTION, VISIABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER, TITLEFLAG)
values ('fullsandplate', '场景化指挥', '场景化指挥', '1', null, null, null, '1');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('97b84706ba3e4609a34d3ca494373910', 'fullsandplate', 'test', null, 0, 'screen-2k', '1', to_date('04-06-2021 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('81820157ac5948d2a6f6d91a454f7262', 'fullsandplate', 'testfull', null, 0, 'screen-4k', '1', to_date('11-08-2021 11:06:39', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('8df235fd952d44cf958272a880641d98', 'fullsandplate', '组织优化', null, 0, 'screen-4k', '0', to_date('07-04-2021 11:12:45', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('c1b528ebeff3423dbb500c21fcd04634', 'fullsandplate', '综合指挥', null, 0, 'screen-4k', '0', to_date('24-03-2021 10:17:21', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('ad28e397e92041c88cc2bd27cedbe547', 'fullsandplate', '风险防控', null, 0, 'screen-4k', '0', to_date('07-04-2021 15:39:58', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'fullsandplate', '信号优化', null, 0, 'screen-4k', '0', to_date('08-04-2021 14:08:55', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('08aa24b46d7441259cbceb1f198f5be2', 'fullsandplate', '单屏幕', null, 0, 'screen-2k', '0', to_date('07-04-2021 13:47:43', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'fullsandplate', '日常指挥', null, 0, 'screen-4k', '0', to_date('14-07-2021 16:00:50', 'dd-mm-yyyy hh24:mi:ss'), null, 'zdzhg1');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('directives1', '指令场景化指挥', '场景化指挥', '2', '场景化指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'directives1', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('maplayer', '地图图层', '地图图层', '2', '地图图层', null, null, null, null, null, null, 6, 12, 0, 0, 'maplayer', 22, 20, 3, 4, 40, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('policecasefast', '智慧指挥', '智慧指挥快情报', '1', '智慧指挥快情报', null, null, null, null, null, null, 6, 12, 0, 0, 'policecasefast', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('overview', '智慧感知', '智慧感知', '1', '智慧感知', null, null, null, null, null, null, 6, 12, 0, 0, 'overview', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:999/HiatmpPro/index.html#/view/intelligence');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('psa', '智慧风控', '智慧风控', '1', '智慧风控', null, null, null, null, null, null, 6, 12, 0, 0, 'psa', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:8080/HiatmpPro/index.html#/psa/policesupervise');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('publicopinion', '舆情关注', '舆情关注', '1', '舆情关注', null, null, null, null, null, null, 6, 12, 0, 0, 'publicopinion', 22, 20, 3, 4, 70, '1', 'http://172.29.41.121:999/HiatmpPro/index.html#/view/intelligence');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('ddm', '智慧勤务', '智慧勤务', '1', '智慧勤务', null, null, null, null, null, null, 6, 12, 0, 0, 'ddm', 22, 20, 3, 4, 70, '1', 'http://56.39.133.11:8180/edd-admin/#/big-assessment');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('policecase', '智慧指挥', '智慧指挥', '1', '智慧指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'policecase', 22, 20, 3, 4, 70, '1', 'http://172.29.41.211:8101/HiatmpPro/hiface/#/view/sandplate');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('autorecommend', '自动化推荐', '自动化推荐', '1', '自动化推荐', null, null, null, null, null, null, 6, 12, 0, 0, 'autorecommend', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('recommenddetail', '推荐详情', '推荐详情', '3', '推荐详情', null, null, null, null, null, null, 6, 12, 0, 0, 'recommenddetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('signalopt', '信号优化', '信号优化', '1', '信号优化', null, null, null, null, null, null, 6, 12, 0, 0, 'signalopt', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('trafficdatamonitor', '交通数据监视', '交通数据监视', '1', '交通数据监视', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficdatamonitor', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('signaloptdetail', '信号优化详情', '信号优化详情', '3', '信号优化详情', null, null, null, null, null, null, 6, 12, 0, 0, 'signaloptdetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationopt', '组织优化', '组织优化列表', '1', '组织优化', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationopt', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationoptdetail', '组织优化详情', '组织优化弹窗详情', '1', '组织优化弹窗详情', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptdetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationoptecharts', '组织优化图表', '组织优化图表信息', '1', '组织优化图表', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptecharts', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('riskcontrolofexpressway', '高速风控', '高速风控', '1', '高速风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofexpressway', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('riskcontrolofsource', '源头风控', '源头风控', '1', '源头风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofsource', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('trafficsafeindex', '交通安全指数', '交通安全指数', '3', '交通安全指数', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficsafeindex', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('security', '特勤任务', '特勤任务', '1', '特勤任务', null, null, null, null, null, null, 6, 12, 0, 0, 'security', 22, 20, 3, 4, 70, '1', null);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'maplayer', '地图图层', 1, 22, 10, 10, 14, 50, 'maplayer', '1', null, to_date('03-09-2021 13:47:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, '53a6314180f54967b9f6f3d9aff414fd', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'policecasefast', '智慧指挥', 1, 22, 6, 60, 0, 0, 'policecasefast', '1', null, to_date('03-09-2021 13:47:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f41a11b20d304b018a21bb40f8e4e38b', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'directives1', '指令场景化指挥', 1, 22, 10, 61, 10, 0, 'directives1', '1', null, to_date('02-09-2021 17:26:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'eb6cd5e199704ef382f9e4e92955b188', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'maplayer', '地图图层', 1, 22, 13, 14, 22, 45, 'maplayer', '1', null, to_date('02-09-2021 17:26:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'cb9d94361ce44378bcbb7dd4c5e33766', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'policecasefast', '智慧指挥', 1, 22, 10, 61, 0, 0, 'policecasefast', '1', null, to_date('02-09-2021 17:26:13', 'dd-mm-yyyy hh24:mi:ss'), null, null, '40524fd8030642038fc031137c1526ca', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'directives1', '指令场景化指挥', 1, 22, 6, 60, 6, 0, 'directives1', '1', null, to_date('03-09-2021 13:47:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, '9f87a83c7d8b4bd685ae6c877b34c6e3', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationopt', '组织优化', 1, 22, 6, 66, 0, 0, 'organizationopt', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '1f4d8f5a8c964c15a9dfe463b2a17d52', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptdetail', '组织优化详情', 1, 22, 6, 66, 6, 0, 'organizationoptdetail', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '3b662b42848f46afb85481f9ff4b566e', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptecharts', '组织优化图表', 1, 22, 6, 67, 30, 0, 'organizationoptecharts', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '825da51975aa42568086030571f126c8', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'trafficsafeindex', '交通安全指数', 1, 22, 11, 67, 0, 0, 'trafficsafeindex', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, '939e663cf4b946e3b7585df48d514750', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofexpressway', '高速风控', 1, 22, 6, 66, 24, 0, 'riskcontrolofexpressway', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f24b63de68e3488093fc6810687401e5', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofsource', '源头风控', 1, 22, 6, 66, 30, 0, 'riskcontrolofsource', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'caf115112d8f4519a3979613812755cb', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('08aa24b46d7441259cbceb1f198f5be2', 'policecase', '智慧指挥', 1, 22, 11, 61, 0, 0, 'policecase', '1', null, to_date('22-07-2021 13:32:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, '55a437276c3842ce9e75db2424bdc975', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('03eebc1a52e544eab675151e9e17ba14', 'policecase', '智慧指挥', 1, 22, 10, 58, 0, 0, 'policecase', '1', null, to_date('01-04-2021 19:46:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8450935519d14cbdaf7b6fbc44d9a718', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'psa', '智慧风控', 1, 22, 5, 60, 31, 0, 'psa', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e80629cd30ad448aafa6d390669abd90', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'overview', '智慧感知', 1, 22, 6, 12, 0, 75, 'overview', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'efeac34a87474b0d896f897e172d1e42', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'ddm', '智慧勤务', 1, 22, 9, 64, 25, 82, 'ddm', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b3ea4b93a78e46b9ac39c356fbd2e541', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'ddm', '智慧勤务', 1, 22, 5, 60, 26, 0, 'ddm', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f2374faedcd04e75a881a24646db5e13', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'policecase', '智慧指挥', 1, 22, 5, 60, 5, 0, 'policecase', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e4e94563af23465cb3c156e06b549993', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'psa', '智慧风控', 1, 22, 11, 29, 25, 0, 'psa', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '89253644aa694880abef55a970b6768b', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'publicopinion', '舆情关注', 1, 22, 11, 29, 0, 29, 'publicopinion', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '97789a54c9e44ab98d0906a7a15e3f95', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'policecase', '警情指挥', 1, 22, 10, 58, 11, 0, 'policecase', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e3a6333f90574e269f4bc850c02bbda2', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'maplayer', '地图图层', 1, 22, 11, 10, 12, 50, 'maplayer', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e77e5d1e2bb434087c68cae7e4c54c3', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'policecasefast', '智慧指挥', 1, 22, 6, 67, 0, 0, 'policecasefast', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '9bc06f3625d04bcdb354ea0bfbb76a92', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'maplayer', '地图图层', 1, 22, 14, 13, 13, 47, 'maplayer', '1', null, to_date('25-08-2021 09:40:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '41a3022b4af1407aabae208e02685e76', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'overview', '智慧感知', 1, 22, 5, 60, 0, 0, 'overview', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '74cd2cb96a824226b5edc4dc33e26e51', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'autorecommend', '自动化推荐', 1, 22, 6, 67, 30, 0, 'autorecommend', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b8e5c9c24c884b06a1d109b54bbadbbc', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signalopt', '信号优化', 1, 22, 6, 52, 0, 0, 'signalopt', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '72f5a9f7b14341909b6c0cb5f9e73826', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'trafficdatamonitor', '交通数据监视', 1, 22, 6, 14, 0, 52, 'trafficdatamonitor', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f96043655194423a9dd25a33cb1063d2', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signaloptdetail', '信号优化详情', 1, 22, 6, 66, 6, 0, 'signaloptdetail', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e262fd3a59845d79c89cfe39fa4c069', '1', 20, 3, 4, 70);

commit;

------HiATMP-DB-DML6.2.0.0.A2提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A3提测关联脚本 开始------
insert into FACE_HBASE2ORACLE_CONFIG (HBASE_TABLE, HBASE_COLUMN, ORACLE_TABLE, ORACLE_COLUMN)
values ('mainline_indicator', 'healthlevel', 'FACE_MAINLINE_HEALTH', 'health_level');

insert into FACE_HBASE2ORACLE_CONFIG (HBASE_TABLE, HBASE_COLUMN, ORACLE_TABLE, ORACLE_COLUMN)
values ('mainline_indicator', 'collecttime', 'FACE_MAINLINE_HEALTH', 'collect_time');

insert into FACE_HBASE2ORACLE_CONFIG (HBASE_TABLE, HBASE_COLUMN, ORACLE_TABLE, ORACLE_COLUMN)
values ('mainline_indicator', 'mainlineid', 'FACE_MAINLINE_HEALTH', 'line_id');
commit;


delete from enum_type t where t.enumtypeid = '1120' and t.enumvalue in ('1501','1502','1507','1508');
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1501', '服务区饱和', 0, 0, 0, '当前服务区大车数量占泊位数的占比超过临界值');
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1502', '收费站溢出', 0, 0, 0, '当前收费站5分钟出城车流量占历史5分钟最大值的占比超过临界值');
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1507', '大小车混行', 0, 0, 0, '当前高速路段的大车占比超过临界值');
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1508', '突变降速', 0, 0, 0, '当前高速路段的平均车速小于临界值');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('pre_tollgate_rate', '收费站溢出预警阈值', '0.7', '收费站溢出预警阈值', null);

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('pre_big_parkinglot_use_rate', '服务区饱和预警大车使用率阈值', '0.7', '服务区饱和预警大车使用率阈值', null);

commit;

delete  from face_scene;
delete  from face_theme;
delete  from face_component_config;
delete  from face_theme_config;
commit;

insert into face_scene (SCENEID, SCENENAME, DESCRIPTION, VISIABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER, TITLEFLAG)
values ('fullsandplate', '场景化指挥', '场景化指挥', '1', null, null, null, '1');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('97b84706ba3e4609a34d3ca494373910', 'fullsandplate', 'test', null, 0, 'screen-2k', '1', to_date('04-06-2021 17:12:41', 'dd-mm-yyyy hh24:mi:ss'), null, 'admin1');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('81820157ac5948d2a6f6d91a454f7262', 'fullsandplate', 'testfull', null, 0, 'screen-4k', '1', to_date('11-08-2021 11:06:39', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('8df235fd952d44cf958272a880641d98', 'fullsandplate', '组织优化', null, 0, 'screen-4k', '0', to_date('07-04-2021 11:12:45', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('c1b528ebeff3423dbb500c21fcd04634', 'fullsandplate', '综合指挥', null, 0, 'screen-4k', '0', to_date('24-03-2021 10:17:21', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('ad28e397e92041c88cc2bd27cedbe547', 'fullsandplate', '风险防控', null, 0, 'screen-4k', '0', to_date('07-04-2021 15:39:58', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'fullsandplate', '信号优化', null, 0, 'screen-4k', '0', to_date('08-04-2021 14:08:55', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('08aa24b46d7441259cbceb1f198f5be2', 'fullsandplate', '单屏幕', null, 0, 'screen-2k', '0', to_date('07-04-2021 13:47:43', 'dd-mm-yyyy hh24:mi:ss'), null, 'test');

insert into face_theme (THEMEID, SCENEID, THEMENAME, COLORTHEME, BASEFONT, ADAPTSCREEN, ISENABLE, CREATE_TIME, UPDATE_TIME, CREATE_USER)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'fullsandplate', '日常指挥', null, 0, 'screen-4k', '0', to_date('14-07-2021 16:00:50', 'dd-mm-yyyy hh24:mi:ss'), null, 'zdzhg1');


insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('decisionanalysis', '决策分析', '决策分析', '2', '决策分析', null, null, null, null, null, null, 6, 12, 0, 0, 'decisionanalysis', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('directives1', '指令场景化指挥', '场景化指挥', '2', '场景化指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'directives1', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('maplayer', '地图图层', '地图图层', '2', '地图图层', null, null, null, null, null, null, 6, 12, 0, 0, 'maplayer', 22, 20, 3, 4, 40, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('policecasefast', '智慧指挥', '智慧指挥快情报', '1', '智慧指挥快情报', null, null, null, null, null, null, 6, 12, 0, 0, 'policecasefast', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('bulletscreen', '弹幕组件', '弹幕组件', '2', '弹幕组件', null, null, null, null, null, null, 6, 12, 0, 0, 'bulletscreen', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('overview', '智慧感知', '智慧感知', '1', '智慧感知', null, null, null, null, null, null, 6, 12, 0, 0, 'overview', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:999/HiatmpPro/index.html#/view/intelligence');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('psa', '智慧风控', '智慧风控', '1', '智慧风控', null, null, null, null, null, null, 6, 12, 0, 0, 'psa', 22, 20, 3, 4, 70, '1', 'http://56.39.133.9:8080/HiatmpPro/index.html#/psa/policesupervise');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('publicopinion', '舆情关注', '舆情关注', '1', '舆情关注', null, null, null, null, null, null, 6, 12, 0, 0, 'publicopinion', 22, 20, 3, 4, 70, '1', 'http://172.29.41.121:999/HiatmpPro/index.html#/view/intelligence');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('ddm', '智慧勤务', '智慧勤务', '1', '智慧勤务', null, null, null, null, null, null, 6, 12, 0, 0, 'ddm', 22, 20, 3, 4, 70, '1', 'http://56.39.133.11:8180/edd-admin/#/big-assessment');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('policecase', '智慧指挥', '智慧指挥', '1', '智慧指挥', null, null, null, null, null, null, 6, 12, 0, 0, 'policecase', 22, 20, 3, 4, 70, '1', 'http://172.29.41.211:8101/HiatmpPro/hiface/#/view/sandplate');

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('autorecommend', '自动化推荐', '自动化推荐', '1', '自动化推荐', null, null, null, null, null, null, 6, 12, 0, 0, 'autorecommend', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('recommenddetail', '推荐详情', '推荐详情', '3', '推荐详情', null, null, null, null, null, null, 6, 12, 0, 0, 'recommenddetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('signalopt', '信号优化', '信号优化', '1', '信号优化', null, null, null, null, null, null, 6, 12, 0, 0, 'signalopt', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('trafficdatamonitor', '交通数据监视', '交通数据监视', '1', '交通数据监视', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficdatamonitor', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('signaloptdetail', '信号优化详情', '信号优化详情', '3', '信号优化详情', null, null, null, null, null, null, 6, 12, 0, 0, 'signaloptdetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationopt', '组织优化', '组织优化列表', '1', '组织优化', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationopt', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationoptdetail', '组织优化详情', '组织优化弹窗详情', '1', '组织优化弹窗详情', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptdetail', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('organizationoptecharts', '组织优化图表', '组织优化图表信息', '1', '组织优化图表', null, null, null, null, null, null, 6, 12, 0, 0, 'organizationoptecharts', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('riskcontrolofexpressway', '高速风控', '高速风控', '1', '高速风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofexpressway', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('riskcontrolofsource', '源头风控', '源头风控', '1', '源头风控', null, null, null, null, null, null, 6, 12, 0, 0, 'riskcontrolofsource', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('trafficsafeindex', '交通安全指数', '交通安全指数', '3', '交通安全指数', null, null, null, null, null, null, 6, 12, 0, 0, 'trafficsafeindex', 22, 20, 3, 4, 70, '1', null);

insert into face_component_config (COMPONENTID, NAME, DESCRIPTION, TYPE, TITLE, SHOWBORDER, TRANSPARENT, REFRESH_INTERVAL, CREATE_TIME, UPDATE_TIME, CREATE_USER, W, H, X, Y, I, BASEFONT, MAXW, MINW, MINH, MAXH, BORDER, URL)
values ('security', '特勤任务', '特勤任务', '1', '特勤任务', null, null, null, null, null, null, 6, 12, 0, 0, 'security', 22, 20, 3, 4, 70, '1', null);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'directives1', '指令场景化指挥', 1, 22, 10, 46, 10, 0, 'directives1', '1', null, to_date('18-09-2021 13:50:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, '64b9592073b54020a3fd17284b412657', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'maplayer', '地图图层', 1, 22, 9, 16, 14, 46, 'maplayer', '1', null, to_date('18-09-2021 13:50:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, '693686d4b60a43bf990ab5118d9829cc', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('97b84706ba3e4609a34d3ca494373910', 'policecasefast', '智慧指挥', 1, 22, 10, 61, 0, 0, 'policecasefast', '1', null, to_date('18-09-2021 13:50:07', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b2167eee5bc84a0b9bf7aec535b15f29', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'directives1', '指令场景化指挥', 1, 22, 6, 61, 6, 0, 'directives1', '1', null, to_date('13-09-2021 19:12:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, '81fa93752ff24e04ab8e4e11e03927c3', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'maplayer', '地图图层', 1, 22, 14, 13, 13, 47, 'maplayer', '1', null, to_date('13-09-2021 19:12:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'd4e7a2a6ece447d292fdb316c936167c', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'policecasefast', '智慧指挥', 1, 22, 6, 61, 0, 0, 'policecasefast', '1', null, to_date('13-09-2021 19:12:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, '7a1a003fd7e84bd98e9ad797bddeb7b5', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c613c301e4ee438ab8a467bb0d72fbca', 'bulletscreen', '弹幕组件', 1, 22, 4, 59, 32, 1, 'bulletscreen', '1', null, to_date('13-09-2021 19:12:36', 'dd-mm-yyyy hh24:mi:ss'), null, null, '1907bb61caa34077b46970c143f337ce', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationopt', '组织优化', 1, 22, 6, 66, 0, 0, 'organizationopt', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '1f4d8f5a8c964c15a9dfe463b2a17d52', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptdetail', '组织优化详情', 1, 22, 6, 66, 6, 0, 'organizationoptdetail', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '3b662b42848f46afb85481f9ff4b566e', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('8df235fd952d44cf958272a880641d98', 'organizationoptecharts', '组织优化图表', 1, 22, 6, 67, 30, 0, 'organizationoptecharts', '1', null, to_date('14-05-2021 19:22:37', 'dd-mm-yyyy hh24:mi:ss'), null, null, '825da51975aa42568086030571f126c8', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'directives1', '指令场景化指挥', 1, 22, 6, 60, 6, 0, 'directives1', '1', null, to_date('18-09-2021 10:23:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'cf96dda1c27742a781f7635a15cca558', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'maplayer', '地图图层', 1, 22, 10, 10, 14, 50, 'maplayer', '1', null, to_date('18-09-2021 10:23:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, '9fd3243499e14b07b44de35e7f49dd98', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('81820157ac5948d2a6f6d91a454f7262', 'policecasefast', '智慧指挥', 1, 22, 6, 60, 0, 0, 'policecasefast', '1', null, to_date('18-09-2021 10:23:42', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'fe397e0792e44a43a75f87cc52146a2f', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'trafficsafeindex', '交通安全指数', 1, 22, 11, 67, 0, 0, 'trafficsafeindex', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, '939e663cf4b946e3b7585df48d514750', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofexpressway', '高速风控', 1, 22, 6, 66, 24, 0, 'riskcontrolofexpressway', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f24b63de68e3488093fc6810687401e5', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('ad28e397e92041c88cc2bd27cedbe547', 'riskcontrolofsource', '源头风控', 1, 22, 6, 66, 30, 0, 'riskcontrolofsource', '1', null, to_date('14-05-2021 19:24:38', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'caf115112d8f4519a3979613812755cb', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('08aa24b46d7441259cbceb1f198f5be2', 'policecase', '智慧指挥', 1, 22, 11, 61, 0, 0, 'policecase', '1', null, to_date('22-07-2021 13:32:30', 'dd-mm-yyyy hh24:mi:ss'), null, null, '55a437276c3842ce9e75db2424bdc975', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('03eebc1a52e544eab675151e9e17ba14', 'policecase', '智慧指挥', 1, 22, 10, 58, 0, 0, 'policecase', '1', null, to_date('01-04-2021 19:46:51', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8450935519d14cbdaf7b6fbc44d9a718', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'psa', '智慧风控', 1, 22, 5, 60, 31, 0, 'psa', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e80629cd30ad448aafa6d390669abd90', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'ddm', '智慧勤务', 1, 22, 5, 60, 26, 0, 'ddm', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f2374faedcd04e75a881a24646db5e13', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'policecase', '智慧指挥', 1, 22, 5, 60, 5, 0, 'policecase', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e4e94563af23465cb3c156e06b549993', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'psa', '智慧风控', 1, 22, 11, 29, 25, 0, 'psa', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '89253644aa694880abef55a970b6768b', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'publicopinion', '舆情关注', 1, 22, 11, 29, 0, 29, 'publicopinion', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, '97789a54c9e44ab98d0906a7a15e3f95', '1', 20, 3, 4, 40);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('19d8187b1adf494b8af2fe85aba138b5', 'policecase', '警情指挥', 1, 22, 10, 58, 11, 0, 'policecase', '1', null, to_date('24-03-2021 10:15:12', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'e3a6333f90574e269f4bc850c02bbda2', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'maplayer', '地图图层', 1, 22, 11, 10, 12, 50, 'maplayer', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e77e5d1e2bb434087c68cae7e4c54c3', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('c1b528ebeff3423dbb500c21fcd04634', 'overview', '智慧感知', 1, 22, 5, 60, 0, 0, 'overview', '1', null, to_date('25-08-2021 09:42:39', 'dd-mm-yyyy hh24:mi:ss'), null, null, '74cd2cb96a824226b5edc4dc33e26e51', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'autorecommend', '自动化推荐', 1, 22, 6, 67, 30, 0, 'autorecommend', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'b8e5c9c24c884b06a1d109b54bbadbbc', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signalopt', '信号优化', 1, 22, 6, 52, 0, 0, 'signalopt', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '72f5a9f7b14341909b6c0cb5f9e73826', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'trafficdatamonitor', '交通数据监视', 1, 22, 6, 14, 0, 52, 'trafficdatamonitor', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, 'f96043655194423a9dd25a33cb1063d2', '1', 20, 3, 4, 70);

insert into face_theme_config (THEMEID, COMPONENTID, NAME, PAGE, BASEFONT, W, H, X, Y, I, STATUS, CREAT_TIME, UPDATE_TIME, CREATE_USER, SCENEID, ID, BORDER, MAXW, MINW, MINH, MAXH)
values ('d44248417bf54b31b1925e7fbc6dbfdd', 'signaloptdetail', '信号优化详情', 1, 22, 6, 66, 6, 0, 'signaloptdetail', '1', null, to_date('18-06-2021 14:21:05', 'dd-mm-yyyy hh24:mi:ss'), null, null, '8e262fd3a59845d79c89cfe39fa4c069', '1', 20, 3, 4, 70);

commit;

------HiATMP-DB-DML6.2.0.0.A3提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A4提测关联脚本 开始------

update enum_type t set t.enumdesc='当前服务区大车数量与大车泊位数的比值超过临界值' where t.enumtypeid=1120 and t.enumvalue=1501;
        update enum_type t set t.enumdesc='当前收费站5分钟进城车流量与历史5分钟进城车流量最大值的比值超过临界值' where t.enumtypeid=1120 and t.enumvalue=1502;


commit;

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('highspeedrisksection', '高速风险路段');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('pondingblocking', '积水阻断');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('fogareamonitor', '雾区监测');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('slipperysection', '易滑路段');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('greenwave', '无缆滤波降效');

insert into face_component (COMPONENT_ID, COMPONENT_NAME)
values ('signallightfault', '信号灯故障');

commit;




------HiATMP-DB-DML6.2.0.0.A4提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A5提测关联脚本 开始------
update face_component t set t.component_name = '无缆绿波降效' where t.component_id = 'greenwave';
commit;
------HiATMP-DB-DML6.2.0.0.A5提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A6提测关联脚本 开始------

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('POLICE_REFRESH_TIME_LEN', '警情查询间隔', '12', '警情查询间隔', '0');
commit;

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('HICHAT_URL', '即时通信服务地址', 'http://10.16.3.179:8101/hichat/#/rhtx', '即时通信服务地址', '0');
commit;

delete from face_maplayer_data_filed_info;
commit;

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'SUBTYPE', '警情子类型', '11A5443847A14CC0A31D936122DC6B09', null);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'REPORTUSERNAME', '报警人', '1B212665920E437EA81209F2CCBB8D68', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'PHONENUM', '报警电话', '5E9006E7E7E245ED9B7A22994872ADDC', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'TYPE', '警情类型', '4AA5443847A14CC0A31D936122DC6B09', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'TIME', '发生时间', 'C3C27259B5A2473C8DA5A0838F2E008F', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('02', 'DEPTNAME', '所属部门', '49A2EA821F8141BF8B01B4BBCC614FEF', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('020202', 'DESCRIPTION', '警情描述', '13BBCF4675494A939AE5E4A5998DB352', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'PHONE', '手机号码', '33FCC41022054936B767130BA5806BFA', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'ENUMNAME', 'GPS类型', '44FCC41022054936B767130BA5806BFA', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'POLICEID', '警员号码', '11FE4DE32AA74CD0B43DE1041710B815', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'DEPTSHORTNAME', '所属部门', '110A1BCBE1E14A0FABD3DCFFA62C3D55', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'STATUSNAME', '警员状态', '62FCC41022054936B767130BA5806BFA', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('03', 'DEVICEID', '对讲机号', '22FCC41022054936B767130BA5806BFA', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'THIRDSYSCODE', '呼号', 'DA0A1BCBE1E14A0FABD3DCFFA62C3D55', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'DEPTSHORTNAME', '部门简称', '8B4317DE227441DCBDA939E0EB03BE86', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSTYPENAME', 'GPS类型名称', '2D105E7576DC4B2FA202EBCE67DB64FE', 11);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSCARNO', 'GPS车牌号码', '353D1DC9E06640C18810DE7A70F958BA', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'GPSTYPE', 'GPS类型', 'C94BF11E0DC244869C9A0F129C3F7156', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'PHONE', '电话', 'A8D5B873357546F3B04F1E95E896B580', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'CARDEPTSHORTNAME', '设备部门简称', '41FCC41022054936B767130BA5806BFA', 13);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'STATUS', '状态', '40FE4DE32AA74CD0B43DE1041710B815', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'LATITUDE', '纬度', 'B9A776284E544C3695672A305DC97F12', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'LONGITUDE', '经度', 'CBF0CCD0E01244CB84971C952D58BBE2', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'COORDINATE', '警情位置坐标', '9AD347D914334399B0FCF939D789BA12', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'POLICENAME', '警员姓名', '81FD18779F1349339A5C656AC8A49D51', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0302', 'POLICEID', '警号', '87A73A975AA44B6EB08123EB59C15E60', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'policeId', '警员编号', 'C7F5D056288349978C0B09BDC9A051AE', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'phone', '联系方式', '7AD249DDFBA94C96A50F30D740CD0AFE', null);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'policeName', '警员姓名', 'AA4453335C484ED0B14B7BC38D731FDC', null);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0303', 'depName', '部门名称', '1FA5360391DB4754A83FEEFF7E915E17', null);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'CARDEPTSHORTNAME', '设备部门简称', '3422A8D878E34172A3928F0C135AABF8', 13);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'LATITUDE', '纬度', 'B4A714AD5B744AFEAB552FAFF81C6659', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'POLICENAME', '警员姓名', 'F68FC8C39411422F99F60058FDACC226', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'COORDINATE', '警情位置坐标', 'EFE462EB82CA49C1BDBC223237D77825', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'STATUS', '状态', '8AB3F035BE9245A49E765A82502E9AED', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'THIRDSYSCODE', '呼号', '3CEED70B50F9493D9DEAFB9A174368C9', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'PHONE', '电话', '3511869D7AC34FBB8C12932FC9D0435E', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSTYPE', 'GPS类型', '387B59994CBA4E51A120BD099B1CC241', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'DEPTSHORTNAME', '部门简称', 'C602CC7946D94426809B72EE8DA6820C', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSTYPENAME', 'GPS类型名称', '938DAD1D37A04AECBA99B2D08B457AF7', 11);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'GPSCARNO', 'GPS车牌号码', '6BEC8A2D12F74728B61099E713C657B3', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'POLICEID', '警号', 'D9F7636003984CF09401937F615770BE', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0304', 'LONGITUDE', '经度', 'DF2D832991454B34AA1B5C9C68BD2FD8', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'DEPTSHORTNAME', '部门简称', '2EB924276A3C42018BF13F0CF6C78B48', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'CARDEPTSHORTNAME', '设备部门简称', 'D831650F187C4660B27951CD74C5365E', 13);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'COORDINATE', '警情位置坐标', 'F53EDFAE5D854956AEC971CBD63BDC61', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'POLICENAME', '警员姓名', 'B9EBA4E60FAC4B8C8AC5A0E0537B018A', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSCARNO', 'GPS车牌号码', '8C07C42DC6384EC2B6D5C23C3D2A91C9', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'LONGITUDE', '经度', '538038B16B1447B9B213CCC3D3BBCC41', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'POLICEID', '警号', '8654D2B584F745659975A3A19C5B51BA', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'LATITUDE', '纬度', '7D0A72679AB8452B8EBD69A192C1D2CF', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'STATUS', '状态', '822AD658144F4955A36D4033401015E5', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'THIRDSYSCODE', '呼号', '463CA64572F849E88704F816C12CB595', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSTYPENAME', 'GPS类型名称', 'A80F1601A0954DF8B1658522534A76A6', 11);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'GPSTYPE', 'GPS类型', 'CF42F27538B241A9A19FE3BCF60E3A83', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0305', 'PHONE', '电话', 'F3A5641F847D4AEEB41E4FDA0296611E', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'location', '项目位置', '9E89277CD61D42E9A3AE5B52B89F0FB0', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'contactPerson', '联系人', '5800A694C87C45438E26548486671B44', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'contactMode', '联系方式', 'F2635914797245F6853A8551A16A7D14', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'status', '状态', '9444D19D27154B3B8EB180B08ED6F410', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'title', '项目名称', '50679FEE30214148BE23303853008D44', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'description', '项目简要说明', '1AB455E0DBE64E3FA50E65F3CE9BEEE8', 14);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'endTime', '结束时间', '9F33465A1EF04E8BA5E9D8EBB6766DC1', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'constructor', '施工单位', '75866CB8710C4F2B8BAD0EBE86034C94', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'influencedSections', '受影响路段ID', 'AAFAF78A11DA4FF48C6DC24C54334737', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'effectArea', '影响区域', 'F89200E4622E451099D188FEFBCCCC7D', 13);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('04', 'startTime', '开始时间', '1EF9604FDDBB452FAC2A8766F1F2D9D6', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'projectName', '工程名称', '173EDF7408864E36846A2093D424AAF5', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'requestDept', '申请单位', '23F7757C120949F988B025D569A936D5', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digDept', '施工单位', '918DB79E2A82462D91339412CA746C4C', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digroadInfo', '占用道路名', '4CF567314C054A93AD6E7ECD4FA22583', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'principal', '责任人', 'F7C8A8C5BC8F438A9695620F049B735C', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'telephone', '联系方式', 'C7157B02653341A08642E961BF0F20F0', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'strcoords', '经纬度', 'DD4E0AC74DB74E03B19ED3E16D4AE9B6', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'coordType', '坐标形态', 'EB77271AABEE42938968D71EC2D3BF26', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'beginDate', '工程开始时间', '24BCE9C23C514490AB9D3044C08BC353', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'endDate', '工程结束时间', 'CF86E293BA5E4D8C84695DBE36B496F3', 11);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digPeriod', '施工时段', 'B9EA7D69571746E09BC2C9886E608084', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'digType', '施工形式', '210D9BF7EBE94ED588B6C891495C99BD', 13);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('05', 'deptShortName', '部门简称', '389B73826342469ABB646699C2162CC8', 14);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'statusName', '状态', '2C32E7C500854C988ADB2C92C9FF579D', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl3', '图片3', 'C2214F7E37A147638E30F4B2422779C5', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl4', '图片4', 'DF9AAD6CE1A342E284085E332A8A78BF', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'name', '设施名称', 'FFEADCEE11064C6E96CAA27E134C0B94', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl1', '图片1', '1A7713ADE2C6427E8B428C9466615C14', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0701', 'imageurl2', '图片2', '8EBCA43283DB4DB1B1767AA40F3678B8', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'statusName', '状态', '99FEB46BA6014426B707ED923FE24BF2', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl4', '图片4', '7E2945C6FF0542FCBCE31D3ACD4FFAA0', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl3', '图片3', 'D453E9E872474741A2759616E16625ED', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl1', '图片1', '59E94E4D34CE4A40A285A863FE1886F8', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'name', '设施名称', '1A4388858AFD4EAF8BBDEC5E12AAB991', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0702', 'imageurl2', '图片2', '378A5299CD4F47A4A73C7BFE9A57C9D9', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl4', '图片4', 'D6E4E658E1A54CFB873C3812532B3480', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl3', '图片3', 'CFC262E5C7AA4438862A8CCB7290402B', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl2', '图片2', '525EE7DFF3154410B5FE3D0C13A09537', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'imageurl1', '图片1', '316C5BF81E5F42CA82842B64DDCEE245', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'name', '设施名称', 'F26C3792E88E47289CA8A46C65F20F12', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0703', 'statusName', '状态', '4DE8C075302F463E8E0B55C6025AF6E6', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'name', '设施名称', '4E8B304038404DE995A7B3549A591259', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl1', '图片1', '9DBABC84CFCA47A7A4CA4639DF94BA1A', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl2', '图片2', '5935FEF12485400E98AFE5FA3A11DCF7', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl3', '图片3', '8568C4213BBA41C4BE86C9FCADA970F7', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'imageurl4', '图片4', '01198EF2D83F4AFC9C731A38E58086CE', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0704', 'statusName', '状态', 'D074CFF59F8F41049D9D6FDB1BBEE8AA', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl1', '图片1', 'DBC10423BF43474CA5F73D2BF09425F5', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'name', '设施名称', '3BF13A970DF44598AF82E202DCB7223C', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl2', '图片2', 'A417D34B822242C9A24B5424D13195D2', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'statusName', '状态', 'DF318A57DF2645929D7C847064ED86F1', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl4', '图片4', '09D37C0D12E1498886A5C035426EF4DC', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0705', 'imageurl3', '图片3', '8A569E6837A74E5EA7A87F3305978F63', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl1', '图片1', '3ACB8A3DFEB747339BC1D9B5AF68E516', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'name', '设施名称', 'F2DC7CC80EA3447384235F64BD2320A5', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl4', '图片4', '2F60DA05BF304E27811FD7EAF600C739', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'statusName', '状态', 'B4438C09C17C40968A079A721FBD5507', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl2', '图片2', '3541820E65B64A61BB36FAB8D9721062', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0706', 'imageurl3', '图片3', 'C96B5AE5039144E8818F3573A21708C3', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl4', '图片4', 'C8E01E3A6D774647B4B15D2CE972D89C', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'statusName', '状态', '02759CB5405F4790B1E92332A53E23CA', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'name', '设施名称', '71D547062FFB49A4B48B74B5F31584FF', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl1', '图片1', 'A82A1B6B7C364537A081A0BE02455B98', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl2', '图片2', '24B3FF3D728D4C7CA652C453F12AD3E4', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0707', 'imageurl3', '图片3', '121D7800808E489C9B68D34486B5CA75', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'name', '设施名称', '3585AF535DB84EEB94B914974A10D4B0', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl1', '图片1', '9632DF7739104060B8FC7EA26A971239', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl4', '图片4', 'AB9F07980EDC4520A4A26554D4FEA540', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl3', '图片3', 'DD35770911624B15A6AAAF53BD38DB28', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'statusName', '状态', '0EB767184BCB4226B9DD35FEDB6E5175', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0708', 'imageurl2', '图片2', '0A0A7E847C084DB8AAEEF45BEEE39CF4', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl1', '图片1', 'E88F983BDD6444FEBBE4B6D739B3387B', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl2', '图片2', 'A0D6FD1B52A2445CA86978E034700FCA', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'name', '设施名称', '9F4507019F344A6EBB16FEBC4CEC1B68', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'statusName', '状态', '522A2C14AEB24837AB187A6F07616C7D', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl4', '图片4', 'B0467CF429CD4617A13BB956AA9AB1FD', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0709', 'imageurl3', '图片3', '0E4355132A50438F8AD10C8A5F1392B0', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl4', '图片4', '4881CA8C9EA8472AAFD0898EA7B56224', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'statusName', '状态', '47DFEAA6D97147F4B0D0A543E37016C6', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl1', '图片1', 'B3152840F7FA49DB90C4501EC15F844C', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl2', '图片2', 'B51A6643BC26465A94B91C7C31DB4279', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'name', '设施名称', '86BE4D0D2BD94633A7A46A84411C31E8', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0710', 'imageurl3', '图片3', 'AF4C90A4E15843E7812F8FAF7E48AB4D', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl2', '图片2', '28C3DDA5DE2D4DEAA6274EFD49D2A17A', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl3', '图片3', '0C0E179C27F04BD1B4CE6BEC0CE34031', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl4', '图片4', 'F83720C4CD3645489B7B3CE6E18A925C', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'statusName', '状态', '7E5C09181F7E4E10A634C25BDD41BD83', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'name', '设施名称', '82060E9CFCDA4FF0B82D590257524CCF', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0711', 'imageurl1', '图片1', 'F41C695E655A449B8FA15F4B8422FEB0', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl1', '图片1', 'CF0E855F7102494C9E3D6358F57E7B5C', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl4', '图片4', 'F0741D0C65714530885D5DDA6CBC2695', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl3', '图片3', '532B31B55E734F649AC309BE20BCC1B2', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'imageurl2', '图片2', 'A2D2E6AA808B46D28898332494EF7A3C', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'statusName', '状态', 'EF32FEBF30444DF0A73D4508AEAC1F11', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0712', 'name', '设施名称', '4529AB52EE6B4A199AB5477A3ADB2877', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl3', '图片3', 'D8C0E563B4384752B5AC84D34C67E367', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl1', '图片1', 'D884A055BC7A48449940FAA42B6AD274', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'statusName', '状态', 'A02942B186FB43C1BBCFC4D9F6F830BC', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl2', '图片2', 'DD9C1B48A5FC4C9B8EED3CC89C7B369C', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'imageurl4', '图片4', 'F05BAFDE517D4763BC56937FE3232400', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0713', 'name', '设施名称', 'C4C3DFA725FE43A18DE85DD4DCD907E8', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl4', '图片4', '9F9B208F1CF0403B8737113F70247642', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'statusName', '状态', '7891928652414C24A4DF6844B71B88D4', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl3', '图片3', '8DBA423BE12E49319C4973853600E304', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'name', '设施名称', '8BFE0C394B1947FB8A56A964ED803A10', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl1', '图片1', '807EEE8CAEE94FBFB0A7738C615AFFDE', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0714', 'imageurl2', '图片2', 'AC15D82C08444549944679031829B16F', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl2', '图片2', '72E456AA7FE84308B17F501B214D26B5', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl4', '图片4', 'B14A8E82F06A4AB48137CBE18D4F4363', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl1', '图片1', '440D9463DF624A029A0892753E9E9A93', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'name', '设施名称', 'C7B74FFA4AB94D799DD600D2E1E5B7DB', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'imageurl3', '图片3', '599D1212F4D7489F8176BD0F194BA1ED', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0715', 'statusName', '状态', '1A0D62D6163C4A5F9599381D58CF94A5', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'name', '设施名称', 'D1613AD1CC60492B86E8EF413C2D4FA9', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'coordinates', '坐标', '86CB91AFCB90427791532B38199C0F7D', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl1', '图片1', '1C6B4B4807444F499FDBEC4FD9501815', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl2', '图片2', '487798DF992348D2BA8AFF122CB0D2D7', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl3', '图片3', 'F2B4E9315A644D65A025F3DF723FF71F', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'statusName', '状态', '864B6F84EE7D425EAD1FE4DD6B19E372', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0716', 'imageurl4', '图片4', '4202CBB7D365453AB8A55AF9D4DA33A5', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0803', 'crossingName', '点位名称', '5AC3B83DD31A44D58AA4591A641F5559', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0803', 'crossingCode', '点位编号', '2CE4755D94384722BD4081785543F9FE', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'status', '状态', '2C4AC05525DB4D30BE7F95C852144522', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'title', '隧道名称', '8AB5074D9DC5489BACF478E7F720DDE2', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'direction', '方向', 'E8CF58A9F695461FB52F5062028BF453', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'ddeptname', '所属大队', 'BE2DCFFC543F4AC8955E3F64F81594F0', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'dlmc', '道路名称', 'A572EB81928F43D69A989CE5619BD64D', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'managementDept', '管理部门', 'B1481E790C364EA695F8358ABF207B10', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0804', 'zhongdeptname', '所属中队', '267D68A5AE3D44479B5890495CF17094', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'title', '隧道名称', '7FBBD47441274E17BB444ABCDEE2A54B', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'dlmc', '道路名称', '1BEB27E1F5004EB49344BE93241E9E1B', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'managementDept', '管理部门', 'BD9DFF6387814A788F492866F799C032', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'status', '状态', '0123E5BCF8A042E780B091F10F221DFA', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'zhongdeptname', '所属中队', '40B58BC01DAA4FD1A1E33D80DDD984DC', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'ddeptname', '所属大队', 'D0852828C1EF409EBF48C0E6EAD741D7', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0805', 'direction', '方向', '27C4FFA072A740869B4F5F527068FA22', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'telephone', '联系电话', '48AD677E900A4BE99A8FE516F9E11E38', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'backAddress', '回填地址', '40D566B0CA334132AD5203976E44E726', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'unitName', '单位名称', 'B15276323EDD47A7AF0E5F7C5D410A42', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'areaName', '辖区名称', 'B8D8772E86C342DFBE9154492B4DD293', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0806', 'contacts', '联系人', '11D1072EAA7949E59ED43CE4F9278983', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0904', 'clbh', '号牌号码', '2F8B82B08B5A443CA6D5CE0631C89972', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0904', 'speed', '速度', 'BDA404E034C4431ABE1888AE4D72BA04', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0905', 'clbh', '号牌号码', '6B6397CA49F6437583AD399A0591AAC0', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0905', 'speed', '速度', 'CD699AB1D9DF4BC49681AA5606F3146B', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0906', 'clbh', '号牌号码', 'CC68BCFC91CF455ABFC785A7C85F5576', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('0906', 'speed', '速度', 'C807BB04747A4FB1BD73F9019C013273', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineTypeName', '通勤干道类型', '87642064170245AF93497F04BD826175', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineLen', '通勤干道长度', 'BB06C1F578F240AEB9BAB066532B4E7B', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('15', 'lineName', '通勤干道名称', 'D37EBDB0CC4640299F1CE4C17CA17D7C', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamPercent', '拥堵占比', '0550FE2E54554222B3F1F1E8DCFA9E1A', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'coordinates', '坐标', '75A89F33F33B481DBA35D9F0DF342047', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamPercentChange', '周同比', '6EDB2BC332164BBB8C04C5C324CC00F3', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaType', '区域类型', '46B43A5E4E674D04BD07497D342B1301', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'jamLength', '拥堵长度', 'B8C4AE2250EF47F5964F11DA88011829', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaName', '区域名称', 'BE8E065FB1D64480BF23F33FCEC2C63C', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1601', 'areaId', '区域编号', '3C94579105D340C48739E08A35FDCCFB', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'coordinates', '坐标', 'D2BE371B706D4B73841BBE78DC09D2E3', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamPercentChange', '周同比', 'DE6458F84A804FD2B6A1F8B7C757C329', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamPercent', '拥堵占比', '2611BB3A794A4210B13E368A742F8C7B', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaId', '区域编号', '7F3B5E3E47B14DFABAAF8A55465CA155', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaName', '区域名称', '62A61E2C83994EA3B9FC72E2AC89B0FF', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'areaType', '区域类型', 'C952B0808E2E4342A757C01831780064', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1602', 'jamLength', '拥堵长度', 'E8329461E25B411FA4B3C75563E558A4', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaName', '区域名称', 'CFB7E91890524115864F53CA95824813', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'coordinates', '坐标', '45BEC7118143472BB6B0A007003BF435', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamLength', '拥堵长度', 'EE3ECD931CF04C7AB6C2E57B0F3A4D11', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamPercent', '拥堵占比', '492B0186D88E45AB9EBDF9FAA2351BEA', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'jamPercentChange', '周同比', '734A597B8F0A4BFC960E0F0A65011B73', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaType', '区域类型', '624D838B5BAC445D9F62165FA8A14527', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1603', 'areaId', '区域编号', '8771CBE2232D4E4A8339D1E3D14A74E9', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaName', '区域名称', '103F6945D280443EAF0A2B4B06B5CEFA', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaId', '区域编号', 'C782593C22F34EFF9D3BE1A09ABA9BA7', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamPercentChange', '周同比', '1E18CEF614DF474187297A29FCBBBA43', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'areaType', '区域类型', '420135FEC02348DA83C5D1A44CA0492E', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamLength', '拥堵长度', '6716951430334CA48BA718B512AB4CD4', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'coordinates', '坐标', '45F470E4C1F747B985C8539DEA603049', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1604', 'jamPercent', '拥堵占比', '1262D6F62CF948A08522F09680F0CA90', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaId', '区域编号', 'F5051112AADE4C0B9357141B8DAB777E', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaName', '区域名称', '93971A5C842C45559EBDF8D938F77318', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'areaType', '区域类型', '86880D5CFE7049D18A3DADC7FD8F4517', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamPercentChange', '周同比', '2A64A29726B84E44A0A0ACF2B0E8BB7D', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'coordinates', '坐标', '5152141B803444E8A5D886262071134B', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamLength', '拥堵长度', 'AE2FBF3387FB4242900C948A72A86B12', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1605', 'jamPercent', '拥堵占比', 'FD8ABFB4558B492E91E53A83511AC68E', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamLength', '拥堵长度', 'E2A755FF0F404D8DBC5B41D4CD600B64', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'coordinates', '坐标', '885EA72C9CA1402B953B6C8B6F411FB1', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamPercent', '拥堵占比', '9AE6DAB35F8D485F8A450B9B8E1B1551', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaId', '区域编号', '9E3A72702AEC43C59D43B61F3032AD96', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaName', '区域名称', '7D88BFC7DE07473D9D2A2F7D5A54D0A9', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'areaType', '区域类型', 'B3FA00E8C8D14398BED96996E833EA12', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1606', 'jamPercentChange', '周同比', '1F50D09433CD499BA91B4B18B61D8A25', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'PARKINGID', '停车场ID', '92DA1E4216C1416693D5C229B005FA19', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'PARKINGNAME', '停车场名称', '3C27570B955D40FBA23298DDA67CB217', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'BERTHCOUNT', '泊位总数', 'ED8E5FD049B242229AF027E7CE71D937', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'SPARECOUNT', '空闲数', '212F8AA32AF44740982DCF9BCEAD6E6F', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'OCCUPIEDCOUNT', '占用数', 'C1ACE4A357A146C2946C571D09E54FFD', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('17', 'USERATIO', '使用率', '45E90CBBFC684157B543EF7745202A8B', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'dataSource', '数据来源', '09F3794588044015AC4C4753543CDAC2', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'visibility', '能见度', 'DADE64AE648543F7893E7288D0262B6C', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1901', 'pointName', '点位名称', 'D353D483AC164594B675ACB9B73CD7D5', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'pointName', '点位名称', '71BA0D90012D4957851BE43A53497A89', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'dataSource', '数据来源', '007CAC8070C34826AE0FAE4178A07365', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1902', 'rainfall', '降水量', '57444048FE674EE29193B7C194524031', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'dataSource', '数据来源', 'C27489DAE3214D12B29D54F8B16910F9', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'waterThickness', '积水量', 'F04FABB8722C45BF9D51819CF12ECA96', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1903', 'pointName', '点位名称', 'E927DDCDF95B4CC69A6E78E12A8CD6B2', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'pointName', '点位名称', '3DD5886469164A39934B621841EE4B46', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'iceThickness', '结冰量', '9B34CF2A4D544521BD3D272E529F21BA', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('1904', 'dataSource', '数据来源', 'E78BA00ABA0C4B11A5A8D62732327E5E', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'stdName', '站点名称', 'E3C8914494524D6E8BE570DC909956B6', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'zdlxName', '站点类型名称', '29ACFA097E0E42ED98320B4961BD9043', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'ZDZT', '站点状态', 'EC35A886388B4996A7ADF9FDD5E69090', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('2101', 'REGIONDIV', '辖区编号', '7C050C8658734EB7B415C017808B44C9', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEPTSHORTNAME', '所属部门', '7622567DB48E43DBBEC84C8601ED798D', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEVICEMODEL', '设备型号', '793388030BE641A689FB93ED74BAAF68', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'SIGNALCODE', '信号路口ID', '6ECC0A285ADC4E74A819BD8596FCB071', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'POINTNAME', '安装地点', '990E6FAADDA94DBD8E92C2091E6B5DE2', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'DEVICESTATENAME', '设备状态', '2312C55FF5344BD5AE07F16A369D473B', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'THIRDSYSCODE', '第三方编号', '422E7088E3B24EDAB35738CCC4872D1E', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('22', 'PROVIDEDATE', '安装日期', 'BF5D3198C5A64DE38D49FE32E1282AA1', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'POINTNAME', '安装地点', 'FCECCB82F0E34C87BBA7C102259B2878', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEVICEMODEL', '设备型号', '1B0BDC0843D84B4083B521D5570BCAED', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEPTSHORTNAME', '所属部门', '597E933DF4D8482B94E83A2469BDF039', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'THIRDSYSCODE', '第三方编号', '0236E927435148DABF1233B790025665', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'PROVIDEDATE', '安装日期', '33D26EA54D4543439662C1B80170E4E2', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'DEVICESTATENAME', '设备状态', 'A9D5FCA8B7814C4495B0EAAF0530FEBA', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('23', 'VMSTYPE', '诱导屏类型', 'CC90299364219695E055000000000001', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'POINTNAME', '安装地点', '879B61DFD6244965AAA5582C07DD9BF4', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEVICESTATENAME', '设备状态', 'CCB34EED41B541EBAE7BC066EF83CDBE', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEVICEMODEL', '设备型号', 'C427C2A62F0F4640804884238FA361C5', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'PROVIDEDATE', '安装日期', '545D73213FB34032AC798DA7B1FFF755', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'DEPTSHORTNAME', '所属部门', '5A92A50F244F413D8C54BA3785F63FA2', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('24', 'THIRDSYSCODE', '第三方编号', '036B188D78BE42CD8DE9447B125608C1', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICETYPE', '设备类型', 'BD98E3969B9042378B1EA1AC183CBA81', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'THIRDSYSCODE', '第三方编号', 'E0CE3F0262704FE499E7179568C3BFDB', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'PROVIDER', '设备提供商 ', '1DEB9F5674A24F85A37D5D1F4ABAD7C1', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'PROVIDEDATE', '安装日期', '829F14B419704CB3855241CCBBDB6940', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICEMODEL', '设备型号', '94B039D65162418DBCC40478C4CAC076', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'POINTNAME', '点位名称', '9015F736CF8D4E82B89ED2BA986DF7FC', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEVICESTATENAME', '设备状态', '6D8672D5EAB64CBAB95CDB6C34E2C3EB', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'DEPTSHORTNAME', '部门简称', 'D1A483AA7C64464FB9AFC3F6FFAF5203', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'RAINFALL', '降水量', '0D2EDBB3C1934FBDB10DCC61E05AA591', 22);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'VISIBILITY', '能见度', 'C7885A1A57E04808A6FFFDC930217427', 23);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'WATERTHICKNESS', '积水量', '1013DB1F4EBF478C9374BE43C1F3858E', 24);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('25', 'ICETHICKNESS', '结冰量', 'E3C8D36BDEAC4DC2AB5B8926AFF64404', 25);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'POINTNAME', '点位名称', '3440C3A205EC449A981053A56339248F', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICEMODEL', '设备型号', '8114A4FA94AB49B0B1F89267F3269F15', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'VMSTYPE', '屏幕类型', 'E95B13D71CB541938BC1F216A3901CC5', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'PROVIDEDATE', '安装日期', 'CB50E00618EE4E6C8F33F69B122C8BF3', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEPTSHORTNAME', '部门简称', 'E3DC70FA43854249A10FF503CEBA70E2', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'THIRDSYSCODE', '第三方编号', 'A9F86498D9A84E3B8529A8F31D57469D', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICETYPE', '设备类型', '5723CA4492C84BC4A8E7DB89D89F5924', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'DEVICESTATENAME', '设备状态', '9F57F52A694C461693E21E49F7AD21C2', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('26', 'PROVIDER', '设备提供商 ', '8A028B89CFB9402CB968AEDF7C32F07D', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICESTATENAME', '设备状态', 'BC758AB1E6B247898339421E84FFA19F', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'POINTNAME', '点位名称', '9DDB5566F62C4B36AE62EC2D5C34DB44', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICEMODEL', '设备型号', 'C992D6F8998346C291D7FA359928D4C8', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'PROVIDEDATE', '安装日期', 'C4BD77DC965E4E488A948D9C18FE6E2D', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'PROVIDER', '设备提供商 ', 'E386614B67D04BB3A3BF871E25EE429C', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'THIRDSYSCODE', '第三方编号', 'B108C8AF759D4672B88292CC5BF084A7', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEVICETYPE', '设备类型', '13EE060729DC4EA592FEE741C8941851', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('27', 'DEPTSHORTNAME', '部门简称', '033D70CDBEF04F5498BCC04E3F7E3D71', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICETYPE', '设备类型', '7786B041FE3A4342A5D21F414A2BE302', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'THIRDSYSCODE', '第三方编号', 'EE2D0694A7A6490DA493680E7F1E9F3F', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEPTSHORTNAME', '部门简称', 'EA6748AEE89A4BC6BED2C323193A0CBB', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICESTATENAME', '设备状态', 'DF83D0F7ECDA453F9BEAAAADB30B4C7A', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'POINTNAME', '点位名称', 'E1F619E3A4334236AE3241BBDDEADDFF', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'DEVICEMODEL', '设备型号', '14DF0543E3F84284BFAF01FE2CC9B8D3', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'PROVIDEDATE', '安装日期', '8BDD01C43AFD44E18A3D698C3E488230', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('28', 'PROVIDER', '设备提供商 ', '58D808F681E64A6D8998EF1FEC598CB1', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEPTSHORTNAME', '部门简称', 'A98AC453722342C98161AADE8D3BB24C', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'POINTNAME', '点位名称', '2543879DABD2490397DA3EDA35AAD3EA', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICEMODEL', '设备型号', '4DAC6926A61E4258B1A6A16BFC2BC185', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'PROVIDEDATE', '安装日期', '0D927DF6A42E49EA9F115FCE0C3765AF', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'PROVIDER', '设备提供商 ', 'FA1B36D24EBF45139CD129397DE672AE', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'THIRDSYSCODE', '第三方编号', '94FDEB0B49D14CDA90C46241C54E674B', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICETYPE', '设备类型', '11F25370D43C4F14B1CC929F79A1F072', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('29', 'DEVICESTATENAME', '设备状态', '222141ABFF31465CA553E1E935E85191', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICETYPE', '设备类型', 'A5597C4CC9B94DC19AC5790C7DE6D2C9', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEPTSHORTNAME', '部门简称', 'E9FFCA28C0EC482ABDEF6F25A45E5819', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICESTATENAME', '设备状态', 'CF94FB7705AF4B019264874E469DF83E', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'POINTNAME', '点位名称', '24BFE508121F4381ABEDC7CAE14FFD9F', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'THIRDSYSCODE', '第三方编号', 'C85B3603B8AC4886BC2D547AAC9DFE39', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'PROVIDER', '设备提供商 ', '2ACAAD11C9FC4F66B130AA516BDA7F72', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'PROVIDEDATE', '安装日期', '6E4E5843C2BF4037AA62D20432707D91', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('30', 'DEVICEMODEL', '设备型号', '9D4D0E6A0CB147069A13CF3B36DB552A', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICEMODEL', '设备型号', '247A2D5C897F4BA9968F81481FE678DF', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'POINTNAME', '点位名称', 'B390AA4DD8D34AF6B3BA5B85B81EF2DA', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICESTATENAME', '设备状态', '325E4BE0567A4EF3AAAF081C6CC3A019', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'VMSTYPE', '屏幕类型', 'CD3273249A2C46A3AF33B189B584F990', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEVICETYPE', '设备类型', 'A371E68734CD4DA7A5E49B4BFAB720B3', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'DEPTSHORTNAME', '部门简称', '0812A06258274CF5AF70CBE2B94DB5E0', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'PROVIDEDATE', '安装日期', '2222A1CFA65E4BC4865E9BDC6865111D', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'PROVIDER', '设备提供商 ', '6CE7A4767E0842819066433579DF600F', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('31', 'THIRDSYSCODE', '第三方编号', '48D900FE09784473BBFB18AA64567CBC', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'PROVIDER', '设备提供商 ', 'BFCBB9AAC94A47B38266FF5CA902C1D5', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'THIRDSYSCODE', '第三方编号', '321B24F940E149F38C1773BE64FB6D0C', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICETYPE', '设备类型', 'D6B45BFB83314ECC8EEB266DEC73648F', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICEMODEL', '设备型号', 'C71B390D71E24E2BA53081339FD84230', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'POINTNAME', '点位名称', '828C66615BBF406A81B2805CFC1D4C05', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEPTSHORTNAME', '部门简称', '07A9E1D5FE124BA6A35B7874914EE78A', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'DEVICESTATENAME', '设备状态', '47B9B540416A4DB7BAD504BC38C30DCE', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('32', 'PROVIDEDATE', '安装日期', '718A677B84D54269B3EF06C454B5043E', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICEMODEL', '设备型号', '2D8B51E4E9D547F78CBF294D74D55A11', 12);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICETYPE', '设备类型', 'BDBFD8E662CE4F99B66CF664C8A0C973', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'POINTNAME', '点位名称', '39409E76C0124403B05CA022B6E4110E', 18);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEVICESTATENAME', '设备状态', 'C8DE85800A444561841BF51BABBDAF17', 20);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'DEPTSHORTNAME', '部门简称', '894F1C65708544FA9220E88C365B969D', 21);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'PROVIDEDATE', '安装日期', '4DAA2661C4D04940A4549298831DD477', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'PROVIDER', '设备提供商 ', '10F0E1585B484866B2C38F0882397B6D', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('33', 'THIRDSYSCODE', '第三方编号', '67A7097639734F9480F56C209C548547', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carno', '车牌号', 'C0F128BFAA3245458F232DF95E24ECA3', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'companyname', '所属公司', '99EBFE09BAF647BE94C1F32DF6F1D0A1', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carbrand', '车辆型号', '542E19BD931B44BCA2E618D2C41932AB', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'cartype', '车辆类型', '97046E5EC9954E9BB54721F128296F73', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'carcolor', '车牌颜色', 'FFF8818A31314CB88BBD5AC7391A0505', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'speed', '速度', 'D73DF22E5A314520B192143C98C134FE', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'transporttype', '运输类型', '149E4B347C3F4A8591DD74EC03516797', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('34', 'collectiondate', '采集时间', '0BB0E47B4D4E4A7B94A345A7B10C6188', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'collectiondate', '采集时间', 'C0AF08640FDA4E818778F9CCA30594C5', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carno', '车牌号', '384BA3F57E5F4E7F8A033D7AB485239A', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'speed', '速度', '5E91C79657B64F27BA488F42EB7DDF78', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carcolor', '车牌颜色', 'B94D7B06B9DB47C1AE503DE4FAB28790', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'cartype', '车辆类型', '6ADE3732BB1F4C608BEE3FDA135963A8', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'carbrand', '车辆型号', '5FB5845BC9B74E43A379D74F19A85445', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'transporttype', '运输类型', 'A04E295944624AC89A3790A9F0A0DFF2', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('35', 'companyname', '所属公司', '7D79DF2921C141B59A5E8F73C4D1F6C1', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'transporttype', '运输类型', '21F5F30F7E864AC6A2F6445ED94B628A', 9);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'companyname', '所属公司', 'AFFB6835D80B4AAC96200F35923D8231', 10);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carbrand', '车辆型号', '400CF2719A8C45AEBFF31227989EE11A', 8);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'cartype', '车辆类型', '1B1ECF6FF74A46768EB4F0B42C3BC973', 7);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carcolor', '车牌颜色', '55417E39A4434DE8B0A02AE1AAAC8307', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'speed', '速度', '53AFEB0736104ED2920D965110D7A61B', 5);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'carno', '车牌号', '752A09CD13004880B5DE77B16866DC7D', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('36', 'collectiondate', '采集时间', 'E40528FDE2714377A8D94775AB603466', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'smallUseNum', '小车泊位', 'CFB119D7A34114BAE055000000000001', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'largeUseNum', '大车泊位', 'CFB119D7A34214BAE055000000000001', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'zhongdeptname', '所属中队', '4AC1F15351D44C859B2F86A23ED822E9', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('37', 'ddeptname', '所属大队', '2A2893190A2D4ABEA1C420F3FAC4045D', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'totalFlow', '5分钟流量', 'CFB119D7A34314BAE055000000000001', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'zhongdeptname', '所属中队', 'E78E185FD9D74E74AF1EBB4481152E62', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('38', 'ddeptname', '所属大队', 'C75109C8F41C4BC1A25D1E375CAAF113', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'RISKPOINTNAME', '积水点名称', '1100356D492B41D3995980516F08D75A', 1);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'DEPTNAME', '所属辖区', '2200356D492B41D3995980516F08D75A', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('39', 'DESPRICTION', '描述', '3300356D492B41D3995980516F08D75A', 3);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'TPI', '交通指数', '11111AEE7F1347F9A6DB104967E5D55D', 4);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'AREANAME', '行政区名称', '68111AEE7F1347F9A6DB104967E5D55D', 2);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'POLICENUM', '警情数', '33111AEE7F1347F9A6DB104967E5D55D', 6);

insert into face_maplayer_data_filed_info (MAPLAYER_ID, FILED_ID, FIELD_NAME, ID, SHOW_ORDER)
values ('40', 'TRANSITVEHICLENUM', '在途车辆数', '22111AEE7F1347F9A6DB104967E5D55D', 5);


commit;


insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '11', '不按规定使用灯光(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '12', '超速行驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '13', '饮酒驾驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '14', '逆行(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '15', '疲劳驾驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '16', '醉酒驾驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '17', '未低速通过(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '18', '违法变更车道(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '19', '违法超车(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '20', '违法倒车(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '21', '违法掉头(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '22', '违法会车(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '23', '违法牵引(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '24', '违法抢行(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '25', '违法上道路行驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '26', '违法停车(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '27', '违法占道行驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '28', '违法装载(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '29', '违法装载超限及危险品运输(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '30', '货动车辆超载(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '31', '违反交通信号(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '32', '未按规定让行(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '33', '无证驾驶(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '34', '客运车辆超员(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '35', '未携带驾驶证(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '36', '驾驶证失效(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '37', '非法获取机动车牌证(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '38', '擅自销售生产机动车(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '40', '未按规定办理业务(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '41', '铁路道口或渡口(机动车违法)', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (50000, '49', '其他影响安全行为(机动车违法)', 0, 0, null, null);
commit;

insert into enum_define (ENUMTYPEID, ENUMNAME, ENUMDESCRIBE, DOFLAG)
values (50000, '违法代码小类', '违法代码小类-平度', '0');

commit;


insert into FACE_PLAN_BASE (PLAN_ID, PLAN_TYPE, PLAN_NAME, DESCRIPTION, PLAN_TYPE_NAME, ATTACHMENT)
values ('1', '1', '雨天预案', '雨天开启的预案', '雨天', null);

insert into FACE_PLAN_BASE (PLAN_ID, PLAN_TYPE, PLAN_NAME, DESCRIPTION, PLAN_TYPE_NAME, ATTACHMENT)
values ('2', '2', '雪天预案', '雪天开启的预案', '雪天', null);

insert into FACE_PLAN_BASE (PLAN_ID, PLAN_TYPE, PLAN_NAME, DESCRIPTION, PLAN_TYPE_NAME, ATTACHMENT)
values ('3', '3', '雾天预案', '雾天开启的预案', '雾天', null);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('1', '1', '1', 100);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('2', '1', '2', 90);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('3', '1', '3', 80);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('4', '2', '1', 100);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('5', '2', '2', 90);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('6', '2', '3', 80);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('7', '3', '1', 100);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('8', '3', '2', 90);

insert into FACE_PLAN_DDM (ID, PLAN_ID, PLAN_LEVEL, ON_DUTY_RATE)
values ('9', '3', '3', 80);


update face_component t set t.component_name = '积水阻断监测' where t.component_id = 'pondingblocking';
update face_component t set t.component_name = '易滑路段监测' where t.component_id = 'slipperysection';
commit;




------HiATMP-DB-DML6.2.0.0.A6提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A7提测关联脚本 开始------

delete from pis_feature_type_config where INFO_TYPE='15' and SUBTYPE='1509';

delete from enum_type where ENUMTYPEID=1120 and ENUMVALUE='1509';

commit;
 

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1509', '信号灯故障', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1510', '绿波降效', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (1120, '1511', '服务区匝道排队', 0, 0, 0, null);

commit;



insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('161', '15', '预警信息', '1509', '信号灯故障', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('162', '15', '预警信息', '1510', '绿波降效', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('163', '15', '预警信息', '1511', '服务区匝道排队', '0', 120);

commit;


update enum_type t set t.enumname='视频识别' where t.enumtypeid = '1118' and t.enumvalue = '22';
commit;


insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('pre_tollgate_flow', '单车道5分钟流量预警阈值', '90', null, '0');

update enum_type t  set t.enumdesc='当前收费站5分钟进/出口单车道流量均值超过临界值' where t.enumtypeid=1120 and t.enumvalue='1502';

update sysparams t set  t.paramvalue=24 , t.paramcontent='警情查询间隔(单位：小时)' where t.paramcode = 'POLICE_REFRESH_TIME_LEN';

commit;


insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610013, '370202000000', '市南', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610013, '370203000000', '市北', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610013, '370213000000', '李沧', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610014, '370295000010', '青平高速', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610014, '370296000010', '同三高速', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610014, '370297000010', '潍莱高速', 0, 0, null, null);
insert into ENUM_TYPE (enumtypeid, enumvalue, enumname, isdefault, dispindex, valid, enumdesc)
values (610014, '370298000010', '胶州湾高速', 0, 0, null, null);
insert into ENUM_DEFINE (enumtypeid, enumname, enumdescribe, doflag)
values (610013, '市区', '所属市区的大队编号', '0');
insert into ENUM_DEFINE (enumtypeid, enumname, enumdescribe, doflag)
values (610014, '高速', '所属高速的大队编号', '0');
commit;


insert into MENU (id, name, title, align, alt_image, description, width, height, image, on_click, on_dbclick, on_mouseover, on_mouseout, page, location, target, roles, tooltip, url, parent_id, order_id, fast_id, del_flag, created_by, created_at, last_modified_by, last_modified_at, version)
values ('020305', '警情处置', '警情处置', null, null, null, null, null, 'images/3.jpg', 'openReactPage(''piso'',''pisOrder/#/vms'',''警情处置'',''/HiatmpPro/index.html'');', null, null, null, null, null, null, null, null, null, '0203', 20305, null, null, null, null, null, null, 1);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id)
values ('02030501', '020305', '显示', '显示', 0);
insert into ROLE_OPERATION_RELATION (roleid, operationid)
values ('2c90af8423bc50b30123bc577ef30002', '02030501');
commit;


insert into face_rule_department (DEPT_NAME, DEPTS, DEPT_TYPE, DEPT_DESC)
values ('suburbanCountyDept', '370281000000,370282000000,370283000000,370284000000,370285000000,370291000000,370292000000,370293000000,370299000000', '3', '区县大队');

insert into face_rule_department (DEPT_NAME, DEPTS, DEPT_TYPE, DEPT_DESC)
values ('highSpeedDept', '370295000010,370296000010,370297000010,370298000010', '1', '高速大队');

insert into face_rule_department (DEPT_NAME, DEPTS, DEPT_TYPE, DEPT_DESC)
values ('urbanDept', '370202000000,370203000000,370211000000,370212000000,370213000000,370214000000', '2', '市区大队');
commit;


update  enum_type p set p.enumname = '事故快处岗'  where p.enumvalue = '5' and p.enumtypeid = '20000'; 
commit;


------HiATMP-DB-DML6.2.0.0.A7提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A8提测关联脚本 开始------

delete  from enum_type e where e.enumtypeid  in('62011','62010','62013','62012')

commit;


insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '2', '清空', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '1', '加放', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '3', '压缩', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '3', '限行两客一危', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '2', '封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '1', '正常', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '3', '匝道封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '2', '主线分流', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62013, '1', '正常', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '4', '限行大货车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '5', '间隔放行', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '6', '分流', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62013, '2', '匝道封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '1', '正常', 0, 0, null, null);


commit;

delete from FACE_RISKPOINT_LABEL_RELATIONS;
commit;
insert into FACE_RISKPOINT_LABEL_RELATIONS (ID, LABEL_IDS, RISK_TYPE, DESCRIBE)
values ('1', '100012', '1', '积水阻断');

insert into FACE_RISKPOINT_LABEL_RELATIONS (ID, LABEL_IDS, RISK_TYPE, DESCRIBE)
values ('2', '100023,100024,100025,100026,100027', '4', '易滑路段');

insert into FACE_RISKPOINT_LABEL_RELATIONS (ID, LABEL_IDS, RISK_TYPE, DESCRIBE)
values ('3', '100008', '5', '团雾高发');


commit;

   delete  from enum_type e where e.enumtypeid = '62010';
   
   insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '1', '加放', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '2', '清空', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '3', '截留', 0, 0, null, null);

commit;


insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21120, '370296000010', '同三大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370203000000', '市北大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370212000000', '崂山大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370211000000', '开发区大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370202000000', '市南大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370213000000', '李沧大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21119, '370214000000', '城阳大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21120, '370295000010', '青平大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21120, '370298000010', '胶州湾大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21120, '370297000010', '潍莱大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21121, '370284000000', '黄岛大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21121, '370282000000', '即墨大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21121, '370281000000', '胶州大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21121, '370285000000', '莱西大队', 0, 0, 0, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (21121, '370283000000', '平度大队', 0, 0, 0, null);

commit;





------HiATMP-DB-DML6.2.0.0.A8提测关联脚本 结束------

------HiATMP-DB-DML6.2.0.0.A9提测关联脚本 开始------
update pis_feature_type_config t set t.feature = '0' where t.subtype = '0501';
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '24*16', '24*16', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*64', '192*64', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*80', '192*80', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*128', '192*128', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*160', '192*160', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*192', '192*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '224*144', '224*144', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '224*176', '224*176', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '256*192', '256*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '288*192', '288*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '304*192', '304*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '24*192', '24*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '320*144', '320*144', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '320*160', '320*160', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '320*192', '320*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '320*32', '320*32', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '336*192', '336*192', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '384*128', '384*128', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '384*228', '384*228', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '384*32', '384*32', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '640*64', '640*64', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '896*64', '896*64', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '48*48', '48*48', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '64*64', '64*64', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '72*144', '72*144', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '96*64', '96*64', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '144*72', '144*72', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '144*96', '144*96', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (8187, '192*24', '192*24', 0, 0, null, null);

commit;


insert into face_sysparam (PARAM_ID, PARAM_NAME, PARAM_VALUE, PARAM_DESCRIBE, PARAM_CODE, PARAM_TYPE, ORDER_NUM)
values ('HW-01-05', '预案配置互联网发布默认文本', '【青岛交警】道路千万条，安全第一条', '预案配置互联网发布默认文本', 'internetrelease', null, null);

insert into face_sysparam (PARAM_ID, PARAM_NAME, PARAM_VALUE, PARAM_DESCRIBE, PARAM_CODE, PARAM_TYPE, ORDER_NUM)
values ('HW-01', '一点一策设备范围', '3000', '一点一策设备范围', 'maprange', null, null);

commit;

delete from face_maplayer_base_info;
commit;


insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('02', '警情', '01', null, '1', 60, null, 'PoliceCaseServiceImpl', 'getPoliceCaseInfo', null, 'maplayerpop2', 'policecase', null, '0', 12, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('2002', '中队', '02', '20', '0', null, 'select ''辖区详情'' as "keyTitle",
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
 where t.nlevel = ''4''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'zhongdui', null, '0', 14, '0', '2');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('2003', '警区', '02', '20', '0', null, 'select ''辖区详情'' as "keyTitle",
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
 where t.nlevel = ''5''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'jingqu', null, '0', 15, '0', '2');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('03', '警力', '01', null, '0', 60, 'select ''警员详情'' as "keyTitle",
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
                         WHERE T.PARAMCODE = ''GPS_ONLINE_TIME_INTERVAL'') PARAM) / 1440', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'police', null, '0', 1, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('01', '路况', '01', null, '2', null, null, null, null, null, null, 'vms_fault', '201', '0', 0, '0', '3');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('22', '信号', '01', null, '0', null, 'SELECT ''设备详情'' as "keyTitle",
       E.DEVICEID as "keyId",
       E.DEVICENAME as "keyName",
       ''设备名称'' as "keyLabel",
       E.DEVICENAME as "name",
       E.DEVICETYPE,
       BC.HICON_CROSSING AS SIGNALCODE,
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
     ON BC.CROSSING_CODE = M.LKDM
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
    AND E.DEVICESTATE IN (''1'', ''4'', ''5'')
    AND E.DEVICETYPE = ''11''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'utc', null, '0', 2, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('23', '诱导', '01', null, '1', null, null, 'GuideServiceImpl', 'getGuideInfo', null, null, 'vms', null, '0', 3, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('24', '视频', '01', null, '0', null, 'SELECT ''设备详情'' as "keyTitle",
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
    AND E.DEVICESTATE IN (''1'', ''4'', ''5'')
    AND E.DEVICETYPE = ''13''
    AND E.videotype IN (''1'',''2'',''8'',''9'')', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'video', null, '0', 4, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('2001', '大队', '02', '20', '0', null, 'select ''辖区详情'' as "keyTitle",
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
 where t.nlevel = ''3''', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'dadui', null, '0', 13, '0', '2');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('37', '服务区', '01', null, '0', null, 'SELECT  ''服务区详情'' as "keyTitle",
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
   and t.status = ''1''', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'service', null, '0', 8, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('38', '收费站', '01', null, '0', null, '
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
   and t.status = ''1''', 'MaplayerServiceImpl', 'queryDataBySql', null, 'maplayerpop2', 'station', null, '0', 9, '0', '0');

insert into face_maplayer_base_info (MAPLAYER_ID, MAPLAYER_NAME, MAPLAYER_LEVEL, PARENT_MAPLAYER_ID, OPERATION_TYPE, REFRESH_FREQUENCY, SQL_CONTENT, CLASS_NAME, METHOD_NAME, PARAMS, COMPONENT_CODE, ICON_NAME, WMS_ID, SHOW_FLAG, SHOW_ORDER, ACTIVE_FLAG, MAPLAYER_TYPE)
values ('40', '行政区', '01', null, '0', null, 'select ''行政区详情'' as "keyTitle",
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
         on fdc.AREA_DEPT_ID = fa.area_id', 'MaplayerServiceImpl', 'queryDataBySql', null, null, 'xingzhengqu', null, '0', 11, '0', '1');


commit;

update face_component t set t.component_name = '服务区饱和' where t.component_id = 'servicearea';
update face_component t set t.component_name = '收费站溢出' where t.component_id = 'tollgate';
commit;

insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('164', '02', '交通违法', '0220', '失驾人员再驾', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('166', '02', '交通违法', '0222', '在逃人员再驾', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('167', '02', '交通违法', '0223', '逾期未报废再驾', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('165', '02', '交通违法', '0221', '毒驾人员再驾', '1', 4320);
commit;


delete from face_department_majorclass;

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('1', '2,3', '1,2,3', '1', '上报', '7');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('2', '2,3', '1,2,3', '2', '联动', '6');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('3', '2,3', '1,2,3', '3', '媒体', '8');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('4', '2,3', '1,2,3', '4', '派警', '1');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('5', '3', '1,2,3', '5', '抄告', '9');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('6', '2,3', '1,2,3', '6', '信号', '5');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('7', '2,3', '1,2,3', '7', '诱导', '2');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('15', '2,3', '1,2,3', '15', '管制', '3');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('9', '3', '1,2,3', '9', '雾区防撞', '10');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('10', '3', '1,2,3', '10', '舆情', '11');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('11', '2,3', '1,2,3', '11', '维修', '12');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('12', '3', '1,2,3', '12', '清障', '13');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('13', '2,3', '1,2,3', '13', '喊话', '14');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('14', '3', '1,2,3', '14', '会商', '15');

insert into face_department_majorclass (ID, NLEVEL, DETP_TYPE, MAJORCLASS_ID, MAJORCLASS_NAME, MAJORCLASS_ORDER)
values ('8', '2,3', '1,2,3', '8', '巡检', '4');

commit;
------HiATMP-DB-DML6.2.0.0.A9提测关联脚本 结束------


------HiATMP-DB-DML6.2.0.0.A10提测关联脚本 开始------
      delete    from face_rule ;
     delete    from face_rule_config ;
     delete    from face_label_config ;
     delete    from face_label_keyword;
     delete    from face_label_regexp;
	 commit;
	 
	 
	 
	 
insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100022', '危化品泄露', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100038', '市区', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.UrbanDistrict.analyseLabel', '1', 1);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100042', '服务区', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100043', '行人穿越', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100044', '遗撒', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100046', '大雨预警', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100047', '抛锚', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100048', '大雪预警', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100049', '积雪/结冰', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100050', '大雾预警', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100051', '闯禁行', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100052', '未办通行证', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100053', '不按通行路线行驶', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100054', '不按通行时段行驶', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100055', '超速', '1', '2', '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100056', '逾期未年检', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100057', '逾期未报废', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100058', '多次违法未处理', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100059', '疲劳驾驶', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100060', '通勤高峰', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100061', '集市', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100062', '违停', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100063', '瓶颈', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100064', '溢出', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100065', '进出城高峰', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100066', '出收费站流量密集', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100067', '面向小车车位饱和', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100068', '区域流量饱和', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100069', '停车场饱和', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100070', '旅游大巴闯禁行', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('200001', '清障', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100024', '降雪未结冰', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100025', '积雪未结冰', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100026', '部分结冰', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100027', '全线结冰', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100028', '能见度＜50米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibilityLess50.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100029', '50米≤能见度＜100米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility50To100.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100030', '100米≤能见度＜200米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility100To200.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100031', '200米≤能见度＜500米', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.FogVisibility200To500.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100032', '蔓延', '1', '4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100033', '区域', '1', '4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100034', '通勤', '1', '4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100036', '隧道', '1', '4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100037', '警卫', '1', '4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100017', '事故', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100001', '伤人', '1', '1,4         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100002', '高速', '1', '4         ', null, '1', 2);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100003', '危化品', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100040', '测试', '1', '1         ', null, null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100005', '占道施工', '1', '3         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100006', '收费站溢出', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100007', '违法停车', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100008', '团雾', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100009', '拥堵超3KM', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.Jam3KM.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100010', '事故风险', '1', '2', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100011', '信号灯故障', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100012', '积水阻断', '1', '1,3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.PondingBlock.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100013', '绿波降效', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100014', '主干道', '1', '3         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100015', '多车道', '1', '1         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100019', '服务区饱和', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100021', '主线溢出', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100020', '匝道排队', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100023', '积雪阻断', '1', '3         ', 'com.hisense.hiatmp.schedule.strategy.labelalgorithmreflect.AccumulatedSnowBlock.analyseLabel', '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100039', '高速路大小车混行', '1', '2         ', null, '1', null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100041', '拥堵超5KM', '1', null, '1', null, null);

insert into face_label_config (LABEL_ID, LABEL_NAME, VISIBLE, STRATEGY, REFLECT_INTERFACE, AVAIABLE, LABEL_ORDER)
values ('100071', '拥堵', '1', '2', '1', '1', null);


commit;



insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10001', '100001', '摔倒受伤,孩子受伤,磕到腿,碰到腿,碰到头,伤人事故,骑电动车的受伤,撞伤老太太,老人受伤,压伤,压到了脚背,脖子受伤,已拨打120,有人擦伤,撞伤小孩,报案人受伤,骑电动车的人受伤,一人受伤,压伤行人脚,司机受伤,车主受伤,两人受伤,压伤乘客脚,撞了老人,面部受伤,驾驶员受伤,刮了个年轻人,已告知拨打120,轻微擦伤,行人受伤,胳膊受伤,腰闪着了,已打120,头破了,驾驶员受伤,手部受伤,手受伤,轻微受伤,压伤行人,撞伤一个行人,撞伤老人,撞到报案人,有人受伤,刮伤行人,已经拨打120,撞倒报案人,撞伤行人,撞到老人,刮到行人,撞了行人,摔伤,腿受伤,腿部受伤,不舒服,轻伤', '没有人员受伤,无人受伤,没人受伤', null);

insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10002', '100003', '危化品', '无危化品,没有危化品,不存在危化品', null);

insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10006', '100015', '多车道', '无多车道', 'PIS_POLICE_CASE_INFO.TYPE.03,PIS_POLICE_CASE_INFO.SUBTYPE.1208');

insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10003', '100022', '危化品泄露', '无危化品泄露,没有危化品泄露,不存在危化品泄露', null);

insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10005', '100002', '高速', '不是高速', null);

insert into face_label_keyword (ID, LABEL_ID, BLACKLIST, WHITELIST, COLUMN_NAME)
values ('10007', '100012', '积水阻断,大量积水', '没有积水阻断,无积水阻断,不存在积水阻断,无大量积水,没有大量积水', null);

commit;



insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10001', '100019', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1501');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10002', '100006', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1502');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10003', '100010', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1507');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10004', '100011', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1509|0501');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10005', '100013', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1510');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10006', '100020', 'PIS_INFO_BASE', 'INFO_SUBTYPE', null);

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10007', '100021', 'PIS_INFO_BASE', 'INFO_SUBTYPE', null);

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10012', '100013', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '2601');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10008', '100007', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '0207|0802');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10009', '100012', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1208');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10013', '100005', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1104');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10010', '100017', 'PIS_INFO_BASE', 'INFO_TYPE', '03');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10014', '100055', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '0203');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10011', '100039', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '1507');

insert into face_label_regexp (ID, LABEL_ID, TABLE_NAME, COLUMN_NAME, REGEXP)
values ('10015', '100071', 'PIS_INFO_BASE', 'INFO_SUBTYPE', '0102');
	 
	 

commit;


insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10077', null, '100002,100030', '3', '1', '诱导', '高速，100米≤能见度＜200米高速大队调度岗诱导方案', '管制路段发布诱导提醒（限行车辆就近驶离高速，其他通行车辆开启雾灯、示廓灯和前后位灯，保持车间距100米以上）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，100米≤能见度＜200米高速大队调度岗诱导规则', '高速大队调度岗', 'a0015', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10078', null, '100002,100030', '2', '1', '诱导', '高速，100米≤能见度＜200米支队调度岗诱导方案', '封闭收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，100米≤能见度＜200米支队调度岗诱导规则', '支队调度岗', 'a0015', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10079', null, '100002,100029', '3', '1', '诱导', '高速，50米≤能见度＜100米高速大队调度岗诱导方案', '管制路段发布诱导提醒（限行车辆就近驶离高速，其他通行车辆开启雾灯和近光灯、示廓灯、前后位灯，保持车间距50米以上）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，50米≤能见度＜100米高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10080', null, '100002,100029', '2', '1', '诱导', '高速，50米≤能见度＜100米支队调度岗诱导方案', '封闭收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，50米≤能见度＜100米支队调度岗诱导规则', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10081', null, '100002,100028', '3', '1', '诱导', '高速，能见度＜50米高速大队调度岗诱导方案', '管制路段发布诱导提醒（提示正在高速公路通行车辆开启雾灯和近光灯、示廓灯、前后位灯、危险报警闪光灯，保持安全车间距）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，能见度＜50米高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10082', null, '100002,100028', '2', '1', '诱导', '高速，能见度＜50米支队调度岗诱导方案', '封闭收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，能见度＜50米支队调度岗诱导规则', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10083', null, '100002,100024', '3', '1', '诱导', '高速，降雪未结冰高速大队调度岗诱导方案', '管制路段发布限速诱导提醒（提示通行车辆开启危险报警闪光灯，并保持安全车间距）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，降雪未结冰高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10084', null, '100002,100025', '3', '1', '诱导', '高速，积雪未结冰高速大队调度岗诱导方案', '管制路段发布诱导提醒（限行车辆就近驶离高速，其他通行车辆开启危险报警闪光灯，保持车间距150米以上）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，积雪未结冰高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10085', null, '100002,100025', '2', '1', '诱导', '高速，积雪未结冰支队调度岗诱导方案', '高速收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayFog.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，积雪未结冰支队调度岗诱导规则', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10120', null, '100002,100008', '3', '1', '雾区防撞', '高速，团雾高速大队指挥岗喊话方案', '开启雾区防撞设备', 'com.hisense.hiatmp.schedule.measures.AntiCollisionInFogArea.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，团雾高速大队指挥岗喊话规则', '高速大队调度岗', null, '9');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10121', null, '100002,100030', '3', '1', '雾区防撞', '高速，100米≤能见度＜200米高速大队指挥岗喊话方案', '开启管制路段的雾区防撞设备', 'com.hisense.hiatmp.schedule.measures.AntiCollisionInFogArea.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，100米≤能见度＜200米高速大队指挥岗喊话规则', '高速大队调度岗', null, '9');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10122', null, '100002,100029', '3', '1', '雾区防撞', '高速，50米≤能见度＜100米高速大队指挥岗喊话方案', '开启管制路段的雾区防撞设备', 'com.hisense.hiatmp.schedule.measures.AntiCollisionInFogArea.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，50米≤能见度＜100米高速大队指挥岗喊话规则', '高速大队调度岗', null, '9');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10123', null, '100002,100028', '3', '1', '雾区防撞', '高速，能见度＜50米高速大队指挥岗喊话方案', '开启管制路段的雾区防撞设备', 'com.hisense.hiatmp.schedule.measures.AntiCollisionInFogArea.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，能见度＜50米高速大队指挥岗喊话规则', '高速大队调度岗', null, '9');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10140', null, '100002,100031', '2', '1', '媒体', '高速，200米≤能见度＜500米支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，200米≤能见度＜500米支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10141', null, '100002,100030', '2', '1', '媒体', '高速，100米≤能见度＜200米支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，100米≤能见度＜200米支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10142', null, '100002,100029', '2', '1', '媒体', '高速，50米≤能见度＜100米支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，50米≤能见度＜100米支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10143', null, '100002,100028', '2', '1', '媒体', '高速，能见度＜50米支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，能见度＜50米支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10144', null, '100002,100024', '2', '1', '媒体', '高速，降雪未结冰支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，降雪未结冰支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10145', null, '100002,100025', '2', '1', '媒体', '高速，积雪未结冰支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，积雪未结冰支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10146', null, '100002,100026', '2', '1', '媒体', '高速，部分结冰支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，部分结冰支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10147', null, '100002,100027', '2', '1', '媒体', '高速，全线结冰支队指挥岗媒体方案', '交通广播、互联网方式发布交通管制诱导信息', 'com.hisense.hiatmp.schedule.measures.MassMedia.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，全线结冰支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10160', null, '100001,100002,100017', '3', '1', '会商', '高速，事故，伤人高速大队指挥岗会商方案', '请开启视频会商', 'com.hisense.hiatmp.schedule.measures.Consult.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，事故，伤人高速大队指挥岗会商规则', '高速大队调度岗', null, '14');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10050', null, '100002,100017', '3', '1', '派警', '高速事故高速大队派警方案', '调派最近警力', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速事故高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10051', null, '100001,100002,100017', '3', '1', '派警', '高速，事故，伤人高速大队派警方案', '增派事故科民警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速伤人高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10052', null, '100002,100003,100017,100022', '3', '1', '派警', '高速，事故，危化品，危化品泄露高速大队派警方案', '大队领导赶往现场', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速，事故，危化品，危化品泄露高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10053', null, '100002,100003,100017,100022', '2', '1', '派警', '高速，事故，危化品，危化品泄露支队派警方案', '城区大队派警疏导交通', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速，事故，危化品，危化品泄露支队派警方案', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10054', null, '100002,100021', '3', '1', '派警', '高速主线溢出高速大队派警方案', '调派最近警力', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速主线溢出高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10055', null, '100002,100005', '3', '1', '派警', '高速占道施工高速大队派警方案', '若存在安全隐患、违规施工，应调派附近警力前往处置；', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速占道施工高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10056', null, '100002,100007', '3', '1', '派警', '高速违法停车高速大队派警方案', '调派附近的巡逻警力进行驱离', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速违法停车高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10057', null, '100002,100008', '3', '1', '派警', '高速团雾高速大队派警方案', '调派最近警力进行巡逻', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速团雾高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10058', null, '100002,100030', '3', '1', '派警', '高速100米＜能见度＜200米高速大队派警方案', '调派警力赶往收费站进行交通管制', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速100米＜能见度＜200米高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10073', null, '100002,100020', '3', '1', '诱导', '高速，匝道排队高速大队调度岗诱导方案', '上游路段多级限速诱导-事件上游逐级降速诱导，避免事故', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，匝道排队高速大队调度岗诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10059', null, '100002,100029', '3', '1', '派警', '高速50米＜能见度＜100米高速大队派警方案', '调派警力赶往收费站进行交通管制', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速50米＜能见度＜100米高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10020', null, '100017,100038', '2', '1', '诱导', '市区事故支队诱导方案', '前方发生事故，请减速慢行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('02-09-2021', 'dd-mm-yyyy'), '1', '市区事故诱导', '支队大队调度', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10031', null, '100002,100039', '2', '1', '诱导', '高速,大小车混行支队调度岗诱导方案', '根据警情的位置识别上下游10公里（可配置）范围内的所有门架式诱导屏，提示：大型车辆靠右行驶，禁止长期占用超车道，所有立柱式诱导屏，提示：保持车距、谨慎驾驶！', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-09-2021 10:11:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速,大小车混行诱导规则', '支队调度岗', 'a0010', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10072', null, '100002,100044', '3', '1', '诱导', '高速，遗撒高速大队调度岗诱导方案', '上游路段多级限速诱导-事故上游逐级降速诱导，避免事故', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，遗撒高速大队调度岗诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10070', null, '100002,100039', '3', '1', '诱导', '高速,大小车混行高速大队调度岗诱导方案', '根据警情的位置识别上下游10公里（可配置）范围内的所有门架式诱导屏，提示：大型车辆靠右行驶，禁止长期占用超车道，所有立柱式诱导屏，提示：保持车距、谨慎驾驶！', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-09-2021 10:11:06', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速,大小车混行高速大队调度岗诱导诱导规则', '高速大队调度岗', 'a0010', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10071', null, '100002,100005', '3', '1', '诱导', '高速，占道施工高速大队调度岗诱导方案', '周边范围多级限速诱导-施工上游逐级降速诱导，避免二次事故', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，占道施工高速大队调度岗诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10086', null, '100002,100026', '3', '1', '诱导', '高速，部分结冰高速大队调度岗诱导方案', '管制路段发布诱导提醒（限行车辆就近驶离高速，其他通行车辆开启危险报警闪光灯，保持车间距100米以上）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，部分结冰高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10091', null, '100002,100009,100017', '3', '1', '上报', '高速,拥堵超3KM，事故高速大队调度岗上报方案', '公安部上报规程-报支队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速,拥堵超3KM，事故高速大队调度岗上报规则', '高速大队调度岗', '10019', '1');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10092', null, '100002,100017,100041', '2', '1', '上报', '高速,拥堵超5KM，事故支队调度岗上报方案', '公安部上报规程-报总队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速,拥堵超5KM，事故支队调度岗上报规则', '支队调度岗', '10019', '1');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10093', null, '100002,100009', '3', '1', '上报', '高速，拥堵超3KM高速大队调度岗上报方案', '公安部上报规程-报支队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速,拥堵超3KM高速大队调度岗上报规则', '高速大队调度岗', '10019', '1');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10094', null, '100002,100041', '2', '1', '上报', '高速，拥堵超5KM支队调度岗上报方案', '公安部上报规程-报总队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速,拥堵超5KM支队调度岗上报规则', '支队调度岗', '10019', '1');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10100', null, '100002,100009', '3', '1', '管制', '高速，拥堵超3KM高速大队指挥岗管制方案', '上游收费站间隔放行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，拥堵超3KM高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10101', null, '100002,100031', '3', '1', '管制', '高速，200米≤能见度＜500米高速大队指挥岗管制方案', '上报支队，申请交通管制（限速80）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，200米≤能见度＜500米高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10102', null, '100002,100031', '2', '1', '管制', '高速，200米≤能见度＜500米支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，200米≤能见度＜500米支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10103', null, '100002,100030', '3', '1', '管制', '高速，100米≤能见度＜200米高速大队指挥岗管制方案', '上报支队，申请交通管制（限行“两客一危”车辆，限速60）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，100米≤能见度＜200米高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10104', null, '100002,100030', '2', '1', '管制', '高速，100米≤能见度＜200米支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，100米≤能见度＜200米支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10105', null, '100002,100029', '3', '1', '管制', '高速，50米≤能见度＜100米高速大队指挥岗管制方案', '上报支队，申请交通管制（限行七座以上（不含七座）客车、面包车、危化品运输车辆、黄牌货车，限速40）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，50米≤能见度＜100米高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10106', null, '100002,100029', '2', '1', '管制', '高速，50米≤能见度＜100米支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，50米≤能见度＜100米支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10107', null, '100002,100028', '3', '1', '管制', '高速，能见度＜50米高速大队指挥岗管制方案', '上报支队，申请交通管制（封闭收费站，限速20）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，能见度＜50米高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10108', null, '100002,100028', '2', '1', '管制', '高速，能见度＜50米支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，能见度＜50米支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10109', null, '100002,100024', '3', '1', '管制', '高速，降雪未结冰高速大队指挥岗管制方案', '上报支队，申请交通管制（限速80）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，降雪未结冰高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10110', null, '100002,100024', '2', '1', '管制', '高速，降雪未结冰支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，降雪未结冰支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10111', null, '100002,100025', '3', '1', '管制', '高速，积雪未结冰高速大队指挥岗管制方案', '上报支队，申请交通管制（限行“两客一危”车辆，限速60）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，积雪未结冰高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10112', null, '100002,100025', '2', '1', '管制', '高速，积雪未结冰支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，积雪未结冰支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10113', null, '100002,100026', '3', '1', '管制', '高速，部分结冰高速大队指挥岗管制方案', '上报支队，申请交通管制（限行七座以上（不含七座）客车、面包车、危化品运输车辆、黄牌货车，限速30）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，部分结冰高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10114', null, '100002,100026', '2', '1', '管制', '高速，部分结冰支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，部分结冰支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10115', null, '100002,100027', '3', '1', '管制', '高速，全线结冰高速大队指挥岗管制方案', '上报支队，申请交通管制（封闭收费站，限速20）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，全线结冰高速大队指挥岗管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10116', null, '100002,100027', '2', '1', '管制', '高速，全线结冰支队指挥岗管制方案', '审批大队交通管制申请', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，全线结冰支队指挥岗管制规则', '支队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10074', null, '100012,100038,100047', '2', '1', '诱导', '市区，积水阻断，抛锚支队调度岗诱导方案', '周边3KM范围内进行诱导发布', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断，抛锚支队调度岗诱导规则', '支队调度岗', 'a0020', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10355', null, '100038,100071', '2', '1', '派警', '市区，拥堵支队市区派警方案', '请派遣附近警力进行交通疏导。', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('07-12-2021 01:00:00', 'dd-mm-yyyy hh24:mi:ss'), '1', '市区，拥堵支队市区派警方案', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11055', null, '100002,100006', '3', '2', '派警', '市区，收费站溢出市区大队调度岗派警方案', '调派附近的警力前往主要路口进行车辆分流引导', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，收费站溢出市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10164', null, '100002,100010', '3', '1', '诱导', '高速，事故风险高速大队指挥岗诱导方案', '发布诱导警示信息，提醒车辆保持车距，大型车辆靠右行驶，禁止长期占用超车道，减少混行风险。', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速，事故风险高速大队指挥岗诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10441', null, '100002', '3', '1', '诱导', '高速 高速大队指挥岗诱导固定展示', '高速大队诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗诱导固定展示', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10438', null, '100002', '3', '1', '派警', '高速 高速大队指挥岗派警固定展示', '高速大队派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗派警固定展示', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('20004', null, '100012,100038', '2', '1', '诱导', '市区，积水阻断支队调度岗诱导方案', '发布分流诱导。', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断支队调度岗诱导规则', '支队调度岗', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('20005', null, '100012,100038', '2', '1', '派警', '市区，积水阻断支队调度岗派警方案', '调派附近警力疏导交通', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断支队调度岗派警规则', '支队调度岗', null, '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10130', null, '100002,100003,100017', '2', '1', '舆情', '高速，事故，危化品支队指挥岗舆情方案', '启动舆情监测', 'com.hisense.hiatmp.schedule.measures.PublicSentiment.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，事故，危化品支队指挥岗舆情规则', '支队调度岗', null, '10');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10356', null, '100038,100071', '2', '1', '诱导', '市区，拥堵支队诱导方案', '前方发生拥堵，请绕行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('07-12-2021 00:01:00', 'dd-mm-yyyy hh24:mi:ss'), '1', '市区拥堵非3KM5KM诱导', '支队调度岗', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10360', null, '100002', '3', '2', '信号', '高速 市区大队指挥岗信号固定展示', '市区大队信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速 市区大队指挥岗信号固定展示', '市区大队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10361', null, '100002', '2', '1', '信号', '高速 支队指挥岗信号固定展示', '支队高速信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速 支队指挥岗信号固定展示', '支队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10362', null, '100002', '3', '1', '信号', '高速 高速大队指挥岗信号固定展示', '高速大队信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速 高速大队指挥岗信号固定展示', '高速大队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10363', null, '100038', '3', '2', '信号', '市区 市区大队指挥岗信号固定展示', '市区大队信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区 市区大队指挥岗信号固定展示', '市区大队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10364', null, '100038', '2', '1', '信号', '市区 支队指挥岗信号固定展示', '支队市区信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区 支队指挥岗信号固定展示', '支队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10365', null, '100038', '3', '1', '信号', '市区 高速大队指挥岗信号固定展示', '高速大队信号', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速 高速大队指挥岗信号固定展示', '高速大队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10366', null, '100038', '3', '2', '派警', '市区 市区大队指挥岗派警固定展示', '市区大队派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗派警固定展示', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10367', null, '100038', '3', '2', '诱导', '市区 市区大队指挥岗诱导固定展示', '市区大队诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗诱导固定展示', '高速大队调度岗', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10255', null, '100002,100056,100057,100058', '3', '1', '抄告', '高速逾期未年检,逾期未报废,多次违法未处理高速大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '高速逾期未年检,逾期未报废,多次违法未处理高速大队调度岗抄告规则', '高速大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10256', null, '100002，100059', '3', '1', '抄告', '高速，疲劳驾驶高速大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '高速，疲劳驾驶高速大队调度岗抄告规则', '高速大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10300', null, '100012,100038,100047', '2', '1', '信号', '市区，积水阻断，抛锚支队调度岗信号方案', '启动相关路口积水信号方案', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断，抛锚支队调度岗信号规则', '支队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10301', null, '100013,100038', '2', '1', '信号', '市区，绿波降效支队调度岗信号方案', '进行绿波方案调整', 'com.hisense.hiatmp.schedule.measures.Signal.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，绿波降效支队调度岗信号规则', '支队调度岗', null, '6');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10068', null, '100011,100038', '3', '2', '派警', '市区，信号灯故障市区大队调度岗派警方案', '调派最近警力现场指挥交通', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，信号灯故障市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10351', null, '100011,100038', '2', '1', '维修', '市区，信号灯故障支队调度岗派警方案', '联系运维服务人员及时维修，现场布设移动信号灯', 'com.hisense.hiatmp.schedule.measures.Repair.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，信号灯故障支队调度岗派警规则', '支队调度岗', null, '11');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10069', null, '100038,100049', '3', '2', '派警', '市区，积雪/结冰市区大队调度岗派警方案', '根据关联路口分析推荐，调度附近民警前往各上游路口进行分流处置；', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，积雪/结冰市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11050', null, '100038,100051', '3', '2', '派警', '市区，闯禁行市区大队调度岗派警方案', '调派最近警力前往现场拦截处置', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，闯禁行市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10200', null, '100012,100038,100047', '3', '2', '清障', '市区，积水阻断，抛锚市区大队调度岗清障方案', '调派就近的清障辆进行处置', 'com.hisense.hiatmp.schedule.measures.RemoveObstacles.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断，抛锚市区大队调度岗清障规则', '市区大队调度岗', null, '12');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11051', null, '100038,100052', '3', '2', '派警', '市区，未办通行证市区大队调度岗派警方案', '调派最近警力前往现场拦截处置', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，未办通行证市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11052', null, '100038,100053', '3', '2', '派警', '市区，不按通行路线行驶市区大队调度岗派警方案', '调派最近警力前往现场拦截处置', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，不按通行路线行驶市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11053', null, '100038,100054', '3', '2', '派警', '市区，不按通行时段行驶市区大队调度岗派警方案', '调派最近警力前往现场拦截处置', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，不按通行时段行驶市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('11054', null, '100038,100055', '3', '2', '派警', '市区，超速市区大队调度岗派警方案', '调派最近警力前往现场拦截处置', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，超速市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10251', null, '100038,100052', '3', '2', '抄告', '市区，未办通行证市区大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，未办通行证市区大队调度岗抄告规则', '市区大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10252', null, '100038,100053', '3', '2', '抄告', '市区，不按通行路线行驶市区大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，不按通行路线行驶市区大队调度岗抄告规则', '市区大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10253', null, '100038,100054', '3', '2', '抄告', '市区，不按通行时段行驶市区大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，不按通行时段行驶市区大队调度岗抄告规则', '市区大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10254', null, '100038,100055', '3', '2', '抄告', '市区，超速市区大队调度岗抄告方案', '生成违规记录，纳入企业积分模型管理，对于高危企业进行抄告并附相关车辆违规记录', 'com.hisense.hiatmp.schedule.measures.CopyNotice.generate', to_date('09-11-2021', 'dd-mm-yyyy'), '1', '市区，超速市区大队调度岗抄告规则', '市区大队调度岗', null, '5');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('20001', null, '100002,100017', '2', '1', '派警', '高速，事故支队派警方案', '自动调派附近警力执行', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速，事故支队派警规则', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('20002', null, '100001,100002,100017,200001', '2', '1', '联动', '高速，事故,伤人，车损支队联动方案', '请来袭崂山区120急救中心、清障车。', 'com.hisense.hiatmp.schedule.measures.CoDeptMeasure.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速，事故,伤人，车损支队联动规则', '支队调度岗', 'af0efaeacf02465ea01f07f48384e5db', '2');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10241', null, '100002', '3', '2', '诱导', '高速 市区大队指挥岗诱导固定展示', '市区大队诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗诱导固定展示', '市区大队调度岗', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10238', null, '100002', '3', '2', '派警', '高速 市区大队指挥岗派警固定展示', '市区大队派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '市区大队指挥岗派警固定展示', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10240', null, '100038', '3', '1', '诱导', '市区 高速大队指挥岗诱导固定展示', '高速大队诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速大队指挥岗诱导固定展示', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10237', null, '100038', '3', '1', '派警', '市区 高速大队指挥岗派警固定展示', '高速大队派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '高速大队指挥岗派警固定展示', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10075', null, '100038,100049', '2', '1', '诱导', '市区，积雪/结冰支队调度岗诱导方案', '周边3KM范围内进行诱导发布', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '市区，积雪/结冰支队调度岗诱导支队调度岗诱导规则', '支队调度岗', 'a0020', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10076', null, '100002,100031', '3', '1', '诱导', '高速，200米≤能见度＜500米支队调度岗诱导方案', '管制路段发布限速诱导提醒（限速80）', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，200米≤能见度＜500米支队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10087', null, '100002,100026', '2', '1', '诱导', '高速，部分未结冰支队调度岗诱导方案', '高速收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureUrbanAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，部分结冰支队调度岗诱导规则', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10088', null, '100002,100027', '3', '1', '诱导', '高速，全线结冰高速大队调度岗诱导方案', '管制路段发布诱导提醒（提示开启危险报警闪光灯，就近驶离高速公路或进入服务区）', 'com.hisense.hiatmp.schedule.measures.VMSMeasureUrbanAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，全线结冰高速大队调度岗诱导规则', '高速大队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10089', null, '100002,100027', '2', '1', '诱导', '高速，全线未结冰支队调度岗诱导方案', '高速收费站入口周边范围发布交通管制诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasureUrbanAccident.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速，全线结冰支队调度岗诱导规则', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10090', null, '100002,100003,100017', '3', '1', '上报', '高速,事故，危化品高速大队调度岗上报方案', '公安部上报规程-报支队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('03-11-2021', 'dd-mm-yyyy'), '1', '高速,事故，危化品高速大队调度岗上报规则', '高速大队调度岗', '10019', '1');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10067', null, '100012,100038,100047', '3', '2', '派警', '市区，积水阻断，抛锚市区大队调度岗派警方案', '根据关联路口分析推荐，调度附近民警前往各上游路口进行分流处置；', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('01-12-2021', 'dd-mm-yyyy'), '1', '市区，积水阻断，抛锚市区大队调度岗派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10060', null, '100002,100028', '3', '1', '派警', '高速能见度＜50米高速大队派警方案', '调派警力赶往收费站进行交通管制', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速能见度＜50米高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10061', null, '100002,100025', '3', '1', '派警', '高速积雪未结冰高速大队派警方案', '调派警力赶往收费站进行交通管制', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速积雪未结冰高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10062', null, '100002,100026', '3', '1', '派警', '高速部分结冰高速大队派警方案', '调派警力赶往收费站进行交通管制', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速部分结冰高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10063', null, '100002,100027', '3', '1', '派警', '高速全线结冰高速大队派警方案', '调派警力赶往收费站进行交通管制，及时分流', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速全线结冰高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10064', null, '100002,100056,100057,100058', '3', '1', '派警', '高速逾期未年检、逾期未报废、多次违法未处理高速大队派警方案', '调派最近巡逻警力，引导车辆下高速或进入服务区处罚；', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速逾期未年检、逾期未报废、多次违法未处理高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10065', null, '100002,100059', '3', '1', '派警', '高速疲劳驾驶高速大队派警方案', '调派最近巡逻警力，引导车辆下高速或进入服务区处罚;', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('29-10-2021', 'dd-mm-yyyy'), '1', '高速疲劳驾驶高速大队派警规则', '高速大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10161', null, '100002,100008', '2', '1', '媒体', '高速，团雾高速支队指挥岗媒体方案', '交通广播、互联网方式发布团雾提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，团雾高速支队指挥岗媒体规则', '支队调度岗', null, '3');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10066', null, '100002,100017,100003,100022', '3', '2', '派警', '危化品泄露,危化品,高速,事故市区大队派警方案', '关闭收费站周边部署警力', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '危化品泄露,危化品,高速,事故市区大队派警规则', '市区大队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10021', null, '100009,100038', '2', '1', '诱导', '市区拥堵支队诱导方案', '前方发生拥堵，请绕行', 'com.hisense.hiatmp.schedule.measures.VMSMeasureUrbanTrafficJam.generate', to_date('02-09-2021', 'dd-mm-yyyy'), '1', '市区拥堵诱导', '支队调度', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10018', null, '100002,100008', '3', '1', '诱导', '高速团雾大队调度岗诱导方案', '周边范围多级限速诱导提醒', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-08-2021', 'dd-mm-yyyy'), '1', '高速团雾诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10035', null, '100002,100019', '2', '1', '诱导', '高速，服务区饱和诱导方案', '该服务区上游的服务区发布饱和诱导提示，建议提前休息', 'com.hisense.hiatmp.schedule.measures.VMSMeasureServiceAreaSaturation.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，服务区饱和诱导规则', '支队调度岗', 'a0003', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10001', null, '100002,100017', '3', '1', '诱导', '高速事故诱导方案', '周边范围多级限速诱导-事故上游逐级降速诱导，避免二次事故。', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速事故诱导规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10002', null, '100002,100017,100003,100022', '3', '1', '诱导', '危化品泄露,危化品,高速,事故高速大队诱导方案', '启动远端分流诱导-事故与上游各收费站之间的诱导屏发布分流诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '危化品泄露,危化品,高速,事故规则', '高速大队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10003', null, '100002,100017,100003,100022', '2', '1', '诱导', '危化品泄露,危化品,高速,事故支队诱导方案', '启动收费站封闭诱导-收费站入口及周边城市道路发布封闭诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '危化品泄露,危化品,高速,事故规则', '支队调度岗', 'a0001', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10004', null, '100002,100006', '2', '1', '诱导', '高速，收费站溢出诱导支队诱导方案', '在该收费站主要来源路段发布诱导提醒，建议绕行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，收费站溢出诱导规则', '支队调度岗', 'a0002', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10005', null, '100002,100019', '3', '1', '诱导', '高速，服务区饱和诱导方案', '该服务区上游的服务区发布饱和诱导提示，建议提前休息', 'com.hisense.hiatmp.schedule.measures.VMSMeasureServiceAreaSaturation.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，服务区饱和诱导规则', '高速大队调度岗', 'a0003', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10008', null, '100002,100006', '2', '1', '派警', '高速,收费站溢出支队派警方案', '调派附近的警力前往主要路口进行车辆分流引导;', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速,收费站溢出派警规则', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10011', null, '100002,100003,100017,100022', '3', '1', '管制', '高速，事故，危化品，危化品泄漏高速大队指挥岗管制方案', '封闭上游收费站', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，事故，危化品，危化品泄漏高速大队管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10012', null, '100002,100009,100017', '3', '1', '管制', '高速，事故，拥堵超3KM高速大队指挥岗管制方案', '上游收费站间隔放行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，事故，拥堵超3KM高速大队指挥岗管制方案管制规则', '高速大队调度岗', null, '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10013', null, '100002,100010', '3', '1', '管制', '高速，事故风险高速大队指挥岗管制方案', '根据研判确认主要上游收费站的限行目标车辆', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，事故风险高速大队指挥岗管制规则', '高速大队调度岗', 'a0011', '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10014', null, '100002,100005', '3', '1', '管制', '高速，占道施工高速大队指挥岗管制方案', '上游收费站限流放行', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('04-08-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速，占道施工高速大队指挥岗管制规则', '高速大队调度岗', 'a0021', '8');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10015', null, '100002,100007', '3', '1', '喊话', '高速异常停车高速大队指挥岗喊话方案', '调用喊话系统，通知驾驶员迅速离开，避免出现追尾事故', 'com.hisense.hiatmp.schedule.measures.Shout.generate', to_date('03-11-2021 00:00:01', 'dd-mm-yyyy hh24:mi:ss'), '1', '高速异常停车高速大队指挥岗喊话规则', '高速大队调度岗', '10015', '13');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10038', null, '100002', '2', '1', '派警', '高速 支队高速派警固定展示', '支队高速派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '支队高速派警', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10041', null, '100002', '2', '1', '诱导', '高速 支队高速诱导固定展示', '支队高速诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasureHighWayAccident.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '支队高速诱导固定展示', '支队调度岗', 'a0021', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10037', null, '100038', '2', '1', '派警', '市区 支队市区派警固定展示', '支队市区派警', 'com.hisense.hiatmp.schedule.measures.PoliceDispatch.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '支队市区派警', '支队调度岗', '10006', '4');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10040', null, '100038', '2', '1', '诱导', '市区 支队市区诱导固定展示', '支队市区诱导', 'com.hisense.hiatmp.schedule.measures.VMSMeasure.generate', to_date('19-10-2021', 'dd-mm-yyyy'), '1', '支队市区诱导固定展示', '支队调度岗', 'a0014', '7');

insert into face_rule (ID, CASE_TYPE, LABEL_IDS, NLEVEL, DEPT_TYPE, MAJORCLASS, SUBCLASS, CONTENT, INTERF, UPDATE_TIME, AVAILABLE, RULE_NAME, POSITION, RULE_GROUP, MAJORCLASS_ID)
values ('10019', null, '100002,100017,100003,100022', '2', '1', '上报', '高速,事故，危化品，危化品泄露支队调度岗上报方案', '公安部上报规程-报总队', 'com.hisense.hiatmp.schedule.measures.Report.generate', to_date('16-08-2021', 'dd-mm-yyyy'), '1', '高速,事故，危化品，危化品泄露支队调度岗上报规则', '支队调度岗', '10019', '1');



commit;



insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20008', 'a0001', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请减速慢行。', 10, '0', 100, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20012', '10006', null, '派遣民警#现场处置，距离#公里', 3, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20015', 'a0015', null, '前方收费站发生大雾，请绕行', 10, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20007', 'a0001', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请减速慢行。', 5, '0', 80, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20011', '10019', '/hiface62/file/muban.docx', null, null, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20013', 'a0013', null, '前方#发生大雾，限行车辆就近驶离高速，其他通行车辆开启雾灯、示廓灯和前后位灯，保持车间距100米以上。', null, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20020', 'a0020', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请谨慎驾驶。', 3, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20021', 'a0021', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请谨慎驾驶。', 10, null, null, 'AAAWOnAAFAABZCjAAA', null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20014', 'a0014', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请谨慎驾驶。', 0.5, null, null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20001', 'a0002', null, '前方#收费站匝道排队，请谨慎驾驶。', 10, '1', null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20002', 'a0003', '前方服务区饱和,请谨慎驾驶。', '前方#服务区饱和，建议提前在#服务区休息', 1000, '1', null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20003', 'a0010', null, '大型车辆靠右行驶，禁止长期占用超车道！', 10, '2', null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20004', 'a0011', null, '保持车距、谨慎驾驶', 10, '1', null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20005', 'a0012', null, '前方团雾、谨慎驾驶', 5, '0', null, null, null, null);

insert into face_rule_config (ID, RULE_ID, PARAMS, NCONTENT, NRANGE, SCREEN_TYPE, SPEED_LIMIT, CO_DEPTID, RELATED_DEPT, CASE_TYPE)
values ('20006', 'a0001', '{
  "showContent": [
{
  "typeAddSubtype": "151508",
  "showContent": "前方#公里发生降速，请谨慎驾驶。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里发生占道施工，请减速慢行。"
},
{
  "typeAddSubtype": "010101",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010102",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "010103",
  "showContent": "前方#公里发生拥堵，请减速慢行。"
},
{
  "typeAddSubtype": "111101",
  "showContent": "前方#公里收费站关闭，请绕行。"
},
{
  "typeAddSubtype": "111102",
  "showContent": "前方#公里道路封闭，请绕行。"
},
{
  "typeAddSubtype": "111103",
  "showContent": "前方#公里限行，请绕行。"
},
{
  "typeAddSubtype": "111104",
  "showContent": "前方#公里道路施工，请绕行。"
},
{
  "typeAddSubtype": "121201",
  "showContent": "前方#公里发生大雾，请减速慢行。"
},
{
  "typeAddSubtype": "121202",
  "showContent": "前方#公里发生暴雨，请减速慢行。"
},
{
  "typeAddSubtype": "121203",
  "showContent": "前方#公里发生大雪，请减速慢行。"
},
{
  "typeAddSubtype": "121204",
  "showContent": "前方#公里发生路面结冰，请减速慢行。"
},
{
  "typeAddSubtype": "121205",
  "showContent": "前方#公里发生路面湿滑，请减速慢行。"
},
{
  "typeAddSubtype": "121206",
  "showContent": "前方#公里发生大风，请减速慢行。"
},
{
  "typeAddSubtype": "121207",
  "showContent": "前方#公里发生路面高温，请减速慢行。"
},
{
  "typeAddSubtype": "121208",
  "showContent": "前方#公里发生积水事件，请减速慢行。"
},
{
  "typeAddSubtype": "121209",
  "showContent": "前方#公里发生积雪事件，请减速慢行。"
},
{
  "typeAddSubtype": "030301",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030302",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030303",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030304",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030305",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030306",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030307",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030308",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030309",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030310",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030311",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030312",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030313",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030314",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030315",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030316",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030317",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
},
{
  "typeAddSubtype": "030318",
  "showContent": "前方#公里发生事故，请谨慎驾驶。"
}
  ]
}', '前方#公里发生#，请减速慢行。', 1, '0', 60, null, null, null);



commit;



delete from enum_type e where e.enumtypeid in  ('6114',62010,62011,62012,62013,62014,62015);
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '1', '加放', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '2', '清空', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62010, '3', '截留', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '1', '小型客车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '2', '七座以上客车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '3', '九座以上客车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '4', '大型货车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '5', '其他货车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62015, '6', '危化品运输车', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '1', '北向南', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '2', '东北向西南', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '3', '东向西', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '4', '东南向西北', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '5', '南向北', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '6', '西南向东北', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '7', '西向东', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (6114, '8', '西北向东南', 0, 0, 0, '方向换种说法，跟6111一致');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '3', '匝道封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '2', '主线分流', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62013, '1', '正常', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62013, '2', '匝道封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62012, '1', '正常', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '1', '正常', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '2', '封闭', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62011, '3', '限行', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62014, '1', '上行', 0, 0, null, null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (62014, '2', '下行', 0, 0, null, null);

commit;



insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('HIFACE62_TOOLS', '场景化指挥右下角工具箱', '0', '0->隐藏 1->显示', '0');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('HIFACE62_DECISION_ANALYSIS', '场景化指挥决策分析工具', '0', '0->隐藏 1->显示', '0');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('HIFACE62_PROGRESS', '场景化指挥最新进展', '0', '0->隐藏 1->显示', '0');

commit;
 
 
------HiATMP-DB-DML6.2.0.0.A10提测关联脚本 结束------

---补充脚本（支队）

delete from pis_feature_type_config t where t.info_type = '04' and t.subtype = '0404';
commit;


insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('119', '15', '预警信息', '1501', '服务区饱和', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('120', '15', '预警信息', '1502', '收费站溢出', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('121', '15', '预警信息', '1503', '两客一危', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('122', '15', '预警信息', '1504', '高速安全风险', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('123', '15', '预警信息', '1505', '高德路况', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('124', '15', '预警信息', '1506', '停车场饱和', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('125', '15', '预警信息', '1507', '大小车混行', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('126', '15', '预警信息', '1508', '突变降速', '0', 120);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('128', '20', '创城-主次干道、商业街', '2001', '车辆、行人各行其道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('129', '20', '创城-主次干道、商业街', '2002', '无乱穿马路、翻越隔离栏', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('130', '20', '创城-主次干道、商业街', '2003', '无机动车、非机动车逆行', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('138', '20', '创城-主次干道、商业街', '2011', '无乱停车', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('137', '20', '创城-主次干道、商业街', '2010', '交通护栏、隔离墩保持干净', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('131', '20', '创城-主次干道、商业街', '2004', '不按照规定礼让行人', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('135', '20', '创城-主次干道、商业街', '2008', '行人过街、机非分离、人车分离等安全设施配置完整', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('134', '20', '创城-主次干道、商业街', '2007', '无占用和堵塞消防通道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('133', '20', '创城-主次干道、商业街', '2006', '无车窗抛物', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('132', '20', '创城-主次干道、商业街', '2005', '电动自行车无牌照,驾乘人员佩不戴头盔', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('136', '20', '创城-主次干道、商业街', '2009', '交通信号灯、标志标线等规范', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('142', '21', '创城-主要交通路口', '2104', '不按照规定礼让行人', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('141', '21', '创城-主要交通路口', '2103', '无机动车、非机动车逆行', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('139', '21', '创城-主要交通路口', '2101', '车辆、行人各行其道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('140', '21', '创城-主要交通路口', '2102', '无乱穿马路、翻越隔离栏', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('146', '22', '创城-背街小巷', '2204', '行人过街、机非分离、人车分离等安全设施配置完整', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('145', '22', '创城-背街小巷', '2203', '无占用和堵塞消防通道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('144', '22', '创城-背街小巷', '2202', '无车窗抛物', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('143', '22', '创城-背街小巷', '2201', '电动自行车无牌照,驾乘人员佩不戴头盔', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('147', '22', '创城-背街小巷', '2205', '交通信号灯、标志标线等规范', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('148', '22', '创城-背街小巷', '2206', '无乱停车', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('149', '23', '创城-社区小区', '2301', '电动自行车上有牌照', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('153', '23', '创城-社区小区', '2305', '停车规范有序，无乱停乱放、堵塞小区道路现象', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('151', '23', '创城-社区小区', '2303', '无占用和堵塞消防通道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('152', '23', '创城-社区小区', '2304', '机动车、非机动车有序规范停放', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('150', '23', '创城-社区小区', '2302', '无车窗抛物', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('156', '24', '创城-校园周边', '2403', '校园门前交通秩序良好', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('155', '24', '创城-校园周边', '2402', '无占用和堵塞消防通道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('154', '24', '创城-校园周边', '2401', '无车窗抛物', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('158', '25', '创城-重点区域道路', '2502', '无占用和堵塞消防通道', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('157', '25', '创城-重点区域道路', '2501', '无车窗抛物', '0', 4320);

insert into pis_feature_type_config (ID, INFO_TYPE, TYPE_NAME, SUBTYPE, SUBTYPE_NAME, FEATURE, CLOSE_LIMIT)
values ('159', '25', '创城-重点区域道路', '2503', '机动车、非机动车有序规范停放', '0', 4320);

commit;


------------------------------6.2 end -----------------------------------------------------------
 

