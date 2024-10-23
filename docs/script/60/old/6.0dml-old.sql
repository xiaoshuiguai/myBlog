
-----------------------------------6.0 psa start-----------------------------
prompt Importing table PSA_DEPARTMENT_CONFIG...
set feedback off
set define off


insert into menu (ID, NAME, TITLE, ALIGN, ALT_IMAGE, DESCRIPTION, WIDTH, HEIGHT, IMAGE, ON_CLICK, ON_DBCLICK, ON_MOUSEOVER, ON_MOUSEOUT, PAGE, LOCATION, TARGET, ROLES, TOOLTIP, URL, PARENT_ID, ORDER_ID, FAST_ID, DEL_FLAG, CREATED_BY, CREATED_AT, LAST_MODIFIED_BY, LAST_MODIFIED_AT, VERSION)
values ('0404', '警务监管', '警务监管', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '04', 404, 1, null, null, null, null, null, 1);

insert into menu (ID, NAME, TITLE, ALIGN, ALT_IMAGE, DESCRIPTION, WIDTH, HEIGHT, IMAGE, ON_CLICK, ON_DBCLICK, ON_MOUSEOVER, ON_MOUSEOUT, PAGE, LOCATION, TARGET, ROLES, TOOLTIP, URL, PARENT_ID, ORDER_ID, FAST_ID, DEL_FLAG, CREATED_BY, CREATED_AT, LAST_MODIFIED_BY, LAST_MODIFIED_AT, VERSION)
values ('040401', '警务监管大数据', '警务监管大数据', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0404', 40401, 1, null, null, null, null, null, 1);

insert into menu (ID, NAME, TITLE, ALIGN, ALT_IMAGE, DESCRIPTION, WIDTH, HEIGHT, IMAGE, ON_CLICK, ON_DBCLICK, ON_MOUSEOVER, ON_MOUSEOUT, PAGE, LOCATION, TARGET, ROLES, TOOLTIP, URL, PARENT_ID, ORDER_ID, FAST_ID, DEL_FLAG, CREATED_BY, CREATED_AT, LAST_MODIFIED_BY, LAST_MODIFIED_AT, VERSION)
values ('040402', '执法档案', '执法档案', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '0404', 40402, 1, null, null, null, null, null, 1);

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '040401');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040101');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040102');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040201');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040202');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040203');

insert into role_operation_relation (ROLEID, OPERATIONID)
values ('2c90af8423bc50b30123bc577ef30002', '04040204');

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040101', '040401', '显示', '显示', null);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040203', '040402', '导出', '导出', 2);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040102', '040401', '权重修改', '权重修改', 1);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040201', '040402', '显示', '显示', null);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040202', '040402', '查询', '查询', 1);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('040401', '0404', '显示', '显示', null);

insert into operate_component (ID, MENU_ID, NAME, TITLE, ORDER_ID)
values ('04040204', '040402', '详情', '详情', 3);


--PSA_DEPARTMENT_CONFIG
insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370202000000', '370200000000', '370202000000', '1', '1', null, '市南大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370282000000', '370200000000', '370282000000', '12', '3', null, '即墨大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370281000000', '370200000000', '370281000000', '13', '3', null, '胶州大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370214000000', '370200000000', '370214000000', '9', '3', null, '城阳大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370285000000', '370200000000', '370285000000', '16', '3', null, '莱西大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370284000000', '370200000000', '370284000000', '14', '3', null, '黄岛大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370212000000', '370200000000', '370212000000', '10', '3', null, '崂山大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370213000000', '370200000000', '370213000000', '3', '1', null, '李沧大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370203000000', '370200000000', '370203000000', '2', '1', null, '市北大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370298000010', '370200000000', '370298000010', '5', '2', null, '胶州湾大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370292000000', '370200000000', '370292000000', '18', '3', null, '机场大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370291000000', '370200000000', '370291000000', '4', '1', null, '高新区大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370211000000', '370200000000', '370211000000', '11', '3', null, '开发区大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370283000000', '370200000000', '370283000000', '15', '3', null, '平度大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370296000010', '370200000000', '370296000010', '7 ', '2', null, '同三大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370295000010', '370200000000', '370295000010', '8', '2', null, '青平大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370297000010', '370200000000', '370297000010', '6', '2', null, '潍莱大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('370293000000', '370200000000', '370293000000', '17', '3', null, '青岛港大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('001', '001', '001', '-', '-1', null, '全支队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('002', '002', '002', '-', '-2', null, '市区大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('003', '003', '003', '-', '-3', null, '高速大队');

insert into PSA_DEPARTMENT_CONFIG (ID, PARENTDEPARTMENT, CODE, SORT, DEPT_LEVEL, DEPT_USER, DEPTNAME)
values ('004', '004', '004', '-', '-4', null, '区市大队');

prompt Done.

--PSA_ILLEGAL_TYPE
prompt Importing table PSA_ILLEGAL_TYPE...
set feedback off
set define off
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('001', '001', '酒驾', '17129,60220,60320,60330,60340,60350,12080', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('002', '002', '毒驾', '50350,10390', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('003', '003', '超员', '16230,13480,16210,16270,16260,17105,17106,17160,17140,10390', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('004', '004', '货运机动车违法载人', '16380,16383,12080', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('005', '005', '非法改装机动车', '10870,12080', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('006', '006', '挪用号牌', '57040,57049,57050,57059,10390', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007', '007', '无牌无证', '13522,10051,10052,10053,10054,10061,10062,100063,10064,16130,17170,10100,10820,17091,17092,17093,17094,16101,16102,16103,16104,60540,60550', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('008', '008', '伪造变造号牌', '50028,50029,50030,50039,57019,57029,57030,10390,12080', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('009', '009', '货车超载', '13530,13540,16372,16373,16375,16376,16377,16390,50460,10390', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('010', '010', '危化品车辆', '13511,60490,80400,80410,70075,70240,10310,10980,12360,12390,13390,13460,13510,13540,16080,16170,16180,16190,16357,16310,16390,17250,17295,17296,17297,17310,47090,47130,16356,70590,70085,16090,16120,46120', '04');

prompt Done.

--PSA_MONITOR_INFO
prompt Importing table PSA_MONITOR_INFO...
set feedback off
set define off
insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0403', '04', '1', '闯禁行未处理', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0402', '04', '1', '无证按有证处理', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0401', '04', '1', '取得购买证但无运输证', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('01', '00', '1', '酒醉驾处理', '0', '1', '/psa/psadrunkdriving', null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0101', '01', '1', '未开具强制措施', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0102', '01', '1', '强制措施违规跨档', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0104', '01', '1', '再次酒驾违规处罚', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0105', '01', '1', '营运酒驾违规处罚', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0106', '01', '1', '处罚决定书跨档', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('02', '00', '1', '涉案车辆', '0', '1', '/psa/vehiclesinvolved', null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0204', '02', '2', '未上传现场照片', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0205', '02', '2', '扣车手续不全', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0207', '02', '2', '违法记录消除未放车', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0107', '01', '1', '未吊销/暂扣驾驶证', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0206', '02', '2', '放行申请被频繁驳回', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0203', '02', '1', '无放车条放车', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0202', '02', '1', '违规申请放行', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0201', '02', '1', '扣车未入停车场', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0109', '01', '2', '未开启执法记录仪', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0110', '01', '2', '酒精检测仪信息记录不规范', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0111', '01', '2', '强制措施值与酒精检测值不一致', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0112', '01', '2', '超期未处理', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('03', '00', '1', '违法处理', '0', '1', '/psa/illegalhandling', null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('04', '00', '1', '危化品车辆管理', '0', '1', '/psa/dangerousvehicles', null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('05', '00', '1', '事故处理', '0', '1', '/psa/handlingaccident', null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0308', '03', '2', '违法信息采集质量较差', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0309', '03', '2', '大量开具处罚决定书', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0310', '03', '2', '篡改当事人类型', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0404', '04', '1', '处置滞留时间过长', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0405', '04', '1', '录入滞留时间过长', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0406', '04', '1', '未按规定扣车', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0407', '04', '1', '扣车未入停车场', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0408', '04', '1', '扣车违规放行', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0409', '04', '1', '扣证违规归还', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0410', '04', '1', '未暂扣/吊销驾驶证', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0411', '04', '2', '未开启执法记录仪', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0412', '04', '2', '违法时间录入不一致', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0413', '04', '2', '超期未处理', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0301', '03', '1', '非工作时间处理交通违法', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0302', '03', '1', '对有证人员按无证处罚', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0303', '03', '1', '一人为多车处理违法', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0304', '03', '1', '违法拆单', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0305', '03', '1', '非现场违法不计分', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0306', '03', '1', '满60周岁驾驶员涉嫌违规处理违法', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0307', '03', '1', '多人为一车处理违法', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0103', '01', '1', '二次血检异常跨档', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0108', '01', '1', '行政拘留未入所', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0113', '01', '2', '六合一信息维护不全', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0114', '01', '2', '案件处理时间顺序不符合逻辑', '3', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0501', '05', '1', '事故录入超时', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0503', '05', '1', '检验鉴定超期', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0502', '05', '1', '检验鉴定委托超期', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0504', '05', '1', '文书送达超期', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0505', '05', '1', '结案归档超期', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0506', '05', '1', '同一人同一民警多起事故', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0507', '05', '1', '同一车同一民警多起事故', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0508', '05', '2', '事故录入率分析', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('0509', '05', '2', '处罚率分析', '0', '2', null, null);

insert into PSA_MONITOR_INFO (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1)
values ('06', '00', '1', '占路施工', '2', '1', null, null);

prompt Done.

--PSA_MONITOR_PARAM_CONFIG
prompt Importing table psa_monitor_param_config...
set feedback off
set define off
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('8B7C36FA6DEB01ADE050100A980380C3', '1', 'ALCOHOL_VOLUME', '1', '80', 'HIGH', null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('1', null, 'PSA_PARAM_EXECUTE_CLASSES_VEICHLE', '1', 'cc', null, null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2', null, 'psa_drunk_monitor_info', '1', '01', null, '酒驾监管项id');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('3', null, 'vehicle_drunk_monitor_info', '1', '02', null, '涉案车辆监管项id');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('087A22CBD28D4BA998D9D2FFF2CB6926', null, 'CHEMICAL_WFXW', null, '16025', null, '超载30以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('9036AC457F6147E8BFD3B6A1F1111C8B', null, 'VEHICLE_STATUS', null, '20', null, '信息确认');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('B00F1AB3E13046CDA69FADADB631EE94', null, 'VEHICLE_STATUS', null, '10', null, '申请放行');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('FB4CE28963354F34A3EEB001A8163E34', null, 'VEHICLE_STATUS', null, '12', null, '审核放行');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('F620BC0167494737A6DF27A42E9F7861', null, 'VEHICLE_STATUS', null, '2', null, '车辆放行');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('8B7C36FA6DEB01ADE050100A980380C4', null, 'THRESHOLD_INPUT', null, '70', null, '事故处理-录入率阈值（百分比）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('8B7C36FA6DEB01ADE050100A980380C5', null, 'THRESHOLD_PUNISH', null, '80', null, '事故处理-处罚率阈值（百分比）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('BEFE1EF9DDF04FDD87CA9995A9BDAE52', null, 'CHEMICAL_WFXW', null, '10310', null, '未经批准运载危险品');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('B0B4309C59E842AC8A339E0769AA8E2F', null, 'CHEMICAL_WFXW', null, '10980', null, '实习期驾驶危险品车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('C5843B87B5A5416FA9CBC975F9941A71', null, 'CHEMICAL_WFXW', null, '12360', null, '实习期驾驶危险品车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('AF8EACA792E04E5E92DDF3E638BCCCFF', null, 'CHEMICAL_WFXW', null, '13510', null, '危险品车在高速公路、快速路以外的道路上超速10%以上不足20%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('D2B29A278660439F99032649D960D325', null, 'CHEMICAL_WFXW', null, '13511', null, '危险品车在高速公路、快速路以外的道路上超速10%以上不足20%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('26CB4DC3AEFC43FE8CB5C54690DE26AC', null, 'CHEMICAL_WFXW', null, '13540', null, '危险品运输超载未达30%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('AF132EC520974F23990811005AF97C91', null, 'CHEMICAL_WFXW', null, '16120', null, '连续驾危险品车超过4小时未停车休息（或停车休息少于20分钟）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('03AE105F37EC4B9A9204841B9B9B4F7D', null, 'CHEMICAL_WFXW', null, '16170', null, '运载危险品不按规定时间、路线或速度行驶');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('62DAFA5CE2FA4CB2860A7E7F1C04510D', null, 'CHEMICAL_WFXW', null, '16180', null, '运载危险品未悬挂标志');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('002CDCB3C73E4C28A362304F30192C49', null, 'CHEMICAL_WFXW', null, '16190', null, '运载危险品未采取安全措施');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('E4B9C0BF7A8F48E09F128A336DAED2F2', null, 'CHEMICAL_WFXW', null, '16310', null, '危险品车在快速路上超速10%以上不足20%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('DF068F23C3E14FF9A7865BB01A17157E', null, 'CHEMICAL_WFXW', null, '16351', null, '危险品车在高速公路、快速路以外的道路超速20%以上不足30%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('36694B9E0043414E895E7DA7E3FA40C5', null, 'CHEMICAL_WFXW', null, '16352', null, '危险品车在高速公路、快速路以外的道路超速30%以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('7EE0FE8DACE84A4FAB210BFFE8ABDD7B', null, 'CHEMICAL_WFXW', null, '16356', null, '危险品车在高速公路、快速路以外的道路超速20%以上不足30%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('27E4B734ED0247FEB92BC7BFADB2FB92', null, 'CHEMICAL_WFXW', null, '16357', null, '危险品车在高速公路、快速路以外的道路超速30%以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('7E74C151B29240A3B29BB6C4743DF1AC', null, 'CHEMICAL_WFXW', null, '16390', null, '危险品运输超载30%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('5BA5DD84F6004017A69BFF6BF561731F', null, 'CHEMICAL_WFXW', null, '17250', null, '危险品车超速50%以下');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('8E4392199EB74EAB892B549A9B849E8C', null, 'CHEMICAL_WFXW', null, '17295', null, '危险品车超速50%以上不足70%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('06CED16636EE43199D117AB0618E3FF4', null, 'CHEMICAL_WFXW', null, '17296', null, '危险品车超速70%以上不足100%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('1CD51D1E883C4F5BBE7E4E35D2D0D0A3', null, 'CHEMICAL_WFXW', null, '17297', null, '危险品车超速100%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('C9ECA9C25BE14A12A12AA636B5C11E37', null, 'CHEMICAL_WFXW', null, '17310', null, '连续驾危险品车超过4小时未停车休息或停车休息少于20分钟');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2550D23A92564B7FBAED7DDF76AD373D', null, 'CHEMICAL_WFXW', null, '46120', null, '危险品车在高速公路超速10%以上不足20%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('C3A52C6DCD604398A9B17D65DE905D98', null, 'CHEMICAL_WFXW', null, '47090', null, '危险品车在高速公路上超速20%以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('3D4E5526940C4580BB6BD5F418F1C835', null, 'CHEMICAL_WFXW', null, '47130', null, '危险品车在高速公路上超速50%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('90224D64C49240C2BD6DA6E4035300D4', null, 'CASE_TYPE', null, '1', null, '交通事故');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('B3C06378215C4D068CFE69FC257B4E38', null, 'CASE_TYPE', null, '2', null, '交通违法');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('A32222E6E6484D858C87AC0E94DB9AE2', null, 'CASE_TYPE', null, '3', null, '法院保全');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('394133C307DA44BA9D0295D2A69E4AD2', null, 'CASE_TYPE', null, '4', null, '其他');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('03B498F3BEFE4F9DBE414CC2F2E77525', null, 'VEHICLE_TYPE', null, '01', null, '大型车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('B6F0F9DAEFDD48CF86B1086ED72A79E8', null, 'VEHICLE_TYPE', null, '02', null, '小型车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('3FF5C304CC0841939F1A6E60BD01BA71', null, 'VEHICLE_TYPE', null, '07A', null, '三轮摩托车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('32596CC8E4A04FA0B318B8580A4DCF60', null, 'VEHICLE_TYPE', null, '07B', null, '二轮摩托车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('653FA5B05A804615AB6C32B5A6E4D448', null, 'VEHICLE_TYPE', null, '15', null, '挂车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('359271C4F46042D2AB7EDA9943133EAF', null, 'VEHICLE_TYPE', null, 'A1', null, '中型车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('3953AAF62AD84F5BA434862E6B0A9CC4', null, 'VEHICLE_TYPE', null, 'A2', null, '非机动车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('22D83A0593674B119D999604A411BDDF', null, 'VEHICLE_TYPE', null, 'A9', null, '其他');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('21F7F155AF754A368ECF69E620C0EDD7', null, 'SGLX', null, '1', 'SIMPLE', '简易');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('DC329895128646588283D52CF13CBCEC', null, 'SGLX', null, '2', 'NORMAL', '一般');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('8B7C36FA6DEA01ADE050100A980380C3', '1', 'ALCOHOL_VOLUME', '1', '20', 'LOW', null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('7', null, 'WHP_CODE_PARAM', '1', '10310, 10980, 12360, 13510, 13511, 13540, 16120, 16170, 16180, 16190, 16310, 16351, 16352, 16356, 16357, 16390, 17250, 17295, 17296, 17297, 17310, 46120, 47090, 47130', null, '危化品车辆监管项违法代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('5', null, 'psa_danger_monitor_info', '1', '04', null, '危化品车辆监管项id');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('39', null, 'psa_drunk_date_param', '1', '2', null, '酒驾碰撞时间范围');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('6', null, 'psa_sg_monitor_info', '1', '05', null, null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('41', null, 'psa_danger_date_param', '1', '1', null, '危化品碰撞时间范围');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('40', null, 'psa_vehicle_date', '1', '1', null, '涉案车辆扣车与违法相差时间');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('31', null, 'psa_danger_code', '1', '46120', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('37', null, 'psa_danger_num3', '1', '3', null, null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('35', null, 'psa_danger_num1', '1', '1', null, null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('61', null, 'psa_drunk_cross_param', '1', '1', null, '酒驾强措跨档可配置参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('62', null, 'psa_drunk_violation_param', '1', '2', null, '酒驾未暂扣吊销驾证可配置参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('65', null, 'psa_wfcl_monitor_info', '1', '03', null, null);

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('66', null, 'psa_wf_month', '1', '1', null, '可配置自然月');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('67', null, 'psa_wf_count', '1', '150', null, '阈值
');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('68', null, 'psa_danger_code', '1', '10980', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('69', null, 'psa_danger_code', '1', '12360', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('70', null, 'psa_danger_code', '1', '13510', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('71', null, 'psa_danger_code', '1', '13511', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('72', null, 'psa_danger_code', '1', '13540', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('73', null, 'psa_danger_code', '1', '16120', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('74', null, 'psa_danger_code', '1', '16170', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('75', null, 'psa_danger_code', '1', '16180', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('76', null, 'psa_danger_code', '1', '16190', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('77', null, 'psa_danger_code', '1', '16310', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('78', null, 'psa_danger_code', '1', '16351', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('79', null, 'psa_danger_code', '1', '16352', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('80', null, 'psa_danger_code', '1', '16356', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('81', null, 'psa_danger_code', '1', '16357', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('82', null, 'psa_danger_code', '1', '16390', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('83', null, 'psa_danger_code', '1', '17250', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('84', null, 'psa_danger_code', '1', '17295', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('85', null, 'psa_danger_code', '1', '17296', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('86', null, 'psa_danger_code', '1', '17297', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('87', null, 'psa_danger_code', '1', '17310', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('88', null, 'psa_danger_code', '1', '47090', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('89', null, 'psa_danger_code', '1', '47130', null, '危险品编码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('CE6BBFFED3FA49588CDCCBBB6B455DE5', null, 'MAX_EXCEL_ROWS', null, '65535', null, '案件列表最大导出excel行数');

prompt Done.




--PSA_WARNING_FIELD
prompt Importing table PSA_WARNING_FIELD...
set feedback off
set define off
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jskcsj', '结束勘察时间', 'Y', 180, '012', '89');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sglx', '事故类型', 'N', 150, null, '90');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cclrsj', '初次录入时间', 'Y', 180, '012', '91');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bar1', '办案人1', 'N', 100, null, '93');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('badw', '办案单位', 'N', 340, null, '94');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wtrq', '委托日期', 'Y', 180, '013', '95');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('tjjjrq', '提交检验日期', 'Y', 180, '014', '96');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jywcrq', '检验完成日期', 'Y', 180, '014', '97');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wtjg', '委托机构', 'N', 150, null, '98');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('xbrq', '宣布日期', 'Y', 180, '015', '99');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sdsj', '送达时间', 'Y', 180, '016', '100');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sdr', '送达人', 'N', 100, null, '101');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sdfs', '送达方式', 'N', 100, null, '102');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('zt', '状态', 'N', 100, null, '103');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sprq', '审批日期', 'Y', 180, '015,018', '104');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('gdrq', '归档日期', 'Y', 180, '017', '105');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jy', '简易', 'Y', 100, '017', '106');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('xm', '姓名', 'N', 100, null, '107');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sfzhm', '身份证号码', 'Y', 150, '019', '108');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sgcs', '事故次数', 'Y', 100, '018', '109');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jar', '接案人', 'Y', 100, '018', '110');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cllxn', '车辆类型', 'N', 150, null, '111');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('syxzn', '使用性质', 'N', 150, null, '112');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jbr', '经办人', 'N', 100, null, '113');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('glbm', '管理部门', 'N', 150, null, '114');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ljr', '立卷人', 'N', 100, null, '115');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sglb', '事故类别，一般或简易', 'N', null, null, '116');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sgfssj', '事故发生时间', 'N', 180, null, '117');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsl', '违法数量', 'Y', 100, '004', '059');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('person_responsible', '当事人', 'N', 100, null, '060');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfxwn', '违法行为', 'N', 150, null, '061');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bldd', '办理地点', 'N', 200, null, '061');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('hphmn', '号牌号码', 'N', 150, null, '062');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('basj', '办案时间', 'N', 180, null, '063');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('qymc', '企业名称', 'N', 150, null, '064');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('gcsj', '过车时间', 'Y', 180, '010', '065');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('lrsj', '录入时间', 'Y', 180, '003', '066');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('hzrq', '还证日期', 'Y', 180, '011', '067');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('clsyxz', '车辆使用性质', 'N', 150, null, '068');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('rcsj', '入场时间', 'Y', 180, '005', '032');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('clzt', '车辆状态', 'Y', 120, '005', '033');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('tcc', '停车场', 'N', 200, null, '034');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bar', '办案人', 'N', 150, null, '035');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sqsj1', '申请时间1', 'Y', 180, '007', '036');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bhsj1', '驳回时间1', 'Y', 180, '007', '037');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sqsj2', '申请时间2', 'Y', 180, '007', '038');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bhsj2', '驳回时间2', 'Y', 180, '007', '039');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sqsj3', '申请时间3', 'Y', 180, '007', '040');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bhsj3', '驳回时间3', 'Y', 180, '007', '041');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('clsj', '处理时间', 'Y', 180, '004', '042');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cljgmc', '处理机关名称', 'Y', 200, '004', '043');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sztcc', '所在停车场', 'Y', 150, '005', '044');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfxwc', '违法行为', 'Y', 150, '003', '028');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsjc', '违法时间', 'Y', 180, '003', '029');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sqsj', '申请时间', 'Y', 180, '007', '030');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ccsj', '出场时间', 'Y', 180, '005', '031');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('hphmv', '号牌号码', 'Y', 100, '004', '129');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('hphmj', '号牌号码', 'Y', 100, '019', '130');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsjv', '违法时间', 'Y', 180, '004', '69');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cfsj', '处罚时间', 'N', 180, null, '70');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('drivernum', '驾驶证号', 'Y', 150, '001', '020');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('driver1', '驾驶员', 'Y', 100, '001', '021');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('carnum', '号牌号码', 'Y', 100, '001', '022');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('policename1', '警员姓名', 'Y', 100, '001', '023');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('policenum', '警号', 'Y', 100, '001', '024');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cjbj', '裁决标记', 'Y', 100, '003', '025');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('exc_time', '测试时间', 'N', 180, null, '000');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('brac', '酒精检测值', 'Y', 150, '001', '008');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('policename', '民警姓名', 'N', 100, null, '004');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('policeid', '民警编号', 'N', 90, null, '005');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('deptname', '部门', 'N', 200, null, '006');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('warningtime', '预警时间', 'N', 180, null, '007');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('driver', '驾驶员', 'N', 100, null, '001');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('person_card', '身份证号', 'N', 120, null, '002');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('car_no', '号牌号码', 'N', 100, null, '003');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('scz1', '实测值(强措)', 'Y', 150, '003', '009');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsj1', '违法时间1', 'Y', 180, '004', '010');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfxw1', '违法行为1', 'Y', 150, '004', '011');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsj2', '违法时间2', 'Y', 180, '004', '012');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfxw2', '违法行为2', 'Y', 150, '004', '013');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('syxz', '使用性质', 'Y', 100, '002', '014');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('scz', '实测值(决定书)', 'Y', 150, '004', '016');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('qzcslx', '强制措施类型', 'Y', 120, '003', '017');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('kqsj', '开启时间', 'Y', 180, '001', '018');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('testdate', '测试时间', 'Y', 180, '001', '019');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('hphm', '号牌号码', 'Y', 100, '003', '027');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jszzt', '驾驶证状态', 'Y', 100, '006', '045');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jszh', '驾驶证号', 'Y', 180, '006', '046');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cls', '车辆数', 'Y', 80, '002', '047');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfs', '违法数', 'Y', 80, '004', '048');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsjr', '违法时间', 'Y', 180, '004', '049');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jtfs', '交通方式', 'Y', 180, '004', '056');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfcs', '违法次数', 'Y', 80, '004', '051');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfjfs', '违法记分数', 'Y', 100, '004', '052');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cllx', '车辆类型', 'Y', 120, '002', '053');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sfzh', '身份证号', 'Y', 180, '006', '054');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jszs', '驾驶证数', 'Y', 100, '006', '055');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfxwv', '违法行为', 'Y', 150, '004', '050');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ryfl', '当事人类型', 'Y', 150, '004', '057');

insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jdsl', '开具处罚决定书数量', 'Y', 100, '004', '058');

--Psa_Collide_Sql
insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('012', 't.SGBH 事故编号, t.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, t.BAR1 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, t.CCYYFL 事故初查原因分类, t.RDYYFL 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数', 'test.ACD_FILE t left join test.frm_code d1 on d1.dmz = t.sglx and d1.xtlb = ''03'' and d1.dmlb = ''0901'' left join test.frm_code d2 on d2.dmz = t.sgccyy and d2.xtlb = ''03'' and d2.dmlb = ''0160'' left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz = t.DCSG and d7.xtlb = ''03'' and d7.dmlb = ''0138''', 't.SGBH=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('008', 't.kssj 开启时间, t.jssj 结束时间, t.mjbh 民警编号, p.policename 民警姓名, d.deptshortname 部门', 'test.video_info t left join police p on p.policeid=t.mjbh left join department d on d.cdepartmentid=p.depid', 't.id=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('005', 't.SNO 案件编号, t.ENTRY_TIME 入场时间, decode(s.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, ip.name 所在停车场, p.name 扣车民警, d.name 所属单位, t.SCENE_TIME 扣车时间, t.ADDRESS 扣车地点, dd.name 案件类别, dw.name 违法行为, dc.name 车辆种类, t.HPHM 车牌号, t.CLPP 车辆品牌, t.COLOR 车辆颜色, fp.name 放车民警, t.PASS_END_TIME 出场时间', 'test.in_vehicle t left join test.in_vehicle_status s on s.vehicle_id=t.id left join test.operator p on p.id=t.POLICE_ID2 left join test.department_vehicle d on d.id=t.dept1_id left join test.in_park ip on ip.id=t.park_id left join test.DIC_DETAIL dd on t.Business=dd.ITEM_CODE and dd.dic_code=''0630'' left join test.DIC_DETAIL dw on t.WFXW=dw.ITEM_CODE and dw.dic_code=''0632'' left join test.DIC_DETAIL dc on t.HPZL=dc.ITEM_CODE and dc.dic_code=''0631'' left join test.operator fp on fp.id=t.police_id', 't.id=? order by s.status desc');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('006', 't.XM 姓名, decode(XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证号码, t.CSRQ 出生日期, t.GJ 国籍, t.DJZSXZQH 登记住所行政区划, t.DJZSXXDZ 登记住所详细地址, t.LXZSXZQH 联系住所行政区划, t.LXZSXXDZ 联系住所详细地址, t.LXZSYZBM 联系住所邮政编码, t.LXDH 联系电话, t.SJHM 手机号码, t.DZYX 电子邮箱, t.ZZZM 暂住证明, t.ZZFZJG 暂住发证机关, t.ZZFZRQ 暂住发证日期, t.SFBD 是否本地, t.DWBH 属地信息, t.SYYXQZ 审验有效期止, decode(RYZT,''0'',''正常'',''1'',''有吸毒记录'') 人员状态, decode(SXBJ,''1'',''是'',''2'',''否'') 实习标记, t.ZJCX 准驾车型, t.YZJCX 原准驾车型, t.QFRQ 下一清分日期, t.SYRQ 下一审验日期, t.CCLZRQ 初次领证日期, t.CCFZJG 初次发证机关, t.JZQX 驾证期限, t.YXQS 有效期始, t.YXQZ 有效期止, t.LJJF 累积记分, t.CFRQ 超分日期, t.XXTZRQ 学习通知日期, t.BZCS 补证次数, d.dmsm1 驾驶证状态, t.JXMC 驾校名称, t.JLY 教练员', 'test.drivinglicense t left join test.frm_code d on d.dmz=t.ZT and d.xtlb=''00'' and d.dmlb=''2005''', 't.dabh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('007', 't.id ID, t.status 状态, t.vehicle_id 车辆编号, t.status_desc 状态描述, t.start_time 开始时间, p.name 流程开始创建用户, t.end_time 结束时间, p2.name 流程结束用户', 'test.in_vehicle_status_his t left join test.operator p on p.id=t.start_user left join test.operator p2 on p2.id=t.end_user', 't.id=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('011', 'DSR 当事人, JSZH 驾驶证号, ZKRQ 作出暂扣的日期, ZKYY 暂扣原因, ZKQX 暂扣期限, KZKSRQ 扣证开始日期, KZJSRQ 扣证结束日期, CLJG 处理机关, ZKJBR 暂扣经办人, HZJG 还证机关, HZRQ 还证日期, HZJBR 还证经办人, decode(HZBJ,''0'',''未还证'',''1'',''已还证'',''2'',''证件已转外地'') 还证标记, ZJLQD 证件领取地, LRSJ 录入时间, WFBH 违法编号, JDSBH 决定书编号', 'test.vio_suspend', 'wfbh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('009', 'WQFFZ 未清分分值, BJRQ 标记日期, JSSJ 结束时间, KSJG 考试机关, DABH 档案编号, QFRQ 清分日期, SFZMHM 身份证明号码, JFND 记分年度, QFFZ 清分分值, QFZL 清分种类, LSH 流水号, JBR 经办人', 'test.drv_pointreset', 'xh=? and qfrq=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('001', ' t.devicetype 型号, t.deviceid 设备编号, t.recordnum 记录号, decode(t.inputtype,''auto'',''自动录入'') 录入方式, t.testmode 测试模式, dp.deptshortname 部门名称, p.policename 警员姓名, d.policenum 警号, t.brac 测试值, t.testdate 测试时间, t.creation_date 上传时间, t.carnum 车牌号, t.drivernum 驾驶证号, t.testname 被测人姓名, t.gps_info_id 经纬度', 'test.alky_info t left join test.alky_device d on d.deviceid=t.deviceid left join police p on p.policeid=d.policenum left join department dp on dp.cdepartmentid=p.depid', 't.id=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('002', 't.YXH 原机动车序号, t.XH 机动车序号, d1.dmsm1  号牌种类, t.CLPP1  中文品牌, t.CLXH 车辆型号, t.CLSBDH 车辆识别代号, t.FDJH  发动机号, d2.dmsm1 车辆类型, d3.dmsm1 车身颜色, d4.dmsm1 使用性质, t.SYR 机动车所有人, d5.dmsm1 机动车状态', 'test.vehicle t left join test.frm_code d1 on d1.dmz=t.hpzl and d1.xtlb=''00'' and d1.dmlb=''1007'' left join test.frm_code d2 on d2.dmz=t.CLLX and d2.xtlb=''00'' and d2.dmlb=''1004'' left join test.frm_code d3 on d3.dmz=t.CSYS and d3.xtlb=''00'' and d3.dmlb=''1008'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.ZT and d5.xtlb=''00'' and d5.dmlb=''1017''', 't.xh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('003', 't.DSR 当事人, t.DH 电话, t.HPHM 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值2, t.BZZ2 标准值2, p.policename 执勤民警, c2.dmsm1 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, p1.policename 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源', 'test.vio_force t left join test.vio_codewfdm c on c.wfxw=t.wfxw1 left join test.vio_codewfdm c1 on c1.wfxw=t.wfxw2 left join police p on p.policeid=t.zqmj left join police p1 on p1.policeid=t.lrr left join test.frm_code c2 on c2.dmz=t.qzcslx and c2.xtlb=''04'' and c2.dmlb=''0011''', 't.xh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('004', 't.HPHM 号牌号码, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, t.GLXZDJ 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, t.ZJMC 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 精度, t.WD 维度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''是'') 是否提供校车服务, t.DZZB 电子坐标, t.SFZDRY 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, d6.dmsm1 号牌种类', 'test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007''', 't.wfbh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('014', 'SGBH 事故编号, RYBH 人员编号, frm_code.dmsm1 检验类型, TJJYRQ 提交检验日期, TJYQJYRQ 提交延期检验日期, TJCXJYRQ 提交重新检验日期, TJCXYQJYRQ 提交重新延期检验日期, JYWCRQ 检验完成日期, CXJYWCRQ 重新检验完成日期, CXJYCQ 重新检验超期, JYCQ 检验超期, BZ 备注, JYW 校验位, YDJYRQ 约定检验日期, YDCXJYRQ 约定重新检验日期, JYCQTS 检验超期天数, JYJDJL 检验鉴定结论, CXJYJDJL 重新检验鉴定结论, CXJYCQTS 重新检验超期天数, JBR 经办人, CXJBR 重新检验经办人', 'test.ACD_TESTTIME t left join test.frm_code d on d.dmz=t.Jylx and d.xtlb=''03'' and d.dmlb=''0026''', 'SGBH=? and RYBH=? and JYLX=? and TJJYRQ=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('010', 'd1.enumname 号牌种类, t.CCARNUMBER 号牌号码, t.CADDRESSCODE 采集地点编号, t.CCOLLECTIONAGENCIES 采集机关编号, d2.enumname 数据来源, d4.enumname 抓拍类型, t.CDEVICECODE 设备编号, t.CLANENUMBER 车道编号, t.CPIC1PATH 图片路径, t.NDERICTRION 方向编号, d3.enumname 车身颜色, d6.enumname 车标, t.CHISCARNUMBER 历史号牌, decode(TARGETTYPE,''01'',''机动车'',''02'',''非机动车'',''03'',''行人'') 目标类型, t.DATAUPLOADTIME 数据上传时间, t.DATASAVETIME 入库时间, d7.enumname 号牌颜色, d8.enumname 车辆类型, t.ORICARNO 一次识别号牌号', 'detect_speed_data t  left join enum_type d1 on d1.enumvalue = t.CLICENSETYPE and d1.enumtypeid=''170'' left join enum_type d2 on d2.enumvalue=t.cdatasource and d2.enumtypeid=''7201'' left join enum_type d3 on d3.enumvalue=t.carcolor and d3.enumtypeid=''745'' left join enum_type d4 on d4.enumvalue=t.CSNAPTYPE and d4.enumtypeid=''148'' left join enum_type d5 on d5.enumvalue=t.NDERICTRION and d5.enumtypeid=''702'' left join enum_type d6 on d6.enumvalue=t.CARBRAND and d6.enumtypeid=''747'' left join enum_type d7 on d7.enumvalue=t.PLATECOLOR and d7.enumtypeid=''156'' left join enum_type d8 on d8.enumvalue=t.VEHICLETYPE and d8.enumtypeid=''833''', 't.nid=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('013', 't.SGBH 事故编号, t.WSBH 文书编号, t.RYBH 人员编号, t.JDDX 鉴定对象, t.WTSX 委托事项, t.WTRQ 委托日期, t.WTJG 委托机构, t.YDJYRQ 约定检验日期, t.JTYQ 具体要求, t.SJCL 送检材料, t.BAR1 办案人1, t.BAR2 办案人2, t.JBR 经办人, t.CQ 超期, t.CXJYJD 重新检验鉴定, decode(YDYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 约定延期, decode(WTYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 委托延期, t.TQSPRQ 提请审批日期, t.SPRQ 审批日期, t.SPR 审批人, decode(t.WSZT,''正式'',''未正式'') 文书状态, t.JYW 校验位', 'test.ACD_CONSIGNTEST t', 't.SGBH=? and t.wsbh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('015', 'SGBH 事故编号, WSBH 文书编号, JBSS 基本事实, DSFQK 当事方情况, RDNR 认定内容, BARYJ 办案人意见, ZJYJ 专家意见, CBR1 承办人1, CBR2 承办人2, XBRQ 宣布日期, TQSPRQ 提请审批日期, SPRQ 审批日期, SPR 审批人, JBR 经办人, decode(wszt,''1'',''正式'',''未正式'') 文书状态, JYW 校验位', 'test.ACD_DUTY', 'SGBH=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('016', ' SGBH 事故编号, WSBH 文书编号, SDSJ 送达时间, RYBH 人员编号, WSLB 文书类别, SDWSBH 送达文书编号, SDR 送达人, SSDR 受送达人, SDDD 送达地点, SDFS 送达方式, DSR 代收人, DSYY 代收原因, SSDRGX 与受送达人关系, JZR 见证人, decode(ZT,''1'',''送达'',''2'',''拒收'') 状态, JSYY 拒收原因, BZ 备注', 'test.ACD_DELIVER', 'SGBH=? and wsbh=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('017', 'SGBH 事故编号, DABH 档案编号, GLBM 管理部门, decode(JY,''1'',''是'',''否'') 简易, QZH 全宗号, MLH 目录号, AJH 案卷号, GDH 归档号, AJMC 案卷题名, BGQX 保管期限, JBR 经办人, GDRQ 归档日期, QKSM 情况说明, CFWZ 存放位置, LJR 立卷人, BZ 备注', 'test.ACD_GFILE', 'SGBH=? and JY=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('018', 't.SGBH 事故编号, t.XQ 星期, t.SGFSSJ 事故发生时间, t.XZQH 行政区划, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.SSRS 受伤人数, t.ZJCCSS 直接财产损失, t.LWSGLX 路外事故类型, t.RDYYFL 事故认定原因分类, d3.dmsm1 事故认定原因, d5.dmsm1 天气, d6.dmsm1 现场, decode(t.SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, t.CLJSG 车辆间事故, t.DCSG 单车事故, decode(t.PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, t.TJR1 调解人1, t.CCLRSJ 初次录入时间, spr 审批日, t.SCSJD 上传时间段, t.SSZD 所属中队, t.DAH 档案号, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.TJSGBH 统计事故编号, t.glbm 管理部门, t.DZZB 电子坐标, t.BADW 办案单位, t.WSBH 文书编号, t.SGSS 事故事实, t.ZRTJJG 责任调解结果, t.JAR1 接案人1, t.JAR2 接案人2, t.JBR 经办人, t.GXSJ 更新时间, t.JYW 校验位, decode(t.jafs,''1'',''调解结案'',''2'',''不同意结案'',''3'',''对认定有异议'',''4'',''拒绝签字'') 简易结案方式, t.DLLX 道路类型, t.GLXZDJ 公路行政等级, decode(t.TJFS,''1'',''自行协商'',''2'',''人民调解'',''3'',''行政调解'',''4'',''司法调解'') 调解方式', 'test.ACD_DUTYSIMPLE t left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113''', 't.SGBH=?');

insert into Psa_Collide_Sql (ID, FIELDS, TABLENAME, CONDITION)
values ('019', 't.SGBH 事故编号, t.RYBH 人员编号, t.XM 姓名, decode（t.XB,''1'',''男'',''女'') 性别, t.SFZMHM 身份证明号码, t.NL 年龄, t.ZZ 住址, t.DH 电话, d1.dmsm1 人员类型, t.SHCD 伤害程度, t.WFXW1 主要违法行为, t.WFXW2 其他违法行为一, t.WFXW3 其他违法行为二, t.TK1 条款内容1, t.TK2 条款内容2, t.TK3 条款内容3, t.ZYYSDW 专业运输单位, d2.dmsm1 交通方式, t.GLXZQH 管理行政区划, t.DABH 驾证档案编号, t.JL 驾龄, t.JSZZL 驾驶证种类, t.ZJCX 准驾车型, t.CCLZRQ 初次领证日期, t.JSRGXD 驾驶人管辖地, t.FZJG 发证机关, d4.dmsm1 事故责任, t.HPHM 号牌号码, d3.dmsm1 号牌种类, t.CLFZJG 车辆发证机关, t.CLPP 车辆品牌, t.CLXH 车辆型号, t.CSYS 车身颜色, d5.dmsm1 车辆类型, t.JDCZT 机动车状态, t.SYQ 所有权, t.JDCSYR 机动车所有人, t.CLSYXZ 车辆使用性质, decode(BX,''1'',''是'',''2'',''否'') 保险, t.BXGS 保险公司, t.BXPZH 保险凭证号, t.CLGXD 车辆管辖地, t.CJCXBJ 车驾查询标记, t.JYW 校验位', 'test.ACD_DUTYSIMPLEHUMAN t left join test.frm_code d1 on d1.dmz=t.RYLX and d1.xtlb=''04'' and d1.dmlb=''0080'' left join test.frm_code d2 on d2.dmz=t.JTFS and d2.xtlb=''04'' and d2.dmlb=''0001'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.SGZR and d4.xtlb=''00'' and d4.dmlb=''3138'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004''', 't.SGBH=? and t.rybh=?');

prompt Done.

--psa_monitor_config
prompt Importing table psa_monitor_config...
set feedback off
set define off
insert into psa_monitor_config (ID, UPDATED_BY, STATUS, START_TIME, CEASE_TIME)
values ('0fb478a3a7a5426a9d505a3ef0a39f99', 'admin2', '0', to_date('13-08-2019 17:39:30', 'dd-mm-yyyy hh24:mi:ss'), null);

prompt Done.

--psa_monitor_config_detail
prompt Importing table psa_monitor_config_detail...
set feedback off
set define off
insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('18370a7009894fc78ea092158a86c59f', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '01', '1');

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('b410430b53aa47e0af02f3caeee4ce9c', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '0101', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('3732e8e95a4740a98f2f1bf6a8c1091a', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.40', '0102', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('aa63f0b078004a939c555063adce2d33', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0103', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('0ab7cabf5f58413ea336a203daf6189d', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0104', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('eecb3652bd4c4097adf65e24180731a4', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0105', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('0494e6d3a7044dfa90ddbd7d1997e4f7', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0106', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('d04f8221da784a77afbe03eb5eb1e61c', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0107', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('0e4088bdf14f46d79d634fb883359d0a', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0108', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('fc71ce718a0f4737ad814ae133801cf5', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '02', '2');

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('c71ec12238a749a480ac66e645c3be08', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.40', '0201', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('57731f09dbe7453c8621c09b4e800a18', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.50', '0202', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('0910528a25c646ee88c8c162dce2523d', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0203', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('6fdb52fe87ad44df81076ee6007b3276', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.30', '03', '3');

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('3f3fbfe07adb45bdba093a6a18c51fac', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0301', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('8e8d03cfb2804101a1e8e122f98ca9da', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '0302', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('ebd5c85363dd4591a5ce0c52deea598b', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0303', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('5c34f59c74e54fef9a1e56fe5ec0c4ae', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.30', '0304', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('7983aa7e02ae4105af197670b84025a3', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0305', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('fffccf4d163c49a7b40503117aba63f3', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0306', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('a4b91c0d0aa14aeead0dc5d13540d15d', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0307', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('293861f6c4394c278784b6728293b46f', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '04', '4');

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('d59099db88d94d0d84c9efd42e1c1841', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0401', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('afa10affebe745efa29cebe03da2d908', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0402', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('cfd8746bfbe041d1bdb91a68e0476a23', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0403', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('c5c269c92699407897085e94e989660e', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0404', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('d4f27d17d7034147a78b7ae9df7a4929', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '0405', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('152b67650f5343778a28883c4fea5951', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.30', '0406', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('bd58ff3b640042348a978b535dd4471f', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.40', '0407', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('6733f9b72ae648af9fe9d7bfd9cb64f2', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.00', '0408', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('6a46a7844e6b4d6da2e72ae406c9607a', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0409', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('156508a541244a37900039fa300a5e5a', '0fb478a3a7a5426a9d505a3ef0a39f99', '0', '0410', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('c0ed82751bb8477bb964337eb3920042', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '05', '5');

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('3d060c4ab1cf4251b7d5e857c3e8c26c', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0501', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('a1a4045f05e14c61a8cef2d7841ebc57', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.20', '0502', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('cac338f802f04ec29034e0e51e87816b', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.30', '0503', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('81ae6c5ba0ec4411a0071be18c41a4db', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0504', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('49885c7c8cdf4c979ac4e9f882e6eaf1', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0505', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('a2efcdce91464a1299556d41736cbedc', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0506', null);

insert into psa_monitor_config_detail (ID, MONITOR_CONFIG_ID, WEIGHT, MONITOR_ID, ORDERID)
values ('d92afe278879444aa0e2cf26e8b82833', '0fb478a3a7a5426a9d505a3ef0a39f99', '0.10', '0507', null);

prompt Done.

prompt Importing table ENUM_TYPE...
set feedback off
set define off
insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800023, '100', 4, 0, '高危', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800023, '20', 2, 0, '一般', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800023, '40', 3, 0, '较高', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800023, '6', 1, 0, '低', 0);


insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800004, '0', 1, 0, '正常', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800004, '1', 2, 0, '开发中', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800004, '2', 3, 0, '测试中', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800004, '3', 4, 0, '数据未接入', 0);

prompt Done.


--PSA_EXC_VALUE_RELATION
prompt Importing table PSA_EXC_VALUE_RELATION...
set feedback off
set define off
insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('037', '0501', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"事故类型","key":"sglx","value":"value2"},{"desc":"结束勘察时间","key":"jskcsj","value":"value3"},{"desc":"初次录入时间","key":"cclrsj","value":"value4"},{"desc":"办案人1","key":"bar1","value":"value5"},{"desc":"办案单位","key":"badw","value":"value6"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('038', '0502', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"事故类型","key":"sglx","value":"value2"},{"desc":"结束勘察时间","key":"jskcsj","value":"value3"},{"desc":"委托日期","key":"wtrq","value":"value4"},{"desc":"办案人1","key":"bar1","value":"value5"},{"desc":"办案单位","key":"badw","value":"value6"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('039', '0503', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"事故类型","key":"sglx","value":"value2"},{"desc":"提交检验日期","key":"tjjyrq","value":"value3"},{"desc":"检验完成日期","key":"jywcrq","value":"value4"},{"desc":"委托机构","key":"wtjg","value":"value5"},{"desc":"办案人1","key":"bar1","value":"value6"},{"desc":"办案单位","key":"badw","value":"value7"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('040', '0504', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"事故类型","key":"sglx","value":"value2"},{"desc":"宣布日期","key":"xbrq","value":"value3"},{"desc":"送达时间","key":"sdsj","value":"value4"},{"desc":"送达人","key":"sdr","value":"value5"},{"desc":"送达方式","key":"sdfs","value":"value6"},{"desc":"状态","key":"zt","value":"value7"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('041', '0505', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"事故类型","key":"sglx","value":"value2"},{"desc":"审批日期","key":"sprq","value":"value3"},{"desc":"归档日期","key":"gdrq","value":"value4"},{"desc":"简易","key":"jy","value":"value5"},{"desc":"经办人","key":"jbr","value":"value6"},{"desc":"管理部门","key":"glbm","value":"value7"},{"desc":"立卷人","key":"ljr","value":"value8"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('042', '0506', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"姓名","key":"xm","value":"value2"},{"desc":"身份证号码","key":"sfzhm","value":"value3"},{"desc":"事故次数","key":"sgcs","value":"value4"},{"desc":"接案人","key":"jar","value":"value5"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('043', '0507', '[{"desc":"事故类别","key":"sglb","value":"value1"},{"desc":"车辆类型","key":"cllxn","value":"value2"},{"desc":"使用性质","key":"syxzn","value":"value3"},{"desc":"号牌号码","key":"hphm","value":"value4"},{"desc":"事故次数","key":"sgcs","value":"value5"},{"desc":"接案人","key":"jar","value":"value6"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('011', '0201', '[{"desc":"强制措施类型","key":"qzcslx","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('012', '0202', '[{"desc":"违法行为（强措）","key":"wfxwc","value":"value1"},{"desc":"违法时间（强措）","key":"wfsjc","value":"value2"},{"desc":"申请时间","key":"sqsj","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('013', '0203', '[{"desc":"出场时间","key":"ccsj","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('014', '0205', '[{"desc":"入场时间","key":"rcsj","value":"value1"},{"desc":"车辆状态","key":"clzt","value":"value2"},{"desc":"停车场","key":"tcc","value":"value3"},{"desc":"办案人","key":"bar","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('015', '0206', '[{"desc":"申请时间1","key":"sqsj1","value":"value1"},{"desc":"驳回时间1","key":"bhsj1","value":"value2"},{"desc":"申请时间2","key":"sqsj2","value":"value3"},{"desc":"驳回时间2","key":"bhsj2","value":"value4"},{"desc":"申请时间3","key":"sqsj3","value":"value5"},{"desc":"驳回时间3","key":"bhsj3","value":"value6"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('016', '0207', '[{"desc":"车辆状态","key":"clzt","value":"value1"},{"desc":"处理时间","key":"clsj","value":"value2"},{"desc":"处理机关名称","key":"cljgmc","value":"value3"},{"desc":"所在停车场","key":"sztcc","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('018', '0302', '[{"desc":"违法行为","key":"wfxwv","value":"value1"},{"desc":"驾驶证状态","key":"jszzt","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('019', '0303', '[{"desc":"驾驶证号","key":"jszh","value":"value1"},{"desc":"车辆数","key":"cls","value":"value2"},{"desc":"违法数","key":"wfs","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('020', '0304', '[{"desc":"违法时间","key":"wfsjr","value":"value1"},{"desc":"号牌号码","key":"hphm","value":"value2"},{"desc":"违法次数","key":"wfcs","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('021', '0305', '[{"desc":"违法行为","key":"wfxwv","value":"value1"},{"desc":"违法记分数","key":"wfjfs","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('022', '0306', '[{"desc":"车辆类型","key":"cllx","value":"value1"},{"desc":"驾驶证号","key":"jszh","value":"value2"},{"desc":"身份证号","key":"sfzh","value":"value3"},{"desc":"违法记分数","key":"wfjfs","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('023', '0307', '[{"desc":"驾驶证数","key":"jszs","value":"value1"},{"desc":"违法数","key":"wfs","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('024', '0308', '[{"desc":"交通方式","key":"jtfs","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('025', '0309', '[{"desc":"开具处罚决定书数量","key":"jdsl","value":"value1"},{"desc":"违法数量","key":"wfsl","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('026', '0310', '[{"desc":"当事人类型","key":"ryfl","value":"value1"},{"desc":"办案时间","key":"basj","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('027', '0404', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"过车时间","key":"gcsj","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('017', '0301', '[{"desc":"违法行为","key":"wfxwn","value":"value1"},{"desc":"处理时间","key":"clsj","value":"value2"},{"desc":"办理地点","key":"bldd","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('028', '0405', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"录入时间","key":"lrsj","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('029', '0406', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"违法行为","key":"wfxwc","value":"value2"},{"desc":"强措类型","key":"qzcslx","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('030', '0407', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"clsyxz","value":"value2"},{"desc":"强措类型","key":"qzcslx","value":"value3"},{"desc":"处罚时间","key":"cfsj","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('031', '0408', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"clsyxz","value":"value2"},{"desc":"处理时间","key":"clsj","value":"value3"},{"desc":"出场时间","key":"ccsj","value":"value4"},{"desc":"停车场","key":"tcc","value":"value5"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('032', '0409', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"clsyxz","value":"value2"},{"desc":"还证日期","key":"hzrq","value":"value3"},{"desc":"处理时间","key":"clsj","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('033', '0410', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"强措类型","key":"qzcslx","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('034', '0411', '[{"desc":"开启时间(执法记录仪)","key":"kqsj","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('036', '0413', '[{"desc":"强制措施类型","key":"qzcslx","value":"value1"},{"desc":"违法时间","key":"wfsjc","value":"value2"},{"desc":"裁决标记","key":"cjbj","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('035', '0412', '[{"desc":"违法时间（强措）","key":"wfsjc","value":"value1"},{"desc":"违法时间（决定书）","key":"wfsjv","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('008', '0110', '[{"desc":"驾驶员","key":"driver1","value":"value1"},{"desc":"驾驶证号","key":"drivernum","value":"value2"},{"desc":"车牌号","key":"carnum","value":"value3"},{"desc":"警员姓名","key":"policename","value":"value4"},{"desc":"警号","key":"policenum","value":"value5"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('009', '0111', '[{"desc":"酒精检测值","key":"brac","value":"value1"},{"desc":"强措实测值","key":"scz1","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('010', '0112', '[{"desc":"强制措施类型","key":"qzcslx","value":"value1"},{"desc":"违法时间","key":"wfsj","value":"value2"},{"desc":"裁决标记","key":"cjbj","value":"value3"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('001', '0101', '[{"desc":"酒精检测值","key":"brac","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('002', '0102', '[{"desc":"酒精检测值","key":"brac","value":"value1"},{"desc":"强措实测值","key":"scz1","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('003', '0104', '[{"desc":"违法时间1（上次）","key":"wfsj1","value":"value1"},{"desc":"违法行为1","key":"wfxw1","value":"value2"},{"desc":"违法时间2（本次）","key":"wfsj2","value":"value3"},{"desc":"违法行为2","key":"wfxw2","value":"value4"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('004', '0105', '[{"desc":"使用性质","key":"syxz","value":"value1"},{"desc":"违法行为","key":"wfxwv","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('005', '0106', '[{"desc":"实测值(强措)","key":"scz1","value":"value1"},{"desc":"实测值(决定书)","key":"scz","value":"value2"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('006', '0107', '[{"desc":"强制措施类型","key":"qzcslx","value":"value1"}]');

insert into PSA_EXC_VALUE_RELATION (ID, MONITOR_ID, REMARK)
values ('007', '0109', '[{"desc":"开启时间(执法记录仪)","key":"kqsj","value":"value1"}]');

prompt Done.


--PSA_MONITOR_EXE_PLAN_CONFIG
prompt Importing table PSA_MONITOR_EXE_PLAN_CONFIG...
set feedback off
set define off
insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('33', '0504', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('35', '0506', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('31', '0502', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('32', '0503', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('37', '0508', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('30', '0501', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('38', '0509', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('36', '0507', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('34', '0505', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('39', '0701', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('28', '0409', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('27', '0408', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('17', '0252', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('18', '0253', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('6', '0203', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('12', '0219', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('10', '0213', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('7', '0205', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('11', '0217', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('1', '01', '0 0 1 * * ?', '0', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('4', '02', '0 0 2 * * ?', '0', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('19', '03', '0 0 3 * * ?', '0', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('20', '04', '0 0 4 * * ?', '0', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('29', '05', '0 0 5 * * ?', '0', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('21', '0401', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('25', '0406', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('24', '0405', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('26', '0407', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('22', '0402', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('23', '0403', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('8', '0206', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('9', '0213', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('13', '0221', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('14', '0222', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('15', '0223', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('5', '0201', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('2', '0101', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('3', '0102', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('16', '0225', '0 0 0 * * ?', '1', '1');

insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('40', '0701', '0 0 0 * * ?', '1', '1');
prompt Done.

--Psa_System_Config
prompt Importing table Psa_System_Config...
set feedback off
set define off
insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('01', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '酒精检测仪系统');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0101', 'alky_info', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '01', '1', '酒精检测仪表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0102', 'alky_device', '0', to_date('21-06-2019 16:44:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-06-2019 16:44:26', 'dd-mm-yyyy hh24:mi:ss'), '01', '1', '监管点预警字段关联表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('02', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '六合一系统');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0201', 'VIO_AGR_SUSPEND', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '暂扣记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0202', 'VIO_CHANGE_DRIVER_LOG', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '驾驶人记分状态日志表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0203', 'VEHICLE', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '机动车基本信息');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0204', 'drivinglicense', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '驾驶证表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0205', 'VIO_SUSPEND', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '暂扣记录表2');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0206', 'VIO_VIOLATION', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '违法处罚决定是记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0207', 'VIO_SURVEIL', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '非现场文本记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0208', 'VIO_PZGL', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '文书管理表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0209', 'VIO_PUBLICITY_DETAIL', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '处罚公示表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0210', 'VIO_OPERATE_CHECK', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '更正记录审核表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0211', 'VIO_LOG', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '违法业务日志表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0212', 'VIO_LAWSUIT', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '行政复议诉讼表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0213', 'VIO_KLWP', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '扣留物品表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0214', 'VIO_KHY_PUNISH', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '客货运企业加处表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0215', 'VIO_JKFW_LOG', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '接口访问日志');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0216', 'VIO_FXCJG_MAIN', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', null);

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0217', 'vio_force', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '强制措施表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0218', 'VIO_FINE', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '银行对账记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0219', 'VIO_DXJL', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '吊销记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0220', 'VIO_DK_ROADITEM_CODE', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '违法道路代码对应表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0221', 'VIO_CODEWFDM', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '违法行为代码表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0222', 'VIO_CHANGE_VEHICLE_LOG', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '写入机动车状态日志表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0223', 'VIO_CHANGE_DRIVER_QUEUE', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '写入驾驶人记分状态队列表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0250', 'vio_force_del', '0', to_date('03-08-2019 15:38:12', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 15:38:20', 'dd-mm-yyyy hh24:mi:ss'), '02', '1', null);

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0252', 'driver_licence', '0', to_date('03-08-2019 16:10:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:11:03', 'dd-mm-yyyy hh24:mi:ss'), '02', '1', null);

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0253', 'drv_pointreset', '0', to_date('03-08-2019 16:11:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:11:45', 'dd-mm-yyyy hh24:mi:ss'), '02', '1', '驾驶人清分历史记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0260', 'FRM_CODE', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '02', '1', '六合一代码表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('03', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '血检系统');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('04', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '涉案车辆');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0401', 'in_vehicle', '0', to_date('22-06-2019 13:19:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:20:02', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆记录表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0402', 'in_vehicle_status', '0', to_date('22-06-2019 13:20:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:21:00', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆状态表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0403', 'in_vehicle_status_his', '0', to_date('22-06-2019 13:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:21:04', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '历史状态表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0404', 'detect_speed_data', '0', to_date('22-06-2019 13:23:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:23:51', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '过车数据表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0405', 'in_vehicle_case', '0', to_date('24-06-2019 13:55:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 13:55:28', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆案件表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0406', 'in_vehicle_image', '0', to_date('24-06-2019 13:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 13:56:11', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆图片表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0407', 'in_park', '0', to_date('24-06-2019 20:41:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 20:41:23', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '停车场表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0408', 'operator', '0', to_date('24-07-2019 15:56:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 15:56:48', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆用户表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0409', 'department_vehicle', '0', to_date('24-07-2019 15:56:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 15:56:54', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆部门表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0410', 'DIC_DETAIL', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '04', '1', '涉案车辆代码表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('05', null, '0', to_date('08-07-2019 04:28:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-07-2019 04:28:19', 'dd-mm-yyyy hh24:mi:ss'), '05', '0', '事故处理系统');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0501', 'acd_file', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-07-2019 04:27:40', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '事故信息主表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0502', 'acd_duty', '0', to_date('10-07-2019 09:33:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-07-2019 09:33:52', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '交通事故认定书');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0503', 'acd_dutysimple', '0', to_date('10-07-2019 09:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-07-2019 09:35:12', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '简易程序事故认定书');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0504', 'ACD_CONSIGNTEST', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '技术鉴定委托书表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0505', 'ACD_TESTTIME', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '当事人检验鉴定时间表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0506', 'ACD_DELIVER', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '送达回执表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0507', 'ACD_GFILE', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '案卷归档表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0508', 'ACD_DUTYSIMPLEHUMAN', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '简易人员表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0509', 'acd_filehuman', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '事故信息人员表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('06', null, '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '00', '0', '危化品');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0601', 'wxp_trans_passport', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '06', '1', '危化品车辆申请表');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('07', null, '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '00', '0', '122接警系统');

insert into Psa_System_Config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0701', 'jjdb_sj', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '07', '0', '接警表');

prompt Done.

--PSA_MONITOR_EXECUTE_CONFIG
prompt Importing table psa_monitor_execute_config...
set feedback off
set define off
insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('32', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.Driver60AgeIllegalHandler', '0306', '0', to_date('16-07-2019 20:44:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 20:44:10', 'dd-mm-yyyy hh24:mi:ss'), '满60周岁驾驶员涉嫌违规处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('33', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.ManyPersonForOneCarHandler', '0307', '0', to_date('17-07-2019 14:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 14:23:28', 'dd-mm-yyyy hh24:mi:ss'), '多人为一车处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('34', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.PoorIllegalMessageHandler', '0308', '0', to_date('17-07-2019 15:55:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 15:55:44', 'dd-mm-yyyy hh24:mi:ss'), '违法信息采集质量较差', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('35', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.ALotOfLssueTicketHandler', '0309', '0', to_date('17-07-2019 17:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 17:05:08', 'dd-mm-yyyy hh24:mi:ss'), '大量开具处罚决定书', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('39', 'com.hisense.hiatmp.psa.adapter.accident.handlers.DeliveryOvertimeHandler', '0504', '0', to_date('19-07-2019 09:44:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-07-2019 09:44:51', 'dd-mm-yyyy hh24:mi:ss'), '文书送达超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('54', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.SuspendWithoutCarExecuteHandler', '0201', '0', to_date('24-07-2019 14:56:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 14:56:37', 'dd-mm-yyyy hh24:mi:ss'), '扣车未入停车场', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('55', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.IncompleteProceduresExecuteHandler', '0205', '0', to_date('25-07-2019 14:19:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 14:19:59', 'dd-mm-yyyy hh24:mi:ss'), '扣车手续不全', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('56', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.ReleaseIllegalExecuteHandler', '0202', '0', to_date('25-07-2019 14:49:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 14:49:27', 'dd-mm-yyyy hh24:mi:ss'), '违规申请放行', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('57', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.TravelApplyRejectedManyExecuteHandler', '0206', '0', to_date('25-07-2019 16:42:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 16:42:26', 'dd-mm-yyyy hh24:mi:ss'), '旅行申请被频繁驳回', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('58', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.UnuploadImageExecuteHandler', '0204', '0', to_date('25-07-2019 17:03:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 17:03:07', 'dd-mm-yyyy hh24:mi:ss'), '未上传现场照片', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('59', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.WfjlWithoutCarExecuteHandler', '0209', '0', to_date('25-07-2019 17:12:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 17:12:24', 'dd-mm-yyyy hh24:mi:ss'), '违法记录消除未放车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('76', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.TamperingTypeHandler', '0310', '0', to_date('29-07-2019 19:01:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-07-2019 19:01:57', 'dd-mm-yyyy hh24:mi:ss'), '篡改当事人类型', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('69', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.JJDBSJCollectExecutor', '0600', '0', to_date('03-08-2019 09:17:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 09:17:12', 'dd-mm-yyyy hh24:mi:ss'), '接警单抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('45', 'com.hisense.hiatmp.psa.adapter.danger.handlers.LongDisposalTimeHandler', '0401', '0', to_date('23-07-2019 13:58:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 13:58:22', 'dd-mm-yyyy hh24:mi:ss'), '处置滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('41', 'com.hisense.hiatmp.psa.adapter.accident.handlers.PersonWithPoliceHandler', '0506', '0', to_date('22-07-2019 14:01:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 14:01:44', 'dd-mm-yyyy hh24:mi:ss'), '同一人同一民警多起事故', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('42', 'com.hisense.hiatmp.psa.adapter.accident.handlers.CarWithPoliceHandler', '0507', '0', to_date('22-07-2019 14:03:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 14:03:06', 'dd-mm-yyyy hh24:mi:ss'), '同一车同一民警多起事故', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('43', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryRateBySGHandler', '0508', '0', to_date('22-07-2019 15:50:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 15:50:05', 'dd-mm-yyyy hh24:mi:ss'), '事故率分析', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('44', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryRateByCFHandler', '0509', '0', to_date('22-07-2019 15:50:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 15:50:50', 'dd-mm-yyyy hh24:mi:ss'), '处罚率分析', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('18', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleCollectExecutor', '0401', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('19', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleCaseCollectExecutor', '0405', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '案件抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('20', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleImageCollectExecutor', '0406', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆图片抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('21', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InParkCollectExecutor', '0407', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '停车场数据抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('22', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleStatusCollectExecutor', '0402', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆状态抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('23', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleStatusHisCollectExecutor', '0403', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆状态历史抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('1', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ForceHandler', '0101', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未开强错', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('2', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ForceCrossHandler', '0102', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '强制措施违规跨档', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('3', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.SecondDrunkHandler', '0103', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '再次酒驾违规处罚', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('4', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.OperationDrunkHandler', '0104', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '营运酒驾违规处罚', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('5', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ViolationHandler', '0105', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '处罚决定书跨档', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('6', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.VioSuspendHandler', '0106', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未吊销/暂扣驾驶证', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('7', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.EnforceInstrumentHandler', '0107', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未开启执法记录仪', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('8', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.AlcometerInfoUnValidHandler', '0108', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '酒精检测仪信息记录不规范', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('9', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.AlcometerUnconsistentWithforceHandler', '0109', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '强制措施值与酒精检测值不一致', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('10', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.CaseHandleTimeUnvalidHandler', '0110', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '超期未处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('11', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.ForceCollectExecutor', '0217', '0', to_date('14-06-2019', 'dd-mm-yyyy'), to_date('14-06-2019', 'dd-mm-yyyy'), '强措数据抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('13', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.ViolationCollectExecutor', '0206', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '违法记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('14', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioKlwpCollectExecutor', '0213', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '扣留物品数据抽取类`', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('15', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioCodeWfdmCollectExecutor', '0221', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '违法行为代码抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('16', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioChangeVehicleLogCollectExecutor', '0222', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '机动车状态日志抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('17', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioChangeDriverQueueCollectExecutor', '0223', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '写入驾驶人计分状态队列表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('12', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioSuspendCollectExecutor', '0201', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '暂扣记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('24', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.AlcometerCollectExecutor', '0101', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '酒精检测仪表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('25', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.AlkyDeviceCollectExecutor', '0102', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '酒精检测仪设备表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('27', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.NonWorkingTimeHandler', '0301', '0', to_date('16-07-2019 09:39:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 09:39:56', 'dd-mm-yyyy hh24:mi:ss'), '非工时间处理交通违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('28', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.HasCardForNonCardHander', '0302', '0', to_date('16-07-2019 15:08:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 15:09:02', 'dd-mm-yyyy hh24:mi:ss'), '对有证人员按无证处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('29', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.OnePersonManyCaseHandler', '0303', '0', to_date('16-07-2019 16:05:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 16:05:52', 'dd-mm-yyyy hh24:mi:ss'), '一人为多车处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('30', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.IllegalSplitHandler', '0304', '0', to_date('16-07-2019 16:33:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 16:33:10', 'dd-mm-yyyy hh24:mi:ss'), '违法拆单', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('31', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.NonOutSiteScoringHandler', '0305', '0', to_date('16-07-2019 17:26:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 17:26:28', 'dd-mm-yyyy hh24:mi:ss'), '非现场违法不计分', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('36', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryTimeoutHandler', '0501', '0', to_date('18-07-2019 13:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 13:41:16', 'dd-mm-yyyy hh24:mi:ss'), '事故录入超时', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('37', 'com.hisense.hiatmp.psa.adapter.accident.handlers.CommissionedOverdueHandler', '0502', '0', to_date('18-07-2019 15:37:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 15:37:41', 'dd-mm-yyyy hh24:mi:ss'), '检验鉴定委托超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('40', 'com.hisense.hiatmp.psa.adapter.accident.handlers.ArchiveOvertimeHandler', '0505', '0', to_date('22-07-2019 09:53:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 09:53:52', 'dd-mm-yyyy hh24:mi:ss'), '档案归档超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('46', 'com.hisense.hiatmp.psa.adapter.danger.handlers.CarNonEnterParkingHandler', '0404', '0', to_date('23-07-2019 19:26:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:26:46', 'dd-mm-yyyy hh24:mi:ss'), '扣车未入停车场', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('47', 'com.hisense.hiatmp.psa.adapter.danger.handlers.DifferentIllegalTimeHandler', '0409', '0', to_date('23-07-2019 19:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:27:56', 'dd-mm-yyyy hh24:mi:ss'), '违法时间录入不一致', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('48', 'com.hisense.hiatmp.psa.adapter.danger.handlers.IllegalReleaseCarHandler', '0405', '0', to_date('23-07-2019 19:28:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:29:00', 'dd-mm-yyyy hh24:mi:ss'), '扣车违规放行', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('49', 'com.hisense.hiatmp.psa.adapter.danger.handlers.IllegalReturnCardHandler', '0406', '0', to_date('23-07-2019 19:29:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:29:49', 'dd-mm-yyyy hh24:mi:ss'), '扣证违规归还', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('50', 'com.hisense.hiatmp.psa.adapter.danger.handlers.LongEntryTimeHandler', '0402', '0', to_date('23-07-2019 19:30:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:30:49', 'dd-mm-yyyy hh24:mi:ss'), '录入滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('51', 'com.hisense.hiatmp.psa.adapter.danger.handlers.NonRevokeDriverCardHandler', '0407', '0', to_date('23-07-2019 19:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:31:40', 'dd-mm-yyyy hh24:mi:ss'), '未暂扣/吊销驾驶证', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('52', 'com.hisense.hiatmp.psa.adapter.danger.handlers.OvertimeUnprocessedHandler', '0410', '0', to_date('23-07-2019 19:32:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:32:56', 'dd-mm-yyyy hh24:mi:ss'), '超期未处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('53', 'com.hisense.hiatmp.psa.adapter.danger.handlers.UnfastenedCarHandler', '0403', '0', to_date('23-07-2019 19:33:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:33:42', 'dd-mm-yyyy hh24:mi:ss'), '未按规定扣车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('62', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDutyCollectExecutor', '0503', '0', to_date('02-08-2019 17:33:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:33:06', 'dd-mm-yyyy hh24:mi:ss'), '一般程序-交通事故认定书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('63', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcddutySimpleCollectExecutor', '0504', '0', to_date('02-08-2019 17:34:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:34:51', 'dd-mm-yyyy hh24:mi:ss'), '简易程序事故认定书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('64', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDutySimpleHumanCollectExecutor', '0505', '0', to_date('02-08-2019 17:38:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:38:26', 'dd-mm-yyyy hh24:mi:ss'), '简易人员表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('60', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdConsigntestCollectExecutor', '0501', '0', to_date('02-08-2019 17:31:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:31:05', 'dd-mm-yyyy hh24:mi:ss'), '技术鉴定委托书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('61', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDeliveryCollectExecutor', '0502', '0', to_date('02-08-2019 17:32:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:32:28', 'dd-mm-yyyy hh24:mi:ss'), '送达回执表执行类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('65', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdFileCollectExecutor', '0506', '0', to_date('02-08-2019 17:40:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:40:22', 'dd-mm-yyyy hh24:mi:ss'), '事故信息主表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('66', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdFileHumanCollectExecutor', '0507', '0', to_date('02-08-2019 17:43:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:43:53', 'dd-mm-yyyy hh24:mi:ss'), '事故人员表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('67', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdgfileCollectExecutor', '0508', '0', to_date('02-08-2019 17:46:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:46:47', 'dd-mm-yyyy hh24:mi:ss'), '档案归档表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('77', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.DicDetailCollectExecutor', '0410', '0', to_date('14-08-2019 16:58:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-08-2019 16:58:15', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('68', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdtesttimeCollectExecutor', '0509', '0', to_date('02-08-2019 17:52:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:52:18', 'dd-mm-yyyy hh24:mi:ss'), '案卷归档表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('70', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioForceDelCollectExecutor', '0250', '0', to_date('03-08-2019 15:39:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 15:39:13', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('71', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioDxjlCollectExecutor', '0251', '0', to_date('03-08-2019 16:09:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:09:14', 'dd-mm-yyyy hh24:mi:ss'), '吊销记录表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('72', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.DriverlicenceCollectExecutor', '0252', '0', to_date('03-08-2019 16:12:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:12:35', 'dd-mm-yyyy hh24:mi:ss'), null, '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('73', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.DrvPointResetCollectExecutor', '0253', '0', to_date('03-08-2019 16:13:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:13:12', 'dd-mm-yyyy hh24:mi:ss'), '驾驶人清分历史记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('76', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.FrmCodeCollectExecutor', '0260', '0', to_date('14-08-2019 16:56:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-08-2019 16:56:44', 'dd-mm-yyyy hh24:mi:ss'), '六合一代码表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('75', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.EnforceInstrumentHandler', '0107', '0', to_date('08-08-2019 20:29:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 20:29:43', 'dd-mm-yyyy hh24:mi:ss'), '未开启执法记录仪', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('38', 'com.hisense.hiatmp.psa.adapter.accident.handlers.InspectionOvertimeHandler', '0503', '0', to_date('18-07-2019 19:29:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 19:29:12', 'dd-mm-yyyy hh24:mi:ss'), '检验委托超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('74', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.StopWithoutAllowExecuteHandler', '0203', '0', to_date('07-08-2019 16:15:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-08-2019 16:15:32', 'dd-mm-yyyy hh24:mi:ss'), '无条件放车', '0');

insert into PSA_MONITOR_EXECUTE_CONFIG (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('78', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.DepartmentCollectExecutor', '0409', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '涉案车辆部门抽取', '1');

insert into PSA_MONITOR_EXECUTE_CONFIG (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('79', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.OperatorCollectExecutor', '0408', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '涉案车辆人员抽取', '1');

insert into PSA_MONITOR_EXECUTE_CONFIG (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('80', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VehicleCollectExecutor', '0203', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '车辆表抽取', '1');


prompt Done.


prompt Importing table Psa_Monitor_Field_Relation...
set feedback off
set define off
insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'person_responsible', 1, '309');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'sgfssj', 2, '310');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'sglx', 3, '311');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'jskcsj', 4, '312');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'cclrsj', 5, '313');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'bar1', 6, '314');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'badw', 7, '315');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0501', 'warningtime', 8, '316');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'person_responsible', 1, '317');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'sgfssj', 2, '318');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'sglx', 3, '319');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'jskcsj', 4, '320');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'wtrq', 5, '321');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'bar1', 6, '322');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'badw', 7, '323');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0502', 'warningtime', 8, '324');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'person_responsible', 1, '325');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'sgfssj', 2, '326');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'sglx', 3, '327');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'tjjjrq', 4, '328');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'jywcrq', 5, '329');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'wtjg', 6, '330');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'bar1', 7, '331');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'badw', 8, '332');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0503', 'warningtime', 9, '333');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'person_responsible', 1, '334');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'sgfssj', 2, '335');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'sglx', 3, '336');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'xbrq', 4, '337');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'sdsj', 5, '338');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'sdr', 6, '339');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'sdfs', 7, '340');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'zt', 8, '341');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0504', 'warningtime', 9, '342');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'person_responsible', 1, '343');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'sgfssj', 2, '344');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'sglx', 3, '345');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'sprq', 4, '346');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'gdrq', 5, '347');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'jy', 6, '348');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'jbr', 7, '349');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'glbm', 8, '350');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'ljr', 9, '351');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0505', 'warningtime', 10, '352');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'xm', 1, '353');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'sfzhm', 2, '354');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'sgcs', 3, '355');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'jar', 4, '356');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'warningtime', 6, '357');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'cllxn', 1, '358');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'syxzn', 2, '359');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'hphmj', 3, '360');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'sgcs', 4, '361');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'jar', 5, '362');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'warningtime', 7, '363');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'qymc', 1, '224');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'car_no', 2, '225');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'wfsjc', 3, '226');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'gcsj', 4, '227');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'policename', 5, '228');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'policeid', 6, '229');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'deptname', 7, '230');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0404', 'warningtime', 8, '231');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'qymc', 1, '232');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'car_no', 2, '233');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'wfsjc', 3, '234');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'lrsj', 4, '235');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'policename', 5, '236');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'policeid', 6, '237');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'deptname', 7, '238');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0405', 'warningtime', 8, '239');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'qymc', 1, '240');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'car_no', 2, '241');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'wfxwc', 3, '242');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'qzcslx', 4, '243');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'policename', 5, '244');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'policeid', 6, '245');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'deptname', 7, '246');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0406', 'warningtime', 8, '247');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'qymc', 1, '248');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'car_no', 2, '249');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'clsyxz', 3, '250');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'qzcslx', 4, '251');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'cfsj', 5, '252');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'deptname', 6, '253');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0407', 'warningtime', 7, '254');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'qymc', 1, '255');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'car_no', 2, '256');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'clsyxz', 3, '257');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'clsj', 4, '258');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'ccsj', 5, '259');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'tcc', 6, '260');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'deptname', 7, '261');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0408', 'warningtime', 8, '262');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'qymc', 1, '263');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'car_no', 2, '264');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'clsyxz', 3, '265');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'hzrq', 4, '266');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'clsj', 5, '267');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'policename', 6, '268');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'policeid', 7, '269');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'deptname', 8, '270');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0409', 'warningtime', 9, '271');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'qymc', 1, '272');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'car_no', 2, '273');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'qzcslx', 3, '274');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'policename', 4, '275');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'policeid', 5, '276');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'deptname', 6, '277');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0410', 'warningtime', 7, '278');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'driver', 1, '279');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'person_card', 2, '280');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'car_no', 3, '281');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'wfsjc', 4, '282');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'kqsj', 5, '283');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'policename', 6, '284');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'policeid', 7, '285');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'deptname', 8, '286');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0411', 'warningtime', 9, '287');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'wfsjc', 1, '288');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'wfsjv', 2, '289');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'policename', 3, '290');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'policeid', 4, '291');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'deptname', 5, '292');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0412', 'warningtime', 6, '293');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'driver', 1, '294');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'person_card', 2, '295');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'car_no', 3, '296');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'qzcslx', 4, '297');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'wfsjc', 5, '298');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'cjbj', 6, '299');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'policename', 7, '300');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'policeid', 8, '301');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'deptname', 9, '302');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0413', 'warningtime', 10, '303');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'driver1', 1, '062');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'drivernum', 2, '063');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'carnum', 3, '064');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'policename', 4, '065');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'policenum', 5, '066');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'deptname', 6, '067');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0110', 'warningtime', 7, '068');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'driver', 1, '069');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'person_card', 2, '070');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'car_no', 3, '071');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'brac', 4, '072');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'scz1', 5, '073');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'policeid', 7, '075');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'deptname', 8, '076');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'warningtime', 9, '077');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0111', 'policename', 6, '074');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'driver', 1, '078');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'person_card', 2, '079');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'car_no', 3, '080');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'qzcslx', 4, '081');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'wfsjc', 5, '082');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'cjbj', 6, '083');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'policename', 7, '084');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'policenum', 8, '085');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'deptname', 9, '086');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0112', 'warningtime', 10, '087');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'exc_time', 1, '001');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'brac', 2, '002');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'policename', 3, '003');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'policeid', 4, '004');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'deptname', 5, '005');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0101', 'warningtime', 6, '006');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'driver', 1, '007');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'person_card', 2, '008');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'car_no', 3, '009');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'brac', 4, '010');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'policename', 6, '012');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'policeid', 7, '013');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'deptname', 8, '014');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'warningtime', 9, '015');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0102', 'scz1', 5, '011');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'driver', 1, '016');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'person_card', 2, '017');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'car_no', 3, '018');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'wfsj1', 4, '019');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'wfxw1', 5, '020');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'wfsj2', 6, '021');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'wfxw2', 7, '022');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'policename', 8, '023');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'policeid', 9, '024');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'deptname', 10, '025');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0104', 'warningtime', 11, '026');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'driver', 1, '027');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'person_card', 2, '028');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'car_no', 3, '029');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'syxz', 4, '030');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'wfxwv', 5, '031');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'policename', 6, '032');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'policeid', 7, '033');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'deptname', 8, '034');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0105', 'warningtime', 9, '035');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'driver', 1, '036');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'person_card', 2, '037');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'car_no', 3, '038');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'scz1', 4, '039');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'scz', 5, '040');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'policename', 6, '041');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'policeid', 7, '042');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'deptname', 8, '043');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0106', 'warningtime', 9, '044');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'driver', 1, '045');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'person_card', 2, '046');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'car_no', 3, '047');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'qzcslx', 4, '048');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'policename', 5, '049');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'policeid', 6, '050');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'deptname', 7, '051');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0107', 'warningtime', 8, '052');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'driver', 1, '053');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'person_card', 2, '054');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'car_no', 3, '055');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'exc_time', 4, '056');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'kqsj', 5, '057');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'policename1', 6, '058');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'policeid', 7, '059');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'deptname', 8, '060');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0109', 'warningtime', 9, '061');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'person_responsible', 1, '154');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'wfxwn', 2, '155');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'clsj', 3, '156');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'bldd', 4, '157');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'policename', 5, '158');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'policeid', 6, '159');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'deptname', 7, '160');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0301', 'warningtime', 8, '161');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'driver', 1, '162');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'wfxwv', 2, '163');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'jszzt', 3, '164');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'policename', 4, '165');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'policeid', 5, '166');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'deptname', 6, '167');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0302', 'warningtime', 7, '168');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'jszh', 1, '169');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'cls', 2, '170');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'wfs', 3, '171');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'policename', 4, '172');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'policeid', 5, '173');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'deptname', 6, '174');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0303', 'warningtime', 7, '175');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'wfsjr', 1, '176');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'hphmv', 2, '177');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'wfcs', 3, '178');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'policename', 4, '179');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'policeid', 5, '180');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'deptname', 6, '181');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0304', 'warningtime', 7, '182');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'person_responsible', 1, '183');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'wfxwv', 2, '184');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'wfjfs', 3, '185');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'policename', 4, '186');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'policeid', 5, '187');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'deptname', 6, '188');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0305', 'warningtime', 7, '189');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'hphmv', 1, '190');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'cllx', 2, '191');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'jszh', 3, '192');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'sfzh', 4, '193');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'wfjfs', 5, '194');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'policename', 6, '195');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'policeid', 7, '196');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'deptname', 8, '197');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0306', 'warningtime', 9, '198');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0307', 'hphmv', 1, '199');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0307', 'jszs', 2, '200');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0307', 'wfs', 3, '201');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0307', 'deptname', 4, '202');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0307', 'warningtime', 5, '203');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'hphmv', 1, '204');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'jtfs', 2, '205');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'policename', 3, '206');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'policeid', 4, '207');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'deptname', 5, '208');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0308', 'warningtime', 6, '209');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'policename', 1, '210');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'policeid', 2, '211');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'jdsl', 3, '212');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'wfsl', 4, '213');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'deptname', 5, '214');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0309', 'warningtime', 6, '215');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'hphmn', 1, '216');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'person_responsible', 2, '217');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'ryfl', 3, '218');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'basj', 4, '219');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'policename', 5, '220');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'policeid', 6, '221');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'deptname', 7, '222');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'warningtime', 8, '223');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'driver', 1, '114');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'person_card', 2, '115');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'car_no', 3, '116');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'policename', 4, '117');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'policeid', 5, '118');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'deptname', 6, '119');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0204', 'warningtime', 7, '120');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'driver', 1, '121');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'person_card', 2, '122');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'car_no', 3, '123');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'rcsj', 4, '124');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'clzt', 5, '125');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'tcc', 6, '126');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'bar', 7, '127');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'deptname', 8, '128');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0205', 'warningtime', 9, '129');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'driver', 1, '130');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'person_card', 2, '131');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'car_no', 3, '132');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'sqsj1', 4, '133');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'bhsj1', 5, '134');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'sqsj2', 6, '135');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'bhsj2', 7, '136');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'deptname', 12, '141');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'warningtime', 13, '142');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'bhsj3', 9, '138');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'sqsj3', 8, '137');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'policeid', 11, '140');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0206', 'policename', 10, '139');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'driver', 1, '143');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'person_card', 2, '144');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'car_no', 3, '145');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'clzt', 4, '146');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'clsj', 5, '147');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'cljgmc', 6, '148');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'sztcc', 7, '149');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'policename', 8, '150');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'policeid', 9, '151');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'deptname', 10, '152');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0207', 'warningtime', 11, '153');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'driver', 1, '088');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'person_card', 2, '089');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'hphm', 3, '090');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'qzcslx', 4, '091');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'policename', 5, '092');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'policeid', 6, '093');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'deptname', 7, '094');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0201', 'warningtime', 8, '095');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'driver', 1, '096');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'person_card', 2, '097');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'car_no', 3, '098');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'wfxwc', 4, '099');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'wfsjc', 5, '100');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'policeid', 8, '103');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'deptname', 9, '104');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'warningtime', 10, '105');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'policename', 7, '102');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0202', 'sqsj', 6, '101');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'driver', 1, '106');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'person_card', 2, '107');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'car_no', 3, '108');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'ccsj', 4, '109');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'policename', 5, '110');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'policeid', 6, '111');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'deptname', 7, '112');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0203', 'warningtime', 8, '113');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0506', 'deptname', 5, '369');

insert into Psa_Monitor_Field_Relation (MONITORID, FIELDID, COLNUM, ID)
values ('0507', 'deptname', 6, '370');

prompt Done.

commit;


----------------A2-------------------

-- menu 表添加on_click
update menu t set t.on_click='openReactPage("psa","psa/CasesList","执法档案","/HiatmpPro/index.html");' where t.id='040402';

update menu t set t.on_click='openReactPage("psa","psa/policesupervise","警务监管大数据","/HiatmpPro/index.html");' where t.id='040401';

commit;

--PSA_MONITOR_PARAM_CONFIG
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('111', null, 'psa_jjdb_date_range', '1', '365', null, '接警单表可配置时间参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('112', null, 'psa_accident_date_range', '1', '180', null, '事故抽取时间范围');
update psa_monitor_param_config set DESCRIPTION = '其他' where id ='394133C307DA44BA9D0295D2A69E4AD2';

update psa_monitor_param_config set monitor_id='04' where id='5';
update psa_monitor_param_config set monitor_id='05' where id='6';
update psa_monitor_param_config set monitor_id='01' where id='2';
update psa_monitor_param_config set monitor_id='02' where id='3';
update psa_monitor_param_config set monitor_id='03' where id='65';

insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('90', null, 'psa_danger_code', '1', '10310', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('91', null, 'psa_danger_code', '1', '12390', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('92', null, 'psa_danger_code', '1', '13390', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('93', null, 'psa_danger_code', '1', '13460', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('94', null, 'psa_danger_code', '1', '16080', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('95', null, 'psa_danger_code', '1', '16090', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('96', null, 'psa_danger_code', '1', '60490', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('97', null, 'psa_danger_code', '1', '70075', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('98', null, 'psa_danger_code', '1', '70085', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('99', null, 'psa_danger_code', '1', '70240', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('100', null, 'psa_danger_code', '1', '70590', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('101', null, 'psa_danger_code', '1', '80400', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('102', null, 'psa_danger_code', '1', '80410', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('103', null, 'psa_danger_code', '1', '10310', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('104', null, 'psa_danger_code', '1', '12390', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('105', null, 'psa_danger_code', '1', '13390', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('106', null, 'psa_danger_code', '1', '13460', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('107', null, 'psa_danger_code', '1', '16080', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('108', null, 'psa_danger_code', '1', '16090', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('109', null, 'psa_danger_code', '1', '60490', null, '危险品编码');
insert into PSA_MONITOR_PARAM_CONFIG(id, monitor_id, param_code, param_type, param_value, param_sub_code, description) values ('110', null, 'psa_danger_code', '1', '70075', null, '危险品编码');

commit;
--psa_collide_sql
	--vio_force
update psa_collide_sql  t set FIELDS='t.DSR 当事人, t.DH 电话, t.HPHM 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值, t.BZZ2 标准值, c1.wfms 违法行为3, t.SCZ3 实测值, t.BZZ3 标准值, c1.wfms 违法行为4, t.SCZ4 实测值, t.BZZ4 标准值, c1.wfms 违法行为5, t.SCZ5 实测值, t.BZZ2 标准值, c3.dmsm1 人员分类, c4.dmsm1 交通方式, p.policename 执勤民警, c2.dmsm1 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, p1.policename 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源',
TABLENAME= 'test.vio_force t left join test.vio_codewfdm c on c.wfxw=t.wfxw1 left join test.vio_codewfdm c1 on c1.wfxw=t.wfxw2 left join test.vio_codewfdm dc1 on dc1.wfxw=t.wfxw3 left join test.vio_codewfdm dc2 on dc2.wfxw=t.wfxw4 left join test.vio_codewfdm dc3 on dc3.wfxw=t.wfxw5 
 left join police p on p.policeid=t.zqmj left join police p1 on p1.policeid=t.lrr left join test.frm_code c2 on c2.dmz=t.qzcslx and c2.xtlb=''04'' and c2.dmlb=''0011'' left join test.frm_code c3 on c3.dmz=t.ryfl and c3.xtlb=''04'' and c3.dmlb=''0080'' left join test.frm_code c4 on c4.dmz=t.jtfs and c4.xtlb=''04'' and c4.dmlb=''0001'''
where id='003';
	--vio_violation
update psa_collide_sql  t set FIELDS='t.HPHM 号牌号码, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, pl.policename 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, t.ZJMC 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, d6.dmsm1 号牌种类', 
TABLENAME='test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police pl on pl.policeid=t.lrr'
where id='004';

	--in_vehicle
update psa_collide_sql  t set TABLENAME='test.in_vehicle t left join test.in_vehicle_status s on s.vehicle_id=t.id left join test.operator p on p.id=t.POLICE_ID2 left join test.department_vehicle d on d.id=t.dept1_id left join test.in_park ip on ip.id=t.park_id left join test.DIC_DETAIL dd on t.Business=dd.ITEM_CODE and dd.dic_code=''0630'' left join test.DIC_DETAIL dw on t.WFXW=dw.ITEM_CODE and dw.dic_code=''0632'' left join test.DIC_DETAIL dc on t.HPZL=dc.ITEM_CODE and dc.dic_code=''0631'' left join test.operator fp on fp.id=t.police_id'
where id='005';
	--in_vehicle_status_his
update psa_collide_sql  t set FIELDS='t.id ID, decode(t.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, t.vehicle_id 车辆编号, t.status_desc 状态描述, to_char(t.start_time,''yyyy-mm-dd'') 开始时间, p.name 流程开始创建用户, to_char(t.end_time,''yyyy-mm-dd'') 结束时间, p2.name 流程结束用户'
where id='007';

update psa_collide_sql set condition = 't.nid=? and t.dcollectiondate=to_date(?,''yyyy-mm-dd hh24:mi:ss'')' where id='010';


update psa_collide_sql  t set FIELDS='t.SGBH 事故编号,t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, t.BAR1 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, t.CCYYFL 事故初查原因分类, t.RDYYFL 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数'
where id='012';

update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.XQ 星期, t.SGFSSJ 事故发生时间, t.XZQH 行政区划, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.SSRS 受伤人数, t.ZJCCSS 直接财产损失, t.LWSGLX 路外事故类型, t.RDYYFL 事故认定原因分类, d3.dmsm1 事故认定原因, d5.dmsm1 天气, d6.dmsm1 现场, decode(t.SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, t.CLJSG 车辆间事故, t.DCSG 单车事故, decode(t.PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, t.TJR1 调解人1, t.CCLRSJ 初次录入时间, spr 审批日, t.SCSJD 上传时间段, dz.deptshortname 所属中队, t.DAH 档案号, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.TJSGBH 统计事故编号, dg.deptshortname 管理部门, t.DZZB 电子坐标, t.BADW 办案单位, t.WSBH 文书编号, t.SGSS 事故事实, t.ZRTJJG 责任调解结果, t.JAR1 接案人1, t.JAR2 接案人2, t.JBR 经办人, t.GXSJ 更新时间, t.JYW 校验位, decode(t.jafs,''1'',''调解结案'',''2'',''不同意结案'',''3'',''对认定有异议'',''4'',''拒绝签字'') 简易结案方式, d8.dmsm1 道路类型, d7.dmsm1 公路行政等级, decode(t.TJFS,''1'',''自行协商'',''2'',''人民调解'',''3'',''行政调解'',''4'',''司法调解'') 调解方式',
TABLENAME='test.ACD_DUTYSIMPLE t left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz=t.glxzdj and d7.xtlb=''00'' and d7.dmlb=''3116'' left join test.frm_code d8 on d8.dmz=t.dllx and d8.xtlb=''00'' and d8.dmlb=''3124'' left join department dz on dz.cdepartmentid=t.sszd left join department dg on dg.cdepartmentid=t.glbm'
where id='018';
commit;

--psa_system_config
delete from psa_system_config t where t.id='0251';
delete from psa_system_config t where t.id='0252';
delete from psa_system_config t where t.id='0201';
insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0261', 'video_info', '0', to_date('02-09-2019', 'dd-mm-yyyy'), to_date('02-09-2019', 'dd-mm-yyyy'), '02', '1', '执法记录仪');
commit;



--psa_monitor_execute_config 补充
insert into PSA_MONITOR_EXECUTE_CONFIG (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('78', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VideoInfoCollectExecute', '0261', '1', to_date('02-09-2019 19:41:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-09-2019 19:41:23', 'dd-mm-yyyy hh24:mi:ss'), '执法记录仪抽出类', '1');

insert into PSA_MONITOR_EXECUTE_CONFIG (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('79', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.WxpTransPassportCollectExecutor', '0601', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '危化品表抽取', '1');

update PSA_MONITOR_EXECUTE_CONFIG set REMARK='涉案车辆代码表抽取类' where id='77';
update PSA_MONITOR_EXECUTE_CONFIG set REMARK='驾驶证表抽取类' where id='72';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0504' where id='60';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0506' where id='61';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0502' where id='62';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0503' where id='63';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0508' where id='64';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0501' where id='65';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0509' where id='66';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0507' where id='67';
update PSA_MONITOR_EXECUTE_CONFIG set monitor_id = '0505',remark='当事人检验鉴定时间表抽取类' where id='68';

update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0413' where t.monitor_id='0410' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0412' where t.monitor_id='0409' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0410' where t.monitor_id='0407' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0409' where t.monitor_id='0406' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0408' where t.monitor_id='0405' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0407' where t.monitor_id='0404' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0406' where t.monitor_id='0403' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0405' where t.monitor_id='0402' and t.exe_type='0';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0404' where t.monitor_id='0401' and t.exe_type='0';

update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0701' where t.monitor_id='0600';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0204' where t.monitor_id='0252' and t.exe_type='1';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0205' where t.monitor_id='0201' and t.exe_type='1';
--未开启执法记录仪
update PSA_MONITOR_EXECUTE_CONFIG t set t.class_name='com.hisense.hiatmp.psa.adapter.danger.handlers.NonRevokeDriverCardHandler',t.monitor_id='0411' where t.id='75';

update PSA_MONITOR_EXECUTE_CONFIG t set t.id='26' where t.monitor_id='0260';
update PSA_MONITOR_EXECUTE_CONFIG t set t.monitor_id='0701' where t.monitor_id='0600';
update PSA_MONITOR_EXECUTE_CONFIG t set t.id='82' where id='80' and t.monitor_id='0409';
delete from PSA_MONITOR_EXECUTE_CONFIG where id='99';
delete from PSA_MONITOR_EXECUTE_CONFIG where monitor_id='0222' and exe_type='1';
delete from PSA_MONITOR_EXECUTE_CONFIG where monitor_id='0223' and exe_type='1';
delete from PSA_MONITOR_EXECUTE_CONFIG where monitor_id='0250' and exe_type='1';
commit;


-- psa_monitor_exe_plan_config 补充
delete from psa_monitor_exe_plan_config where monitor_id='0201';
delete from psa_monitor_exe_plan_config where monitor_id='0252';
delete from psa_monitor_exe_plan_config where monitor_id='0223';
delete from psa_monitor_exe_plan_config where monitor_id='0222';
delete from psa_monitor_exe_plan_config where monitor_id='0225';
update psa_monitor_exe_plan_config set id='5' where monitor_id='0204';
commit;
update PSA_MONITOR_EXE_PLAN_CONFIG t set t.monitor_id='0209' where t.id='9';
insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('17', '0404', '0 0 0 * * ?', '1', '1');
insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('41', '0410', '0 0 0 * * ?', '1', '1');
insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('42', '0601', '0 0 0 * * ?', '1', '1');
insert into PSA_MONITOR_EXE_PLAN_CONFIG (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('43', '0261', '0 0 0 * * ?', '1', '1');
commit;
alter table PSA_MONITOR_EXE_PLAN_CONFIG
  add constraint pk_exe_plan primary key (ID);
  

--psa_warning_field 
--身份证号列宽调整为180
update psa_warning_field set displaywidth = '180' where (fieldid = 'sfzhm' or fieldid = 'person_card' or fieldid = 'sfzh');
--危化品监管界面标题需求已修改为危化品车辆处罚综合分析，警务监管首页危化品车辆管理对应修改描述
update psa_monitor_info set monitor_name = '危化品车辆处罚' where id = '04';
update psa_warning_field set displaywidth = '335' where (fieldid = 'qymc');
update psa_warning_field t set t.sqlid='008' where t.id='018';
update psa_warning_field t set t.fieldid='tjjyrq' where t.fieldid='tjjjrq';
commit;

--psa_exc_value_relation
update psa_exc_value_relation set REMARK='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"过车时间","key":"gcsj","value":"value2"},{"desc":"表名","key":"tablename","value":"value3"}]' where MONITOR_ID='0404';
update psa_exc_value_relation set REMARK='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"录入时间","key":"lrsj","value":"value2"},{"desc":"表名","key":"tablename","value":"value3"}]' where MONITOR_ID='0405';
update psa_exc_value_relation set REMARK='[{"desc":"驾驶员","key":"driver1","value":"value1"},{"desc":"驾驶证号","key":"drivernum","value":"value2"},{"desc":"车牌号","key":"carnum","value":"value3"},{"desc":"警员姓名","key":"policename1","value":"value4"},{"desc":"警号","key":"policenum","value":"value5"}]' where id='008';
update psa_exc_value_relation set REMARK='[{"desc":"强制措施类型","key":"qzcslx","value":"value1"},{"desc":"裁决标记","key":"cjbj","value":"value3"}]' where id='010';
commit;

--PSA_MONITOR_FIELD_RELATION
update PSA_MONITOR_FIELD_RELATION t set t.fieldid='policeid' where t.monitorid='0112' and t.fieldid='policenum';
update PSA_MONITOR_FIELD_RELATION t set t.fieldid='policename' where t.monitorid='0109' and t.fieldid='policename1';
update PSA_MONITOR_FIELD_RELATION t set t.fieldid='tjjyrq' where t.fieldid='tjjjrq';
commit;


------------A3-------------

--psa_collide_sql 
--jira HIATMP-35354,HIATMP-35356
update psa_collide_sql set FIELDS='DSR 当事人, JSZH 驾驶证号, ZKRQ 作出暂扣的日期, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.zkyy end 暂扣原因, ZKQX 暂扣期限, to_char(t.kzksrq,''yyyy-mm-dd'') 扣证开始日期, to_char(t.KZJSRQ,''yyyy-mm-dd'') 扣证结束日期, d1.deptshortname 处理机关, ZKJBR 暂扣经办人, d2.deptshortname 还证机关, to_char(HZRQ,''yyyy-mm-dd'') 还证日期, HZJBR 还证经办人, decode(HZBJ,''0'',''未还证'',''1'',''已还证'',''2'',''证件已转外地'') 还证标记, ZJLQD 证件领取地, LRSJ 录入时间, WFBH 违法编号, JDSBH 决定书编号',
TABLENAME='test.vio_suspend t left join department d1 on d1.cdepartmentid=t.cljg left join department d2 on d2.cdepartmentid=t.hzjg left join test.frm_code d on d.dmz = t.zkyy and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.zkyy'
 where id='011';
commit;
update psa_collide_sql set FIELDS='t.DSR 当事人, t.DH 电话, t.HPHM 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值, t.BZZ2 标准值, dc1.wfms 违法行为3, t.SCZ3 实测值, t.BZZ3 标准值, dc2.wfms 违法行为4, t.SCZ4 实测值, t.BZZ4 标准值, dc3.wfms 违法行为5, t.SCZ5 实测值, t.BZZ5 标准值, c3.dmsm1 人员分类, c4.dmsm1 交通方式, p.policename 执勤民警, test.transformcode(t.qzcslx,''04'',''0011'') 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, p1.policename 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源' where id='003';
 
update psa_collide_sql t set t.fields='SGBH 事故编号, RYBH 人员编号, d.dmsm1 检验类型, TJJYRQ 提交检验日期, TJYQJYRQ 提交延期检验日期, TJCXJYRQ 提交重新检验日期, TJCXYQJYRQ 提交重新延期检验日期, JYWCRQ 检验完成日期, CXJYWCRQ 重新检验完成日期, CXJYCQ 重新检验超期, JYCQ 检验超期, BZ 备注, JYW 校验位, YDJYRQ 约定检验日期, YDCXJYRQ 约定重新检验日期, JYCQTS 检验超期天数, JYJDJL 检验鉴定结论, CXJYJDJL 重新检验鉴定结论, CXJYCQTS 重新检验超期天数, JBR 经办人, CXJBR 重新检验经办人'
 where t.id='014';
 
 update psa_collide_sql set fields='t.HPHM 号牌号码, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, d8.dmsm1 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, pl.policename 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, t.jsrxz 驾驶员性质, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, d6.dmsm1 号牌种类',
 TABLENAME='test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police pl on pl.policeid=t.lrr left join test.frm_code d8 on d8.dmz=t.cfzl and d8.xtlb=''04'' and d8.dmlb=''0002'' left join test.frm_code f on f.dmz=t.zjmc and f.xtlb=''02'' and f.dmlb=''0003'''
 where id='004';
 update psa_collide_sql set fields='t.SNO 案件编号, t.ENTRY_TIME 入场时间, decode(s.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, ip.name 所在停车场, p.name 扣车民警, d.name 所属单位, to_char(t.SCENE_TIME,''yyyy-mm-dd'') 扣车时间, t.ADDRESS 扣车地点, dd.name 案件类别, dw.name 违法行为, dc.name 车辆种类, t.HPHM 车牌号, t.CLPP 车辆品牌, t.COLOR 车辆颜色, fp.name 放车民警, t.PASS_END_TIME 出场时间',
 TABLENAME='test.in_vehicle t left join test.in_vehicle_status s on s.vehicle_id=t.id left join test.operator p on p.id=t.POLICE_ID2 left join test.department_vehicle d on d.id=t.dept1_id left join test.in_park ip on ip.id=t.park_id left join test.DIC_DETAIL dd on t.Business=dd.ITEM_CODE and dd.dic_code=''0630'' left join test.DIC_DETAIL dw on t.WFXW=dw.ITEM_CODE and dw.dic_code=''0632'' left join test.DIC_DETAIL dc on t.HPZL=dc.ITEM_CODE and dc.dic_code=''0631'' left join test.operator fp on fp.id=t.police_id'
 where id='005';
 update psa_collide_sql set condition='t.xh=?' 
 where id='006';
  update psa_collide_sql set condition='t.hphm=? and t.hpzl=?' 
 where id='002';
 update psa_collide_sql set fields='t.id ID, decode(t.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, t.vehicle_id 车辆编号, t.status_desc 状态描述, t.start_time 开始时间, p.name 流程开始创建用户, t.end_time 结束时间, p2.name 流程结束用户',
 TABLENAME='test.in_vehicle_status_his t left join test.operator p on p.id=t.start_user left join test.operator p2 on p2.id=t.end_user'
 where id='007';
 update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, t.BAR1 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, t.CCYYFL 事故初查原因分类, t.RDYYFL 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数'
where id='012';
update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.RYBH 人员编号, t.XM 姓名, decode（t.XB,''1'',''男'',''女'') 性别, t.SFZMHM 身份证明号码, t.NL 年龄, t.ZZ 住址, t.DH 电话, d1.dmsm1 人员类型, t.SHCD 伤害程度, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.wfxw1 end 主要违法行为, case when c1.wfms is not null then c1.wfms when d11.dmsm1 is not null then d11.dmsm1 else t.wfxw2 end 其他违法行为一, case when c2.wfms is not null then c2.wfms when d12.dmsm1 is not null then d12.dmsm1 else t.wfxw3 end 其他违法行为二, t.TK1 条款内容1, t.TK2 条款内容2, t.TK3 条款内容3, t.ZYYSDW 专业运输单位, d2.dmsm1 交通方式, t.GLXZQH 管理行政区划, t.DABH 驾证档案编号, t.JL 驾龄, d9.dmsm1 驾驶证种类, test.transformcode(t.ZJCX,''00'',''2001'') 准驾车型, t.CCLZRQ 初次领证日期, t.JSRGXD 驾驶人管辖地, t.FZJG 发证机关, d4.dmsm1 事故责任, t.HPHM 号牌号码, d3.dmsm1 号牌种类, t.CLFZJG 车辆发证机关, t.CLPP 车辆品牌, t.CLXH 车辆型号, d6.dmsm1 车身颜色, d5.dmsm1 车辆类型, d8.dmsm1 机动车状态, decode(t.SYQ,''1'',''单位'',''个人'') 所有权, t.JDCSYR 机动车所有人, d7.dmsm1 车辆使用性质, decode(BX,''1'',''是'',''2'',''否'') 保险, t.BXGS 保险公司, t.BXPZH 保险凭证号, t.CLGXD 车辆管辖地, t.CJCXBJ 车驾查询标记, t.JYW 校验位'
,  TABLENAME='test.ACD_DUTYSIMPLEHUMAN t left join test.frm_code d1 on d1.dmz=t.RYLX and d1.xtlb=''04'' and d1.dmlb=''0080'' left join test.frm_code d2 on d2.dmz=t.JTFS and d2.xtlb=''04'' and d2.dmlb=''0001'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.SGZR and d4.xtlb=''00'' and d4.dmlb=''3138'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004''  left join test.frm_code d6 on d6.dmz=t.CSYS and d6.xtlb=''00'' and d6.dmlb=''1008'' left join test.frm_code d7 on d7.dmz=t.clsyxz and d7.xtlb=''03'' and d7.dmlb=''0139'' left join test.frm_code d8 on d8.dmz=t.jdczt and d8.xtlb=''00'' and d8.dmlb=''1017'' left join test.frm_code d9 on d9.dmz=t.jszzl and d9.xtlb=''03'' and d9.dmlb=''0136'' left join test.frm_code d on d.dmz = t.wfxw1 and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.wfxw1 left join test.frm_code d11 on d11.dmz = t.wfxw2 and d11.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c1 on c1.wfxw = t.wfxw2 left join test.frm_code d12 on d12.dmz = t.wfxw3 and d12.dmlb = ''0160'' and d12.xtlb = ''03'' left join test.vio_codewfdm c2 on c2.wfxw = t.wfxw2'
where id='019';

update psa_collide_sql  t set TABLENAME='test.alky_info t left join test.alky_device d on d.deviceid=t.deviceid left join police p on p.policeid=d.policenum left join department dp on dp.cdepartmentid=p.depid join psa_department_config c on c.code=dp.cdepartmentid or c.code=dp.parentdepartment'
where id='001';
commit;

--psa_monitor_info
update psa_monitor_info i set i.monitor_name='未暂扣/吊销驾驶证' where i.id='0107';
commit;
--PSA_WARNING_FIELD
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cfzl', '处罚种类', 'Y', 150, '004', '149');
commit;
--psa_monitor_field_relation 
update Psa_Monitor_Field_Relation t set t.fieldid='cfzl' where t.id='048' or t.id='274';
update Psa_Monitor_Field_Relation t set t.fieldid='syxzn' where t.fieldid='clsyxz' ;
--警员碰撞字段设置
update psa_monitor_field_relation r set r.fieldid='policename1' where id='065';
update psa_monitor_field_relation r set r.fieldid='testdate' where id='056';
commit;

--psa_monitor_param_config
delete from psa_monitor_param_config where id='9036AC457F6147E8BFD3B6A1F1111C8B';
delete from psa_monitor_param_config where id='F620BC0167494737A6DF27A42E9F7861';
update psa_monitor_param_config set description='扣押中' where id = 'B00F1AB3E13046CDA69FADADB631EE94';
update psa_monitor_param_config set description='已放行' where id = 'FB4CE28963354F34A3EEB001A8163E34';
commit;
update psa_monitor_param_config set param_value='13511,60490,80400,80410,70075,70240,10310,10980,12360,12390,13390,13460,13510,13540,16080,16170,16180,16190,16357,16310,16390,17250,17295,17296,17297,17310,47090,47130,16356,70590,70085,16090,16120,46120'
where id='7';
insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('C5843B87B5A5416FA9CBC975F9941A72', null, 'CHEMICAL_WFXW', null, '99999', null, '其他');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101701', null, 'CASE_STATUS', null, '01', null, '待确认');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101702', null, 'CASE_STATUS', null, '02', null, '已确认');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101703', null, 'CASE_STATUS', null, '03', null, '放行申请中直接领导审核');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101704', null, 'CASE_STATUS', null, '04', null, '审核驳回');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101705', null, 'CASE_STATUS', null, '05', null, '等待高级领导审核');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101706', null, 'CASE_STATUS', null, '06', null, '申请通过');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101707', null, 'CASE_STATUS', null, '07', null, '已放行');
commit;
delete from psa_monitor_param_config where id='087A22CBD28D4BA998D9D2FFF2CB6926';
delete from psa_monitor_param_config where id='DF068F23C3E14FF9A7865BB01A17157E';
delete from psa_monitor_param_config where id='36694B9E0043414E895E7DA7E3FA40C5';
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101708', null, 'CHEMICAL_WFXW', null, '12390', null, '剧毒运输超载未达30%');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101709', null, 'CHEMICAL_WFXW', null, '13390', null, '剧毒品运输车超速50%以下');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101710', null, 'CHEMICAL_WFXW', null, '13460', null, '剧毒品运输车超载30%以上');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101711', null, 'CHEMICAL_WFXW', null, '16080', null, '剧毒品运输车超载30%以上');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101712', null, 'CHEMICAL_WFXW', null, '16090', null, '剧毒品运输车超速50%以上');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101713', null, 'CHEMICAL_WFXW', null, '60490', null, '驾驶危险物品运输车辆在高速公路、城市快速路以外的道路上超过规定时速10%以下的');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101714', null, 'CHEMICAL_WFXW', null, '70075', null, '未申领通行证通过公路运输剧毒品');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101715', null, 'CHEMICAL_WFXW', null, '70085', null, '伪造、变造、买卖、出借或者以其他方式转让《剧毒化学品公路运输通行证》，或者使用作废的通行证的');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101716', null, 'CHEMICAL_WFXW', null, '70240', null, '剧毒运输超载未达30%');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101717', null, 'CHEMICAL_WFXW', null, '70590', null, '载运爆炸物品、易燃易爆化学物品以及剧毒、放射性等危险物品的机动车违反交通管制');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101718', null, 'CHEMICAL_WFXW', null, '80400', null, '危险货物运输车辆十九时至次日六时违法通行');
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201909101719', null, 'CHEMICAL_WFXW', null, '80410', null, '遇有恶劣天气或者重大节日、重大活动，危险货物运输车辆违反限行规定在高速公路通行');
commit;

--psa_monitor_execute_config
update psa_monitor_execute_config set DEL_FLAG='0' where DEL_FLAG='1';
update psa_monitor_execute_config set monitor_id='0219' where id='71';
update psa_monitor_execute_config set monitor_id='0207' where id='59';
update psa_monitor_execute_config set monitor_id='0112' where id='10';
update psa_monitor_execute_config set monitor_id='0111' where id='9';
update psa_monitor_execute_config set monitor_id='0110' where id='8';
update psa_monitor_execute_config set monitor_id='0109' where id='7';
update psa_monitor_execute_config set monitor_id='0107' where id='6';
update psa_monitor_execute_config set monitor_id='0106' where id='5';
update psa_monitor_execute_config set monitor_id='0105' where id='4';
update psa_monitor_execute_config set monitor_id='0104' where id='3';
commit;

--psa_monitor_exe_plan_config
update psa_monitor_exe_plan_config set limitcount ='0' where fre_type='0';
commit;

--psa_monitor_third_sys_config
--35011 待确认
update psa_monitor_third_sys_config t set t.third_system='0219' where t.id='0203';

--PSA_SYSTEM_CONFIG
update PSA_SYSTEM_CONFIG set sys_name='vio_violation' where sys_name='VIO_VIOLATION';
commit;



-------------A4-----------------
  

--身份证号，车辆类型改为非碰撞字段
update psa_warning_field set iscollide ='N' where id='108';
update psa_monitor_field_relation set fieldid='cllxn' where id='191';
update psa_warning_field set fieldname='违法应计分' where id='052';
insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('lxr', '联系人', 'N', 180, null, '169');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('lxrdh', '联系人电话', 'N', 180, null, '170');

update psa_monitor_field_relation set FIELDID='lxr' where id in('106','114','121','130');
update psa_monitor_field_relation set FIELDID='lxrdh' where id in('107','115','122','131');

--HIATMP-36996
update psa_collide_sql c set c.condition='SGBH=? and RYBH=? and JYLX=? and TJJYRQ=to_date(?,''YYYY-MM-DD hh24:mi:ss'')'
 WHERE C.ID='014';
--HIATMP-37011
update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, t.BAR1 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, t.CCYYFL 事故初查原因分类, t.RDYYFL 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数'
where id='012';
update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.RYBH 人员编号, t.XM 姓名, decode（t.XB,''1'',''男'',''女'') 性别, t.SFZMHM 身份证明号码, t.NL 年龄, t.ZZ 住址, t.DH 电话, d1.dmsm1 人员类型, t.SHCD 伤害程度, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.wfxw1 end 主要违法行为, case when c1.wfms is not null then c1.wfms when d11.dmsm1 is not null then d11.dmsm1 else t.wfxw2 end 其他违法行为一, case when c2.wfms is not null then c2.wfms when d12.dmsm1 is not null then d12.dmsm1 else t.wfxw3 end 其他违法行为二, t.TK1 条款内容1, t.TK2 条款内容2, t.TK3 条款内容3, t.ZYYSDW 专业运输单位, d2.dmsm1 交通方式, t.GLXZQH 管理行政区划, t.DABH 驾证档案编号, t.JL 驾龄, d9.dmsm1 驾驶证种类, test.transformcode(t.ZJCX,''00'',''2001'') 准驾车型, t.CCLZRQ 初次领证日期, t.JSRGXD 驾驶人管辖地, t.FZJG 发证机关, d4.dmsm1 事故责任, t.HPHM 号牌号码, d3.dmsm1 号牌种类, t.CLFZJG 车辆发证机关, t.CLPP 车辆品牌, t.CLXH 车辆型号, d6.dmsm1 车身颜色, d5.dmsm1 车辆类型, d8.dmsm1 机动车状态, decode(t.SYQ,''1'',''单位'',''个人'') 所有权, t.JDCSYR 机动车所有人, d7.dmsm1 车辆使用性质, decode(BX,''1'',''是'',''2'',''否'') 保险, t.BXGS 保险公司, t.BXPZH 保险凭证号, t.CLGXD 车辆管辖地, t.CJCXBJ 车驾查询标记, t.JYW 校验位'
, TABLENAME='test.ACD_DUTYSIMPLEHUMAN t left join test.frm_code d1 on d1.dmz=t.RYLX and d1.xtlb=''04'' and d1.dmlb=''0080'' left join test.frm_code d2 on d2.dmz=t.JTFS and d2.xtlb=''04'' and d2.dmlb=''0001'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.SGZR and d4.xtlb=''00'' and d4.dmlb=''3138'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004''  left join test.frm_code d6 on d6.dmz=t.CSYS and d6.xtlb=''00'' and d6.dmlb=''1008'' left join test.frm_code d7 on d7.dmz=t.clsyxz and d7.xtlb=''03'' and d7.dmlb=''0139'' left join test.frm_code d8 on d8.dmz=t.jdczt and d8.xtlb=''00'' and d8.dmlb=''1017'' left join test.frm_code d9 on d9.dmz=t.jszzl and d9.xtlb=''03'' and d9.dmlb=''0136'' left join test.frm_code d on d.dmz = t.wfxw1 and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.wfxw1 left join test.frm_code d11 on d11.dmz = t.wfxw2 and d11.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c1 on c1.wfxw = t.wfxw2 left join test.frm_code d12 on d12.dmz = t.wfxw3 and d12.dmlb = ''0160'' and d12.xtlb = ''03'' left join test.vio_codewfdm c2 on c2.wfxw = t.wfxw2'
where id='019';
--37188
update psa_collide_sql  t set FIELDS='t.HPHM 号牌号码, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, pl.policename 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划, t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, d6.dmsm1 号牌种类'
where id='004';
--
update psa_collide_sql  t set FIELDS='t.SNO 案件编号, t.ENTRY_TIME 入场时间, decode(s.status,1,''已确认'',2,''已放行'',11,''审核驳回'',12,''申请通过'',13,''放行申请中直接领导审核'',14,''等待高级领导审核'',20,''新增待确认'') 状态, ip.name 所在停车场, p.name 扣车民警, d.name 所属单位, to_char(t.SCENE_TIME,''yyyy-mm-dd'') 扣车时间, t.ADDRESS 扣车地点, dd.name 案件类别, dw.name 违法行为, dc.name 车辆种类, t.HPHM 车牌号, t.CLPP 车辆品牌, t.COLOR 车辆颜色, fp.name 放车民警, t.PASS_END_TIME 出场时间'
where id='005';

--37211
update psa_collide_sql  t set FIELDS='DSR 当事人, JSZH 驾驶证号, ZKRQ 作出暂扣的日期, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.zkyy end 暂扣原因, ZKQX 暂扣期限, to_char(t.kzksrq,''yyyy-mm-dd'') 扣证开始日期, to_char(t.KZJSRQ,''yyyy-mm-dd'') 扣证结束日期, nvl(d1.deptshortname,t.cljg) 处理机关, nvl(p.policename,t.zkjbr) 暂扣经办人, nvl(d2.deptshortname,t.hzjg) 还证机关, to_char(HZRQ,''yyyy-mm-dd'') 还证日期, HZJBR 还证经办人, decode(HZBJ,''0'',''未还证'',''1'',''已还证'',''2'',''证件已转外地'') 还证标记, ZJLQD 证件领取地, LRSJ 录入时间, WFBH 违法编号, JDSBH 决定书编号'
,TABLENAME='test.vio_suspend t left join department d1 on d1.cdepartmentid=t.cljg left join department d2 on d2.cdepartmentid=t.hzjg left join test.frm_code d on d.dmz = t.zkyy and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.zkyy left join police_data p on p.policeid=t.zkjbr'
where id='011';
--37206
update psa_collide_sql  t set FIELDS='t.SGBH 事故编号, t.WSBH 文书编号, t.RYBH 人员编号, t.JDDX 鉴定对象, t.WTSX 委托事项, t.WTRQ 委托日期, t.WTJG 委托机构, t.YDJYRQ 约定检验日期, t.JTYQ 具体要求, t.SJCL 送检材料, t.BAR1 办案人1, t.BAR2 办案人2, t.JBR 经办人, t.CQ 超期, t.CXJYJD 重新检验鉴定, decode(YDYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 约定延期, decode(WTYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 委托延期, t.TQSPRQ 提请审批日期, t.SPRQ 审批日期, t.SPR 审批人, decode(t.wszt,''1'',''正式'',''未正式'') 文书状态, t.JYW 校验位'
where id='013';
commit;

--HIATMP-37005
update psa_monitor_param_config set param_value='04' where id='201909101705';
update psa_monitor_param_config set param_value='05' where id='201909101704';

delete from PSA_MONITOR_THIRD_SYS_CONFIG where THIRD_SYSTEM = '0701';



--37178
update psa_monitor_field_relation set fieldid='exc_time' where id='056';
commit;
--37182
update psa_exc_value_relation set REMARK ='[{"desc":"处罚种类","key":"cfzl","value":"value1"}]' where id='006';
commit;

--36115
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '10052', 7, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '17129', 1, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '60220', 5, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '60320', 4, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '60330', 3, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '60340', 2, 0, '违法行为代码', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMNAME, ISDEFAULT)
values (800002, '60350', 6, 0, '违法行为代码', 0);


--频繁驳回改进
delete from psa_exc_value_relation where monitor_id='0206';
delete from psa_monitor_field_relation t where t.monitorid='0206' and colnum in (4,5,6,7,8,9);



  
--警员下发库抽取用
insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0262', 'frm_sysuser', '0', to_date('14-08-2019', 'dd-mm-yyyy'), to_date('14-08-2019', 'dd-mm-yyyy'), '02', '1', '下发库用户表');
  
--添加阈值信息
insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('14', '', 'psa_tamper_ratio_count', '1', '0.1', '', '篡改当事人类型比例阈值');

insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('13', '', 'psa_many_car_count', '1', '10', '', '一人为多车驾驶证数量阈值');

insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('12', '', 'psa_many_person_count', '1', '10', '', '多人为一车驾驶证数量阈值');

insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('11', '', 'psa_illegal_split_count', '1', '5', '', '违法拆单处罚决定书数量阈值');
  
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('63', '', 'psa_qzcslx', '1', '''1'',''6''', '', '强制措施类型');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('64', '', 'psa_park_department', '1', '''370203'',''370213'',''370202'',''370212'',''370295'',''370297'',''370298''', '', '扣车未入停车场部门');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('22', '', 'psa_reject_num', '1', '4', '', '旅行申请被频繁驳回次数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('21', '', 'psa_deduct_status', '1', '''A''', '', '可扣分状态');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('24', '', 'psa_vehicle_month', '1', '1', '', '违法记录消除未放车可配置自然月');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('117', '', 'psa_danger_park_department', '1', '''370203'',''370213'',''370202'',''370212''', '', '危化品扣车未入停车场部门');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('118', '', 'psa_danger_qcType', '1', '''1'',''6''', '', '危化品强制措施类型');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('119', '', 'psa_danger_threshold', '1', '1', '', '危化品录入滞留时间过长可配置阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('113', '', 'psa_danger_threshold1', '1', '1', '', '危化品可配置阈值除数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('114', '', 'psa_danger_threshold2', '1', '48', '', '危化品可配置阈值被除数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('116', '', 'psa_danger_out_date_threshold', '', '30', '', '危化品超期未处理可配置时间参数阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('115', '', 'psa_danger_date_threshold', '', '30', '', '危化品为暂扣/吊销驾照可配置时间参数阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('122', '', 'psa_danger_date_differ', '1', '3', '', '未暂扣吊销驾照时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('123', '', 'psa_danger_overtime_differ', '1', '30', '', '超期未处理时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('124', null, 'psa_accident_insert_hours', '1', '24', null, '事故录入超时（事故录入时间天数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('125', null, 'psa_accident_over_days', '1', '3', null, '检验鉴定委托超期（超期天数1）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('126', null, 'psa_accident_overDelay_days', '1', '6', null, '检验鉴定委托超期（超期天数2）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('127', null, 'psa_accident_inspect_over_days', '1', '30', null, '检验鉴定超期（超期天数1）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('128', null, 'psa_accident_inspectoverDelay_days', '1', '60', null, '检验鉴定超期（超期天数2）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('129', null, 'psa_accident_delivery_over_days', '1', '3', null, '文书送达超期（超期天数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('130', null, 'psa_accident_archive_over_days', '1', '30', null, '结案归档超期（超期天数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('131', null, 'psa_accident_persion_days', '1', '22', null, '同一人同一民警多起事故（计算天数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('132', null, 'psa_accident_persion_cnt', '1', '5', null, '同一人同一民警多起事故（次数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('133', null, 'psa_accident_car_days', '1', '12', null, '同一车同一民警多起事故（计算天数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('134', null, 'psa_accident_car_cnt', '1', '4', null, '同一车同一民警多起事故（次数）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('200', null, 'psa_drunk_different_codewfsj', '1', '1', null, '强制措施值与酒精测试仪值不一样违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('201', null, 'psa_drunk_different_codelrsj', '1', '1', null, '强制措施值与酒精测试仪值不一样录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('202', null, 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', null, '超期未处理时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('203', null, 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', null, '超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('204', null, 'psa_drunk_forcecross_wfsj', '1', '1', null, '强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('205', null, 'psa_drunk_forcecross_lrsj', '1', '1', null, '强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('206', null, 'psa_drunk_force_wfsj', '1', '1', null, '未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('207', null, 'psa_drunk_force_beginend', '1', '1', null, '未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('208', null, 'psa_drunk_violation_wfsj', '1', '30', null, '处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('209', null, 'psa_drunk_viosuspend_wfsj', '1', '30', null, '未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('300', null, 'psa_danger_vehicle_abs', '1', '0', null, '危化品涉案车辆关联可配置阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('301', null, 'psa_danger_speed_car_date', '1', '1', null, '危化品过车数据限制可配置参数');


commit;

--psa_monitor_execute_config
-- psa_monitor_exe_plan_config 清空重新插入数据
delete from psa_monitor_execute_config;
delete from psa_monitor_exe_plan_config;
commit;

prompt Importing table psa_monitor_exe_plan_config...
set feedback off
set define off
insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('1', '01', '0 0/5 * * * ?', '0', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('10', '0213', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('11', '0217', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('12', '0219', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('13', '0221', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('18', '0253', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('19', '03', '0 0/5 * * * ?', '0', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('2', '0101', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('20', '04', '0 0/5 * * * ?', '0', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('21', '0401', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('22', '0402', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('23', '0403', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('24', '0405', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('25', '0406', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('26', '0407', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('27', '0408', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('28', '0409', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('29', '05', '0 0/5 * * * ?', '0', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('3', '0102', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('30', '0501', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('31', '0502', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('32', '0503', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('33', '0504', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('34', '0505', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('35', '0506', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('36', '0507', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('37', '0508', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('38', '0509', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('39', '0701', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('4', '02', '0 0/5 * * * ?', '0', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('40', '0410', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('41', '0601', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('42', '0261', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('5', '0204', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('6', '0203', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('7', '0205', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('8', '0206', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('97', '0262', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('99', '0260', '0 0/5 * * * ?', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT)
values ('A401', '0411', '0 0/5 * * *  ?', '1', '1');

prompt Done.

prompt Importing table psa_monitor_execute_config...
set feedback off
set define off
insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('1', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ForceHandler', '0101', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未开强错', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('10', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.CaseHandleTimeUnvalidHandler', '0112', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '超期未处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('11', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.ForceCollectExecutor', '0217', '0', to_date('14-06-2019', 'dd-mm-yyyy'), to_date('14-06-2019', 'dd-mm-yyyy'), '强措数据抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('12', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioSuspendCollectExecutor', '0205', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '暂扣记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('13', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.ViolationCollectExecutor', '0206', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '违法记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('14', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioKlwpCollectExecutor', '0213', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '扣留物品数据抽取类`', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('15', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioCodeWfdmCollectExecutor', '0221', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '违法行为代码抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('16', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.PoliceCollectExecutor', '0262', '0', to_date('24-06-2019', 'dd-mm-yyyy'), to_date('24-06-2019', 'dd-mm-yyyy'), '下发库警员抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('18', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleCollectExecutor', '0401', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('19', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleCaseCollectExecutor', '0405', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '案件抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('2', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ForceCrossHandler', '0102', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '强制措施违规跨档', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('20', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleImageCollectExecutor', '0406', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆图片抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('21', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InParkCollectExecutor', '0407', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '停车场数据抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('22', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleStatusCollectExecutor', '0402', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆状态抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('23', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.InVehicleStatusHisCollectExecutor', '0403', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '涉案车辆状态历史抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('24', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.AlcometerCollectExecutor', '0101', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '酒精检测仪表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('25', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.AlkyDeviceCollectExecutor', '0102', '0', to_date('25-06-2019', 'dd-mm-yyyy'), to_date('25-06-2019', 'dd-mm-yyyy'), '酒精检测仪设备表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('26', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.FrmCodeCollectExecutor', '0260', '0', to_date('14-08-2019 16:56:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-08-2019 16:56:44', 'dd-mm-yyyy hh24:mi:ss'), '六合一代码表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('27', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.NonWorkingTimeHandler', '0301', '0', to_date('16-07-2019 09:39:53', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 09:39:56', 'dd-mm-yyyy hh24:mi:ss'), '非工时间处理交通违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('28', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.HasCardForNonCardHander', '0302', '0', to_date('16-07-2019 15:08:54', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 15:09:02', 'dd-mm-yyyy hh24:mi:ss'), '对有证人员按无证处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('29', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.OnePersonManyCaseHandler', '0303', '0', to_date('16-07-2019 16:05:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 16:05:52', 'dd-mm-yyyy hh24:mi:ss'), '一人为多车处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('3', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.SecondDrunkHandler', '0104', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '再次酒驾违规处罚', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('30', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.IllegalSplitHandler', '0304', '0', to_date('16-07-2019 16:33:05', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 16:33:10', 'dd-mm-yyyy hh24:mi:ss'), '违法拆单', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('31', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.NonOutSiteScoringHandler', '0305', '0', to_date('16-07-2019 17:26:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 17:26:28', 'dd-mm-yyyy hh24:mi:ss'), '非现场违法不计分', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('32', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.Driver60AgeIllegalHandler', '0306', '0', to_date('16-07-2019 20:44:06', 'dd-mm-yyyy hh24:mi:ss'), to_date('16-07-2019 20:44:10', 'dd-mm-yyyy hh24:mi:ss'), '满60周岁驾驶员涉嫌违规处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('33', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.ManyPersonForOneCarHandler', '0307', '0', to_date('17-07-2019 14:23:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 14:23:28', 'dd-mm-yyyy hh24:mi:ss'), '多人为一车处理违法', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('34', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.PoorIllegalMessageHandler', '0308', '0', to_date('17-07-2019 15:55:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 15:55:44', 'dd-mm-yyyy hh24:mi:ss'), '违法信息采集质量较差', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('35', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.ALotOfLssueTicketHandler', '0309', '0', to_date('17-07-2019 17:05:04', 'dd-mm-yyyy hh24:mi:ss'), to_date('17-07-2019 17:05:08', 'dd-mm-yyyy hh24:mi:ss'), '大量开具处罚决定书', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('36', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryTimeoutHandler', '0501', '0', to_date('18-07-2019 13:41:11', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 13:41:16', 'dd-mm-yyyy hh24:mi:ss'), '事故录入超时', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('37', 'com.hisense.hiatmp.psa.adapter.accident.handlers.CommissionedOverdueHandler', '0502', '0', to_date('18-07-2019 15:37:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 15:37:41', 'dd-mm-yyyy hh24:mi:ss'), '检验鉴定委托超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('38', 'com.hisense.hiatmp.psa.adapter.accident.handlers.InspectionOvertimeHandler', '0503', '0', to_date('18-07-2019 19:29:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('18-07-2019 19:29:12', 'dd-mm-yyyy hh24:mi:ss'), '检验委托超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('39', 'com.hisense.hiatmp.psa.adapter.accident.handlers.DeliveryOvertimeHandler', '0504', '0', to_date('19-07-2019 09:44:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('19-07-2019 09:44:51', 'dd-mm-yyyy hh24:mi:ss'), '文书送达超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('4', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.OperationDrunkHandler', '0105', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '营运酒驾违规处罚', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('40', 'com.hisense.hiatmp.psa.adapter.accident.handlers.ArchiveOvertimeHandler', '0505', '0', to_date('22-07-2019 09:53:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 09:53:52', 'dd-mm-yyyy hh24:mi:ss'), '档案归档超期', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('41', 'com.hisense.hiatmp.psa.adapter.accident.handlers.PersonWithPoliceHandler', '0506', '0', to_date('22-07-2019 14:01:38', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 14:01:44', 'dd-mm-yyyy hh24:mi:ss'), '同一人同一民警多起事故', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('42', 'com.hisense.hiatmp.psa.adapter.accident.handlers.CarWithPoliceHandler', '0507', '0', to_date('22-07-2019 14:03:01', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 14:03:06', 'dd-mm-yyyy hh24:mi:ss'), '同一车同一民警多起事故', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('43', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryRateBySGHandler', '0508', '0', to_date('22-07-2019 15:50:00', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 15:50:05', 'dd-mm-yyyy hh24:mi:ss'), '事故率分析', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('44', 'com.hisense.hiatmp.psa.adapter.accident.handlers.EntryRateByCFHandler', '0509', '0', to_date('22-07-2019 15:50:40', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-07-2019 15:50:50', 'dd-mm-yyyy hh24:mi:ss'), '处罚率分析', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('45', 'com.hisense.hiatmp.psa.adapter.danger.handlers.LongDisposalTimeHandler', '0404', '0', to_date('23-07-2019 13:58:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 13:58:22', 'dd-mm-yyyy hh24:mi:ss'), '处置滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('46', 'com.hisense.hiatmp.psa.adapter.danger.handlers.CarNonEnterParkingHandler', '0407', '0', to_date('23-07-2019 19:26:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:26:46', 'dd-mm-yyyy hh24:mi:ss'), '扣车未入停车场', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('47', 'com.hisense.hiatmp.psa.adapter.danger.handlers.DifferentIllegalTimeHandler', '0412', '0', to_date('23-07-2019 19:27:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:27:56', 'dd-mm-yyyy hh24:mi:ss'), '违法时间录入不一致', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('48', 'com.hisense.hiatmp.psa.adapter.danger.handlers.IllegalReleaseCarHandler', '0408', '0', to_date('23-07-2019 19:28:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:29:00', 'dd-mm-yyyy hh24:mi:ss'), '扣车违规放行', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('49', 'com.hisense.hiatmp.psa.adapter.danger.handlers.IllegalReturnCardHandler', '0409', '0', to_date('23-07-2019 19:29:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:29:49', 'dd-mm-yyyy hh24:mi:ss'), '扣证违规归还', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('5', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.ViolationHandler', '0106', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '处罚决定书跨档', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('50', 'com.hisense.hiatmp.psa.adapter.danger.handlers.LongEntryTimeHandler', '0405', '0', to_date('23-07-2019 19:30:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:30:49', 'dd-mm-yyyy hh24:mi:ss'), '录入滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('51', 'com.hisense.hiatmp.psa.adapter.danger.handlers.NonRevokeDriverCardHandler', '0410', '0', to_date('23-07-2019 19:31:34', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:31:40', 'dd-mm-yyyy hh24:mi:ss'), '未暂扣/吊销驾驶证', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('52', 'com.hisense.hiatmp.psa.adapter.danger.handlers.OvertimeUnprocessedHandler', '0413', '0', to_date('23-07-2019 19:32:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:32:56', 'dd-mm-yyyy hh24:mi:ss'), '超期未处理', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('53', 'com.hisense.hiatmp.psa.adapter.danger.handlers.UnfastenedCarHandler', '0406', '0', to_date('23-07-2019 19:33:35', 'dd-mm-yyyy hh24:mi:ss'), to_date('23-07-2019 19:33:42', 'dd-mm-yyyy hh24:mi:ss'), '未按规定扣车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('54', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.SuspendWithoutCarExecuteHandler', '0201', '0', to_date('24-07-2019 14:56:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 14:56:37', 'dd-mm-yyyy hh24:mi:ss'), '扣车未入停车场', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('55', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.IncompleteProceduresExecuteHandler', '0205', '0', to_date('25-07-2019 14:19:56', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 14:19:59', 'dd-mm-yyyy hh24:mi:ss'), '扣车手续不全', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('56', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.ReleaseIllegalExecuteHandler', '0202', '0', to_date('25-07-2019 14:49:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 14:49:27', 'dd-mm-yyyy hh24:mi:ss'), '违规申请放行', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('57', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.TravelApplyRejectedManyExecuteHandler', '0206', '0', to_date('25-07-2019 16:42:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 16:42:26', 'dd-mm-yyyy hh24:mi:ss'), '旅行申请被频繁驳回', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('58', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.UnuploadImageExecuteHandler', '0204', '0', to_date('25-07-2019 17:03:03', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 17:03:07', 'dd-mm-yyyy hh24:mi:ss'), '未上传现场照片', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('59', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.WfjlWithoutCarExecuteHandler', '0207', '0', to_date('25-07-2019 17:12:21', 'dd-mm-yyyy hh24:mi:ss'), to_date('25-07-2019 17:12:24', 'dd-mm-yyyy hh24:mi:ss'), '违法记录消除未放车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('6', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.VioSuspendHandler', '0107', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未吊销/暂扣驾驶证', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('60', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdConsigntestCollectExecutor', '0504', '0', to_date('02-08-2019 17:31:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:31:05', 'dd-mm-yyyy hh24:mi:ss'), '技术鉴定委托书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('61', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDeliveryCollectExecutor', '0506', '0', to_date('02-08-2019 17:32:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:32:28', 'dd-mm-yyyy hh24:mi:ss'), '送达回执表执行类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('62', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDutyCollectExecutor', '0502', '0', to_date('02-08-2019 17:33:02', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:33:06', 'dd-mm-yyyy hh24:mi:ss'), '一般程序-交通事故认定书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('63', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcddutySimpleCollectExecutor', '0503', '0', to_date('02-08-2019 17:34:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:34:51', 'dd-mm-yyyy hh24:mi:ss'), '简易程序事故认定书抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('64', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdDutySimpleHumanCollectExecutor', '0508', '0', to_date('02-08-2019 17:38:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:38:26', 'dd-mm-yyyy hh24:mi:ss'), '简易人员表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('65', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdFileCollectExecutor', '0501', '0', to_date('02-08-2019 17:40:17', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:40:22', 'dd-mm-yyyy hh24:mi:ss'), '事故信息主表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('66', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdFileHumanCollectExecutor', '0509', '0', to_date('02-08-2019 17:43:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:43:53', 'dd-mm-yyyy hh24:mi:ss'), '事故人员表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('67', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdgfileCollectExecutor', '0507', '0', to_date('02-08-2019 17:46:44', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:46:47', 'dd-mm-yyyy hh24:mi:ss'), '案卷归档表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('68', 'com.hisense.hiatmp.psa.adapter.collect.accident.execute.AcdtesttimeCollectExecutor', '0505', '0', to_date('02-08-2019 17:52:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-08-2019 17:52:18', 'dd-mm-yyyy hh24:mi:ss'), '当事人检验鉴定时间表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('69', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.JJDBSJCollectExecutor', '0701', '1', to_date('03-08-2019 09:17:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 09:17:12', 'dd-mm-yyyy hh24:mi:ss'), '接警单抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('7', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.EnforceInstrumentHandler', '0109', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '未开启执法记录仪', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('71', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioDxjlCollectExecutor', '0219', '0', to_date('03-08-2019 16:09:10', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:09:14', 'dd-mm-yyyy hh24:mi:ss'), '吊销记录表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('72', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.DriverlicenceCollectExecutor', '0204', '0', to_date('03-08-2019 16:12:32', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:12:35', 'dd-mm-yyyy hh24:mi:ss'), '驾驶证表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('73', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.DrvPointResetCollectExecutor', '0253', '0', to_date('03-08-2019 16:13:09', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:13:12', 'dd-mm-yyyy hh24:mi:ss'), '驾驶人清分历史记录抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('74', 'com.hisense.hiatmp.psa.adapter.vehicle.handlers.StopWithoutAllowExecuteHandler', '0203', '0', to_date('07-08-2019 16:15:27', 'dd-mm-yyyy hh24:mi:ss'), to_date('07-08-2019 16:15:32', 'dd-mm-yyyy hh24:mi:ss'), '无条件放车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('75', 'com.hisense.hiatmp.psa.adapter.danger.handlers.NonRevokeDriverCardHandler', '0411', '0', to_date('08-08-2019 20:29:37', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-08-2019 20:29:43', 'dd-mm-yyyy hh24:mi:ss'), '未开启执法记录仪', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('76', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.TamperingTypeHandler', '0310', '0', to_date('29-07-2019 19:01:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('29-07-2019 19:01:57', 'dd-mm-yyyy hh24:mi:ss'), '篡改当事人类型', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('77', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.DicDetailCollectExecutor', '0410', '0', to_date('14-08-2019 16:58:13', 'dd-mm-yyyy hh24:mi:ss'), to_date('14-08-2019 16:58:15', 'dd-mm-yyyy hh24:mi:ss'), '涉案车辆代码表抽取类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('78', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VideoInfoCollectExecute', '0261', '0', to_date('02-09-2019 19:41:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-09-2019 19:41:23', 'dd-mm-yyyy hh24:mi:ss'), '执法记录仪抽出类', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('79', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.WxpTransPassportCollectExecutor', '0601', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '危化品表抽取', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('8', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.AlcometerInfoUnValidHandler', '0110', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '酒精检测仪信息记录不规范', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('80', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VehicleCollectExecutor', '0203', '0', to_date('22-08-2019 16:01:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-08-2019 16:01:54', 'dd-mm-yyyy hh24:mi:ss'), '车辆表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('81', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.OperatorCollectExecutor', '0408', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '涉案车辆人员抽取', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('82', 'com.hisense.hiatmp.psa.adapter.collect.vehicle.executor.DepartmentCollectExecutor', '0409', '0', to_date('22-08-2019', 'dd-mm-yyyy'), to_date('22-08-2019', 'dd-mm-yyyy'), '涉案车辆部门抽取', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('9', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.AlcometerUnconsistentWithforceHandler', '0111', '0', to_date('27-05-2019', 'dd-mm-yyyy'), to_date('27-05-2019', 'dd-mm-yyyy'), '强制措施值与酒精检测值不一致', '0');

prompt Done.


-------------A5---------

--35011
update psa_monitor_third_sys_config ttt set ttt.third_system = '0205' where ttt.third_system = '0201';
delete from psa_monitor_third_sys_config where third_system = '0220';
delete from psa_monitor_third_sys_config where third_system = '0404';
update psa_system_config t1 set t1.sys_name = 'DIC_DETAIL_xxfw' where t1.id = '0410';
update psa_monitor_third_sys_config ttt set ttt.id = '14' where ttt.id = '11' and ttt.monitor_id = '02';

--37871
update psa_warning_field set iscollide = 'N' where id='058';
update psa_warning_field set iscollide = 'N', fieldname='车辆数' where id='059';
--37842
update psa_warning_field set fieldname='违法计分数' where id='052';
update psa_monitor_field_relation set fieldid='wfyjf' where id='185';
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfyjf', '违法应计分', 'Y', 100, '004', '189');
update psa_exc_value_relation set REMARK='[{"desc":"违法行为","key":"wfxwv","value":"value1"},{"desc":"违法应计分","key":"wfyjf","value":"value2"}]'
where id='021';
--36571
update psa_monitor_field_relation r set r.fieldid='testdate' where id='056';


update psa_collide_sql set condition='t.hphm = ? and t.hpzl=?'
where id='002';
--37756
update psa_collide_sql set TABLENAME='test.in_vehicle t left join test.in_vehicle_status s on s.vehicle_id=t.id left join test.operator p on p.id=t.POLICE_ID left join test.department_vehicle d on d.id=t.dept1_id left join test.in_park ip on ip.id=t.park_id left join test.DIC_DETAIL dd on t.Business=dd.ITEM_CODE and dd.dic_code=''0630'' left join test.DIC_DETAIL dw on t.WFXW=dw.ITEM_CODE and dw.dic_code=''0632'' left join test.DIC_DETAIL dc on t.HPZL=dc.ITEM_CODE and dc.dic_code=''0631'' left join test.operator fp on fp.id=t.police_id2'
where id='005';
--37755
delete from psa_collide_sql where id='011';

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('011', 't.pzbh 凭证编号, c.dmsm1 扣留项目, t.klrq 扣留日期, nvl(d.deptshortname,t.kljg) 扣留机关, t.ycklqx 延长扣留期限, nvl(p1.policename,t.ycklqxspr) 延长扣留审批人, nvl(p.policename,t.zqmj) 执勤民警, t.jjsj 强制措施凭证处理时间, nvl(c1.dmsm1,t.hpzl) 号牌种类, completehphm(t.hphm,t.hpzl) 号牌号码, t.jszh 驾驶证号, t.dsr 当事人, t.fzjg 发证机关, t.qtwpmc 其他物品名称, t.wpcfd 物品存放地, decode(t.cljg,''0'',''未发还'',''1'',''已发还'',''2'',''收缴'',''3'',''移交'',''4'',''拍卖'') 处理结果, nvl(c2.dmsm1,t.clyy) 处理原因, t.lqr 领取人, t.lqrzjhm 领取人证件号码, t.fhrq 发还日期, nvl(d2.deptshortname,t.fhjg) 发还机关, nvl(pj.policename,t.jbr) 经办人, t.lrsj 录入时间, t.jsjg 接受机关, t.fsjg 发送机关, t.bz 备注', 'test.vio_klwp t left join test.frm_code c on c.dmz=t.klxm and c.xtlb=''04'' and c.dmlb=''0016'' left join department d on d.cdepartmentid=t.kljg left join department d2 on d2.cdepartmentid=t.fhjg left join police_data p on p.policeid=t.zqmj left join police_data p1 on p1.policeid=t.ycklqxspr left join test.frm_code c1 on c1.dmz=t.hpzl and c1.xtlb=''00'' and c1.dmlb=''1007'' left join test.frm_code c2 on c2.dmz=t.cljg and c2.xtlb=''04'' and c2.dmlb=''0043'' left join police_data pj on pj.policeid=t.jbr', 'xh=?');
--37804 police
delete from psa_collide_sql where id in ('001','003','004','008','013','015','019','012','018');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('001', 't.devicetype 型号, t.deviceid 设备编号, t.recordnum 记录号, decode(t.inputtype,''auto'',''自动录入'',t.inputtype) 录入方式, t.testmode 测试模式, dp.deptshortname 部门名称, p.policename 警员姓名, t.policenum 警号, t.brac 测试值, t.testdate 测试时间, t.creation_date 上传时间, t.carnum 车牌号, t.drivernum 驾驶证号, t.testname 被测人姓名, t.gps_info_id 经纬度', 'test.alky_info t left join test.alky_device d on d.deviceid=t.deviceid left join police_data p on p.policeid=d.policenum left join department dp on dp.cdepartmentid=p.deptid join psa_department_config c on c.code=dp.cdepartmentid or c.code=dp.parentdepartment', 't.id=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('003', 't.DSR 当事人, t.DH 电话, completehphm(t.hphm,t.hpzl) 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值, t.BZZ2 标准值, dc1.wfms 违法行为3, t.SCZ3 实测值, t.BZZ3 标准值, dc2.wfms 违法行为4, t.SCZ4 实测值, t.BZZ4 标准值, dc3.wfms 违法行为5, t.SCZ5 实测值, t.BZZ5 标准值, c3.dmsm1 人员分类, c4.dmsm1 交通方式, nvl(p.policename,t.zqmj) 执勤民警, test.transformcode(t.qzcslx,''04'',''0011'') 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, nvl(p1.policename,t.lrr) 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源', 'test.vio_force t left join test.vio_codewfdm c on c.wfxw=t.wfxw1 left join test.vio_codewfdm c1 on c1.wfxw=t.wfxw2 left join test.vio_codewfdm dc1 on dc1.wfxw=t.wfxw3 left join test.vio_codewfdm dc2 on dc2.wfxw=t.wfxw4 left join test.vio_codewfdm dc3 on dc3.wfxw=t.wfxw5 left join police_data p on p.policeid=t.zqmj left join police_data p1 on p1.policeid=t.lrr left join test.frm_code c2 on c2.dmz=t.qzcslx and c2.xtlb=''04'' and c2.dmlb=''0011'' left join test.frm_code c3 on c3.dmz=t.ryfl and c3.xtlb=''04'' and c3.dmlb=''0080'' left join test.frm_code c4 on c4.dmz=t.jtfs and c4.xtlb=''04'' and c4.dmlb=''0001''', 't.xh=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('004', 'completehphm(t.hphm,t.hpzl) 号牌号码, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, nvl(pl.policename,t.lrr) 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''2'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''1'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''1'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, d6.dmsm1 号牌种类', 'test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police_data pl on pl.policeid=t.lrr left join test.frm_code f on f.dmz=t.zjmc and f.xtlb=''02'' and f.dmlb=''0003''', 't.wfbh=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('008', 't.kssj 开启时间, t.jssj 结束时间, t.mjbh 民警编号, p.policename 民警姓名, d.deptshortname 部门', 'test.video_info t left join police_data p on p.policeid=t.mjbh left join department d on d.cdepartmentid=p.deptid', 't.id=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('013', 't.SGBH 事故编号, t.WSBH 文书编号, t.RYBH 人员编号, t.JDDX 鉴定对象, t.WTSX 委托事项, t.WTRQ 委托日期, t.WTJG 委托机构, t.YDJYRQ 约定检验日期, t.JTYQ 具体要求, t.SJCL 送检材料, t.BAR1 办案人1, t.BAR2 办案人2, t.JBR 经办人, t.CQ 超期, t.CXJYJD 重新检验鉴定, decode(YDYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 约定延期, decode(WTYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 委托延期, t.TQSPRQ 提请审批日期, t.SPRQ 审批日期, t.SPR 审批人, decode(t.wszt,''1'',''正式'',''2'',''未正式'') 文书状态, t.JYW 校验位', 'test.ACD_CONSIGNTEST t', 't.SGBH=? and t.wsbh=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('015', 'SGBH 事故编号, WSBH 文书编号, trim(DBMS_LOB.SUBSTR(jbss,4000)) 基本事实, trim(DBMS_LOB.SUBSTR(DSFQK,4000)) 当事方情况, trim(DBMS_LOB.SUBSTR(RDNR,4000)) 认定内容, trim(DBMS_LOB.SUBSTR(BARYJ,4000)) 办案人意见, trim(DBMS_LOB.SUBSTR(ZJYJ,4000)) 专家意见, CBR1 承办人1, CBR2 承办人2, XBRQ 宣布日期, TQSPRQ 提请审批日期, SPRQ 审批日期, SPR 审批人, JBR 经办人, decode(wszt,''1'',''正式'',''2'',''未正式'') 文书状态, JYW 校验位', 'test.ACD_DUTY', 'SGBH=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('019', 't.SGBH 事故编号, t.RYBH 人员编号, t.XM 姓名, decode（t.XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证明号码, t.NL 年龄, t.ZZ 住址, t.DH 电话, d1.dmsm1 人员类型, t.SHCD 伤害程度, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.wfxw1 end 主要违法行为, case when c1.wfms is not null then c1.wfms when d11.dmsm1 is not null then d11.dmsm1 else t.wfxw2 end 其他违法行为一, case when c2.wfms is not null then c2.wfms when d12.dmsm1 is not null then d12.dmsm1 else t.wfxw3 end 其他违法行为二, t.TK1 条款内容1, t.TK2 条款内容2, t.TK3 条款内容3, t.ZYYSDW 专业运输单位, d2.dmsm1 交通方式, t.GLXZQH 管理行政区划, t.DABH 驾证档案编号, t.JL 驾龄, d9.dmsm1 驾驶证种类, test.transformcode(t.ZJCX,''00'',''2001'') 准驾车型, t.CCLZRQ 初次领证日期, t.JSRGXD 驾驶人管辖地, t.FZJG 发证机关, d4.dmsm1 事故责任, completehphm(t.hphm,t.hpzl) 号牌号码, d3.dmsm1 号牌种类, t.CLFZJG 车辆发证机关, t.CLPP 车辆品牌, t.CLXH 车辆型号, d6.dmsm1 车身颜色, d5.dmsm1 车辆类型, d8.dmsm1 机动车状态, decode(t.SYQ,''1'',''单位'',''2'',''个人'') 所有权, t.JDCSYR 机动车所有人, d7.dmsm1 车辆使用性质, decode(BX,''1'',''是'',''2'',''否'') 保险, t.BXGS 保险公司, t.BXPZH 保险凭证号, t.CLGXD 车辆管辖地, t.CJCXBJ 车驾查询标记, t.JYW 校验位', 'test.ACD_DUTYSIMPLEHUMAN t left join test.frm_code d1 on d1.dmz=t.RYLX and d1.xtlb=''04'' and d1.dmlb=''0080'' left join test.frm_code d2 on d2.dmz=t.JTFS and d2.xtlb=''04'' and d2.dmlb=''0001'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.SGZR and d4.xtlb=''00'' and d4.dmlb=''3138'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004''  left join test.frm_code d6 on d6.dmz=t.CSYS and d6.xtlb=''00'' and d6.dmlb=''1008'' left join test.frm_code d7 on d7.dmz=t.clsyxz and d7.xtlb=''03'' and d7.dmlb=''0139'' left join test.frm_code d8 on d8.dmz=t.jdczt and d8.xtlb=''00'' and d8.dmlb=''1017'' left join test.frm_code d9 on d9.dmz=t.jszzl and d9.xtlb=''03'' and d9.dmlb=''0136'' left join test.frm_code d on d.dmz = t.wfxw1 and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.wfxw1 left join test.frm_code d11 on d11.dmz = t.wfxw2 and d11.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c1 on c1.wfxw = t.wfxw2 left join test.frm_code d12 on d12.dmz = t.wfxw3 and d12.dmlb = ''0160'' and d12.xtlb = ''03'' left join test.vio_codewfdm c2 on c2.wfxw = t.wfxw2', 't.SGBH=? and t.rybh=?');
insert into PSA_COLLIDE_SQL (ID, FIELDS, TABLENAME, CONDITION)
values ('012', 't.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, t.BAR1 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, d8.dmsm1 事故初查原因分类, d9.dmsm1 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数', 'test.ACD_FILE t left join test.frm_code d1 on d1.dmz = t.sglx and d1.xtlb = ''03'' and d1.dmlb = ''0901'' left join test.frm_code d2 on d2.dmz = t.sgccyy and d2.xtlb = ''03'' and d2.dmlb = ''0160'' left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz = t.DCSG and d7.xtlb = ''03'' and d7.dmlb = ''0138'' left join test.frm_code d8 on d8.dmz = t.CCYYFL and d8.xtlb = ''03'' and d8.dmlb = ''0115'' left join test.frm_code d9 on d9.dmz = t.RDYYFL and d9.xtlb = ''03'' and d9.dmlb = ''0115''', 't.SGBH=?');
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('018', 't.SGBH 事故编号, t.XQ 星期, t.SGFSSJ 事故发生时间, t.XZQH 行政区划, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.SSRS 受伤人数, t.ZJCCSS 直接财产损失, t.LWSGLX 路外事故类型, d9.dmsm1 事故认定原因分类, d3.dmsm1 事故认定原因, d5.dmsm1 天气, d6.dmsm1 现场, decode(t.SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, t.CLJSG 车辆间事故, t.DCSG 单车事故, decode(t.PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, t.TJR1 调解人1, t.CCLRSJ 初次录入时间, case when t.spr is not null then to_date(''20'' || substr(t.spr,1,8) || '' '' || substr(t.spr,10,5) || '':00'',''yyyy-MM-dd hh24:mi:ss'') end 审批日, t.SCSJD 上传时间段, dz.deptshortname 所属中队, t.DAH 档案号, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.TJSGBH 统计事故编号, dg.deptshortname 管理部门, t.DZZB 电子坐标, t.BADW 办案单位, t.WSBH 文书编号, t.SGSS 事故事实, t.ZRTJJG 责任调解结果, t.JAR1 接案人1, t.JAR2 接案人2, t.JBR 经办人, t.GXSJ 更新时间, t.JYW 校验位, decode(t.jafs,''1'',''调解结案'',''2'',''不同意结案'',''3'',''对认定有异议'',''4'',''拒绝签字'') 简易结案方式, d8.dmsm1 道路类型, d7.dmsm1 公路行政等级, decode(t.TJFS,''1'',''自行协商'',''2'',''人民调解'',''3'',''行政调解'',''4'',''司法调解'') 调解方式', 'test.ACD_DUTYSIMPLE t left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz=t.glxzdj and d7.xtlb=''00'' and d7.dmlb=''3116'' left join test.frm_code d8 on d8.dmz=t.dllx and d8.xtlb=''00'' and d8.dmlb=''3124'' left join test.frm_code d9 on t.RDYYFL=d9.dmz and d9.xtlb=''03'' and d9.dmlb=''0115'' left join department dz on dz.cdepartmentid=t.sszd left join department dg on dg.cdepartmentid=t.glbm', 't.SGBH=?');

--37740
update psa_exc_value_relation set REMARK='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"syxzn","value":"value2"},{"desc":"强措类型","key":"qzcslx","value":"value3"},{"desc":"处罚时间","key":"cfsj","value":"value4"}]'
WHERE ID ='030';
update psa_exc_value_relation set REMARK='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"syxzn","value":"value2"},{"desc":"处理时间","key":"clsj","value":"value3"},{"desc":"出场时间","key":"ccsj","value":"value4"},{"desc":"停车场","key":"tcc","value":"value5"}]'
WHERE ID ='031';
update psa_exc_value_relation SET REMARK='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"车辆使用性质","key":"syxzn","value":"value2"},{"desc":"还证日期","key":"hzrq","value":"value3"},{"desc":"处理时间","key":"clsj","value":"value4"}]'
WHERE ID ='032';
update psa_exc_value_relation set REMARK ='[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"处罚种类","key":"cfzl","value":"value2"}]' where id='033';
--37843
update psa_exc_value_relation set REMARK='[{"desc":"车辆类型","key":"cllxn","value":"value1"},{"desc":"驾驶证号","key":"jszh","value":"value2"},{"desc":"身份证号","key":"sfzh","value":"value3"},{"desc":"违法记分数","key":"wfjfs","value":"value4"}]'
where id='022';
--37873
delete from psa_monitor_field_relation t where t.id between '216' and '219';
update psa_monitor_field_relation set colnum='3' where id='220';
update psa_monitor_field_relation set colnum='4' where id='221';
update psa_monitor_field_relation set colnum='5' where id='222';
update psa_monitor_field_relation set colnum='6' where id='223';
insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'ajzs', 2, '372');
insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0310', 'cglxs', 1, '371');
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cglxs', '篡改当事人类型案件数', 'Y', 180, '004', '190');
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ajzs', '案件总数', 'N', 100, null, '191');
update psa_exc_value_relation set REMARK='[{"desc":"篡改当事人类型案件数","key":"cglxs","value":"value1"},{"desc":"案件总数","key":"ajzs","value":"value2"}]'  where id='026';
--36502
update psa_monitor_execute_config set class_name='com.hisense.hiatmp.psa.adapter.danger.handlers.EnforcementNonOpen' where monitor_id='0411' ;

--危化品监管，违法时间可能是强措也可能是处罚决定书
insert into PSA_WARNING_FIELD (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wfsjwh', '违法时间', 'Y', 180, '003,004', '209');
update psa_monitor_field_relation set fieldid='wfsjwh' where id in ('226','234','282');

--【一人为多车处理违法】：预警列表中，点击【车辆数
update psa_warning_field set sqlid='020' where fieldname='车辆数';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('020', 'completehphm(t.hphm,t.hpzl) 号牌号码, d1.dmsm1 号牌种类, d4.dmsm1 使用性质, t.SYR 机动车所有人', 'test.vehicle t left join test.frm_code d1 on d1.dmz=t.hpzl and d1.xtlb=''00'' and d1.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' ', 't.hphm = ? and t.hpzl=?');

--接案人改为不可点击
update psa_warning_field set iscollide='N' where fieldname='接案人';

--删除开启时间
delete from psa_monitor_field_relation where id='057';
delete from psa_monitor_field_relation where id='283';

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('135', '', 'psa_vehicle_indelay_date', '', '3', '', '涉案车辆可配置入场时间-违法时间的天数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('136', '', 'psa_vehicle_incompletedelay_date', '1', '2', '', '涉案车辆-扣车手续不全 允许延迟时间的天数');

update psa_monitor_param_config t1 set t1.description = '事故抽取时间范围可配置参数(默认抽取一年的数据)' where t1.param_code = 'psa_accident_date_range';
update psa_monitor_param_config t  set  t.param_value = '1,6' where t.param_code = 'psa_qzcslx';

update psa_monitor_execute_config t set t.del_flag='1' where t.monitor_id='0701';

--酒驾
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A501', '', 'psa_drunk_different_codewfsj', '1', '1', '', '醉酒驾强制措施值与酒精测试仪值不一样违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A502', '', 'psa_drunk_different_codelrsj', '1', '1', '', '醉酒驾强制措施值与酒精测试仪值不一样录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A503', '', 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', '', '醉酒驾超期未处理时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A504', '', 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', '', '醉酒驾超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A505', '', 'psa_drunk_forcecross_wfsj', '1', '1', '', '醉酒驾强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A506', '', 'psa_drunk_forcecross_lrsj', '1', '1', '', '醉酒驾强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A507', '', 'psa_drunk_force_wfsj', '1', '1', '', '醉酒驾未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A508', '', 'psa_drunk_force_beginend', '1', '1', '', '醉酒驾未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A509', '', 'psa_drunk_violation_wfsj', '1', '30', '', '醉酒驾处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A510', '', 'psa_drunk_viosuspend_wfsj', '1', '30', '', '醉酒驾未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A511', '', 'psa_drunk_casehandletimeout_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾超期未处理违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A512', '', 'psa_drunk_forcecross_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾强措跨档违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A513', '', 'psa_drunk_operationdrunk_syxz', '1', 'B,C,D,E,F,R', '', '醉酒驾营运酒驾未按规定处罚使用性质代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A514', '', 'psa_drunk_operationdrunk_wfxw', '1', '17129,60320', '', '醉酒驾营运酒驾未按规定处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A515', '', 'psa_drunk_seconddrunk_drink_wfxw', '1', '17129,60340', '', '醉酒驾二次酒驾未按规定处罚酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A516', '', 'psa_drunk_seconddrunk_drink_drunk_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾二次酒驾未按规定处罚酒驾醉驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A517', '', 'psa_drunk_violation_force_wfxw', '1', '60330,60320,60220,60350', '', '醉酒驾处罚决定书跨强措档违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A518', '', 'psa_drunk_violation_violation_wfxw', '1', '17129,60340', '', '醉酒驾处罚决定书跨档处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A519', '', 'psa_drunk_viosuspend_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾未吊销暂扣驾驶证违法行为代码');
--20191112新增
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A520', '', 'psa_drunk_case_force_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾案件生成强措获取违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION) values ('A521', '', 'psa_drunk_case_violation_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '醉酒驾案件生成行政处罚决定书获取违法行为代码');

commit;


-----------A6----------
--监管点0404及0203本次测试除外，需在支队环境测试。需访问大数据接口。
--update psa_monitor_execute_config set del_flag='1' where monitor_id='0404' and exe_type='0';
--update psa_monitor_execute_config set del_flag='1' where monitor_id='0203' and exe_type='0';

--38294
update psa_monitor_param_config c set c.param_value='1,6' where c.param_code='psa_danger_qcType';
delete FROM psa_monitor_param_config t where t.id in ('200','201','202','203','204','205','206','207','208', '209');
delete from psa_monitor_execute_config where id='78';
insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('78', 'com.hisense.hiatmp.psa.adapter.collect.alcometer.execute.VideoInfoCollectExecute', '0261', '0', to_date('02-09-2019 19:41:22', 'dd-mm-yyyy hh24:mi:ss'), to_date('02-09-2019 19:41:23', 'dd-mm-yyyy hh24:mi:ss'), '执法记录仪抽出类', '1');
--机动车表的号牌号码补全鲁字
update psa_collide_sql set fields= '''鲁''||t.hphm 号牌号码, d1.dmsm1 号牌种类, d4.dmsm1 使用性质, t.SYR 机动车所有人' where id='002';
update psa_collide_sql set FIELDS='completehphm(t.hphm,t.hpzl) 号牌号码, d6.dmsm1 号牌种类, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, nvl(pl.policename,t.lrr) 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''2'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''1'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''1'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式'
where id='004';
update psa_collide_sql set FIELDS='d1.enumname 号牌种类, t.CCARNUMBER 号牌号码, t.CADDRESSCODE 采集地点, t.CCOLLECTIONAGENCIES 采集机关编号, d2.enumname 数据来源, d4.enumname 抓拍类型, t.CDEVICECODE 设备编号, t.CLANENUMBER 车道编号, t.CPIC1PATH 图片路径, t.NDERICTRION 方向编号, d3.enumname 车身颜色, d6.enumname 车标, t.CHISCARNUMBER 历史号牌, decode(TARGETTYPE,''01'',''机动车'',''02'',''非机动车'',''03'',''行人'') 目标类型, t.DATAUPLOADTIME 数据上传时间, t.DATASAVETIME 入库时间, d7.enumname 号牌颜色, d8.enumname 车辆类型'
where id='010';

update PSA_WARNING_FIELD Set ISCOLLIDE='N' where id='190';

update psa_monitor_param_config tt set tt.param_value = 'A' where tt.param_code = 'psa_deduct_status';


update psa_monitor_param_config tt set tt.param_value = '370203,370213,370202,370212,370295,370297,370298' where tt.param_code = 'psa_park_department';

delete from psa_collide_sql t where t.id in ('012','013','018','017');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('013', 't.SGBH 事故编号, t.WSBH 文书编号, t.RYBH 人员编号, t.JDDX 鉴定对象, t.WTSX 委托事项, t.WTRQ 委托日期, t.WTJG 委托机构, t.YDJYRQ 约定检验日期, t.JTYQ 具体要求, t.SJCL 送检材料, t.BAR1 办案人1, t.BAR2 办案人2, p.policename 经办人, t.CQ 超期, t.CXJYJD 重新检验鉴定, decode(YDYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 约定延期, decode(WTYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 委托延期, t.TQSPRQ 提请审批日期, t.SPRQ 审批日期, t.SPR 审批人, decode(t.wszt,''1'',''正式'',''2'',''未正式'') 文书状态, t.JYW 校验位', 'test.ACD_CONSIGNTEST t left join police_data p on p.policeid=t.JBR', 't.SGBH=? and t.wsbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('012', 't.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, p.policename 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, d8.dmsm1 事故初查原因分类, d9.dmsm1 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数', 'test.ACD_FILE t left join test.frm_code d1 on d1.dmz = t.sglx and d1.xtlb = ''03'' and d1.dmlb = ''0901'' left join test.frm_code d2 on d2.dmz = t.sgccyy and d2.xtlb = ''03'' and d2.dmlb = ''0160'' left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz = t.DCSG and d7.xtlb = ''03'' and d7.dmlb = ''0138'' left join test.frm_code d8 on d8.dmz = t.CCYYFL and d8.xtlb = ''03'' and d8.dmlb = ''0115'' left join test.frm_code d9 on d9.dmz = t.RDYYFL and d9.xtlb = ''03'' and d9.dmlb = ''0115''  left join police_data p on p.policeid=t.BAR1', 't.SGBH=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('018', 't.SGBH 事故编号, t.XQ 星期, t.SGFSSJ 事故发生时间, t.XZQH 行政区划, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.SSRS 受伤人数, t.ZJCCSS 直接财产损失, t.LWSGLX 路外事故类型, d9.dmsm1 事故认定原因分类, d3.dmsm1 事故认定原因, d5.dmsm1 天气, d6.dmsm1 现场, decode(t.SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, t.CLJSG 车辆间事故, t.DCSG 单车事故, decode(t.PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, t.TJR1 调解人1, t.CCLRSJ 初次录入时间, case when t.spr is not null then to_date(''20'' || substr(t.spr,1,8) || '' '' || substr(t.spr,10,5) || '':00'',''yyyy-MM-dd hh24:mi:ss'') end 审批日, t.SCSJD 上传时间段, dz.deptshortname 所属中队, t.DAH 档案号, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.TJSGBH 统计事故编号, dg.deptshortname 管理部门, t.DZZB 电子坐标, t.BADW 办案单位, t.WSBH 文书编号, t.SGSS 事故事实, t.ZRTJJG 责任调解结果, p.policename 接案人1, t.JAR2 接案人2, t.JBR 经办人, t.GXSJ 更新时间, t.JYW 校验位, decode(t.jafs,''1'',''调解结案'',''2'',''不同意结案'',''3'',''对认定有异议'',''4'',''拒绝签字'') 简易结案方式, d8.dmsm1 道路类型, d7.dmsm1 公路行政等级, decode(t.TJFS,''1'',''自行协商'',''2'',''人民调解'',''3'',''行政调解'',''4'',''司法调解'') 调解方式', 'test.ACD_DUTYSIMPLE t left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz=t.glxzdj and d7.xtlb=''00'' and d7.dmlb=''3116'' left join test.frm_code d8 on d8.dmz=t.dllx and d8.xtlb=''00'' and d8.dmlb=''3124'' left join test.frm_code d9 on t.RDYYFL=d9.dmz and d9.xtlb=''03'' and d9.dmlb=''0115'' left join department dz on dz.cdepartmentid=t.sszd left join department dg on dg.cdepartmentid=t.glbm left join police_data p on p.policeid=t.jar1', 't.SGBH=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('017', 'SGBH 事故编号, DABH 档案编号, d.deptshortname 管理部门, decode(JY,''1'',''是'',''否'') 简易, QZH 全宗号, MLH 目录号, AJH 案卷号, GDH 归档号, AJMC 案卷题名, BGQX 保管期限, p.policename 经办人, GDRQ 归档日期, QKSM 情况说明, CFWZ 存放位置, LJR 立卷人, BZ 备注', 'test.ACD_GFILE left join department d on d.cdepartmentid=glbm left join police_data p on p.policeid=jbr', 'SGBH=? and JY=?');


update psa_collide_sql set FIELDS = 't.SNO 案件编号, t.ENTRY_TIME 入场时间, decode(s.status,1,''已确认'',2,''已放行'',11,''审核驳回'',12,''申请通过'',13,''放行申请中直接领导审核'',14,''等待高级领导审核'',20,''新增待确认'') 状态, ip.name 所在停车场, p.name 扣车民警, fp.name 办案民警, d.name 所属单位, to_char(t.SCENE_TIME,''yyyy-mm-dd'') 扣车时间, t.ADDRESS 扣车地点, dd.name 案件类别, dw.name 违法行为, dc.name 车辆种类, t.HPHM 车牌号, t.CLPP 车辆品牌, t.COLOR 车辆颜色, t.PASS_END_TIME 出场时间'
 where id = '005';
 
delete from psa_monitor_param_config t where t.param_code like 'psa_drunk%';
commit;

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_200', '', 'psa_drunk_different_codewfsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_201', '', 'psa_drunk_different_codelrsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_202', '', 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', '', '酒醉驾超期未处理时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_203', '', 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', '', '酒醉驾超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_204', '', 'psa_drunk_forcecross_wfsj', '1', '1', '', '酒醉驾强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_205', '', 'psa_drunk_forcecross_lrsj', '1', '1', '', '酒醉驾强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_206', '', 'psa_drunk_force_wfsj', '1', '1', '', '酒醉驾未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_207', '', 'psa_drunk_force_beginend', '1', '1', '', '酒醉驾未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_208', '', 'psa_drunk_violation_wfsj', '1', '30', '', '酒醉驾处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_209', '', 'psa_drunk_viosuspend_wfsj', '1', '30', '', '酒醉驾未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_220', '', 'psa_drunk_case_force_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成强措获取违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_221', '', 'psa_drunk_case_violation_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成行政处罚决定书获取违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_222', '', 'psa_drunk_common_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾公共违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_223', '', 'psa_drunk_enforceinstrument_time', '1', '2', '', '酒醉驾执法记录仪有效时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_210', '', 'psa_drunk_casehandletimeout_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾超期未处理违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_211', '', 'psa_drunk_forcecross_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强措跨档违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_212', '', 'psa_drunk_operationdrunk_syxz', '1', 'B,C,D,E,F,R', '', '酒醉驾营运酒驾未按规定处罚使用性质代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_213', '', 'psa_drunk_operationdrunk_wfxw', '1', '17129,60320', '', '酒醉驾营运酒驾未按规定处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_214', '', 'psa_drunk_seconddrunk_drink_wfxw', '1', '17129,60340', '', '酒醉驾二次酒驾未按规定处罚酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_215', '', 'psa_drunk_seconddrunk_drink_drunk_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾二次酒驾未按规定处罚酒驾醉驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_216', '', 'psa_drunk_violation_force_wfxw', '1', '60330,60320,60220,60350', '', '酒醉驾处罚决定书跨档强措违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_217', '', 'psa_drunk_violation_violation_wfxw', '1', '17129,60340', '', '酒醉驾处罚决定书跨档处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_218', '', 'psa_drunk_viosuspend_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾未吊销暂扣驾驶证违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_219', '', 'psa_drunk_alcometerUnconsistentWithforce_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强制措施值与酒精测试仪值不一致强措违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_224', '', 'psa_drunk_common_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾公共违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_002', '01', 'psa_drunk_monitor_info', '1', '01', '', '酒醉驾监管项id配置');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_39', '', 'psa_drunk_date_param', '1', '2', '', '酒醉驾可配置碰撞时间范围');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_61', '', 'psa_drunk_cross_param', '1', '1', '', '酒醉驾强措跨档可配置参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_62', '', 'psa_drunk_violation_param', '1', '2', '', '酒醉驾未暂扣吊销驾证可配置参数');

commit;

-----------A7------------------

--38747
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('701', null, 'psa_danger_enforceinstrument_time', '1', '2', null, '危化品执法记录仪有效时间阈值');

--38769
update psa_monitor_field_relation set FIELDID='ccsjgcsj' where id='109';
insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ccsjgcsj', '出场时间/过车时间', 'Y', 180, '005,021', '200');
update psa_exc_value_relation set REMARK='[{"desc":"出场时间","key":"ccsjgcsj","value":"value1"}]' where id='013';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('021', 'null 号牌号码, null 采集时间, null 采集地点, null 危险品车', 'dual', '1=1');

delete from psa_collide_sql where id='010';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('010', 'null 号牌号码, null 号牌种类, null 采集时间, null 采集地点, null 车辆速度, null 车身颜色, null 号牌颜色, null 车辆类型, null 数据上传时间, null 危险品车', 'detect_speed_data t  left join enum_type d1 on d1.enumvalue = t.CLICENSETYPE and d1.enumtypeid=''170'' left join enum_type d2 on d2.enumvalue=t.cdatasource and d2.enumtypeid=''7201'' left join enum_type d3 on d3.enumvalue=t.carcolor and d3.enumtypeid=''745'' left join enum_type d4 on d4.enumvalue=t.CSNAPTYPE and d4.enumtypeid=''148'' left join enum_type d5 on d5.enumvalue=t.NDERICTRION and d5.enumtypeid=''702'' left join enum_type d6 on d6.enumvalue=t.CARBRAND and d6.enumtypeid=''747'' left join enum_type d7 on d7.enumvalue=t.PLATECOLOR and d7.enumtypeid=''156'' left join enum_type d8 on d8.enumvalue=t.VEHICLETYPE and d8.enumtypeid=''833''', 't.nid=? and t.dcollectiondate=to_date(?,''yyyy-mm-dd hh24:mi:ss'')');

--点检问题
update psa_warning_field t set t.displaywidth = '250' where t.id = '046';
delete from psa_monitor_field_relation t where t.id = '193';
update psa_monitor_field_relation t set t.colnum = '4' where t.id = '226';
update psa_monitor_field_relation t set t.colnum = '3' where t.id = '227';


update PSA_MONITOR_EXE_PLAN_CONFIG set FULL_FLAG = '0' where FRE_TYPE = '1';

update PSA_MONITOR_EXE_PLAN_CONFIG set FULL_FLAG = '1' where FRE_TYPE = '1'
and MONITOR_ID in ('0260','0221','0262','0102','0402','0407','0408','0409','0410');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('20191213', '', 'psa_illegal_split_days', '1', '5', '', '违法拆单前退时间阈值(天)');

delete from psa_monitor_param_config t where t.param_code like 'psa_drunk%';
commit;

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_200', '', 'psa_drunk_different_codewfsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_201', '', 'psa_drunk_different_codelrsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_202', '', 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', '', '酒醉驾超期未处理时间差阈值（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_203', '', 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', '', '酒醉驾超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_204', '', 'psa_drunk_forcecross_wfsj', '1', '1', '', '酒醉驾强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_205', '', 'psa_drunk_forcecross_lrsj', '1', '1', '', '酒醉驾强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_206', '', 'psa_drunk_force_wfsj', '1', '1', '', '酒醉驾未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_207', '', 'psa_drunk_force_beginend', '1', '1', '', '酒醉驾未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_208', '', 'psa_drunk_violation_wfsj', '1', '30', '', '酒醉驾处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_209', '', 'psa_drunk_viosuspend_wfsj', '1', '30', '', '酒醉驾未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_220', '', 'psa_drunk_case_force_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成强措获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_221', '', 'psa_drunk_case_violation_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成行政处罚决定书获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_222', '', 'psa_drunk_common_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾公共违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_223', '', 'psa_drunk_enforceinstrument_time', '1', '2', '', '酒醉驾执法记录仪有效时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_210', '', 'psa_drunk_casehandletimeout_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾超期未处理违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_211', '', 'psa_drunk_forcecross_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强措跨档违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_212', '', 'psa_drunk_operationdrunk_syxz', '1', 'B,C,D,E,F,R', '', '酒醉驾营运酒驾未按规定处罚使用性质代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_213', '', 'psa_drunk_operationdrunk_wfxw', '1', '17129,60320', '', '酒醉驾营运酒驾未按规定处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_214', '', 'psa_drunk_seconddrunk_drink_wfxw', '1', '17129,60340', '', '酒醉驾二次酒驾未按规定处罚酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_215', '', 'psa_drunk_seconddrunk_drink_drunk_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾二次酒驾未按规定处罚酒驾醉驾违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_216', '', 'psa_drunk_violation_force_wfxw', '1', '60330,60320,60220,60350', '', '酒醉驾处罚决定书跨档强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_217', '', 'psa_drunk_violation_violation_wfxw', '1', '17129,60340', '', '酒醉驾处罚决定书跨档处罚违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_218', '', 'psa_drunk_viosuspend_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾未吊销暂扣驾驶证违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_219', '', 'psa_drunk_alcometerUnconsistentWithforce_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强制措施值与酒精测试仪值不一致强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_002', '01', 'psa_drunk_monitor_info', '1', '01', '', '酒醉驾监管项id配置');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_39', '', 'psa_drunk_date_param', '1', '2', '', '酒醉驾可配置碰撞时间范围');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_61', '', 'psa_drunk_cross_param', '1', '1', '', '酒醉驾强措跨档可配置参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_62', '', 'psa_drunk_violation_param', '1', '2', '', '酒醉驾未暂扣吊销驾证可配置参数');

commit;

-----------A8-----------

delete from psa_monitor_param_config t where t.param_code like 'psa_drunk%';

commit;

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_002', '01', 'psa_drunk_monitor_info', '1', '01', '', '酒醉驾监管项id配置');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_200', '', 'psa_drunk_different_codewfsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_201', '', 'psa_drunk_different_codelrsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_202', '', 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', '', '酒醉驾超期未处理时间差阈值（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_203', '', 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', '', '酒醉驾超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_204', '', 'psa_drunk_forcecross_wfsj', '1', '0', '', '酒醉驾强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_205', '', 'psa_drunk_forcecross_lrsj', '1', '6', '', '酒醉驾强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_206', '', 'psa_drunk_force_wfsj', '1', '1', '', '酒醉驾未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_207', '', 'psa_drunk_force_beginend', '1', '1', '', '酒醉驾未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_208', '', 'psa_drunk_violation_wfsj', '1', '30', '', '酒醉驾处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_209', '', 'psa_drunk_viosuspend_wfsj', '1', '30', '', '酒醉驾未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_210', '', 'psa_drunk_casehandletimeout_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾超期未处理违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_211', '', 'psa_drunk_forcecross_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强措跨档违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_212', '', 'psa_drunk_operationdrunk_syxz', '1', 'B,C,D,E,F,R', '', '酒醉驾营运酒驾未按规定处罚使用性质代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_213', '', 'psa_drunk_operationdrunk_wfxw', '1', '17129,60320', '', '酒醉驾营运酒驾未按规定处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_214', '', 'psa_drunk_seconddrunk_drink_wfxw', '1', '17129,60340', '', '酒醉驾二次酒驾未按规定处罚酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_215', '', 'psa_drunk_seconddrunk_drink_drunk_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾二次酒驾未按规定处罚酒驾醉驾违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_216', '', 'psa_drunk_violation_force_wfxw', '1', '60330,60320,60220,60350', '', '酒醉驾处罚决定书跨档强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_217', '', 'psa_drunk_violation_violation_wfxw', '1', '17129,60340', '', '酒醉驾处罚决定书跨档处罚违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_218', '', 'psa_drunk_viosuspend_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾未吊销暂扣驾驶证违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_219', '', 'psa_drunk_alcometerUnconsistentWithforce_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强制措施值与酒精测试仪值不一致强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_220', '', 'psa_drunk_case_force_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成强措获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_221', '', 'psa_drunk_case_violation_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成行政处罚决定书获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_222', '', 'psa_drunk_common_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾公共违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_223', '', 'psa_drunk_enforceinstrument_time', '1', '2', '', '酒醉驾执法记录仪有效时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_224', '', 'psa_drunk_except_drunk_accident_wfxw', '1', '17129,60340,60330,60320,60350', '', '酒醉驾不含60220违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_225', '', 'psa_drunk_seconddrunk_wfxw', '1', '60350', '', '酒醉驾二次酒驾未按规定处罚二次酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_39', '', 'psa_drunk_date_param', '1', '2', '', '酒醉驾可配置碰撞时间范围（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_61', '', 'psa_drunk_cross_param', '1', '1', '', '酒醉驾强措跨档可配置参数（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_62', '', 'psa_drunk_violation_param', '1', '2', '', '酒醉驾未暂扣吊销驾证可配置参数（暂时未用到）');

commit;

delete from psa_monitor_exe_plan_config;
insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('99', '0260', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('97', '0262', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('42', '0261', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('33', '0504', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('35', '0506', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('31', '0502', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('32', '0503', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('37', '0508', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('30', '0501', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('38', '0509', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('36', '0507', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('34', '0505', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('28', '0409', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('27', '0408', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('6', '0203', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('12', '0219', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('10', '0213', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('7', '0205', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('11', '0217', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('21', '0401', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('25', '0406', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('24', '0405', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('26', '0407', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('22', '0402', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('23', '0403', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('8', '0206', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('13', '0221', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('2', '0101', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('3', '0102', '0 0 1/2 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('5', '0204', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('19', '03', '0 30 2 * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('29', '05', '0 30 2 * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('20', '04', '0 30 2 * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('4', '02', '0 30 2 * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('1', '01', '0 30 2 * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config ( ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('40', '0410', '0 0 1/2 * * ?', '1', '1', '1');


delete from PSA_ILLEGAL_TYPE;
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0011', '001', '酒驾', '17129', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0012', '001', '酒驾', '60220', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0013', '001', '酒驾', '60320', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0014', '001', '酒驾', '60330', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0015', '001', '酒驾', '60340', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0016', '001', '酒驾', '60350', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0021', '002', '毒驾', '50350', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0031', '003', '超员', '16230', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0032', '003', '超员', '13480', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0033', '003', '超员', '16210', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0034', '003', '超员', '16270', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0035', '003', '超员', '16260', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0036', '003', '超员', '17105', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0037', '003', '超员', '17106', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0038', '003', '超员', '17160', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0039', '003', '超员', '17140', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0041', '004', '货运机动车违法载人', '16380', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0042', '004', '货运机动车违法载人', '16383', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0051', '005', '非法改装机动车', '10870', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0061', '006', '挪用号牌', '57040', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0062', '006', '挪用号牌', '57049', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0063', '006', '挪用号牌', '57050', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0064', '006', '挪用号牌', '57059', '03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0072', '007', '无牌无证', '10051','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0073', '007', '无牌无证', '10052','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0074', '007', '无牌无证', '10053','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0075', '007', '无牌无证', '10054','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0076', '007', '无牌无证', '10061','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0077', '007', '无牌无证', '10062','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0078', '007', '无牌无证', '10063','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0079', '007', '无牌无证', '10064','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0070', '007', '无牌无证', '16130','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007a', '007', '无牌无证', '17170','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007b', '007', '无牌无证', '10100','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007c', '007', '无牌无证', '10820','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007d', '007', '无牌无证', '17091','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007e', '007', '无牌无证', '17092','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007f', '007', '无牌无证', '17093','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007g', '007', '无牌无证', '17094','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007h', '007', '无牌无证', '16101','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007i', '007', '无牌无证', '16102','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007j', '007', '无牌无证', '60550','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007k', '007', '无牌无证', '16103','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007l', '007', '无牌无证', '16104','03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('007m', '007', '无牌无证', '60540','03');


insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0081', '008', '伪造变造号牌', '50028', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0082', '008', '伪造变造号牌', '50029', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0083', '008', '伪造变造号牌', '50030', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0084', '008', '伪造变造号牌', '50039', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0085', '008', '伪造变造号牌', '57019', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0086', '008', '伪造变造号牌', '57029', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0087', '008', '伪造变造号牌', '57030', '03');

insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0091', '009', '货车超载', '13530', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0092', '009', '货车超载', '13540', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0093', '009', '货车超载', '16372', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0094', '009', '货车超载', '16373', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0095', '009', '货车超载', '16375', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0096', '009', '货车超载', '16376', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0097', '009', '货车超载', '16377', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0098', '009', '货车超载', '16390', '03');
insert into PSA_ILLEGAL_TYPE (ID, TYPEID, TYPENAME, VIOCODE, MONITORID)
values ('0099', '009', '货车超载', '50460', '03');

commit;


---------A9-----------

delete from psa_monitor_exe_plan_config  where fre_type = '1' and full_flag = '1';

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('99', '0260', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('97', '0262', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('28', '0409', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('27', '0408', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('26', '0407', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('22', '0402', '0 0 0 * * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('13', '0221', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('3', '0102', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('40', '0410', '0 0 0 1/2 * ?', '1', '1', '1');


delete from psa_monitor_param_config t where t.param_code like 'psa_drunk%';

commit;

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_224', '', 'psa_drunk_except_drunk_accident_wfxw', '1', '17129,60340,60330,60320,60350', '', '酒醉驾不含60220违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_200', '', 'psa_drunk_different_codewfsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致违法时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_201', '', 'psa_drunk_different_codelrsj', '1', '1', '', '酒醉驾强制措施值与酒精测试仪值不一致录入时间范围阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_202', '', 'psa_drunk_different_caseHandleTimeOut_minus', '1', '30', '', '酒醉驾超期未处理时间差阈值（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_203', '', 'psa_drunk_different_caseHandleTimeOut_lrsj', '1', '30', '', '酒醉驾超期未处理录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_204', '', 'psa_drunk_forcecross_wfsj', '1', '1', '', '酒醉驾强错跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_205', '', 'psa_drunk_forcecross_lrsj', '1', '1', '', '酒醉驾强错跨档录入时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_206', '', 'psa_drunk_force_wfsj', '1', '1', '', '酒醉驾未开强措违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_207', '', 'psa_drunk_force_beginend', '1', '1', '', '酒醉驾未开强措开始结束时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_208', '', 'psa_drunk_violation_wfsj', '1', '30', '', '酒醉驾处罚决定书跨档违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_209', '', 'psa_drunk_viosuspend_wfsj', '1', '30', '', '酒醉驾未吊销/暂扣驾驶证违法时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_220', '', 'psa_drunk_case_force_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成强措获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_221', '', 'psa_drunk_case_violation_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾案件生成行政处罚决定书获取违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_222', '', 'psa_drunk_common_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾公共违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_223', '', 'psa_drunk_enforceinstrument_time', '1', '2', '', '酒醉驾执法记录仪有效时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_210', '', 'psa_drunk_casehandletimeout_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾超期未处理违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_211', '', 'psa_drunk_forcecross_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强措跨档违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_212', '', 'psa_drunk_operationdrunk_syxz', '1', 'B,C,D,E,F,R', '', '酒醉驾营运酒驾未按规定处罚使用性质代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_213', '', 'psa_drunk_operationdrunk_wfxw', '1', '17129,60320', '', '酒醉驾营运酒驾未按规定处罚违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_214', '', 'psa_drunk_seconddrunk_drink_wfxw', '1', '17129,60340', '', '酒醉驾二次酒驾未按规定处罚酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_215', '', 'psa_drunk_seconddrunk_drink_drunk_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾二次酒驾未按规定处罚酒驾醉驾违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_216', '', 'psa_drunk_violation_force_wfxw', '1', '60330,60320,60220,60350', '', '酒醉驾处罚决定书跨档强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_217', '', 'psa_drunk_violation_violation_wfxw', '1', '17129,60340', '', '酒醉驾处罚决定书跨档处罚违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_218', '', 'psa_drunk_viosuspend_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾未吊销暂扣驾驶证违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_219', '', 'psa_drunk_alcometerUnconsistentWithforce_wfxw', '1', '17129,60340,60330,60320,60220,60350', '', '酒醉驾强制措施值与酒精测试仪值不一致强措违法行为代码（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_002', '01', 'psa_drunk_monitor_info', '1', '01', '', '酒醉驾监管项id配置');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_39', '', 'psa_drunk_date_param', '1', '2', '', '酒醉驾可配置碰撞时间范围（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_61', '', 'psa_drunk_cross_param', '1', '1', '', '酒醉驾强措跨档可配置参数（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_62', '', 'psa_drunk_violation_param', '1', '2', '', '酒醉驾未暂扣吊销驾证可配置参数（暂时未用到）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_225', '', 'psa_drunk_seconddrunk_wfxw', '1', '60350', '', '酒醉驾二次酒驾未按规定处罚二次酒驾违法行为代码');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_drunk_226', '', 'psa_drunk_force_lrsj', '1', '2', '', '酒醉驾未开强措录入时间阈值');

commit;


----B3---------------------------
update psa_monitor_param_config set description ='全挂拖斗车、运载危险化学品车辆牵引机动车' where param_value='70240' and param_code='CHEMICAL_WFXW';

update psa_collide_sql set FIELDS='''鲁''||completehphm(t.hphm,t.hpzl) 号牌号码, d1.dmsm1 号牌种类, d4.dmsm1 使用性质, t.SYR 机动车所有人'
where id='020';

delete from psa_collide_sql where id='001';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('001', 't.devicetype 型号, t.deviceid 设备编号, t.recordnum 记录号, decode(t.inputtype,''auto'',''自动录入'',t.inputtype) 录入方式, t.testmode 测试模式, dp.deptshortname 部门名称, t.policename 警员姓名, t.policenum 警号, t.brac 测试值, t.testdate 测试时间, t.creation_date 上传时间, t.carnum 车牌号, t.drivernum 驾驶证号, t.testname 被测人姓名, t.gps_info_id 经纬度',
 'test.alky_info t left join police_data p on p.policeid=t.policenum left join department dp on dp.cdepartmentid=p.deptid', 't.id=?');

 delete from psa_collide_sql where id='016';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('016', 't.SGBH 事故编号, t.WSBH 文书编号, t.SDSJ 送达时间, t.RYBH 人员编号, c.dmsm1 文书类别, t.SDWSBH 送达文书编号, t.SDR 送达人, t.SSDR 受送达人, t.SDDD 送达地点, t.SDFS 送达方式, t.DSR 代收人, t.DSYY 代收原因, t.SSDRGX 与受送达人关系, t.JZR 见证人, decode(t.ZT,''1'',''送达'',''2'',''拒收'') 状态, t.JSYY 拒收原因, t.BZ 备注', 'test.ACD_DELIVER t left join test.frm_code c on t.wslb=c.dmz and c.xtlb=''03'' and c.dmlb=''0162''', 'SGBH=? and wsbh=?');

delete from psa_collide_sql where id='015';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('015', 'SGBH 事故编号, WSBH 文书编号, trim(DBMS_LOB.SUBSTR(jbss,4000)) 基本事实, trim(DBMS_LOB.SUBSTR(DSFQK,4000)) 当事方情况, trim(DBMS_LOB.SUBSTR(RDNR,4000)) 认定内容, trim(DBMS_LOB.SUBSTR(BARYJ,4000)) 办案人意见, trim(DBMS_LOB.SUBSTR(ZJYJ,4000)) 专家意见, CBR1 承办人1, CBR2 承办人2, XBRQ 宣布日期, TQSPRQ 提请审批日期, SPRQ 审批日期, SPR 审批人, nvl(p.policename,t.jbr) 经办人, decode(wszt,''1'',''正式'',''2'',''未正式'',wszt) 文书状态, JYW 校验位', 'test.ACD_DUTY t left join police_data p on p.policeid=t.jbr', 'SGBH=?');

--------------B4-------------------------
update psa_collide_sql set FIELDS='t.XM 姓名, decode(XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证号码, t.CSRQ 出生日期, decode(t.GJ,''156'',''中国'',''158'',''中国台湾'') 国籍, t.DJZSXZQH 登记住所行政区划, t.DJZSXXDZ 登记住所详细地址, t.LXZSXZQH 联系住所行政区划, t.LXZSXXDZ 联系住所详细地址, t.LXZSYZBM 联系住所邮政编码, t.LXDH 联系电话, t.SJHM 手机号码, t.DZYX 电子邮箱, t.ZZZM 暂住证明, t.ZZFZJG 暂住发证机关, t.ZZFZRQ 暂住发证日期, decode(t.SFBD,''1'',''是'',''0'',''否'') 是否本地, t.DWBH 属地信息, t.SYYXQZ 审验有效期止, decode(RYZT,''0'',''正常'',''1'',''有吸毒记录'') 人员状态, decode(SXBJ,''1'',''是'',''2'',''否'') 实习标记, t.ZJCX 准驾车型, t.YZJCX 原准驾车型, t.QFRQ 下一清分日期, t.SYRQ 下一审验日期, t.CCLZRQ 初次领证日期, t.CCFZJG 初次发证机关, t.JZQX 驾证期限, t.YXQS 有效期始, t.YXQZ 有效期止, t.LJJF 累积记分, t.CFRQ 超分日期, t.XXTZRQ 学习通知日期, t.BZCS 补证次数, d.dmsm1 驾驶证状态, t.JXMC 驾校名称, t.JLY 教练员'
where id='006'; 

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('302', null, 'psa_danger_vehicle_differ', '1', '1', null, '危化品扣车未入停车场涉案车辆录入差阈值');
commit;

---------------B5--------------------------
delete from psa_collide_sql where id='006';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('006', 't.XM 姓名, decode(XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证号码, t.CSRQ 出生日期, c.dmsm1 国籍, t.DJZSXZQH 登记住所行政区划, t.DJZSXXDZ 登记住所详细地址, t.LXZSXZQH 联系住所行政区划, t.LXZSXXDZ 联系住所详细地址, t.LXZSYZBM 联系住所邮政编码, t.LXDH 联系电话, t.SJHM 手机号码, t.DZYX 电子邮箱, t.ZZZM 暂住证明, t.ZZFZJG 暂住发证机关, t.ZZFZRQ 暂住发证日期, decode(t.SFBD,''1'',''是'',''0'',''否'',t.SFBD) 是否本地, t.DWBH 属地信息, t.SYYXQZ 审验有效期止, decode(RYZT,''0'',''正常'',''1'',''有吸毒记录'',RYZT) 人员状态, decode(SXBJ,''1'',''是'',''2'',''否'',sxbj) 实习标记, t.ZJCX 准驾车型, t.YZJCX 原准驾车型, t.QFRQ 下一清分日期, t.SYRQ 下一审验日期, t.CCLZRQ 初次领证日期, t.CCFZJG 初次发证机关, t.JZQX 驾证期限, t.YXQS 有效期始, t.YXQZ 有效期止, t.LJJF 累积记分, t.CFRQ 超分日期, t.XXTZRQ 学习通知日期, t.BZCS 补证次数, d.dmsm1 驾驶证状态, t.JXMC 驾校名称, t.JLY 教练员', 'test.drivinglicense t left join test.frm_code d on d.dmz=t.ZT and d.xtlb=''00'' and d.dmlb=''2005'' left join test.frm_code c on c.dmz=t.gj and c.xtlb=''00'' and c.dmlb=''0031''', 't.xh=?');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_ACCIDENT', '监管-物化视图时间范围-事故', '1098', '监管-物化视图时间范围-事故（单位：天）', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_CHEMICAL', '监管-物化视图时间范围-危化品', '1098', '监管-物化视图时间范围-危化品（单位：天）', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_DRUNK', '监管-物化视图时间范围-酒驾', '1098', '监管-物化视图时间范围-酒驾品（单位：天）', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_ILLEGAL', '监管-物化视图时间范围-违法', '1098', '监管-物化视图时间范围-违法（单位：天）', '');

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_VEHICLE', '监管-物化视图时间范围-涉案车辆', '1098', '监管-物化视图时间范围-涉案车辆（单位：天）', '');
commit;

-------------------------------------6.0 psa end------------------------------------

-------------------------------------6.0 psd start----------------------------------


--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A1  张国庆2020.2.12 Start-----------------------
insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('F867BDF94C1340EA9B19230A851EDAE4', '0', '1', '1', '50');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('AC6274D99B534B48BB88EF20DA2728F9', '0', '1', '2', '50');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B5BC2AFF2CB04EB79484062DBF25600E', '1', '2', '1', '44');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('20375F13072A496699123BA181D01F5E', '1', '2', '2', '47');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('43EFA711BBE14562A604894C37BD64F0', '2', '3', '1', '38');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('08230F0E193B4CD5B7C63B096B23106D', '2', '3', '2', '44');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('9074066A3F0E43C99C75E1F4F028244F', '3', '4', '1', '32');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('6F9667F7989845608D18CE9D6D5F6A80', '3', '4', '2', '41');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7F7B0BDCFCE44B268A6A8503A3722F29', '4', '5', '1', '25');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('50BBB2F75DCD4D62A692A75EF72637AA', '4', '5', '2', '35');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('2A8F064EDA6C4FA288689E1C585D7E4F', '5', '6', '1', '20');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4FA2622C9DB444FDB29746133F85D227', '5', '6', '2', '32');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('5FDCAD0659F346C3A453D669CEBE983F', '6', '7', '1', '29');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('621B2AC952284652A7BEFFDFA246BCE1', '6', '7', '2', '15');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7A6E9228B1CB4DAFBC06C5AAA109D641', '7', '8', '1', '25');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('CE03DB7AEAAE4A2188576460B552A4A4', '7', '8', '2', '10');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4D3BBD6C5AD54F0ABAF5E0BCC7EB5943', '8', '9', '1', '20');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('781BD6BC57014A47A59898177F0AE3B2', '8', '9', '2', '5');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B3391CF10A9748AA901C756B4CB243AF', '9', '10', '1', '15');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('BAD9E75236024E95ACC7F507596BDEFE', '9', '10', '2', '0.001');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FORCEORDERNUM_THRESHOLD', '挂单最大最小差值', '10', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('PRIORITY_POST_TYPE', '算法优先派警策略岗位类型', '4', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SECONDARY_POST_TYPE', '算法次优先派警策略岗位类型', '2', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_STEP', '算法粒度搜索粒度(单位：米)', '50', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_TIME', '算法粒度搜索次数', '3', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_INDEX', '默认路段交通指数', '3', null);

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_HUMAN_SPEED', '默认步行警员速度(米/秒)', '1.1', null);



commit;

delete from enum_type e where e.enumtypeid = '1110'  ;
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '01', 0, null, null, '交通拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '02', 0, null, null, '交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '03', 0, 0, null, '交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '04', 0, null, null, '信息咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '05', 0, null, null, '交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '06', 0, null, null, '危难求助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '07', 0, null, null, '突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '08', 0, null, null, '反映情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '09', 0, null, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '10', 0, null, null, '交通管制', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '11', 0, null, null, '恶劣天气', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '12', 0, null, null, '交通规划', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '13', 0, null, null, '停车场管理', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '14', 0, null, null, '车驾管理窗口服务', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '15', 0, 0, null, '警容风纪', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '16', 0, 0, null, '投诉建议表扬', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '17', 0, 0, null, '举报', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '18', 0, 0, null, '通知公告', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '19', 0, 0, null, '警卫任务', 0);


commit

delete from enum_type e where e.enumtypeid = '1118'  ;
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '01', null, null, null, '视频巡检', null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '02', 0, null, null, '122警情', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '03', null, null, null, '信息服务', null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '04', null, null, null, '突发拥堵', null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '05', null, null, null, '事件检测', null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '06', 0, null, null, '危化品警情', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '07', 0, null, null, '高德', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '08', 0, null, null, '滴滴', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '09', 0, null, null, '百度', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '10', 0, null, null, '微博', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '11', 0, null, null, '微信', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '12', 0, 0, null, '手持终端', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '13', 0, 0, null, '投诉电话', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '14', 0, 0, null, '网站', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '15', 0, 0, null, '电视', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '16', 0, 0, null, '电台', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '17', 0, 0, null, '文件、函件、通知', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '18', 0, 0, null, '12122高速接处警接处警平台', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '19', 0, 0, null, '民生警务平台', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '20', 0, 0, null, '舆情平台', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '21', 0, 0, null, '情报挖掘', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1118, '22', 0, 0, null, '视频识别（博云视觉）', 0);
commit;
delete from enum_type e where e.enumtypeid = '1120'  ;
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0212', 0, null, null, '重点车违反限行规定', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1101', 0, null, null, '大雾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1102', 0, null, null, '暴雨', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1103', 0, null, null, '大雪', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1201', 0, null, null, '单行线、停车场设置、限行等问题', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1001', 0, null, null, '收费站关闭', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0205', 0, null, null, '举报反映', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0305', 0, null, null, '伤人交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0401', 0, null, null, '车管架管', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0301', 0, null, null, '其他交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0203', 0, null, null, '其它交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0303', 0, null, null, '单方交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0310', 0, null, null, '单车肇事', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0601', 0, null, null, '交通护导', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0801', 0, null, null, '其他情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0101', 0, null, null, '反映拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0312', 0, null, null, '后续事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0309', 0, null, null, '机动车与机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0302', 0, null, null, '机动车与行人', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0308', 0, null, null, '机动车与非机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0102', 0, null, null, '检测拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0204', 0, null, null, '求助查处', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0703', 0, null, null, '人员聚众', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0702', 0, null, null, '发生火灾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0701', 0, null, null, '其他突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0202', 0, null, null, '超速', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0313', 0, null, null, '路外事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0304', 0, null, null, '车损交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0704', 0, null, null, '公共设施抢修', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0206', 0, null, null, '违法停车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0311', 0, null, null, '逃逸事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0901', 0, null, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0306', 0, null, null, '非机动车与行人', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0307', 0, null, null, '非机动车与非机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0314', 0, null, null, '高速公路事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0103', 0, null, null, '其他路况', null);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1301', 0, 0, null, '停车场备案', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1401', 0, 0, null, '车架管窗口服务', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0207', 0, null, null, '低速行驶', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0208', 0, null, null, '违章变线', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0209', 0, null, null, '逆向行驶', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0210', 0, null, null, '行人违章', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0211', 0, null, null, '横穿道路', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0201', 0, null, null, '超载', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0104', 0, 0, null, '突变降速', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0105', 0, 0, null, '处警速度', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0106', 0, 0, null, '处警态度', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0107', 0, 0, null, '处警措施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0108', 0, 0, null, '相互推诿', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0109', 0, 0, null, '处理结果', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0213', 0, 0, null, '客车超员', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0214', 0, 0, null, '酒驾、毒驾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0215', 0, 0, null, '执法态度', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0216', 0, 0, null, '执法措施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0217', 0, 0, null, '处理结果', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0218', 0, 0, null, '驾驶证记分', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0315', 0, 0, null, '处置完毕', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0316', 0, 0, null, '快速理赔', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0317', 0, 0, null, '移交事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0318', 0, 0, null, '协商处理', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0319', 0, 0, null, '简易程序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0320', 0, 0, null, '死亡事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0321', 0, 0, null, '服务态度', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0322', 0, 0, null, '服务效率', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0323', 0, 0, null, '办事程序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0324', 0, 0, null, '驾校管理', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0402', 0, 0, null, '秩序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0403', 0, 0, null, '设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0404', 0, 0, null, '交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0405', 0, 0, null, '其他业务咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0501', 0, 0, null, '信号灯故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0502', 0, 0, null, '视频故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0503', 0, 0, null, '大货车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0504', 0, 0, null, '防护栏故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0505', 0, 0, null, '诱导屏故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0506', 0, 0, null, '标志、标线、标牌故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0507', 0, 0, null, '其他交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0602', 0, 0, null, '车辆救援', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0603', 0, 0, null, '其他危难救助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0705', 0, 0, null, '涉案事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0706', 0, 0, null, '烟雾报警', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0707', 0, 0, null, '火焰报警', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0708', 0, 0, null, '车辆遗洒', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0802', 0, 0, null, '事故销案', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0803', 0, 0, null, '联系移车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1002', 0, 0, null, '道路封闭', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1003', 0, 0, null, '道路施工', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1004', 0, 0, null, '限行', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1104', 0, 0, null, '路面结冰', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1105', 0, 0, null, '路面湿滑', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1106', 0, 0, null, '大风', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1107', 0, 0, null, '路面高温', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1108', 0, 0, null, '积水时间', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1109', 0, 0, null, '积雪时间', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1302', 0, 0, null, '停车场收费', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1303', 0, 0, null, '非法停车场', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1501', 0, 0, null, '警容风纪', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1601', 0, 0, null, '投诉', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1602', 0, 0, null, '建议', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1603', 0, 0, null, '表扬', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1701', 0, 0, null, '举报', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1801', 0, 0, null, '领导指示', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1802', 0, 0, null, '会议通知', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1803', 0, 0, null, '文件查收', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1804', 0, 0, null, '专项行动', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1805', 0, 0, null, '节庆活动', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1806', 0, 0, null, '其他通知', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1901', 0, 0, null, '大型活动', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1902', 0, 0, null, '二级以上任务', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1903', 0, 0, null, '三级任务', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1904', 0, 0, null, '优放及其他', 0);

commit;


insert into enum_type  (enumtypeid,enumvalue,enumname) values ('16004','0','接管');
insert into enum_type  (enumtypeid,enumvalue,enumname) values ('16004','1','签收');

commit;

update psd_sys_params p set p.paramvalue = '1,2' ,p.paramcontent = '直接派警警员选择方式(以,分隔):1、智能推荐 2、勤务岗位 ' where p.paramcode  = 'ASSIGN_POLICE_MODE'  

commit;

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A2  张国庆2020.2.12 Start-----------------------

delete from PSD_ALGORITHM_PARAMS;

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('CROSS_DEPT_FLAG', '是否支持跨中队派警(1:允许, 0:不允许)', '1', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEPOST', '优先岗位类型派警相同岗位优先级', '1', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEMIDDEPT', '优先岗位类型派警相同中队岗位优先级', '2', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEBIGDEPT', '优先岗位类型派警相同大队岗位优先级', '3', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FORCEORDERNUM_THRESHOLD', '挂单最大最小差值', '10', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('PRIORITY_POST_TYPE', '算法优先派警策略岗位类型', '4', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SECONDARY_POST_TYPE', '算法次优先派警策略岗位类型', '2', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_STEP', '算法粒度搜索粒度(单位：米)', '50', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_TIME', '算法粒度搜索次数', '3', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_INDEX', '默认路段交通指数', '10', null);

insert into PSD_ALGORITHM_PARAMS (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_HUMAN_SPEED', '默认步行警员速度(米/秒)', '1.1', null);

commit;
delete from psd_areaindex_speed_relation;

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('F867BDF94C1340EA9B19230A851EDAE4', '0', '1', '2', '50');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('AC6274D99B534B48BB88EF20DA2728F9', '0', '1', '1', '50');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B5BC2AFF2CB04EB79484062DBF25600E', '1', '2', '2', '44');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('20375F13072A496699123BA181D01F5E', '1', '2', '1', '47');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('43EFA711BBE14562A604894C37BD64F0', '2', '3', '2', '38');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('08230F0E193B4CD5B7C63B096B23106D', '2', '3', '1', '44');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('9074066A3F0E43C99C75E1F4F028244F', '3', '4', '2', '32');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('6F9667F7989845608D18CE9D6D5F6A80', '3', '4', '1', '41');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7F7B0BDCFCE44B268A6A8503A3722F29', '4', '5', '2', '25');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('50BBB2F75DCD4D62A692A75EF72637AA', '4', '5', '1', '35');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('2A8F064EDA6C4FA288689E1C585D7E4F', '5', '6', '2', '20');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4FA2622C9DB444FDB29746133F85D227', '5', '6', '1', '32');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('5FDCAD0659F346C3A453D669CEBE983F', '6', '7', '2', '29');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('621B2AC952284652A7BEFFDFA246BCE1', '6', '7', '1', '15');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7A6E9228B1CB4DAFBC06C5AAA109D641', '7', '8', '2', '25');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('CE03DB7AEAAE4A2188576460B552A4A4', '7', '8', '1', '10');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4D3BBD6C5AD54F0ABAF5E0BCC7EB5943', '8', '9', '2', '20');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('781BD6BC57014A47A59898177F0AE3B2', '8', '9', '1', '5');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B3391CF10A9748AA901C756B4CB243AF', '9', '10', '2', '15');

insert into psd_areaindex_speed_relation (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('BAD9E75236024E95ACC7F507596BDEFE', '9', '10', '1', '0.001');

commit;


--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A3  张国庆2020.2.12 Start-----------------------

delete from enum_type e where e.enumtypeid = '1110'  ;
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '01', 0, null, null, '交通拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '02', 0, null, null, '交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '03', 0, 0, null, '交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '04', 0, null, null, '信息咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '05', 0, null, null, '交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '06', 0, null, null, '危难求助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '07', 0, null, null, '突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '08', 0, null, null, '反映情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '09', 0, null, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '10', 0, null, null, '交通管制', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '11', 0, null, null, '恶劣天气', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '12', 0, null, null, '交通规划', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '13', 0, null, null, '停车场管理', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '14', 0, null, null, '车驾管理窗口服务', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '15', 0, 0, null, '警容风纪', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '16', 0, 0, null, '投诉建议表扬', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '17', 0, 0, null, '举报', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '18', 0, 0, null, '通知公告', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '19', 0, 0, null, '警卫任务', 0);


commit;
insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('POLICE_LEAVE_LIMIT', '警员判断忙闲时离开警情发生地的距离(单位:米)', '100', null);
commit;

delete from PSD_AREAINDEX_SPEED_RELATION;

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('AC6274D99B534B48BB88EF20DA2728F9', '0', '1', '1', '50');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('BAD9E75236024E95ACC7F507596BDEFE', '9', '10', '1', '0.001');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B5BC2AFF2CB04EB79484062DBF25600E', '1', '2', '1', '44');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('43EFA711BBE14562A604894C37BD64F0', '2', '3', '1', '38');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('9074066A3F0E43C99C75E1F4F028244F', '3', '4', '1', '32');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7F7B0BDCFCE44B268A6A8503A3722F29', '4', '5', '1', '25');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('2A8F064EDA6C4FA288689E1C585D7E4F', '5', '6', '1', '20');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('621B2AC952284652A7BEFFDFA246BCE1', '6', '7', '1', '15');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('CE03DB7AEAAE4A2188576460B552A4A4', '7', '8', '1', '10');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('781BD6BC57014A47A59898177F0AE3B2', '8', '9', '1', '5');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('F867BDF94C1340EA9B19230A851EDAE4', '0', '1', '2', '50');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('B3391CF10A9748AA901C756B4CB243AF', '9', '10', '2', '15');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('20375F13072A496699123BA181D01F5E', '1', '2', '2', '47');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('08230F0E193B4CD5B7C63B096B23106D', '2', '3', '2', '44');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('6F9667F7989845608D18CE9D6D5F6A80', '3', '4', '2', '41');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('50BBB2F75DCD4D62A692A75EF72637AA', '4', '5', '2', '35');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4FA2622C9DB444FDB29746133F85D227', '5', '6', '2', '32');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('5FDCAD0659F346C3A453D669CEBE983F', '6', '7', '2', '29');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('7A6E9228B1CB4DAFBC06C5AAA109D641', '7', '8', '2', '25');

insert into PSD_AREAINDEX_SPEED_RELATION (ID, MININDEX, MAXINDEX, CARTYPE, SPEED)
values ('4D3BBD6C5AD54F0ABAF5E0BCC7EB5943', '8', '9', '2', '20');

commit;



delete from psd_sys_params p where p.paramcode = 'CRITICAL_VALUE';
commit;
insert into psd_sys_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('CRITICAL_VALUE', '警情与警员的距离', '300', '智能派警中警员到达警情的距离判断警员是否到达单位米');
commit;

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A4  张国庆2020.2.12 Start-----------------------




delete from psd_algorithm_params;

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('CROSS_DEPT_FLAG', '是否支持跨中队派警(1:允许, 0:不允许)', '1', '针对算法的大队派警和挂单环节是否可以针对警情发生所属中队辖区的其他中队警员进行派警');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEPOST', '优先岗位类型派警相同岗位优先级', '-1', '算法步骤--警区派警中相同岗位下派警,数字代表优先级,数字越低优先级越高,越先执行,-1代表不考虑该步骤');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEMIDDEPT', '优先岗位类型派警相同中队岗位优先级', '-1', '算法步骤--警区派警中相同中队下其他相邻警区派警,数字代表优先级,数字越低优先级越高,越先执行,-1代表不考虑该步骤');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FIRST_PRIORITY_SAMEBIGDEPT', '优先岗位类型派警相同大队岗位优先级', '3', '算法步骤--警区派警中相同大队下其他相邻警区派警,数字代表优先级,数字越低优先级越高,越先执行,-1代表不考虑该步骤');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('FORCEORDERNUM_THRESHOLD', '挂单最大最小差值', '10', '挂单要求执勤警员身上的警情个数最大值与最小值之间不能超过一个阈值,此为该阈值');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('PRIORITY_POST_TYPE', '算法优先派警策略岗位类型', '4', '警区派警所派岗位类型');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_STEP', '算法粒度搜索粒度(单位：米)', '300', '大队派警需要以警情发生所在地为圆心,进行搜索,每次搜索的粒度由此参数控制');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('SEARCH_TIME', '算法粒度搜索次数', '3', '大队派警需要以警情发生所在地为圆心,进行搜索,搜索的次数由此参数控制');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_INDEX', '默认路段交通指数', '5', '当数据库没有路段的最新交通指数时,用此值作为默认的交通指数');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEFAULT_HUMAN_SPEED', '默认步行警员速度(米/秒)', '2', '计算步行警员到达警情发生地所需时间中的默认步行速度');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DISTANCE_BETWEEN_POLYGONS', '用于判断多边形是否相邻(单位：米)', '100', '用于判断两个多边形是否相邻,距离小于此值,则认为相邻');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('POLICE_LEAVE_LIMIT', '警员判断忙闲时离开警情发生地的距离(单位:米)', '1000', '警员如果离开警情发生地一定范围则认为其闲');

insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('POLICE_STAY_TIME_LIMIT', '警员判断忙闲时是否超过上传时间的阈值(单位：分钟)', '3', '警员上传相关凭证的阈值时间，小于则判定为忙');

commit;
--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A5  张国庆2020.2.12 Start-----------------------
insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('POLICE_PATH_ARRIVE_MAXTIME', '警员到达警情发生地所需最大时间,超过则认定为无效派警(单位：分钟)', '40', '警员到达警情发生地所需最大时间,超过则认定为无效派警(单位：分钟)');
commit;



insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('ALGO_MAX_STEPS', '算法最大运算步数', '200000', '寻路算法最大运行步数');
commit;

 
		 
insert into psd_algorithm_params (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT)
values ('DEPT_ROADINDEX_INTERVAL', '交通路况指数获取间隔(单位：分钟)', '5', '用于psd_index_view');
commit;



--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A6 张国庆2020.2.12 Start-----------------------



 --↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓警情处置6.0psd-增量脚本A7 张国庆2020.2.12 Start-----------------------


--------------------------------------------6.0 psd end------------------------------------

--------------------------------------------6.0 pis start----------------------------------
--pis 开始------
--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓HiATMP-DB-PIS-DML.6.0.0.0.A8.sql start-----------------------

insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('112', '02', '交通违法', '0219', '处理程序', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('113', '03', '交通事故', '0325', '涉外事故', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('114', '03', '交通事故', '0326', '敏感车辆', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('115', '05', '交通设施', '0508', '标志标线不清', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('119', '05', '交通设施', '0512', '限高杆', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('118', '05', '交通设施', '0511', '隔离墩损坏', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('117', '05', '交通设施', '0510', '指示牌、信号灯遮挡', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('116', '05', '交通设施', '0509', '停车场管理', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('121', '14', '车驾管业务', '1403', '网络版务', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('120', '14', '车驾管业务', '1402', '驾驶证业务', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('122', '20', '秩序整治', '2001', '道路拥堵', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('133', '20', '秩序整治', '2012', '违法占用应急车道', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('132', '20', '秩序整治', '2011', '未礼让行人', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('131', '20', '秩序整治', '2010', '私占车位', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('130', '20', '秩序整治', '2009', '公交车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('129', '20', '秩序整治', '2008', '渣土车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('128', '20', '秩序整治', '2007', '违法举报', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('127', '20', '秩序整治', '2006', '敏感车辆', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('126', '20', '秩序整治', '2005', '僵尸车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('125', '20', '秩序整治', '2004', '摩托车、电动车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('124', '20', '秩序整治', '2003', '大货车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('123', '20', '秩序整治', '2002', '违法停车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('141', '21', '交通执法', '2108', '知法犯法', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('140', '21', '交通执法', '2107', '执法结果', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('139', '21', '交通执法', '2106', '不作为', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('138', '21', '交通执法', '2105', '以权谋私', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('137', '21', '交通执法', '2104', '执法不公', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('136', '21', '交通执法', '2103', '执法效果', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('135', '21', '交通执法', '2102', '执法态度', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('134', '21', '交通执法', '2101', '执法程序', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('149', '22', '交通组织优化', '2208', '建议施划停车线', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('148', '22', '交通组织优化', '2207', '可变车道', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('147', '22', '交通组织优化', '2206', '建议加装限高杆', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('146', '22', '交通组织优化', '2205', '建议加装护栏', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('145', '22', '交通组织优化', '2204', '建议加设信号灯', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('144', '22', '交通组织优化', '2203', '小区微循环', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('143', '22', '交通组织优化', '2202', '标志标线设置', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('142', '22', '交通组织优化', '2201', '信号灯配时', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('151', '23', '高速公路管理', '2302', '管制', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('150', '23', '高速公路管理', '2301', '限速', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('1', '01', '交通拥堵', '0101', '反映拥堵', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('2', '01', '交通拥堵', '0102', '检测拥堵', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('3', '01', '交通拥堵', '0103', '其他路况', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('4', '01', '交通拥堵', '0104', '突变降速', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('5', '01', '交通拥堵', '0105', '处警速度', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('6', '01', '交通拥堵', '0106', '处警态度', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('7', '01', '交通拥堵', '0107', '处置措施', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('8', '01', '交通拥堵', '0108', '相互推诿', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('9', '01', '交通拥堵', '0109', '处理结果', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('10', '02', '交通违法', '0201', '超载', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('11', '02', '交通违法', '0202', '超速', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('12', '02', '交通违法', '0203', '其他交通违法', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('13', '02', '交通违法', '0204', '求助查处', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('14', '02', '交通违法', '0205', '举报反映', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('15', '02', '交通违法', '0206', '违法停车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('16', '02', '交通违法', '0207', '低速行驶', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('17', '02', '交通违法', '0208', '违章变线', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('18', '02', '交通违法', '0209', '逆向行驶', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('19', '02', '交通违法', '0210', '行人违章', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('20', '02', '交通违法', '0211', '横穿道路', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('21', '02', '交通违法', '0212', '重点车违反限行规定', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('22', '02', '交通违法', '0213', '客车超员', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('23', '02', '交通违法', '0214', '酒驾、毒驾', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('24', '02', '交通违法', '0215', '执法态度', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('25', '02', '交通违法', '0216', '执法措施', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('26', '02', '交通违法', '0217', '处理结果', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('27', '02', '交通违法', '0218', '驾驶证记分', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('28', '03', '交通事故', '0301', '其他交通事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('29', '03', '交通事故', '0302', '机动车与行人', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('30', '03', '交通事故', '0303', '单方交通事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('31', '03', '交通事故', '0304', '车损交通事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('32', '03', '交通事故', '0305', '伤人交通事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('33', '03', '交通事故', '0306', '非机动车与行人', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('34', '03', '交通事故', '0307', '非机动车与非机动车', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('35', '03', '交通事故', '0308', '机动车与非机动车', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('36', '03', '交通事故', '0309', '机动车与机动车', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('37', '03', '交通事故', '0310', '单车肇事', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('38', '03', '交通事故', '0311', '逃逸事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('39', '03', '交通事故', '0312', '后报事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('40', '03', '交通事故', '0313', '路外事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('41', '03', '交通事故', '0314', '高速公路事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('42', '03', '交通事故', '0315', '处置完毕', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('43', '03', '交通事故', '0316', '快速理赔', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('44', '03', '交通事故', '0317', '移交事故', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('45', '03', '交通事故', '0318', '协商处理', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('46', '03', '交通事故', '0319', '简易程序', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('47', '03', '交通事故', '0320', '死亡事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('48', '03', '交通事故', '0321', '服务态度', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('49', '03', '交通事故', '0322', '服务效率', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('50', '03', '交通事故', '0323', '办事程序', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('51', '03', '交通事故', '0324', '驾校管理', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('52', '04', '信息咨询', '0401', '车管驾管', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('53', '04', '信息咨询', '0402', '秩序', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('54', '04', '信息咨询', '0403', '设施', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('55', '04', '信息咨询', '0404', '交通事故', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('56', '04', '信息咨询', '0405', '其他业务咨询', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('57', '05', '交通设施', '0501', '信号灯故障', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('58', '05', '交通设施', '0502', '视频故障', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('59', '05', '交通设施', '0503', '大货车', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('60', '05', '交通设施', '0504', '防护栏故障', '1', 120);
commit;
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('61', '05', '交通设施', '0505', '诱导屏故障', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('62', '05', '交通设施', '0506', '标志、标线、标牌故障', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('63', '05', '交通设施', '0507', '其他交通设施', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('64', '06', '危难求助', '0601', '交通护导', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('65', '06', '危难求助', '0602', '车辆救援', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('66', '06', '危难求助', '0603', '其他危难救助', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('67', '07', '突发事件', '0701', '其他突发事件', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('68', '07', '突发事件', '0702', '发生火灾', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('69', '07', '突发事件', '0703', '人员聚众', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('70', '07', '突发事件', '0704', '公共设施抢修', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('71', '07', '突发事件', '0705', '涉案事件', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('72', '07', '突发事件', '0706', '烟雾报警', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('73', '07', '突发事件', '0707', '火焰报警', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('74', '07', '突发事件', '0708', '车辆遗洒', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('75', '08', '反映情况', '0801', '其他情况', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('76', '08', '反映情况', '0802', '事故销案', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('77', '08', '反映情况', '0803', '联系移车', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('78', '09', '其他', '0901', '其他', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('79', '10', '交通管制', '1001', '收费站关闭', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('80', '10', '交通管制', '1002', '道路封闭', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('81', '10', '交通管制', '1003', '道路施工', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('82', '10', '交通管制', '1004', '限行', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('83', '11', '恶劣天气', '1101', '大雾', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('84', '11', '恶劣天气', '1102', '暴雨', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('85', '11', '恶劣天气', '1103', '大雪', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('86', '11', '恶劣天气', '1104', '路面结冰', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('87', '11', '恶劣天气', '1105', '路面湿滑', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('88', '11', '恶劣天气', '1106', '大风', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('89', '11', '恶劣天气', '1107', '路面高温', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('90', '11', '恶劣天气', '1108', '积水事件', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('91', '11', '恶劣天气', '1109', '积雪事件', '0', 10);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('92', '12', '交通规划', '1201', '单行线、停车场设置、限行等问题', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('93', '13', '停车场管理', '1301', '停车场备案', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('94', '13', '停车场管理', '1302', '停车场收费', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('95', '13', '停车场管理', '1303', '非法停车场', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('96', '14', '车驾管业务', '1401', '车管业务', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('97', '15', '警容风纪', '1501', '警容风纪', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('98', '16', '投诉建议表扬', '1601', '投诉', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('99', '16', '投诉建议表扬', '1602', '建议', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('100', '16', '投诉建议表扬', '1603', '表扬', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('101', '17', '举报', '1701', '举报', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('102', '18', '通知公告', '1801', '领导指示', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('103', '18', '通知公告', '1802', '会议通知', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('104', '18', '通知公告', '1803', '文件查收', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('105', '18', '通知公告', '1804', '专项行动', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('106', '18', '通知公告', '1805', '节庆活动', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('107', '18', '通知公告', '1806', '其他通知', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('108', '19', '警卫任务', '1901', '大型活动', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('109', '19', '警卫任务', '1902', '二级以上任务', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('110', '19', '警卫任务', '1903', '三级任务', '1', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('111', '19', '警卫任务', '1904', '优放及其他', '1', 120);
commit;

insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('SEX', '1', '女', null, '性别', '57');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('SYSTEM_NAME', '情报分析平台', '系统名称', null, '当前系统项目的名称', '54');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('SEX', '0', '男', null, '性别', '56');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('SEX', '2', '未知', null, '性别', '58');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('COUNT_DOWN_RED', '30', '办理倒计时剩余时间显示红色配置', null, '办理倒计时剩余时间显示红色，对应时长可进行配置，默认红色为剩余时长≤30分钟。单位：分钟', '51');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('COUNT_DOWN_YELLOW', '30-240', '办理倒计时剩余时间显示黄色配置', null, '办理倒计时剩余时间显示黄色，对应时长可进行配置，默认黄色为剩余时长＞30分钟且≤4小时。单位：分钟，中间必须用-连接', '52');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('COUNT_DOWN_GREEN', '240', '办理倒计时剩余时间显示绿色配置', null, '办理倒计时剩余时间显示绿色， 对应时长可进行配置，默认绿色为＞4小时。单位：分钟', '53');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_CHANNEL', '1', '人工录入', null, '接入渠道', '1');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_CHANNEL', '2', '系统对接', null, '接入渠道', '2');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_CHANNEL', '3', '挖掘分析', null, '接入渠道', '3');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '01', '视频巡检', null, '情报来源', '4');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '02', '122接处警', null, '情报来源', '5');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '03', '信息服务', null, '情报来源', '6');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '04', '突发拥堵', null, '情报来源', '7');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '05', '事件检测', null, '情报来源', '8');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '06', '危化品警情', null, '情报来源', '9');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '07', '高德', null, '情报来源', '10');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '08', '滴滴', null, '情报来源', '11');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '09', '百度', null, '情报来源', '12');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '10', '微博', null, '情报来源', '13');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '11', '微信', null, '情报来源', '14');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '12', '手持终端', null, '情报来源', '15');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '13', '投诉电话', null, '情报来源', '16');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '14', '网站', null, '情报来源', '17');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '15', '电视', null, '情报来源', '18');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '16', '电台', null, '情报来源', '19');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '17', '文件、函件、通知', null, '情报来源', '20');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '18', '12122高速接处警平台', null, '情报来源', '21');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '19', '民生警务平台', null, '情报来源', '22');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '20', '舆情平台', null, '情报来源', '23');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '21', '情报挖掘', null, '情报来源', '24');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_REFRESH_FREQUENCY', '1', '情报分拣和情报办理界面刷新频率', null, '情报分拣和情报办理界面刷新频率，单位：分钟', '50');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('PIS_COORDINATE_DISTANCE', '1000', '坐标去重策略坐标距离阈值', null, '用于坐标去重策略，在距离阈值范围内的情报合并，单位：米', '55');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('TOP_DEPT_CODE', '370200000000', '最高级的部门编号', null, '最高级的部门编号', '25');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '02', '待分拣', null, '情报状态', '26');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '03', '待签收', null, '情报状态', '27');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '04', '办理中', null, '情报状态', '28');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '05', '已办结', null, '情报状态', '29');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '06', '已废弃', null, '情报状态', '30');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('OVERDUE_TIME', '5', '分拣超期阈值（单位：分钟）', null, '超期阈值，支持配置慢情报的分拣时限，单位为分钟', '31');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('SIGN_TIME', '3', '签收超期阈值（单位：分钟）', null, '签收阈值，情报性质为快情报的无需配置签收时限，慢情报默认为2小时。', '32');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ATTACH_SIZE', '50', '附件大小（M）', null, '附件上传附件大小，最大可上传50M', '33');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ATTACH_TYPE', '01', '图片', null, '附件类型-图片（jpg、png、jpeg）', '34');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ATTACH_TYPE', '02', '文档', null, '附件类型-文档（doc、docx、pdf）', '35');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ATTACH_TYPE', '03', '表格', null, '附件类型-表格（xls、xlsx）', '36');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '01', '故障', null, '事故形态', '37');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '02', '刮擦', null, '事故形态', '38');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '03', '追尾', null, '事故形态', '39');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '04', '自然', null, '事故形态', '40');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '05', '侧翻', null, '事故形态', '41');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '06', '撞护栏', null, '事故形态', '42');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('ACCIDENT_PATTERN', '07', '其他', null, '事故形态', '43');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '01', '待确认', null, '情报状态', '44');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('WORKING_HOUR', '9:00-12:00,14:00-19:30,20:00-23:59', '分拣工作时间', null, '分拣工作时间，最多添加三个分拣工作时段，每个时段中间用英文逗号,隔开', '45');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('PIS_MERGE_HOURS', '8', '情报自动合并时间段', null, '用于情报的自动合并，在时间段内的情报参与合并计算，单位为小时', '46');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('PIS_HAMMDISTANCE', '12', '文本相似判定阈值', null, '汉明距离，取值范围0-64', '47');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_SOURCE', '22', '视频识别', null, '情报来源', '48');
commit;

insert into PIS_INFO_MERGE (id, merger_name, info_type, merger_order, merger_class, info_source)
values ('1', '定制规则地点去重', null, 3, 'com.hisense.hiatmp.pis.mergadpter.stragety.custom.SameLocationStratery', '02');
insert into PIS_INFO_MERGE (id, merger_name, info_type, merger_order, merger_class, info_source)
values ('2', '定制规则坐标去重', null, 2, 'com.hisense.hiatmp.pis.mergadpter.stragety.custom.SameCoordinateStratery', '02');
insert into PIS_INFO_MERGE (id, merger_name, info_type, merger_order, merger_class, info_source)
values ('3', '定制规则车牌号去重', null, 5, 'com.hisense.hiatmp.pis.mergadpter.stragety.custom.SameCarNumStratery', '02');
insert into PIS_INFO_MERGE (id, merger_name, info_type, merger_order, merger_class, info_source)
values ('5', '定制规则122重复警情', null, 1, 'com.hisense.hiatmp.pis.mergadpter.stragety.custom.DuplinfoFor122', '02');
insert into PIS_INFO_MERGE (id, merger_name, info_type, merger_order, merger_class, info_source)
values ('4', '定制规则手机号去重', null, 4, 'com.hisense.hiatmp.pis.mergadpter.stragety.custom.SamePhoneStratery', '02');
commit;

insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('0103','情报指挥','情报指挥','images/3.jpg','','01','103','1');
insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010301','情报分拣','情报分拣','images/3.jpg','openReactPage("pis","pis/infoSorte","情报分拣","/HiatmpPro/index.html");','0103','10301','1');
insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010302','情报办理','情报办理','images/3.jpg','openReactPage("pis","pis/infoProcess","情报办理","/HiatmpPro/index.html");','0103','10302','1');
insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010303','情报查询','情报查询','images/3.jpg','openReactPage("pis","pis/infoQuery","情报查询","/HiatmpPro/index.html");','0103','10303','1');
insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('050117','情报指挥参数配置','情报指挥参数配置','images/3.jpg','openReactPage("pis","pis/infoConfig","情报指挥参数配置","/HiatmpPro/index.html");','0501','50113','1');

insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('010301', '0103', '显示', '显示', 1);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030101', '010301', '显示', '显示', 1);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030201', '010302', '显示', '显示', 1);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030301', '010303', '显示', '显示', 1);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030302', '010303', '督办', '督办', 2);
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('05011701', '050117', '显示', '显示', 1);

insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '010301');
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030101');
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030201');
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030301');
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '05011701');
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030302');
commit;

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370202000000', 0, 0, null, '市南大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370203000000', 0, 0, null, '市北大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370211000000', 0, 0, null, '开发区大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370212000000', 0, 0, null, '崂山大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370213000000', 0, 0, null, '李沧大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370214000000', 0, 0, null, '城阳大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370281000000', 0, 0, null, '胶州大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370282000000', 0, 0, null, '即墨大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370283000000', 0, 0, null, '平度大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370284000000', 0, 0, null, '黄岛大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370285000000', 0, 0, null, '莱西大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370291000000', 0, 0, null, '高新区大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370295000010', 0, 0, null, '青平大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370296000010', 0, 0, null, '同三大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370297000010', 0, 0, null, '潍莱大队', 0);

insert into ENUM_TYPE (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370298000010', 0, 0, null, '胶州湾大队', 0);
commit;

insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010304','情报确认','情报确认','images/3.jpg','openReactPage("tsm","AlarmCheck","情报确认","/HiatmpPro/index.html");','0103','10304','1');

insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030401', '010304', '显示', '显示', 1);

insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030401');
commit;

delete from menu m where m.id = '010103'; 
delete from OPERATE_COMPONENT t where t.menu_id = '010103'; 
delete from ROLE_OPERATION_RELATION t where t.operationid = '01010301'; 
commit;


update enum_type e set e.enumvalue = '1101' where e.enumtypeid = '1138' and e.enumname = '大雾';
update enum_type e set e.enumvalue = '1108' where e.enumtypeid = '1138' and e.enumname = '积水事件';
update enum_type e set e.enumvalue = '1109' where e.enumtypeid = '1138' and e.enumname = '积雪事件';
commit;

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '20', 0, 0, null, '秩序整治', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '21', 0, 0, null, '交通执法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '22', 0, 0, null, '交通组织优化', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '23', 0, 0, null, '高速公路管理', 0);
commit;

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓HiATMP-DB-PIS-DML.6.0.0.0.A8.sql end----------------------

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (17001, '370293000000', 0, 0, null, '青岛港大队', 0);

-- Add/modify columns 
-- A9 START --------------------------
alter table PIS_OPER_LOG modify oper_target_id NVARCHAR2(2000);
-- A9 end ----------------------------
-- B1 start-----------------------------
create index PIS_INFO_BASE_time on PIS_INFO_BASE (info_time);
-- B1 end -----------------------------
-- B2 START----------------------------
insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010305','地图台','地图台','images/3.jpg','openReactPage("pis","pis/mapplateform","地图台","/HiatmpPro/index.html");','0103','10305','1');

insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030501', '010305', '显示', '显示', 1);
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030501');
commit;
insert into enum_type values('1118','23','雾区检测','0','0','0','');
commit;
insert into pis_param_config values('INFO_SOURCE','23','雾区检测','','情报来源','59');
commit;
-- B2 END ----------------------------
-- B3 START --------------------------
update enum_type e set e.enumname = '突发拥堵检测' where e.enumtypeid = '1118' and e.enumname like '%突发拥堵%';
update enum_type e set e.enumname = '危化品警情检测' where e.enumtypeid = '1118' and e.enumname like '%危化品警情%';
update pis_param_config t set t.param_desc = '突发拥堵检测' where t.param_code = 'INFO_SOURCE' and t.param_desc like '%突发拥堵%';
update pis_param_config t set t.param_desc = '危化品警情检测' where t.param_code = 'INFO_SOURCE' and t.param_desc like '%危化品警情%';
commit;
-- B3 END ---------------------------
-- B4 START --------------------------
delete from pis_feature_type_config;
commit;
prompt PL/SQL Developer import file
prompt Created on 2020年1月3日 星期五 by Administrator
set feedback off
set define off
prompt Disabling triggers for PIS_FEATURE_TYPE_CONFIG...
alter table PIS_FEATURE_TYPE_CONFIG disable all triggers;
prompt Deleting PIS_FEATURE_TYPE_CONFIG...
delete from PIS_FEATURE_TYPE_CONFIG;
commit;
prompt Loading PIS_FEATURE_TYPE_CONFIG...
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('01', '01', '交通拥堵', '0101', '反映拥堵', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('02', '01', '交通拥堵', '0102', '检测拥堵', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('03', '01', '交通拥堵', '0103', '其他路况', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('20', '03', '交通事故', '0302', '机动车与行人', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('21', '03', '交通事故', '0303', '单方交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('22', '03', '交通事故', '0304', '车损交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('23', '03', '交通事故', '0305', '伤人交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('24', '03', '交通事故', '0306', '非机动车与行人', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('25', '03', '交通事故', '0307', '非机动车与非机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('26', '03', '交通事故', '0308', '机动车与非机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('27', '03', '交通事故', '0309', '机动车与机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('28', '03', '交通事故', '0310', '单车肇事', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('29', '03', '交通事故', '0311', '逃逸事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('30', '03', '交通事故', '0312', '后报事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('31', '03', '交通事故', '0313', '路外事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('32', '03', '交通事故', '0314', '高速公路事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('33', '03', '交通事故', '0315', '快速理赔', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('34', '03', '交通事故', '0316', '协商处理', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('35', '03', '交通事故', '0317', '简易程序', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('36', '03', '交通事故', '0318', '死亡事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('37', '04', '信息咨询', '0401', '其他业务咨询', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('38', '04', '信息咨询', '0402', '车管驾管', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('39', '04', '信息咨询', '0403', '12123APP使用', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('40', '05', '交通设施', '0501', '信号灯故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('41', '05', '交通设施', '0502', '视频故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('42', '05', '交通设施', '0503', '其他交通设施', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('43', '05', '交通设施', '0504', '防护栏故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('44', '05', '交通设施', '0505', '诱导屏故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('45', '05', '交通设施', '0506', '标志、标线、标牌故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('46', '05', '交通设施', '0507', '其他交通设施', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('47', '05', '交通设施', '0508', '标志标线不清', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('48', '05', '交通设施', '0509', '指示牌、信号灯遮挡', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('49', '05', '交通设施', '0510', '隔离墩损坏', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('50', '05', '交通设施', '0511', '限高杆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('51', '06', '危难救助', '0601', '其他危难救助', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('04', '02', '交通违法', '0201', '交通违法', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('05', '02', '交通违法', '0202', '超载', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('06', '02', '交通违法', '0203', '超速', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('07', '02', '交通违法', '0204', '其他交通违法', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('08', '02', '交通违法', '0205', '求助查处', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('09', '02', '交通违法', '0206', '举报反映', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('10', '02', '交通违法', '0207', '违法停车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('11', '02', '交通违法', '0208', '低速行驶', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('12', '02', '交通违法', '0209', '违章变线', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('13', '02', '交通违法', '0210', '逆向行驶', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('14', '02', '交通违法', '0211', '行人违章', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('15', '02', '交通违法', '0212', '横穿道路', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('16', '02', '交通违法', '0213', '重点车违反限行规定', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('17', '02', '交通违法', '0214', '客车超员', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('18', '02', '交通违法', '0215', '酒驾、毒驾', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('19', '03', '交通事故', '0301', '其他交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('52', '06', '危难救助', '0602', '交通护导', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('53', '06', '危难救助', '0603', '车辆救援', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('54', '07', '突发事件', '0701', '其他突发事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('55', '07', '突发事件', '0702', '烟雾报警', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('56', '07', '突发事件', '0703', '火焰报警', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('57', '07', '突发事件', '0704', '车辆遗洒', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('58', '07', '突发事件', '0705', '发生火灾', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('59', '07', '突发事件', '0706', '人员聚众', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('60', '07', '突发事件', '0707', '公共设施抢修', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('61', '07', '突发事件', '0708', '涉案事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('62', '08', '反映情况', '0801', '其他情况', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('63', '08', '反映情况', '0802', '联系移车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('64', '08', '反映情况', '0803', '投诉、建议', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('65', '08', '反映情况', '0804', '表扬', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('66', '09', '秩序整治', '0901', '道路交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('67', '09', '秩序整治', '0902', '非道路交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('68', '09', '秩序整治', '0903', '其他交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('69', '09', '秩序整治', '0904', '道路拥堵', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('70', '09', '秩序整治', '0905', '违法停车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('71', '09', '秩序整治', '0906', '大货车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('72', '09', '秩序整治', '0907', '摩托车、电动车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('73', '09', '秩序整治', '0908', '僵尸车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('74', '09', '秩序整治', '0909', '敏感车辆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('75', '09', '秩序整治', '0910', '违法举报', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('76', '09', '秩序整治', '0911', '渣土车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('77', '09', '秩序整治', '0912', '公交车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('78', '09', '秩序整治', '0913', '私占车位', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('79', '09', '秩序整治', '0914', '未礼让行人', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('80', '09', '秩序整治', '0915', '违法占用应急车道', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('81', '09', '秩序整治', '0916', '涉外事件', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('82', '09', '秩序整治', '0917', '其他敏感事件', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('83', '10', '其他', '1001', '其他', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('84', '11', '交通管制', '1101', '收费站关闭', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('85', '11', '交通管制', '1102', '道路封闭', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('86', '11', '交通管制', '1103', '限行', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('87', '11', '交通管制', '1104', '道路施工', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('88', '12', '恶劣天气', '1201', '大雾', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('89', '12', '恶劣天气', '1202', '暴雨', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('90', '12', '恶劣天气', '1203', '大雪', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('91', '12', '恶劣天气', '1204', '路面结冰', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('92', '12', '恶劣天气', '1205', '路面湿滑', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('93', '12', '恶劣天气', '1206', '大风', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('94', '12', '恶劣天气', '1207', '路面高温', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('95', '12', '恶劣天气', '1208', '积水事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('96', '12', '恶劣天气', '1209', '积雪事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('97', '13', '交通规划', '1301', '信号灯配时', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('98', '13', '交通规划', '1302', '标志标线设置', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('99', '13', '交通规划', '1303', '小区微循环', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('100', '13', '交通规划', '1304', '建议加设信号灯', '1', 4320);
commit;
prompt 100 records committed...
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('101', '13', '交通规划', '1305', '建议加装护栏', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('102', '13', '交通规划', '1306', '建议加装限高杆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('103', '13', '交通规划', '1307', '可变车道', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('104', '13', '交通规划', '1308', '停车规划', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('105', '14', '交办任务', '1401', '领导指示', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('106', '14', '交办任务', '1402', '会议通知', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('107', '14', '交办任务', '1403', '文件查收', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('108', '14', '交办任务', '1404', '专项行动', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('109', '14', '交办任务', '1405', '节庆活动', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('110', '14', '交办任务', '1406', '其他通知', '1', 4320);
commit;
prompt 110 records loaded
prompt Enabling triggers for PIS_FEATURE_TYPE_CONFIG...
alter table PIS_FEATURE_TYPE_CONFIG enable all triggers;
set feedback on
set define on
prompt Done.
-- B4 END -----------------------
-- B5 start ------------------------
insert into pis_param_config values('INFO_SOURCE','24','城管网格化','','情报来源','60');
insert into enum_type values('1118','24','城管网格化','0','0','0','');
commit;
delete from enum_type e where e.enumtypeid = '1110';
commit;
prompt Importing table enum_type...
set feedback off
set define off
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '01', 0, 0, null, '交通拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '02', 0, 0, null, '交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '03', 0, 0, null, '交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '04', 0, 0, null, '信息咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '05', 0, 0, null, '交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '06', 0, 0, null, '危难求助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '07', 0, 0, null, '突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '08', 0, 0, null, '反映情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '09', 0, 0, null, '秩序整治', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '10', 0, 0, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '11', 0, 0, null, '交通管制', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '12', 0, 0, null, '恶劣天气', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '13', 0, 0, null, '交通规划', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '14', 0, 0, null, '交办任务', 0);

prompt Done.

update enum_type t set t.enumname = '雾区检测' where t.enumname = '雾区监测';
commit;

delete from PIS_FEATURE_TYPE_CONFIG;
commit;
prompt PL/SQL Developer import file
prompt Created on 2020年1月10日 by Lenovo
set feedback off
set define off
prompt Disabling triggers for PIS_FEATURE_TYPE_CONFIG...
alter table PIS_FEATURE_TYPE_CONFIG disable all triggers;
prompt Deleting PIS_FEATURE_TYPE_CONFIG...
delete from PIS_FEATURE_TYPE_CONFIG;
commit;
prompt Loading PIS_FEATURE_TYPE_CONFIG...
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('50', '05', '交通设施', '0511', '限高杆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('51', '06', '危难救助', '0601', '其他危难救助', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('04', '02', '交通违法', '0201', '交通违法', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('05', '02', '交通违法', '0202', '超载', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('06', '02', '交通违法', '0203', '超速', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('07', '02', '交通违法', '0204', '其他交通违法', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('08', '02', '交通违法', '0205', '求助查处', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('09', '02', '交通违法', '0206', '举报反映', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('10', '02', '交通违法', '0207', '违法停车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('11', '02', '交通违法', '0208', '低速行驶', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('12', '02', '交通违法', '0209', '违章变线', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('13', '02', '交通违法', '0210', '逆向行驶', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('14', '02', '交通违法', '0211', '行人违章', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('15', '02', '交通违法', '0212', '横穿道路', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('16', '02', '交通违法', '0213', '重点车违反限行规定', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('17', '02', '交通违法', '0214', '客车超员', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('18', '02', '交通违法', '0215', '酒驾、毒驾', '0', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('19', '03', '交通事故', '0301', '其他交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('52', '06', '危难救助', '0602', '交通护导', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('53', '06', '危难救助', '0603', '车辆救援', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('54', '07', '突发事件', '0701', '其他突发事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('55', '07', '突发事件', '0702', '烟雾报警', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('56', '07', '突发事件', '0703', '火焰报警', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('57', '07', '突发事件', '0704', '车辆遗洒', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('58', '07', '突发事件', '0705', '发生火灾', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('59', '07', '突发事件', '0706', '人员聚众', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('60', '07', '突发事件', '0707', '公共设施抢修', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('61', '07', '突发事件', '0708', '涉案事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('62', '08', '反映情况', '0801', '其他情况', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('63', '08', '反映情况', '0802', '联系移车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('64', '08', '反映情况', '0803', '投诉、建议', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('65', '08', '反映情况', '0804', '表扬', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('66', '09', '秩序整治', '0901', '道路交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('67', '09', '秩序整治', '0902', '非道路交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('68', '09', '秩序整治', '0903', '其他交通秩序', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('69', '09', '秩序整治', '0904', '道路拥堵', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('70', '09', '秩序整治', '0905', '违法停车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('71', '09', '秩序整治', '0906', '大货车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('72', '09', '秩序整治', '0907', '摩托车、电动车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('73', '09', '秩序整治', '0908', '僵尸车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('74', '09', '秩序整治', '0909', '敏感车辆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('75', '09', '秩序整治', '0910', '违法举报', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('76', '09', '秩序整治', '0911', '渣土车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('77', '09', '秩序整治', '0912', '公交车', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('78', '09', '秩序整治', '0913', '私占车位', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('79', '09', '秩序整治', '0914', '未礼让行人', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('80', '09', '秩序整治', '0915', '违法占用应急车道', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('83', '10', '其他', '1001', '其他', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('84', '11', '交通管制', '1101', '收费站关闭', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('85', '11', '交通管制', '1102', '道路封闭', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('86', '11', '交通管制', '1103', '限行', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('87', '11', '交通管制', '1104', '道路施工', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('88', '12', '恶劣天气', '1201', '大雾', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('89', '12', '恶劣天气', '1202', '暴雨', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('90', '12', '恶劣天气', '1203', '大雪', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('91', '12', '恶劣天气', '1204', '路面结冰', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('92', '12', '恶劣天气', '1205', '路面湿滑', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('93', '12', '恶劣天气', '1206', '大风', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('94', '12', '恶劣天气', '1207', '路面高温', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('95', '12', '恶劣天气', '1208', '积水事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('96', '12', '恶劣天气', '1209', '积雪事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('97', '13', '交通规划', '1301', '信号灯配时', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('98', '13', '交通规划', '1302', '标志标线设置', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('99', '13', '交通规划', '1303', '小区微循环', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('100', '13', '交通规划', '1304', '建议加设信号灯', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('101', '13', '交通规划', '1305', '建议加装护栏', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('102', '13', '交通规划', '1306', '建议加装限高杆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('103', '13', '交通规划', '1307', '可变车道', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('104', '13', '交通规划', '1308', '停车规划', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('105', '14', '交办任务', '1401', '领导指示', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('111', '05', '交通设施', '0512', '杆体', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('114', '05', '交通设施', '0515', '交通线缆', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('113', '05', '交通设施', '0514', '交通检查井', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('112', '05', '交通设施', '0513', '机柜、机箱', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('115', '07', '突发事件', '0709', '涉外事件', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('01', '01', '交通拥堵', '0101', '反映拥堵', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('02', '01', '交通拥堵', '0102', '检测拥堵', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('03', '01', '交通拥堵', '0103', '其他路况', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('20', '03', '交通事故', '0302', '机动车与行人', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('21', '03', '交通事故', '0303', '单方交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('22', '03', '交通事故', '0304', '车损交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('23', '03', '交通事故', '0305', '伤人交通事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('24', '03', '交通事故', '0306', '非机动车与行人', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('25', '03', '交通事故', '0307', '非机动车与非机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('26', '03', '交通事故', '0308', '机动车与非机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('27', '03', '交通事故', '0309', '机动车与机动车', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('28', '03', '交通事故', '0310', '单车肇事', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('29', '03', '交通事故', '0311', '逃逸事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('30', '03', '交通事故', '0312', '后报事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('31', '03', '交通事故', '0313', '路外事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('32', '03', '交通事故', '0314', '高速公路事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('33', '03', '交通事故', '0315', '快速理赔', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('34', '03', '交通事故', '0316', '协商处理', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('35', '03', '交通事故', '0317', '简易程序', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('36', '03', '交通事故', '0318', '死亡事故', '0', 120);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('37', '04', '信息咨询', '0401', '其他业务咨询', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('38', '04', '信息咨询', '0402', '车管驾管', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('39', '04', '信息咨询', '0403', '12123APP使用', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('40', '05', '交通设施', '0501', '信号灯故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('41', '05', '交通设施', '0502', '视频故障', '1', 4320);
commit;
prompt 100 records committed...
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('42', '05', '交通设施', '0503', '其他交通设施', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('43', '05', '交通设施', '0504', '防护栏故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('44', '05', '交通设施', '0505', '诱导屏故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('45', '05', '交通设施', '0506', '标志、标线、标牌故障', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('46', '05', '交通设施', '0507', '其他交通设施', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('47', '05', '交通设施', '0508', '标志标线不清', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('48', '05', '交通设施', '0509', '指示牌、信号灯遮挡', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('49', '05', '交通设施', '0510', '隔离墩损坏', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('117', '10', '其他', '1003', '敏感事件', '1', 4320);
insert into PIS_FEATURE_TYPE_CONFIG (id, info_type, type_name, subtype, subtype_name, feature, close_limit)
values ('116', '10', '其他', '1002', '涉外事件', '1', 4320);
commit;
prompt 110 records loaded
prompt Enabling triggers for PIS_FEATURE_TYPE_CONFIG...
alter table PIS_FEATURE_TYPE_CONFIG enable all triggers;
set feedback on
set define on
prompt Done.


-- B5 end --------------------------
-- B6 start -----------------------------
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('PIS_HAMMTEXTLENGTH', '20', '最小文本长度', null, '文本长度，取值范围大于0', '62');
commit;
update enum_type e set e.enumname = '危难救助' where e.enumname = '危难求助';
commit;

--↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓HiATMP-DB-PIS-DML.6.0.0.0.B6.sql end-----------------------
-------------------6.0 pis 结束--------------------

--------------------------QD.PSA.A1-START--------------------

update psa_system_config t set t.remark='酒驾信息表' where t.id='0101';
update  psa_system_config p set p.remark='暂扣记录表' where p.id='0205';
update  psa_system_config p set p.remark='处罚决定书表' where p.id='0206';

delete from psa_collide_sql;

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('001', 't.devicetype 型号, t.deviceid 设备编号, t.recordnum 记录号, decode(t.inputtype,''auto'',''自动录入'',t.inputtype) 录入方式, t.testmode 测试模式, dp.deptshortname 部门名称, t.policename 警员姓名, t.policenum 警号, t.brac 测试值, t.testdate 测试时间, t.creation_date 上传时间, t.carnum 号牌号码, t.drivernum 驾驶证号, t.testname 被测人姓名, t.gps_info_id 经纬度
', 'test.alky_info t left join police_data p on p.policeid=t.policenum left join department dp on dp.cdepartmentid=p.deptid', 't.id=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('002', 't.YXH 原机动车序号, t.XH 机动车序号, ''鲁''||t.hphm 号牌号码, d1.dmsm1  号牌种类, t.CLPP1  中文品牌, t.CLXH 车辆型号, t.CLSBDH 车辆识别代号, t.FDJH  发动机号, d2.dmsm1 车辆类型, d3.dmsm1 车身颜色, d4.dmsm1 使用性质, t.SYR 机动车所有人, test.transformcode(t.zt,''00'',''1017'') 机动车状态', 'test.vehicle t left join test.frm_code d1 on d1.dmz=t.hpzl and d1.xtlb=''00'' and d1.dmlb=''1007'' left join test.frm_code d2 on d2.dmz=t.CLLX and d2.xtlb=''00'' and d2.dmlb=''1004'' left join test.frm_code d3 on d3.dmz=t.CSYS and d3.xtlb=''00'' and d3.dmlb=''1008'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003''', 't.hphm = ? and t.hpzl=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('003', 't.DSR 当事人, t.DH 电话, completehphm(t.hphm,t.hpzl) 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值, t.BZZ2 标准值, dc1.wfms 违法行为3, t.SCZ3 实测值, t.BZZ3 标准值, dc2.wfms 违法行为4, t.SCZ4 实测值, t.BZZ4 标准值, dc3.wfms 违法行为5, t.SCZ5 实测值, t.BZZ5 标准值, c3.dmsm1 人员分类, c4.dmsm1 交通方式, nvl(p.policename,t.zqmj) 执勤民警, test.transformcode(t.qzcslx,''04'',''0011'') 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, nvl(p1.policename,t.lrr) 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源', 'test.vio_force t left join test.vio_codewfdm c on c.wfxw=t.wfxw1 left join test.vio_codewfdm c1 on c1.wfxw=t.wfxw2 left join test.vio_codewfdm dc1 on dc1.wfxw=t.wfxw3 left join test.vio_codewfdm dc2 on dc2.wfxw=t.wfxw4 left join test.vio_codewfdm dc3 on dc3.wfxw=t.wfxw5 left join police_data p on p.policeid=t.zqmj left join police_data p1 on p1.policeid=t.lrr left join test.frm_code c2 on c2.dmz=t.qzcslx and c2.xtlb=''04'' and c2.dmlb=''0011'' left join test.frm_code c3 on c3.dmz=t.ryfl and c3.xtlb=''04'' and c3.dmlb=''0080'' left join test.frm_code c4 on c4.dmz=t.jtfs and c4.xtlb=''04'' and c4.dmlb=''0001''', 't.xh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('004', 'completehphm(t.hphm,t.hpzl) 号牌号码, d6.dmsm1 号牌种类, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, nvl(pl.policename,t.lrr) 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''2'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''1'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''1'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源', 'test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police_data pl on pl.policeid=t.lrr left join test.frm_code f on f.dmz=t.zjmc and f.xtlb=''02'' and f.dmlb=''0003''', 't.wfbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('005', 't.SNO 案件编号, t.ENTRY_TIME 入场时间, decode(s.status,1,''已确认'',2,''已放行'',11,''审核驳回'',12,''申请通过'',13,''放行申请中直接领导审核'',14,''等待高级领导审核'',20,''新增待确认'') 状态, ip.name 所在停车场, p.name 扣车民警, fp.name 办案民警, d.name 所属单位, to_char(t.SCENE_TIME,''yyyy-mm-dd'') 扣车时间, t.ADDRESS 扣车地点, dd.name 案件类别, dw.name 违法行为, dc.name 车辆种类, t.HPHM 号牌号码, t.CLPP 车辆品牌, t.COLOR 车辆颜色, t.PASS_END_TIME 出场时间', 'test.in_vehicle t left join test.in_vehicle_status s on s.vehicle_id=t.id left join test.operator p on p.id=t.POLICE_ID left join test.department_vehicle d on d.id=t.dept1_id left join test.in_park ip on ip.id=t.park_id left join test.DIC_DETAIL dd on t.Business=dd.ITEM_CODE and dd.dic_code=''0630'' left join test.DIC_DETAIL dw on t.WFXW=dw.ITEM_CODE and dw.dic_code=''0632'' left join test.DIC_DETAIL dc on t.HPZL=dc.ITEM_CODE and dc.dic_code=''0631'' left join test.operator fp on fp.id=t.police_id2', 't.id=? order by s.status desc');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('006', 't.XM 姓名, decode(XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证号码, t.CSRQ 出生日期, c.dmsm1 国籍, t.DJZSXZQH 登记住所行政区划, t.DJZSXXDZ 登记住所详细地址, t.LXZSXZQH 联系住所行政区划, t.LXZSXXDZ 联系住所详细地址, t.LXZSYZBM 联系住所邮政编码, t.LXDH 联系电话, t.SJHM 手机号码, t.DZYX 电子邮箱, t.ZZZM 暂住证明, t.ZZFZJG 暂住发证机关, t.ZZFZRQ 暂住发证日期, decode(t.SFBD,''1'',''是'',''0'',''否'',t.SFBD) 是否本地, t.DWBH 属地信息, t.SYYXQZ 审验有效期止, decode(RYZT,''0'',''正常'',''1'',''有吸毒记录'',RYZT) 人员状态, decode(SXBJ,''1'',''是'',''2'',''否'',sxbj) 实习标记, t.ZJCX 准驾车型, t.YZJCX 原准驾车型, t.QFRQ 下一清分日期, t.SYRQ 下一审验日期, t.CCLZRQ 初次领证日期, t.CCFZJG 初次发证机关, t.JZQX 驾证期限, t.YXQS 有效期始, t.YXQZ 有效期止, t.LJJF 累积记分, t.CFRQ 超分日期, t.XXTZRQ 学习通知日期, t.BZCS 补证次数, test.transformcode(t.zt,''00'',''2005'') 驾驶证状态, t.JXMC 驾校名称, t.JLY 教练员', 'test.drivinglicense t left join test.frm_code c on c.dmz=t.gj and c.xtlb=''00'' and c.dmlb=''0031''', 't.xh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('007', 't.id ID, decode(t.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, t.vehicle_id 车辆编号, t.status_desc 状态描述, t.start_time 开始时间, p.name 流程开始创建用户, t.end_time 结束时间, p2.name 流程结束用户', 'test.in_vehicle_status_his t left join test.operator p on p.id=t.start_user left join test.operator p2 on p2.id=t.end_user', 't.id=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('008', 't.kssj 开启时间, t.jssj 结束时间, t.mjbh 民警编号, p.policename 民警姓名, d.deptshortname 部门', 'test.video_info t left join police_data p on p.policeid=t.mjbh left join department d on d.cdepartmentid=p.deptid', 't.id=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('009', 'WQFFZ 未清分分值, BJRQ 标记日期, JSSJ 结束时间, KSJG 考试机关, DABH 档案编号, QFRQ 清分日期, SFZMHM 身份证明号码, JFND 记分年度, QFFZ 清分分值, QFZL 清分种类, LSH 流水号, JBR 经办人', 'test.drv_pointreset', 'xh=? and qfrq=to_date(?,''yyyy-mm-dd hh24:mi:ss'')');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('010', 'null 号牌号码, null 号牌种类, null 采集时间, null 采集地点, null 车辆速度, null 车身颜色, null 号牌颜色, null 车辆类型, null 数据上传时间, null 危险品车', 'detect_speed_data t  left join enum_type d1 on d1.enumvalue = t.CLICENSETYPE and d1.enumtypeid=''170'' left join enum_type d2 on d2.enumvalue=t.cdatasource and d2.enumtypeid=''7201'' left join enum_type d3 on d3.enumvalue=t.carcolor and d3.enumtypeid=''745'' left join enum_type d4 on d4.enumvalue=t.CSNAPTYPE and d4.enumtypeid=''148'' left join enum_type d5 on d5.enumvalue=t.NDERICTRION and d5.enumtypeid=''702'' left join enum_type d6 on d6.enumvalue=t.CARBRAND and d6.enumtypeid=''747'' left join enum_type d7 on d7.enumvalue=t.PLATECOLOR and d7.enumtypeid=''156'' left join enum_type d8 on d8.enumvalue=t.VEHICLETYPE and d8.enumtypeid=''833''', 't.nid=? and t.dcollectiondate=to_date(?,''yyyy-mm-dd hh24:mi:ss'')');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('011', 't.pzbh 凭证编号, c.dmsm1 扣留项目, t.klrq 扣留日期, nvl(d.deptshortname,t.kljg) 扣留机关, t.ycklqx 延长扣留期限, nvl(p1.policename,t.ycklqxspr) 延长扣留审批人, nvl(p.policename,t.zqmj) 执勤民警, t.jjsj 强制措施凭证处理时间, nvl(c1.dmsm1,t.hpzl) 号牌种类, completehphm(t.hphm,t.hpzl) 号牌号码, t.jszh 驾驶证号, t.dsr 当事人, t.fzjg 发证机关, t.qtwpmc 其他物品名称, t.wpcfd 物品存放地, decode(t.cljg,''0'',''未发还'',''1'',''已发还'',''2'',''收缴'',''3'',''移交'',''4'',''拍卖'') 处理结果, nvl(c2.dmsm1,t.clyy) 处理原因, t.lqr 领取人, t.lqrzjhm 领取人证件号码, t.fhrq 发还日期, nvl(d2.deptshortname,t.fhjg) 发还机关, nvl(pj.policename,t.jbr) 经办人, t.lrsj 录入时间, t.jsjg 接受机关, t.fsjg 发送机关, t.bz 备注', 'test.vio_klwp t left join test.frm_code c on c.dmz=t.klxm and c.xtlb=''04'' and c.dmlb=''0016'' left join department d on d.cdepartmentid=t.kljg left join department d2 on d2.cdepartmentid=t.fhjg left join police_data p on p.policeid=t.zqmj left join police_data p1 on p1.policeid=t.ycklqxspr left join test.frm_code c1 on c1.dmz=t.hpzl and c1.xtlb=''00'' and c1.dmlb=''1007'' left join test.frm_code c2 on c2.dmz=t.cljg and c2.xtlb=''04'' and c2.dmlb=''0043'' left join police_data pj on pj.policeid=t.jbr', 'xh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('012', 't.SGBH 事故编号, t.KSKCSJ 开始勘查时间, t.JSKCSJ 结束勘查时间, t.XQ 星期, t.SGFSSJ 事故发生时间, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.QDMS 起点米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.ZHDMWZ 在道路横断面位置, t.KCR1 勘查人1, t.KCR2 勘查人2, p.policename 办案人1, t.BAR2 办案人2, t.SWRS 当场死亡人数, t.SWRSQ 抢救无效死亡人数, t.SZRS 失踪人数, t.ZSRS 重伤人数, t.QSRS 轻伤人数, t.SSRS 受伤人数, t.JDCSL 机动车数量, t.FJDCSL 非机动车数量, t.XRSL 行人数量, t.XSGLBM 刑事管理部门, t.XSBADW 刑事办案单位, t.XSBAR 刑事办案人, t.TPZS 图片张数, t.XCTZS 现场图张数, t.ZJCCSS 直接财产损失, d1.dmsm1 事故类型, t.LWSGLX 路外事故类型, d8.dmsm1 事故初查原因分类, d9.dmsm1 事故认定原因分类, d2.dmsm1 事故初查原因, d3.dmsm1 事故认定原因, t.JYAQ 简要案情, d5.dmsm1 天气, t.NJD 能见度, d6.dmsm1 现场, decode(SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, decode(sfty,''1'',''否'',''2'',''驾车逃逸'',''3'',''弃车逃逸'') 是否逃逸, d7.dmsm1 单车事故, decode(PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, decode(TYSGZP,''1'',''是'',''2'',''否'') 逃逸事故侦破, t.TYZPSJ 逃逸事故侦破时间, t.TJR1 调解人1, t.TJR2 调解人2, decode(YZWXP,''1'',''是'',''2'',''否'') 是否运载危险物品, t.YZWXPHG 运载危险品事故后果, t.CCLRSJ 初次录入时间, t.JBR 经办人, t.TJSJ 提交时间, t.GXSJ 更新时间, dt.deptshortname 所属中队, t.DAH 档案号, t.JNH 卷内号, t.SXXZ 所辖乡镇, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.BALXFS 办案联系方式, t.BADW 办案单位, decode(t.SFECSG,''1'',''是'',''2'',''否'') 是否二次事故, decode(t.sfdxsg,''1'',''是'',''2'',''否'') 是否典型事故, t.DLAQYHDJ 道路安全隐患等级, t.DSRZS 事故涉及人员总数', 'test.acd_file t left join test.frm_code d1 on d1.dmz = t.sglx and d1.xtlb = ''03'' and d1.dmlb = ''0901'' left join test.frm_code d2 on d2.dmz = t.sgccyy and d2.xtlb = ''03'' and d2.dmlb = ''0160'' left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz = t.DCSG and d7.xtlb = ''03'' and d7.dmlb = ''0138'' left join test.frm_code d8 on d8.dmz = t.CCYYFL and d8.xtlb = ''03'' and d8.dmlb = ''0115'' left join test.frm_code d9 on d9.dmz = t.RDYYFL and d9.xtlb = ''03'' and d9.dmlb = ''0115''  left join police_data p on p.policeid=t.BAR1', 't.SGBH=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('013', 't.SGBH 事故编号, t.WSBH 文书编号, t.RYBH 人员编号, t.JDDX 鉴定对象, t.WTSX 委托事项, t.WTRQ 委托日期, t.WTJG 委托机构, t.YDJYRQ 约定检验日期, t.JTYQ 具体要求, t.SJCL 送检材料, t.BAR1 办案人1, t.BAR2 办案人2, p.policename 经办人, t.CQ 超期, t.CXJYJD 重新检验鉴定, decode(YDYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 约定延期, decode(WTYQ,''1'',''发起审批'',''2'',''结束'',''3'',''退回'') 委托延期, t.TQSPRQ 提请审批日期, t.SPRQ 审批日期, t.SPR 审批人, decode(t.wszt,''1'',''正式'',''2'',''未正式'') 文书状态, t.JYW 校验位', 'test.acd_consigntest t left join police_data p on p.policeid=t.JBR', 't.SGBH=? and t.wsbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('014', 'SGBH 事故编号, RYBH 人员编号, d.dmsm1 检验类型, TJJYRQ 提交检验日期, TJYQJYRQ 提交延期检验日期, TJCXJYRQ 提交重新检验日期, TJCXYQJYRQ 提交重新延期检验日期, JYWCRQ 检验完成日期, CXJYWCRQ 重新检验完成日期, CXJYCQ 重新检验超期, JYCQ 检验超期, BZ 备注, JYW 校验位, YDJYRQ 约定检验日期, YDCXJYRQ 约定重新检验日期, JYCQTS 检验超期天数, JYJDJL 检验鉴定结论, CXJYJDJL 重新检验鉴定结论, CXJYCQTS 重新检验超期天数, JBR 经办人, CXJBR 重新检验经办人', 'test.acd_testtime t left join test.frm_code d on d.dmz=t.Jylx and d.xtlb=''03'' and d.dmlb=''0026''', 'SGBH=? and RYBH=? and JYLX=? and TJJYRQ=to_date(?,''YYYY-MM-DD hh24:mi:ss'')');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('015', 'SGBH 事故编号, WSBH 文书编号, trim(DBMS_LOB.SUBSTR(jbss,4000)) 基本事实, trim(DBMS_LOB.SUBSTR(DSFQK,4000)) 当事方情况, trim(DBMS_LOB.SUBSTR(RDNR,4000)) 认定内容, trim(DBMS_LOB.SUBSTR(BARYJ,4000)) 办案人意见, trim(DBMS_LOB.SUBSTR(ZJYJ,4000)) 专家意见, CBR1 承办人1, CBR2 承办人2, XBRQ 宣布日期, TQSPRQ 提请审批日期, SPRQ 审批日期, SPR 审批人, nvl(p.policename,t.jbr) 经办人, decode(wszt,''1'',''正式'',''2'',''未正式'',wszt) 文书状态, JYW 校验位', 'test.acd_duty t left join police_data p on p.policeid=t.jbr', 'SGBH=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('016', 't.SGBH 事故编号, t.WSBH 文书编号, t.SDSJ 送达时间, t.RYBH 人员编号, c.dmsm1 文书类别, t.SDWSBH 送达文书编号, t.SDR 送达人, t.SSDR 受送达人, t.SDDD 送达地点, t.SDFS 送达方式, t.DSR 代收人, t.DSYY 代收原因, t.SSDRGX 与受送达人关系, t.JZR 见证人, decode(t.ZT,''1'',''送达'',''2'',''拒收'') 状态, t.JSYY 拒收原因, t.BZ 备注', 'test.acd_deliver t left join test.frm_code c on t.wslb=c.dmz and c.xtlb=''03'' and c.dmlb=''0162''', 'SGBH=? and wsbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('017', 'SGBH 事故编号, DABH 档案编号, d.deptshortname 管理部门, decode(JY,''1'',''是'',''否'') 简易, QZH 全宗号, MLH 目录号, AJH 案卷号, GDH 归档号, AJMC 案卷题名, BGQX 保管期限, p.policename  经办人, GDRQ 归档日期, QKSM 情况说明, CFWZ 存放位置, LJR 立卷人, BZ 备注', 'test.acd_gfile left join department d on d.cdepartmentid=glbm left join police_data p on p.policeid=jbr', 'SGBH=? and JY=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('018', 't.SGBH 事故编号, t.XQ 星期, t.SGFSSJ 事故发生时间, t.XZQH 行政区划, t.LH 路号, t.LM 路名, t.GLS 公里数, t.MS 米数, t.JDWZ 绝对位置, t.SGDD 事故地点, t.SSRS 受伤人数, t.ZJCCSS 直接财产损失, t.LWSGLX 路外事故类型, d9.dmsm1 事故认定原因分类, d3.dmsm1 事故认定原因, d5.dmsm1 天气, d6.dmsm1 现场, decode(t.SWSG,''1'',''是'',''2'',''否'') 涉外事故, d4.dmsm1 事故形态, t.CLJSG 车辆间事故, t.DCSG 单车事故, decode(t.PZFS,''1'',''单车'',''2'',''双车'',''3'',''多车'',''4'',''车人事故'') 碰撞方式, t.TJR1 调解人1, t.CCLRSJ 初次录入时间, case when t.spr is not null then to_date(''20'' || substr(t.spr,1,8) || '' '' || substr(t.spr,10,5) || '':00'',''yyyy-MM-dd hh24:mi:ss'') end 审批日, t.SCSJD 上传时间段, dz.deptshortname 所属中队, t.DAH 档案号, decode(t.SB,''1'',''是'',''2'',''否'',''上报但更新不成功'') 上报, t.TJSGBH 统计事故编号, dg.deptshortname 管理部门, t.DZZB 电子坐标, t.BADW 办案单位, t.WSBH 文书编号, t.SGSS 事故事实, t.ZRTJJG 责任调解结果, p.policename 接案人1, t.JAR2 接案人2, t.JBR 经办人, t.GXSJ 更新时间, t.JYW 校验位, decode(t.jafs,''1'',''调解结案'',''2'',''不同意结案'',''3'',''对认定有异议'',''4'',''拒绝签字'') 简易结案方式, d8.dmsm1 道路类型, d7.dmsm1 公路行政等级, decode(t.TJFS,''1'',''自行协商'',''2'',''人民调解'',''3'',''行政调解'',''4'',''司法调解'') 调解方式', 'test.acd_dutysimple t left join test.frm_code d3 on d3.dmz = t.sgrdyy and d3.xtlb = ''03'' and d3.dmlb = ''0160'' left join test.frm_code d4 on d4.dmz = t.sgxt and d4.xtlb = ''03'' and d4.dmlb = ''0112'' left join department dt  on dt.cdepartmentid = t.SSZD left join test.frm_code d5 on d5.dmz=t.tq and d5.xtlb=''03'' and d5.dmlb=''0111'' left join test.frm_code d6 on d6.dmz = t.xc and d6.xtlb = ''03'' and d6.dmlb = ''0113'' left join test.frm_code d7 on d7.dmz=t.glxzdj and d7.xtlb=''00'' and d7.dmlb=''3116'' left join test.frm_code d8 on d8.dmz=t.dllx and d8.xtlb=''00'' and d8.dmlb=''3124'' left join test.frm_code d9 on t.RDYYFL=d9.dmz and d9.xtlb=''03'' and d9.dmlb=''0115'' left join department dz on dz.cdepartmentid=t.sszd left join department dg on dg.cdepartmentid=t.glbm left join police_data p on p.policeid=t.jar1', 't.SGBH=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('019', 't.SGBH 事故编号, t.RYBH 人员编号, t.XM 姓名, decode(t.XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证明号码, t.NL 年龄, t.ZZ 住址, t.DH 电话, d1.dmsm1 人员类型, t.SHCD 伤害程度, case when c.wfms is not null then c.wfms when d.dmsm1 is not null then d.dmsm1 else t.wfxw1 end 主要违法行为, case when c1.wfms is not null then c1.wfms when d11.dmsm1 is not null then d11.dmsm1 else t.wfxw2 end 其他违法行为一, case when c2.wfms is not null then c2.wfms when d12.dmsm1 is not null then d12.dmsm1 else t.wfxw3 end 其他违法行为二, t.TK1 条款内容1, t.TK2 条款内容2, t.TK3 条款内容3, t.ZYYSDW 专业运输单位, d2.dmsm1 交通方式, t.GLXZQH 管理行政区划, t.DABH 驾证档案编号, t.JL 驾龄, d9.dmsm1 驾驶证种类, test.transformcode(t.ZJCX,''00'',''2001'') 准驾车型, t.CCLZRQ 初次领证日期, t.JSRGXD 驾驶人管辖地, t.FZJG 发证机关, d4.dmsm1 事故责任, completehphm(t.hphm,t.hpzl) 号牌号码, d3.dmsm1 号牌种类, t.CLFZJG 车辆发证机关, t.CLPP 车辆品牌, t.CLXH 车辆型号, d6.dmsm1 车身颜色, d5.dmsm1 车辆类型, test.transformcode(t.jdczt,''00'',''1017'') 机动车状态, decode(t.SYQ,''1'',''单位'',''2'',''个人'') 所有权, t.JDCSYR 机动车所有人, d7.dmsm1 车辆使用性质, decode(BX,''1'',''是'',''2'',''否'') 保险, t.BXGS 保险公司, t.BXPZH 保险凭证号, t.CLGXD 车辆管辖地, t.CJCXBJ 车驾查询标记, t.JYW 校验位', 'test.acd_dutysimplehuman t left join test.frm_code d1 on d1.dmz=t.RYLX and d1.xtlb=''04'' and d1.dmlb=''0080'' left join test.frm_code d2 on d2.dmz=t.JTFS and d2.xtlb=''04'' and d2.dmlb=''0001'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.SGZR and d4.xtlb=''00'' and d4.dmlb=''3138'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004''  left join test.frm_code d6 on d6.dmz=t.CSYS and d6.xtlb=''00'' and d6.dmlb=''1008'' left join test.frm_code d7 on d7.dmz=t.clsyxz and d7.xtlb=''03'' and d7.dmlb=''0139'' left join test.frm_code d8 on d8.dmz=t.jdczt and d8.xtlb=''00'' and d8.dmlb=''1017'' left join test.frm_code d9 on d9.dmz=t.jszzl and d9.xtlb=''03'' and d9.dmlb=''0136'' left join test.frm_code d on d.dmz = t.wfxw1 and d.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c on c.wfxw = t.wfxw1 left join test.frm_code d11 on d11.dmz = t.wfxw2 and d11.dmlb = ''0160'' and d.xtlb = ''03'' left join test.vio_codewfdm c1 on c1.wfxw = t.wfxw2 left join test.frm_code d12 on d12.dmz = t.wfxw3 and d12.dmlb = ''0160'' and d12.xtlb = ''03'' left join test.vio_codewfdm c2 on c2.wfxw = t.wfxw2', 't.SGBH=? and t.rybh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('020', '''鲁''||completehphm(t.hphm,t.hpzl) 号牌号码, d1.dmsm1 号牌种类, d4.dmsm1 使用性质, t.SYR 机动车所有人', 'test.vehicle t left join test.frm_code d1 on d1.dmz=t.hpzl and d1.xtlb=''00'' and d1.dmlb=''1007'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' ', 't.hphm = ? and t.hpzl=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('021', 'null 号牌号码, null 采集时间, null 采集地点, null 危险品车', 'dual', '1=1');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('022', 't.taskid 序号, t.projectname 工程名称, t.begindate 工程开始时间, t.enddate 工程结束时间, t.digdept 施工单位, t.respman_phone 经办人联系方式, t.respman 经办人, t.chairman 法人代表, t.principal 责任人, t.telephone 责任人联系方式, t.isdiversion 是否调流, t.diversionplan 调流方案, t.requestdept 申请单位, t.requestdesc 申请理由, t.requestdate 申请日期, decode(t.digtype,''0'',''半封闭'',''1'',''全封闭'') 施工形式, nvl(d.deptshortname,t.cdepartmentid) 分管大队, decode(t.DIGPERIOD,''1'',''全天'',''2'',''夜间'',''3'',''白天'') 施工时段, t.SIDEWALK_LENGTH 占用人行道长, t.SIDEWALK_WIDTH 占用人行道宽, t.SIDEWALK_AREA 占用人行道面积, t.CARWAY_LENGTH 占用车行道长, t.CARWAY_WIDTH 占用车行道宽, t.CARWAY_AREA 占用车行道面积, t.DIGPERIOD_STARTTIME 占用时间段开始时间, t.DIGPERIOD_ENDTIME 占用时间段结束时间, t.POSITION_FILES 位置图, t.DIGROAD_INFO 占用道路名, t.TASKID 工作流任务编号, t.NODENAME 待执行结点名称, decode(t.TASK_STATUS,''0'',''进行中'',''1'',''已结束'') 任务状态, t.startpoint 开始桩号, t.endpoint 结束桩号, decode(t.installdirection,''0'',''上行'',''1'',''下行'') 方向, t.LANENUM 占用车道, t.REQUESTCODE 申请编号, t.roadstart 占路起始路段, t.roadend 占路结束路段, t.SAFEINFO 施工安全措施, t.SAFEAPPLY 施工安全措施申请单位, t.SAFECHAIRMAN 施工安全措施法人代表, t.SAFEDEPT 施工安全措施施工单位, t.SAFEPRINCIPAL 施工安全措施负责人, t.DIGDEPTADDRESS 施工单位地址, t.CHAIRMANPHONE 法人代表电话, t.DADUISCENE 大队现场勘查情况, t.ZHIDUISCENE 支队现场勘查情况, t.LIGHTINFO 基本情况信号灯, t.SIGNINFO 基本情况标志牌, t.RETICULEINFO 基本情况标线, t.RAILINFO 基本情况护栏, t.SURFACEINFO 基本情况路面情况, t.OTHERINFO 基本情况其他, t.CIRCULARINFO 施工通告, t.DELAYTIME 延期天数', 'test.digroad t left join department d on t.Cdepartmentid=d.cdepartmentid', 'taskid=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('023', ' t.proc_inst_id_ 工作流任务编号, t.name_ 节点名称, t.end_time_ 节点结束时间, decode(t.delete_reason_,''jump'',''驳回'',''completed'',''通过'') 节点状态', 'test.act_hi_taskinst t', 'id_=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('024', 't.wfbh 违法编号, decode(t.jdslb,''1'',''简易处罚决定书'',''2'',''行政处罚决定书'') 决定书类别, t.jdsbh 决定书编号, t.JSZH 驾驶证号, t.dabh 档案编号, t.DSR 当事人, t.ZSXZQH 住所行政区划, t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, f2.dmsm1 车辆分类, d6.dmsm1 号牌种类, completehphm(t.hphm,t.hpzl) 号牌号码, t.JDCSYR 机动车所有人, d4.dmsm1  机动车使用性质, d1.dmsm1 交通方式, t.WFSJ 违法时间, xzqh 行政区划, t.WFDZ 违法地点, f2.dmsm1 道路类型, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.WFDZ 违法地址, c.wfms 违法行为, t.WFJFS 违法记分数, t.FKJE 罚款金额, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, nvl(pl2.policename,t.zqmj) 执勤民警, f4.dmsm1 交款方式, fxjg 发现机关, fxjgmc 发现机关名称, cljg 处理机关, cljgmc 处理机关名称, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, f5.dmsm1 交款标记, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, f7.dmsm1 拒收拒签标记, f6.dmsm1 记录类型, nvl(pl.policename,t.lrr) 录入人, lrsj 录入时间, jbr1 经办人1, jbr2 经办人2, sgdj 事故等级, decode(t.cldxbj,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, jdccldxbj 机动车处理对象标记, decode(t.zdjlbj,''0'',''本地'',''1'',''异地转入'') 转递记录标记, decode(xxly,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源, decode(xrms,''1'',''系统写入'',''2'',''接口写入'',''3'',''内部其他系统写入'') 写入模式', 'test.vio_violation_del_track t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police_data pl on pl.policeid=t.lrr left join police_data pl2 on pl2.policeid=t.zqmj left join test.frm_code f on f.dmz=t.zjmc and f.xtlb=''02'' and f.dmlb=''0003'' left join test.frm_code f2 on f2.dmz=t.clfl and f2.xtlb=''04'' and f2.dmlb=''0081'' left join test.frm_code f3 on f3.dmz=t.dllx and f3.xtlb=''00'' and f3.dmlb=''3124'' left join test.frm_code f4 on f4.dmz=t.jkfs and f4.xtlb=''04'' and f4.dmlb=''0008'' left join test.frm_code f5 on f5.dmz=t.jkbj and f5.xtlb=''04'' and f5.dmlb=''0029'' left join test.frm_code f6 on f6.dmz=t.jllx and f6.xtlb=''04'' and f6.dmlb=''0036'' left join test.frm_code f7 on f7.dmz=t.jsjqbj and f7.xtlb=''04'' and f7.dmlb=''0021''', 'uuid=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('025', 'f1.dmsm1 文书类别, t.wsbh 文书编号, dp.deptshortname 支队部门, dp2.deptshortname 大队部门, dp3.deptshortname 中队部门, dp4.deptshortname 发放部门, p2.policename 经办人, t.ffsj 部门发放时间, lysj 民警领用时间, p.policename 领用民警, f2.dmsm1 文书状态, t.sysj 使用时间, f3.dmsm1 作废原因, t.zfsj 作废时间, f4.dmsm1 文书标记, t.gxsj 更新时间, dp5.deptshortname 领用部门, f5.dmsm1 领用标记', 'test.vio_pzgl t left join test.frm_code f1 on f1.dmz=t.wslb and f1.xtlb=''04'' and f1.dmlb=''0015'' left join department dp on dp.cdepartmentid=t.bmdm1 left join department dp2 on dp2.cdepartmentid=t.bmdm2 left join department dp3 on dp3.cdepartmentid=t.bmdm3 left join department dp4 on dp4.cdepartmentid=t.ffbm left join department dp5 on dp5.cdepartmentid=t.lybm left join police_data p on p.policeid=t.lymj left join test.frm_code f2 on f2.dmz=t.wszt and f2.xtlb=''04'' and f2.dmlb=''0018'' left join test.frm_code f3 on f3.dmz=t.wszt and f3.xtlb=''04'' and f3.dmlb=''0019'' left join test.frm_code f4 on f4.dmz=t.wsbj and f4.xtlb=''04'' and f4.dmlb=''0902'' left join test.frm_code f5 on f5.dmz=t.lybj and f5.xtlb=''04'' and f5.dmlb=''0903'' left join police_data p2 on p2.policeid=t.jbr', 't.wsbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('026', 't.sgbh 事故编号, t.rybh 人员编号, t.xzqh 行政区划, decode(t.sfdsr,''1'',''是'',''2'',''否'',t.sfdsr) 当事人否, decode(t.dwgr,''1'',''单位'',''2'',''个人'',t.dwgr) 单位个人, t.xm 姓名, decode(t.xb,''1'',''男'',''2'',''女'',t.xb) 性别, t.sfzmhm 身份证明号码, t.nl 年龄, t.csny 出生年月, nvl(c.dmsm1,t.mz) 民族, nvl(c1.dmsm1,t.gj) 国籍, nvl(c2.dmsm1,t.whcd) 文化程度, t.jg 籍贯, t.hjz 户籍地址, t.zz 住址, t.dh 电话, nvl(c3.dmsm1,t.rylx) 人员类型, t.dw 单位, decode(t.sfty,''1'',''是'',''2'',''否'',t.sfty) 是否逃逸, nvl(c4.dmsm1,t.shcd) 伤害程度, nvl(c5.dmsm1,t.shcd24) as 二十四小时伤害程度, nvl(c6.dmsm1,t.shcd3) as 三日内伤害程度, nvl(c7.dmsm1,t.shcd7) as 七日内伤害程度, nvl(c8.dmsm1,t.shcd30) as 三十日内伤害程度, nvl(c9.dmsm1,t.ssbw) 受伤部位, nvl(c10.dmsm1,t.zsyy) 致死原因, decode(t.hkxz,''1'',''农业'',''0'',''非农业'',t.hkxz) 户口性质, nvl(f.wfms,t.wfxw1) 违法行为一, nvl(f2.wfms,t.wfxw2) 违法行为二, nvl(f3.wfms,t.wfxw3) 违法行为三, nvl(c11.dmsm1,t.jtfs) 交通方式, t.glxzqh 管理行政区划, t.dabh 驾证档案编号, t.jl 驾龄, nvl(c12.dmsm1,t.jszzl) 驾驶证种类, test.transformcode(t.ZJCX,''00'',''2001'') 准驾车型, t.cclzrq 初次领证日期, t.fzjg 发证机关, t.sgzr 事故责任, decode(t.bx,''1'',''是'',''2'',''否'',t.bx) 保险, t.bxgs 保险公司, t.bxpzh 保险凭证号, t.xyjjhl 血液酒精含量, nvl(c13.dmsm1,t.xszt) 行驶状态, nvl(c14.dmsm1,t.aqdtkqk) 安全保护装置使用情况, nvl(c15.dmsm1,t.xrzt) 行人状态, t.xrsd 行人速度, nvl(c16.dmsm1,t.pzjs) 碰撞中角色, t.clbsqdw 车辆变速器档位, nvl(c17.dmsm1,t.clzxdzt) 车辆转向灯状态, nvl(c18.dmsm1,t.clzmdzt) 车辆照明灯状态, nvl(c19.dmsm1,t.claqqnzt） 车辆安全气囊状态, t.hphm 号牌号码, nvl(d3.dmsm1,t.hpzl) 号牌种类, t.clpp 车辆品牌, t.clxh 车辆型号, t.jdcsyr 机动车所有人, nvl(d2.dmsm1,t.clsyxz) 车辆使用性质, t.clsbdh 车辆识别代号, nvl(d1.dmsm1,t.csys) 车身颜色, decode(t.sfcz,''1'',''是'',''2'',''否'',t.sfcz) 是否超载, nvl(d5.dmsm1,t.cllx) 车辆类型, test.transformcode(t.jdczt,''00'',''1017'') 机动车状态, t.hphm1 号牌号码1, nvl(d4.dmsm1,t.hpzl1) 号牌种类1, nvl(d6.dmsm1,t.cllx1) 车辆类型1, t.clpp1 车辆品牌1, t.clxh1 车辆型号1, decode(t.yzwxp,''1'',''是'',''2'',''否'',t.yzwxp) 是否运载危险物品, decode(t.ysxk,''1'',''是'',''2'',''否'',t.ysxk) 有无危险品运输许可证, t.wxpcyzg 危险品从业资格, nvl(d7.dmsm1,t.xdzt) 吸毒状态', 'test.acd_filehuman t left join test.frm_code c on c.dmz=t.mz and  c.xtlb=''00'' and c.dmlb=''0080'' left join test.frm_code c1 on c1.dmz=t.gj and  c1.xtlb=''00'' and c1.dmlb=''0031'' left join test.frm_code c2 on c2.dmz=t.whcd and  c2.xtlb=''00'' and c2.dmlb=''0081'' left join test.frm_code c3 on c3.dmz=t.rylx and  c3.xtlb=''03'' and c3.dmlb=''0135'' left join test.frm_code c4 on c4.dmz=t.shcd and  c4.xtlb=''03'' and c4.dmlb=''0132'' left join test.frm_code c5 on c5.dmz=t.shcd24 and c5.xtlb=''03'' and c5.dmlb=''0132'' left join test.frm_code c6 on c6.dmz=t.shcd3 and c6.xtlb=''03'' and c6.dmlb=''0132'' left join test.frm_code c7 on c7.dmz=t.shcd7 and  c7.xtlb=''03'' and c7.dmlb=''0132'' left join test.frm_code c8 on c8.dmz=t.shcd30 and c8.xtlb=''03'' and c8.dmlb=''0132'' left join test.frm_code c9 on c9.dmz=t.ssbw and c9.xtlb=''03'' and c9.dmlb=''0131'' left join test.frm_code c10 on c10.dmz=t.zsyy and c10.xtlb=''03'' and c10.dmlb=''0151'' left join test.vio_codewfdm f on f.wfxw=t.wfxw1 left join test.vio_codewfdm f2 on f2.wfxw=t.wfxw2 left join test.vio_codewfdm f3 on f3.wfxw=t.wfxw3 left join test.frm_code c11 on c11.dmz=t.jtfs and c11.xtlb=''03'' and c11.dmlb=''0130'' left join test.frm_code c12 on c12.dmz=t.jszzl and c12.xtlb=''03'' and c12.dmlb=''0136'' left join test.frm_code c13 on c13.dmz=t.xszt and c13.xtlb=''03'' and c13.dmlb=''0144'' left join test.frm_code c14 on c14.dmz=t.aqdtkqk and c14.xtlb=''03'' and c14.dmlb=''0165'' left join test.frm_code c15 on c15.dmz=t.xrzt and c15.xtlb=''03'' and c15.dmlb=''0149'' left join test.frm_code c16 on c16.dmz=t.pzjs and c16.xtlb=''03'' and c16.dmlb=''0154'' left join test.frm_code c17 on c17.dmz=t.clzxdzt and c17.xtlb=''03'' and c17.dmlb=''0157'' left join test.frm_code c18 on c18.dmz=t.clzmdzt and c18.xtlb=''03'' and c18.dmlb=''0158'' left join test.frm_code c19 on c19.dmz=t.claqqnzt and c19.xtlb=''03'' and c19.dmlb=''0159'' left join test.frm_code d3 on d3.dmz=t.HPZL and d3.xtlb=''00'' and d3.dmlb=''1007'' left join test.frm_code d2 on d2.dmz=t.clsyxz and d2.xtlb=''03'' and d2.dmlb=''0139'' left join test.frm_code d1 on d1.dmz=t.CSYS and d1.xtlb=''00'' and d1.dmlb=''1008'' left join test.frm_code d4 on d4.dmz=t.HPZL1 and d4.xtlb=''00'' and d4.dmlb=''1007'' left join test.frm_code d5 on d5.dmz=t.CLLX and d5.xtlb=''00'' and d5.dmlb=''1004'' left join test.frm_code d6 on d6.dmz=t.CLLX1 and d6.xtlb=''00'' and d6.dmlb=''1004'' left join test.frm_code d7 on d7.dmz=t.xdzt and d7.xtlb=''02'' and d7.dmlb=''0702''', 't.SGBH=? and t.rybh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('027', 't.deviceid 设备编号, t.devicetype 设备类型, t.devicename 设备名称, t.policenum 警员号', 'test.alky_device t', 't.deviceid=(SELECT i.deviceid FROM test.alky_info i where i.id=?)');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('028', 't.wfbh 违法编号, t.jdsbh 决定书编号, t.dsr 当事人, t.jszh 驾驶证号, t.dabh 档案编号, t.fzjg 发证机关, t.zkyy 暂扣原因, t.zkrq 作出暂扣的日期, t.zkqx 暂扣期限, t.kzksrq 扣证开始日期, t.kzjsrq 扣证结束日期, t.cljg 处理机关, t.zkjbr 暂扣经办人, t.hzjg 还证机关, t.hzrq 还证日期, t.hzjbr 还证经办人, decode(t.hzbj,''0'',''未还证'',''1'',''已还证'',''2'',''证件已转外地'',t.hzbj) 还证标记, t.zjlqd 证件领取地, t.jsjg 接受机关, t.fsjg 发送机关, t.zdbj 转递标记, t.jllx 记录类型, decode(t.zdjlbj,''0'',''本地'',''1'',''异地'',t.zdjlbj) 转递记录标记, t.gxsj 更新时间, t.lrsj 录入时间', 'test.vio_suspend t', 't.wfbh=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('029', 't.xh 序号, t.jdsbh 决定书编号, t.jdjg 决定机关, t.dsr 当事人, t.zsxzqh 住所行政区划, t.zsxxdz 住所详细地址, t.jszh 驾驶证号, t.dabh 档案编号, t.fzjg 发证机关, t.dxyy 吊销原因, t.dxrq 吊销日期, decode(t.zdjlbj,''0'',''本地'',''1'',''本省外地市转入'',''2'',''外省转入'',t.zdjlbj) 转递记录标记, t.jsjg 接受机关, t.fsjg 发送机关, t.zdbj 转递标记, t.jllx 记录类型, t.gxsj 更新时间, t.lrsj 录入时间, t.xznx 限制年限', 'test.vio_dxjl t', 't.jdsbh=(SELECT jdsbh FROM test.vio_violation v where v.wfbh=?)');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('030', 't.IN_VEHICLE_ID 涉案车辆编号, t.create_time 案件时间, t.address 案件地点, p.name 警员姓名, dt.name 案件类别, dt2.name 违法行为, ip.name 停车场', 'test.in_vehicle_case t left join test.operator p on p.id=t.police_id left join test.dic_detail dt on dt.item_code=t.business and dt.dic_code=''0630'' left join test.dic_detail dt2 on dt2.item_code=t.wfxw and dt2.dic_code=''0632'' left join test.in_park ip on ip.id=t.park_id', 't.id=?');

insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('031', 't.id 图片ID, t.name 图片名称, t.img_path 图片, t.create_time 创建时间, decode(t.img_type,''pass'',''放行'',''scene'',''现场'',''park_in'',''入场'',''clsbdh'',''车架号'') 图片类型, nvl(p.name,t.create_user) 创建人, t.gxsj 更新时间', 'test.in_vehicle_image t left join test.operator p on p.id=t.create_user', 't.id=?');

--信息来源
delete from psa_collide_sql where id='004';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('004', 'completehphm(t.hphm,t.hpzl) 号牌号码, d6.dmsm1 号牌种类, t.JDCSYR 机动车所有人, d1.dmsm1 交通方式, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为, t.WFJFS 违法记分数, t.JSZH 驾驶证号, t.FKJE 罚款金额, test.transformCode(t.cfzl,''04'',''0002'') 处罚种类, t.CLSJ 处理时间, t.CLJGMC 处理机关名称, d2.dmsm1 人员分类, d4.dmsm1 机动车使用性质, d7.dmsm1 公路行政等级, t.ddms 地点米数, t.DDJDWZ 地点绝对位置, t.SCZ 实测值, t.BZZ 标准值, t.ZNJ 滞纳金, t.JKRQ 交款日期, t.PZBH 强制措施凭证号, nvl(pl.policename,t.lrr) 录入人, t.lrsj 录入时间, t.JBR1 经办人1, t.JBR2 经办人2, t.BZ 备注, f.dmsm1 证件名称, t.CCLZRQ 初次领证日期, t.NL 年龄, decode(t.XB,''1'',''男'',''2'',''女'') 性别, decode(t.HCBJ,''0'',''否'',''1'',''是'',''2'',''未核查'') 是否核查, t.JD 经度, t.WD 纬度, d5.dmsm1 车辆用途, decode(t.XCFW,''0'',''否'',''1'',''是'') 是否提供校车服务, t.DZZB 电子坐标, decode(t.SFZDRY,''0'',''否'',''1'',''是'') 是否指导人员, t.XYSFZMHM 学员身份证明号码, t.XYXM 学员姓名, t.DSR 当事人, t.ZSXZQH 住所行政区划,  t.ZSXXDZ 住所详细地址, t.DH 电话, t.LXFS 联系方式, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源', 'test.vio_violation t left join test.frm_code d1 on d1.dmz=t.jtfs and  d1.xtlb=''04'' and d1.dmlb=''0001'' left join test.vio_codewfdm c on c.wfxw=t.wfxw left join test.frm_code d2 on d2.dmz=t.ryfl and d2.xtlb=''04'' and d2.dmlb=''0080'' left join test.frm_code d4 on d4.dmz=t.syxz and d4.xtlb=''00'' and d4.dmlb=''1003'' left join test.frm_code d5 on d5.dmz=t.CLYT and d5.xtlb=''00'' and d5.dmlb=''1063'' left join test.frm_code d6 on d6.dmz=t.HPZL and d6.xtlb=''00'' and d6.dmlb=''1007'' left join test.frm_code d7 on d7.dmz=t.GLXZDJ and d7.xtlb=''00'' and d7.dmlb=''3116'' left join police_data pl on pl.policeid=t.lrr left join test.frm_code f on f.dmz=t.zjmc and f.xtlb=''02'' and f.dmlb=''0003''', 't.wfbh=?');
  
------------------------------新增监管点对应 start
delete from psa_monitor_info ;
insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0403', '04', '1', '闯禁行未处理', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0402', '04', '1', '无证按有证处理', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0401', '04', '1', '取得购买证但无运输证', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0414', '04', '1', '行政处罚自由裁量', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0115', '01', '2', '酒醉驾信息未登记上传', '0', '2', null, null, '0101');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('01', '00', '1', '酒醉驾处理', '0', '1', '/psa/psadrunkdriving', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0101', '01', '1', '未开具强制措施', '0', '2', null, null, '0101,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0102', '01', '1', '强制措施违规跨档', '0', '2', null, null, '0101,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0104', '01', '1', '再次酒驾违规处罚', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0105', '01', '1', '营运酒驾违规处罚', '0', '2', null, null, '0203,0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0106', '01', '1', '处罚决定书跨档', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('02', '00', '1', '涉案车辆管理', '0', '1', '/psa/vehiclesinvolved', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0204', '02', '2', '未上传现场照片', '0', '2', null, null, '0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0205', '02', '2', '扣车手续不全', '0', '2', null, null, '0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0207', '02', '2', '违法记录消除未放车', '0', '2', null, null, '0206,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0107', '01', '1', '未暂扣/吊销驾驶证', '0', '2', null, null, '0206,0219,0205');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0206', '02', '2', '放行申请被频繁驳回', '0', '2', null, null, '0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0203', '02', '1', '无放车条放车', '0', '2', null, null, '0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0202', '02', '1', '违规申请放行', '0', '2', null, null, '0206,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0201', '02', '1', '扣车未入停车场', '0', '2', null, null, '0217,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0109', '01', '2', '未开启执法记录仪', '0', '2', null, null, '0101,0217,0261');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0110', '01', '2', '酒精检测仪信息记录不规范', '0', '2', null, null, '0101');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0111', '01', '2', '强制措施值与酒精检测值不一致', '0', '2', null, null, '0101,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0112', '01', '2', '超期未处理', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('03', '00', '1', '违法处理', '0', '1', '/psa/illegalhandling', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('04', '00', '1', '危化品车辆处罚', '0', '1', '/psa/dangerousvehicles', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('05', '00', '1', '事故处理', '0', '1', '/psa/handlingaccident', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0308', '03', '2', '违法信息采集质量较差', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0309', '03', '2', '大量开具处罚决定书', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0310', '03', '2', '篡改当事人类型', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0404', '04', '1', '处置滞留时间过长', '0', '2', null, null, '0206,0217,0404');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0405', '04', '1', '录入滞留时间过长', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0406', '04', '1', '未按规定扣车', '0', '2', null, null, '0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0407', '04', '1', '扣车未入停车场', '0', '2', null, null, '0217,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0408', '04', '1', '扣车违规放行', '0', '2', null, null, '0206,0217,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0409', '04', '1', '扣证违规归还', '0', '2', null, null, '0206,0217,0213');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0410', '04', '1', '未暂扣/吊销驾驶证', '0', '2', null, null, '0206,0219,0205');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0411', '04', '2', '未开启执法记录仪', '0', '2', null, null, '0206,0217,0261');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0412', '04', '2', '违法时间录入不一致', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0413', '04', '2', '超期未处理', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0301', '03', '1', '非工作时间处理交通违法', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0302', '03', '1', '对有证人员按无证处罚', '0', '2', null, null, '0206,0204');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0303', '03', '1', '一人为多车处理违法', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0304', '03', '1', '违法拆单', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0305', '03', '1', '非现场违法不计分', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0306', '03', '1', '满60周岁驾驶员涉嫌违规处理违法', '0', '2', null, null, '0206,0204');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0307', '03', '1', '多人为一车处理违法', '0', '2', null, null, '0206');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0103', '01', '1', '二次血检异常跨档', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0108', '01', '1', '行政拘留未入所', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0113', '01', '2', '六合一信息维护不全', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0114', '01', '2', '案件处理时间顺序不符合逻辑', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0501', '05', '1', '事故录入超时', '0', '2', null, null, '0501');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0503', '05', '1', '检验鉴定超期', '0', '2', null, null, '0501,0505');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0502', '05', '1', '检验鉴定委托超期', '0', '2', null, null, '0501,0504');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0504', '05', '1', '文书送达超期', '0', '2', null, null, '0502,0506');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0505', '05', '1', '结案归档超期', '0', '2', null, null, '0502,0507,0503');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0506', '05', '1', '同一人同一民警多起事故', '0', '2', null, null, '0503,0508');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0507', '05', '1', '同一车同一民警多起事故', '0', '2', null, null, '0503,0508');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0508', '05', '2', '事故录入率分析', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0509', '05', '2', '处罚率分析', '3', '2', null, null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('07', '00', '1', '超载车辆管理', '0', '1', '/psa/overload', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0701', '07', '1', '处置滞留时间过长', '0', '2', null, null, '0206,0217,0404');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0702', '07', '1', '录入滞留时间过长', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0703', '07', '1', '未按规定扣车', '0', '2', null, null, '0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0704', '07', '1', '扣车未入停车场', '0', '2', null, null, '0217,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0705', '07', '1', '危化品车辆超载违规处罚', '0', '2', null, null, '0206,0217,0203');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0706', '07', '1', '扣车违规放行', '0', '2', null, null, '0206,,0401');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0707', '07', '2', '未开启执法记录仪', '0', '2', null, null, '0206,0217,0261');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0708', '07', '2', '超期未处理', '0', '2', null, null, '0206,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('06', '00', '1', '占路施工', '0', '1', '/psa/digroad', null, null);

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0601', '06', '1', '审批申请超期未处理', '0', '2', null, null, '0801,0802');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0602', '06', '1', '延期验收', '0', '2', null, null, '0801,0802');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0603', '06', '1', '未满足条件验收', '3', '2', null, null, '0801,0802');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0604', '06', '1', '验收申请被驳回', '0', '2', null, null, '0801,0802');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0311', '03', '1', '满分学习清分前继续处理违法', '0', '2', null, null, '0206,0253');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0312', '03', '1', '大量撤销违法数据', '0', '2', null, null, '0264');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0313', '03', '1', '票据使用人与领用人不一致性', '0', '2', null, null, '0217,0208');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0415', '04', '2', '逾期上路', '0', '2', null, null, '0203,0404');


insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('044', '0115', '[{"desc":"酒精检测值","key":"brac","value":"value1"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('045', '0601', '[{"desc":"施工单位","key":"sgdw","value":"value1"},{"desc":"提交申请时间","key":"tjsqsj","value":"value2"},{"desc":"节点审批时间","key":"jdspsj","value":"value3"},{"desc":"延期节点","key":"yqjd","value":"value4"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('046', '0602', '[{"desc":"施工单位","key":"sgdw","value":"value1"},{"desc":"工程开始时间","key":"gckssj","value":"value2"},{"desc":"工程结束时间","key":"gcjssj","value":"value3"},{"desc":"验收申请提交时间","key":"ystjsj","value":"value4"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('047', '0603', '[{"desc":"施工单位","key":"sgdw","value":"value1"},{"desc":"设施恢复情况","key":"sshfqk","value":"value2"},{"desc":"验收时间","key":"yssj","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('048', '0604', '[{"desc":"施工单位","key":"sgdw","value":"value1"},{"desc":"驳回时间","key":"sgbhsj","value":"value2"},{"desc":"驳回次数","key":"bhcs","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('049', '0701', '[{"desc":"过车时间","key":"gcsj","value":"value1"},{"desc":"表名","key":"tablename","value":"value2"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('050', '0702', '[{"desc":"录入时间","key":"lrsj","value":"value1"},{"desc":"表名","key":"tablename","value":"value2"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('051', '0703', '[{"desc":"违法行为","key":"wfxwc","value":"value1"},{"desc":"强措类型","key":"qzcslx","value":"value2"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('052', '0704', '[{"desc":"车辆使用性质","key":"syxzn","value":"value1"},{"desc":"强措类型","key":"qzcslx","value":"value2"},{"desc":"处罚时间","key":"cfsj","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('053', '0706', '[{"desc":"车辆使用性质","key":"syxzn","value":"value1"},{"desc":"处理时间","key":"clsj","value":"value2"},{"desc":"出场时间","key":"ccsj","value":"value3"},{"desc":"停车场","key":"tcc","value":"value4"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('054', '0705', '[{"desc":"违法行为","key":"wfxwc","value":"value1"},{"desc":"使用性质","key":"syxz","value":"value2"},{"desc":"处罚时间","key":"cfsj","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('055', '0708', '[{"desc":"强制措施类型","key":"qzcslx","value":"value1"},{"desc":"违法时间","key":"wfsjc","value":"value2"},{"desc":"裁决标记","key":"cjbj","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('056', '0311', '[{"desc":"驾驶证号","key":"jszhn","value":"value1"},{"desc":"处理时间","key":"clsj","value":"value2"},{"desc":"清分日期","key":"qfrq","value":"value3"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('057', '0312', '[{"desc":"撤销违法数","key":"cxwfs","value":"value1"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('058', '0313', '[{"desc":"文书编号","key":"wsbh","value":"value1"},{"desc":"领用民警","key":"lymj","value":"value2"},{"desc":"领用部门","key":"lybm","value":"value3"},{"desc":"执勤民警","key":"zqmj","value":"value4"},{"desc":"使用部门","key":"sybm","value":"value5"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('059', '0415', '[{"desc":"企业名称","key":"qymc","value":"value1"},{"desc":"机动车状态","key":"jdczt","value":"value2"},{"desc":"使用性质","key":"syxzn","value":"value3"},{"desc":"过车时间","key":"gcsjn","value":"value4"}]');

insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('060', '0414', '[{"desc":"违法行为","key":"wfxwn","value":"value1"},{"desc":"罚款金额","key":"fkje","value":"value2"},{"desc":"全市平均罚款金额","key":"qspjfk","value":"value3"}]');



insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'exc_time', 1, '391');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'brac', 2, '392');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'policename', 3, '393');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'policenum', 4, '394');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'deptname', 5, '395');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0115', 'warningtime', 6, '396');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'sgdw', 1, '411');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'tjsqsj', 2, '412');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'jdspsj', 3, '413');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'deptname', 5, '414');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'warningtime', 6, '415');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'sgdw', 1, '416');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'gckssj', 2, '417');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'gcjssj', 3, '418');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'ystjsj', 4, '419');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'deptname', 5, '420');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0602', 'warningtime', 6, '421');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0603', 'sgdw', 1, '422');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0603', 'sshfqk', 2, '423');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0603', 'yssj', 3, '424');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0603', 'deptname', 4, '425');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0603', 'warningtime', 5, '426');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0604', 'sgdw', 1, '427');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0604', 'sgbhsj', 2, '428');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0604', 'bhcs', 3, '429');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0604', 'deptname', 4, '430');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0604', 'warningtime', 5, '431');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0601', 'yqjd', 4, '432');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'driver', 1, '433');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'car_no', 2, '434');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'wfsjwh', 3, '435');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'gcsj', 4, '436');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'policename', 5, '437');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'policeid', 6, '438');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'deptname', 7, '439');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0701', 'warningtime', 8, '440');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'driver', 1, '441');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'car_no', 2, '442');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'wfsjwh', 3, '443');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'lrsj', 4, '444');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'policename', 5, '445');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'policeid', 6, '446');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'deptname', 7, '447');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0702', 'warningtime', 8, '448');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'driver', 1, '449');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'car_no', 2, '450');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'wfxwc', 3, '451');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'qzcslx', 4, '452');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'policename', 5, '453');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'policeid', 6, '454');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'deptname', 7, '455');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0703', 'warningtime', 8, '456');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'driver', 1, '457');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'car_no', 2, '458');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'syxzn', 3, '459');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'qzcslx', 4, '460');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'cfsj', 5, '461');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'policename', 6, '528');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'policeid', 7, '529');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'deptname', 8, '462');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0704', 'warningtime', 9, '463');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'driver', 1, '464');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'car_no', 2, '465');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'syxzn', 3, '466');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'clsj', 4, '467');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'ccsj', 5, '468');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'tcc', 6, '469');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'deptname', 7, '470');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0706', 'warningtime', 8, '471');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'driver', 1, '472');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'person_card', 2, '473');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'car_no', 3, '474');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'wfsjwh', 4, '475');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'policename', 6, '476');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'policeid', 7, '477');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'deptname', 8, '478');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0707', 'warningtime', 9, '479');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'driver', 1, '480');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'person_card', 2, '481');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'car_no', 3, '482');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'qzcslx', 4, '483');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'wfsjc', 5, '484');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'cjbj', 6, '485');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'policename', 7, '486');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'policeid', 8, '487');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'deptname', 9, '488');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0708', 'warningtime', 10, '489');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'driver', 1, '490');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'car_no', 2, '491');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'wfxwc', 3, '492');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'syxz', 4, '493');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'cfsj', 5, '494');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'policename', 6, '495');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'policeid', 7, '496');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'deptname', 8, '497');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0705', 'warningtime', 9, '498');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'driver', 1, '499');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'jszhn', 2, '500');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'clsj', 3, '501');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'qfrq', 4, '502');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'deptname', 5, '503');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0311', 'warningtime', 6, '504');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0312', 'cxwfs', 1, '505');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0312', 'policename', 2, '506');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0312', 'policeid', 3, '507');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0312', 'deptname', 4, '508');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0312', 'warningtime', 5, '509');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'wsbh', 1, '510');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'lymj', 2, '511');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'lybm', 3, '512');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'zqmj', 4, '513');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'sybm', 5, '514');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0313', 'warningtime', 6, '515');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0414', 'wfxwn', 1, '516');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0414', 'fkje', 2, '517');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0414', 'qspjfk', 3, '518');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0414', 'deptname', 4, '519');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0414', 'warningtime', 5, '520');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'qymc', 1, '521');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'hphmn', 2, '522');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'jdczt', 3, '523');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'syxzn', 4, '524');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'gcsjn', 5, '525');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'deptname', 6, '526');

insert into psa_monitor_field_relation (MONITORID, FIELDID, COLNUM, ID)
values ('0415', 'warningtime', 7, '527');


insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sgdw', '施工单位', 'N', 150, null, '229');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('tjsqsj', '提交申请时间', 'Y', 180, '022', '230');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jdspsj', '节点审批时间', 'Y', 180, '023', '231');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('gckssj', '工程开始时间', 'N', 180, null, '232');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('gcjssj', '工程结束时间', 'Y', 180, '022', '233');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('ystjsj', '验收申请提交时间', 'Y', 180, '023', '234');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sshfqk', '设施恢复情况', 'Y', 180, '023', '235');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('yssj', '验收时间', 'Y', 180, '023', '236');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sgbhsj', '驳回时间', 'Y', 180, '023', '237');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('bhcs', '驳回次数', 'Y', 100, '023', '238');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('yqjd', '延期节点', 'N', 150, null, '239');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('qfrq', '清分日期', 'Y', 150, '009', '249');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jszhn', '驾驶证号', 'N', 250, null, '250');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('cxwfs', '撤销违法数', 'Y', 100, '024', '251');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('wsbh', '文书编号', 'N', 100, null, '252');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('lymj', '领用民警', 'Y', 100, '025', '253');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('lybm', '领用部门', 'Y', 150, '025', '254');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('zqmj', '执勤民警', 'Y', 100, '003', '255');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('sybm', '使用部门', 'Y', 100, '003', '255');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('qspjfk', '全市平均罚款金额', 'N', 150, null, '257');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('jdczt', '机动车状态', 'Y', 100, '002', '259');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('gcsjn', '过车时间', 'N', 180, null, '260');

insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('fkje', '罚款金额', 'Y', 100, '004', '261');


insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0802', 'act_hi_taskinst', '0', to_date('27-02-2020', 'dd-mm-yyyy'), null, '08', '1', '占路施工流程表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0801', 'digroad', '0', to_date('27-02-2020', 'dd-mm-yyyy'), null, '08', '1', '占掘路表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('08', null, '0', null, null, null, '0', '占路施工');


insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digroad_1', '', 'THRESHOLD_DIG_BACK', null, '10', null, '占路施工申请驳回率阈值');
-----------------------------------end


--违法删除动态跟踪
insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0264', 'vio_violation_del_track', '0', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '02', '1', '违法记录删除跟踪表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0263', 'vio_force_del_track', '0', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '02', '1', '强措记录删除跟踪表');


insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('16', '0264', '0 0 0 * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('15', '0263', '0 0 0 * * ?', '1', '1', '0');


insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('92', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.ViolationDelTrackCollectExecutor', '0264', '0', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '违法记录删除跟踪表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('91', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioForceDelTrackCollectExecutor', '0263', '0', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '强措记录删除跟踪表', '1');


--列宽
update PSA_WARNING_FIELD t set t.displaywidth='80' where t.id='059';
update PSA_WARNING_FIELD t set t.displaywidth='180' where t.id='058';
update PSA_WARNING_FIELD t set t.displaywidth='180' where t.id='033';

--施工状态
insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'apply', '提交申请', 0, 1, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'dadui_zhixu_admin', '大队秩序科审核', 0, 2, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_admin', '设施处民警审核', 0, 3, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_captain', '设施处领导审核', 0, 4, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'zhidui_captain', '支队分管领导审核', 0, 5, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_admin2', '设施处打印', 0, 6, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'dadui_zhixu_admin2', '大队秩序科打印', 0, 7, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'effecting', '进场施工', 0, 8, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'delay_apply', '延期申请', 0, 9, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'dadui_zhixu_admin3', '大队秩序科延期审批', 0, 10, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_admin3', '设施处民警延期审批', 0, 11, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_captain2', '设施处分管领导延期审批', 0, 12, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'zhidui_captain1', '支队分管领导延期审批', 0, 13, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_admin5', '设施处延期审批打印', 0, 14, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'dadui_zhixu_admin_qd5d', '大队秩序科延期审批打印', 0, 15, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'finish_apply', '验收申请', 0, 16, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'dadui_zhixu_admin4', '大队秩序科验收', 0, 17, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_admin4', '设施处验收', 0, 18, 0, '');

insert into enum_type (ENUMTYPEID, ENUMVALUE, ENUMNAME, ISDEFAULT, DISPINDEX, VALID, ENUMDESC)
values (10055001, 'sheshichu_captain3', '设施处分管领导验收', 0, 19, 0, '');



------------------执法档案下拉框
--施工方式
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digtype_002', '', 'DIGTYPE', '', '1', '', '全封闭');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digtype_001', '', 'DIGTYPE', '', '0', '', '半封闭');
--施工时段
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digperiod_003', '', 'DIGPERIOD', '', '3', '', '白天');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digperiod_002', '', 'DIGPERIOD', '', '2', '', '夜间');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('digperiod_001', '', 'DIGPERIOD', '', '1', '', '全天');
--使用性质
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040201', null, 'XFK_SYXZ', null, 'A', null, '非营运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040202', null, 'XFK_SYXZ', null, 'B', null, '公路客运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040203', null, 'XFK_SYXZ', null, 'C', null, '公交客运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040204', null, 'XFK_SYXZ', null, 'D', null, '出租客运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040205', null, 'XFK_SYXZ', null, 'E', null, '旅游客运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040206', null, 'XFK_SYXZ', null, 'F', null, '货运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040207', null, 'XFK_SYXZ', null, 'G', null, '租赁');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040208', null, 'XFK_SYXZ', null, 'H', null, '警用');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040209', null, 'XFK_SYXZ', null, 'I', null, '消防');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040210', null, 'XFK_SYXZ', null, 'J', null, '救护');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040211', null, 'XFK_SYXZ', null, 'K', null, '工程救险');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('20200402112', null, 'XFK_SYXZ', null, 'L', null, '营转非');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040213', null, 'XFK_SYXZ', null, 'M', null, '出租转非');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040214', null, 'XFK_SYXZ', null, 'N', null, '教练');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040215', null, 'XFK_SYXZ', null, 'O', null, '幼儿校车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040216', null, 'XFK_SYXZ', null, 'P', null, '小学生校车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040217', null, 'XFK_SYXZ', null, 'S', null, '中小学生校车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040218', null, 'XFK_SYXZ', null, 'Q', null, '初中生校车');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040219', null, 'XFK_SYXZ', null, 'R', null, '危化品运输');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040220', null, 'XFK_SYXZ', null, 'T', null, '预约出租客运');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040221', null, 'XFK_SYXZ', null, 'U', null, '预约出租转非');
--违法行为
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040323', null, 'OVERLOAD_WFXW', null, '20290', null, '超车时妨碍被超载车辆');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040301', null, 'OVERLOAD_WFXW', null, '12010', null, '超载30%以下');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040312', null, 'OVERLOAD_WFXW', null, '16023', null, '超载100％以上的');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040313', null, 'OVERLOAD_WFXW', null, '16025', null, '超载30以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040314', null, 'OVERLOAD_WFXW', null, '16026', null, '超载50%以上不足100%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040315', null, 'OVERLOAD_WFXW', null, '16027', null, '超载100%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040316', null, 'OVERLOAD_WFXW', null, '16080', null, '剧毒品运输车超载30%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040302', null, 'OVERLOAD_WFXW', null, '12390', null, '剧毒运输超载未达30%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040306', null, 'OVERLOAD_WFXW', null, '13426', null, '超载50%以上不足100%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040311', null, 'OVERLOAD_WFXW', null, '16022', null, '超载50％以上不足100％');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040303', null, 'OVERLOAD_WFXW', null, '13422', null, '超载50%以上不足100%的');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040304', null, 'OVERLOAD_WFXW', null, '13423', null, '超载100%以上的（一类车）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040305', null, 'OVERLOAD_WFXW', null, '13425', null, '超载30以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040307', null, 'OVERLOAD_WFXW', null, '13427', null, '超载100%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040317', null, 'OVERLOAD_WFXW', null, '16372', null, '超载50%以上不足100%的（适用于正三轮载货摩托车、小型拖拉机、轻型、微型载货汽车、低速载货汽车、三轮汽车等小型车辆）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040318', null, 'OVERLOAD_WFXW', null, '16373', null, '超载100%以上的（适用于正三轮载货摩托车、小型拖拉机、轻型、微型载货汽车、低速载货汽车、三轮汽车等小型车辆）');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040319', null, 'OVERLOAD_WFXW', null, '16375', null, '超载30%以上不足50%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040320', null, 'OVERLOAD_WFXW', null, '16376', null, '超载50%以上不足100%');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040321', null, 'OVERLOAD_WFXW', null, '16377', null, '超载100%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040322', null, 'OVERLOAD_WFXW', null, '16390', null, '危险品运输超载30%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040308', null, 'OVERLOAD_WFXW', null, '13460', null, '剧毒品运输车超载30%以上');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040309', null, 'OVERLOAD_WFXW', null, '13530', null, '超载30%以下');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('2020040310', null, 'OVERLOAD_WFXW', null, '13540', null, '危险品运输超载未达30%');


--适配器配置

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('108', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioSurveilCollectExecutor', '0207', '0', to_date('12-03-2020', 'dd-mm-yyyy'), to_date('12-03-2020', 'dd-mm-yyyy'), '非现场文本记录表', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('60', '0207', '0/5 * * * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('102', '06', '0 0/1 * * * ?', '0', '0', '');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('101', '0802', '0 0/20 * * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('100', '0801', '0 0 0 1/2 * ?', '1', '1', '1');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('38', '06', '0801');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('37', '06', '0802');



insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_digroad_06', '06', 'psa_digroad_monitor_info', '1', '06', '', '占路施工id配置');

delete from psa_monitor_execute_config t where (t.monitor_id = '0601' or t.monitor_id = '0602' or t.monitor_id = '0603' or t.monitor_id = '0604') and t.exe_type = '0';
commit;
insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('100', 'com.hisense.hiatmp.psa.adapter.drunk.handlers.AlcometerInfoNotUploadHandler', '0115', '1', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '酒精检测仪信息未登记上传（青岛项目专用）', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('84', 'com.hisense.hiatmp.psa.adapter.collect.digroad.execute.DigroadCollectExecutor', '0801', '0', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '占掘路', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('83', 'com.hisense.hiatmp.psa.adapter.collect.digroad.execute.ActHiTaskInstCollectExecutor', '0802', '0', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '占路施工流程表', '1');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('88', 'com.hisense.hiatmp.psa.adapter.digroad.handlers.AcceptRejectedHandler', '0604', '0', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '验收申请被驳回', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('87', 'com.hisense.hiatmp.psa.adapter.digroad.handlers.NoMeetConditionAcceptHandler', '0603', '1', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '未满足条件验收', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('86', 'com.hisense.hiatmp.psa.adapter.digroad.handlers.DelayAcceptHandler', '0602', '0', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '延期验收', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('85', 'com.hisense.hiatmp.psa.adapter.digroad.handlers.ApproveOverTimeHandler', '0601', '0', to_date('17-02-2020', 'dd-mm-yyyy'), to_date('17-02-2020', 'dd-mm-yyyy'), '审批申请超期未处理', '0');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_digroad_001', '', 'psa_digroad_date_range', '1', '10', '', '占路施工抽取时间范围可配置参数(默认抽取10天的数据)');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_digroad_002', '', 'psa_digroad_overtime', '1', '3', '', '占路施工审批申请超期未处理时间阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_digroad_003', '', 'psa_digroad_acceptapply', '1', 'finish_apply', '', '占路施工延期验收验收申请结点');
commit;
--20200303
insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('93', 'com.hisense.hiatmp.psa.adapter.overload.handlers.LongDisposalTimeHandler', '0701', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '处置滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('94', 'com.hisense.hiatmp.psa.adapter.overload.handlers.LongEntryTimeHandler', '0702', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '录入滞留时间过长', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('95', 'com.hisense.hiatmp.psa.adapter.overload.handlers.UnfastenedCarHandler', '0703', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '未按规定扣车', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('96', 'com.hisense.hiatmp.psa.adapter.overload.handlers.CarNonEnterParkingHandler', '0704', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '扣车未入停车场', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('97', 'com.hisense.hiatmp.psa.adapter.overload.handlers.DangerIllegalPunishHandler', '0705', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '危化品车辆超载违规处罚', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('98', 'com.hisense.hiatmp.psa.adapter.overload.handlers.IllegalReleaseCarHandler', '0706', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '扣车违规放行', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('99', 'com.hisense.hiatmp.psa.adapter.overload.handlers.EnforcementNonOpen', '0707', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '未开启执法记录仪', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('101', 'com.hisense.hiatmp.psa.adapter.overload.handlers.OvertimeUnprocessedHandler', '0708', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '超期未处理', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('70', '07', '0 0/1 * * * ?', '0', '0', '');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('102', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.ALotOfDropIllegalHandler', '0312', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '大量撤销违法处罚分析模型', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('103', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.FullScoreCleanDealIllegalHandler', '0311', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '满分学习清分前继续处理违法分析模型', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('104', 'com.hisense.hiatmp.psa.adapter.wfcl.handlers.BillGetUseDifferentHandler', '0313', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '票据使用人与领用人不一致', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('105', 'com.hisense.hiatmp.psa.adapter.danger.handlers.PunishDiscretionHandler', '0414', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '行政处罚自由裁量', '0');

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE) values ('106', 'com.hisense.hiatmp.psa.adapter.danger.handlers.OverdueOnRoadHandler', '0415', '0', to_date('01-03-2020', 'dd-mm-yyyy'), to_date('01-03-2020', 'dd-mm-yyyy'), '逾期上路', '0');


--20200305

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_02', '', 'psa_overload_all_wfxw', '1', '12010,12390,13422,13423,13425,13426,13427,13460,13530,13540,16022,16023,16025,16026,16027,16080,16372,16373,16375,16376,16377,16390,20290', '', '超载车辆所有违法行为');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_04', '', 'psa_overload_dangerillegalpunish_wfxw', '1', '13530,16372,16373,16375,16376,16377', '', '超载车辆危化品车辆超载违规处罚违法行为');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_01', '07', 'psa_overload_monitor_info', '1', '07', '', '超载车辆id配置');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_03', '', 'psa_overload_vehicle_abs', '1', '0', '', '超载车辆涉案车辆关联可配置阈值');


--317
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_06', '', 'psa_overload_speed_car_date', '1', '1', '', '超载车辆过车数据限制可配置参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_07', '', 'psa_overload_threshold1', '1', '2', '', '超载车辆处置滞留时间过长可配置阈值参数');



insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_wfcl_10', '', 'psa_wfcl_fullscorecleandealillegal_time', '1', '7', '', '违法处理满分学习清分前继续处理可配置参数');

-- Add/modify columns 
alter table PSA_MONITOR_PARAM_CONFIG modify PARAM_VALUE VARCHAR2(3500);

insert into psa_monitor_execute_config (ID, CLASS_NAME, MONITOR_ID, DEL_FLAG, CREATE_TIME, UPDATE_TIME, REMARK, EXE_TYPE)
values ('107', 'com.hisense.hiatmp.psa.adapter.collect.xfk.execute.VioPzglCollectExecutor', '0208', '1', to_date('12-03-2020', 'dd-mm-yyyy'), to_date('12-03-2020', 'dd-mm-yyyy'), '文书管理抽取类', '1');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('50', '0208', '0/20 * * * * ?', '1', '1', '0');

insert into psa_monitor_exe_plan_config (ID, MONITOR_ID, FREQUENCY, FRE_TYPE, LIMITCOUNT, FULL_FLAG)
values ('51', '0253', '0/20 * * * * ?', '1', '1', '0');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_wfcl_11', '', 'psa_wfcl_alotofdropillegal_time', '1', '30', '', '违法处理大量撤销违法处罚分析模型可配置时间参数');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_08', '', 'psa_overload_threshold', '1', '2', '', '超载车辆录入滞留时间过长可配置阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_09', '', 'psa_overload_park_department', '1', '''370203'',''370213'',''370202'',''370212''', '', '超载车辆扣车未入停车场部门');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_10', '', 'psa_overload_qcType', '1', '1,6', '', '超载车辆强制措施类型');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_11', '', 'psa_overload_vehicle_differ', '1', '1', '', '超载车辆扣车未入停车场涉案车辆录入差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_12', '', 'psa_overload_out_date_threshold', '', '30', '', '超载车辆危化品超期未处理可配置时间参数阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_13', '', 'psa_overload_overtime_differ', '1', '30', '', '超载车辆超期未处理时间差阈值');

insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_14', '', 'psa_overload_enforceinstrument_time', '1', '2', '', '超载车辆执法记录仪有效时间阈值');




--物化视图
insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_DIGROAD', '监管-物化视图时间范围-占路施工', '1098', '监管-物化视图时间范围-占路施工（单位：天）', null);

insert into sysparams (PARAMCODE, PARAMNAME, PARAMVALUE, PARAMCONTENT, PARAMSTATE)
values ('PSA_MVIEW_OVERLOAD', '监管-物化视图时间范围-超载', '1098', '监管-物化视图时间范围-超载（单位：天）', null);

--bug 
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('0215','04','0213');
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('702','07','0206');
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('703','07','0203');
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('704','07','0261');
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('705','07','0401');
insert into psa_monitor_third_sys_config (id,monitor_id,third_system) values ('706','07','0260');
delete from psa_monitor_third_sys_config where id='303';

update psa_warning_field t set t.displaywidth = '180' where t.fieldid='qfrq';

update psa_warning_field set sqlid='003,004' where fieldid='lrsj';
 


delete from psa_exc_value_relation where id='044';
insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('044', '0115', '[{"desc":"酒精检测值","key":"brac","value":"value1"},{"desc":"警员姓名","key":"policename1","value":"value2"},{"desc":"警号","key":"policenum","value":"value3"}]');

update psa_monitor_field_relation set fieldid='policename1' where id='393';


insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0210', '01', '0260');
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0211', '02', '0260');
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0207', '04', '0261');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0213', '04', '0260');
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('401', '04', '0203');
delete from psa_monitor_third_sys_config where id='31';
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0214', '05', '0260');
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('701', '07', '0217');

update psa_monitor_third_sys_config t set t.third_system ='0217' where id='0208';
insert into psa_monitor_third_sys_config t (id,monitor_id,third_system) values ('303','03','0264');
commit;

----------------------------QD.PSA.A1 END-------------------

----------------------------QD.PSA.A2 START---------------------------------------- 
--jira-40897
delete from psa_system_config; 
insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('01', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '酒精检测仪系统');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0101', 'alky_info', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '01', '1', '酒精检测仪信息表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0102', 'alky_device', '0', to_date('21-06-2019 16:44:23', 'dd-mm-yyyy hh24:mi:ss'), to_date('21-06-2019 16:44:26', 'dd-mm-yyyy hh24:mi:ss'), '01', '1', '酒精检测仪设备表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('02', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '六合一系统');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0203', 'vehicle', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '机动车表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0204', 'drivinglicense', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '驾驶证表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0205', 'vio_suspend', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '暂扣记录表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0206', 'vio_violation', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '处罚决定书表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0207', 'vio_surveil', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '非现场文本记录表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0208', 'vio_pzgl', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '文书管理表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0213', 'vio_klwp', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '扣留物品表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0217', 'vio_force', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '强制措施表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0219', 'vio_dxjz', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '吊销记录表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0221', 'vio_codewfdm', '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '02', '1', '违法行为代码表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0253', 'drv_pointreset', '0', to_date('03-08-2019 16:11:42', 'dd-mm-yyyy hh24:mi:ss'), to_date('03-08-2019 16:11:45', 'dd-mm-yyyy hh24:mi:ss'), '02', '1', '驾驶人清分历史记录表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0260', 'frm_code', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '02', '1', '六合一代码表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0261', 'video_info', '0', to_date('02-09-2019', 'dd-mm-yyyy'), to_date('02-09-2019', 'dd-mm-yyyy'), '02', '1', '执法记录仪表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0262', 'frm_sysuser', '0', to_date('14-08-2019', 'dd-mm-yyyy'), to_date('14-08-2019', 'dd-mm-yyyy'), '02', '1', '下发库用户表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0263', 'vio_force_del_track', '0', to_date('04-03-2020', 'dd-mm-yyyy'), null, '02', '1', '处罚决定书删除表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0264', 'vio_violation_del_track', '0', to_date('02-01-2020', 'dd-mm-yyyy'), to_date('02-01-2020', 'dd-mm-yyyy'), '02', '1', '违法记录删除跟踪表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('03', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '血检系统');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('04', null, '0', to_date('11-06-2019', 'dd-mm-yyyy'), to_date('11-06-2019', 'dd-mm-yyyy'), '00', '0', '涉案车辆');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0401', 'in_vehicle', '0', to_date('22-06-2019 13:19:58', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:20:02', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆主表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0402', 'in_vehicle_status', '0', to_date('22-06-2019 13:20:57', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:21:00', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '状态记录表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0403', 'in_vehicle_status_his', '0', to_date('22-06-2019 13:20:52', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:21:04', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '状态记录历史表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0404', 'detect_speed_data', '0', to_date('22-06-2019 13:23:48', 'dd-mm-yyyy hh24:mi:ss'), to_date('22-06-2019 13:23:51', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '过车数据表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0405', 'in_vehicle_case', '0', to_date('24-06-2019 13:55:24', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 13:55:28', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆案件表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0406', 'in_vehicle_image', '0', to_date('24-06-2019 13:56:07', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 13:56:11', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆图片表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0407', 'in_park', '0', to_date('24-06-2019 20:41:20', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-06-2019 20:41:23', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '停车场表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0408', 'operator', '0', to_date('24-07-2019 15:56:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 15:56:48', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆用户表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0409', 'department_vehicle', '0', to_date('24-07-2019 15:56:51', 'dd-mm-yyyy hh24:mi:ss'), to_date('24-07-2019 15:56:54', 'dd-mm-yyyy hh24:mi:ss'), '04', '1', '涉案车辆部门表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0410', 'dic_detail', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '04', '1', '涉案车辆代码表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('05', null, '0', to_date('08-07-2019 04:28:15', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-07-2019 04:28:19', 'dd-mm-yyyy hh24:mi:ss'), '05', '0', '事故处理系统');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0501', 'acd_file', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), to_date('08-07-2019 04:27:40', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '事故信息主表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0502', 'acd_duty', '0', to_date('10-07-2019 09:33:45', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-07-2019 09:33:52', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '交通事故认定书');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0503', 'acd_dutysimple', '0', to_date('10-07-2019 09:35:08', 'dd-mm-yyyy hh24:mi:ss'), to_date('10-07-2019 09:35:12', 'dd-mm-yyyy hh24:mi:ss'), '05', '1', '简易程序事故认定书');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0504', 'acd_consigntest', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '技术鉴定委托书表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0505', 'acd_testtime', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '当事人检验鉴定时间表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0506', 'acd_deliver', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '送达回执表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0507', 'acd_gfile', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '案卷归档表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0508', 'acd_dutysimplehuman', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '简易人员表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0509', 'acd_filehuman', '0', to_date('08-07-2019 04:27:25', 'dd-mm-yyyy hh24:mi:ss'), null, '05', '1', '事故信息人员表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('06', null, '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '00', '0', '危化品');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0601', 'wxp_trans_passport', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '06', '1', '危化品车辆申请表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('07', null, '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '00', '0', '122接警系统');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0701', 'jjdb_sj', '0', to_date('14-08-2019', 'dd-mm-yyyy'), null, '07', '0', '接警表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('08', null, '0', null, null, null, '0', '占路施工');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0801', 'digroad', '0', to_date('27-02-2020', 'dd-mm-yyyy'), null, '08', '1', '占掘路表');

insert into psa_system_config (ID, SYS_NAME, STATUS, CREATE_TIME, UPDATE_TIME, PARENT_ID, SYS_LEVEL, REMARK)
values ('0802', 'act_hi_taskinst', '0', to_date('27-02-2020', 'dd-mm-yyyy'), null, '08', '1', '占掘路流程表');

--jira-40886，40963
delete from psa_monitor_third_sys_config;
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('1', '01', '0101');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('2', '01', '0102');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('5', '01', '0203');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('6', '01', '0205');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('4', '01', '0206');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('3', '01', '0217');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0205', '01', '0219');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('18', '01', '0221');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0210', '01', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0206', '01', '0261');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('7', '02', '0206');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('8', '02', '0217');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0211', '02', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('9', '02', '0401');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('12', '02', '0402');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('13', '02', '0403');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('15', '02', '0405');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('16', '02', '0406');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('17', '02', '0407');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('10', '02', '0408');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('14', '02', '0409');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0201', '02', '0410');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('19', '03', '0204');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('20', '03', '0206');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('301', '03', '0208');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0208', '03', '0217');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('302', '03', '0253');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0212', '03', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('303', '03', '0264');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('401', '04', '0203');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('25', '04', '0205');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('21', '04', '0206');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0215', '04', '0213');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('22', '04', '0217');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0203', '04', '0219');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('23', '04', '0221');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0213', '04', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0207', '04', '0261');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('24', '04', '0401');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('0214', '05', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('27', '05', '0501');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('28', '05', '0502');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('29', '05', '0503');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('30', '05', '0504');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('32', '05', '0505');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('33', '05', '0506');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('34', '05', '0507');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('35', '05', '0508');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('36', '05', '0509');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('38', '06', '0801');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('37', '06', '0802');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('703', '07', '0203');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('702', '07', '0206');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('701', '07', '0217');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('706', '07', '0260');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('704', '07', '0261');

insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('705', '07', '0401');

--jira-40962
delete from psa_monitor_param_config t where t.param_code = 'psa_overload_overtime_differ';
update psa_monitor_param_config t set t.description = '超载车辆超期未处理可配置时间参数阈值' where t.param_code = 'psa_overload_out_date_threshold';
-- jira-40725
update psa_collide_sql set FIELDS='t.taskid 序号, t.projectname 工程名称, to_char(t.begindate,''yyyy-mm-dd'') 工程开始时间, to_char(t.enddate,''yyyy-mm-dd'') 工程结束时间, t.digdept 施工单位, t.respman_phone 经办人联系方式, t.respman 经办人, t.chairman 法人代表, t.principal 责任人, t.telephone 责任人联系方式, t.isdiversion 是否调流, t.diversionplan 调流方案, t.requestdept 申请单位, t.requestdesc 申请理由, t.requestdate 申请日期, decode(t.digtype,''0'',''半封闭'',''1'',''全封闭'') 施工形式, nvl(d.deptshortname,t.cdepartmentid) 分管大队, decode(t.DIGPERIOD,''1'',''全天'',''2'',''夜间'',''3'',''白天'') 施工时段, t.SIDEWALK_LENGTH 占用人行道长, t.SIDEWALK_WIDTH 占用人行道宽, t.SIDEWALK_AREA 占用人行道面积, t.CARWAY_LENGTH 占用车行道长, t.CARWAY_WIDTH 占用车行道宽, t.CARWAY_AREA 占用车行道面积, t.DIGPERIOD_STARTTIME 占用时间段开始时间, t.DIGPERIOD_ENDTIME 占用时间段结束时间, t.POSITION_FILES 位置图, t.DIGROAD_INFO 占用道路名, t.TASKID 工作流任务编号, t.NODENAME 待执行结点名称, decode(t.TASK_STATUS,''0'',''进行中'',''1'',''已结束'') 任务状态, t.startpoint 开始桩号, t.endpoint 结束桩号, decode(t.installdirection,''0'',''上行'',''1'',''下行'') 方向, t.LANENUM 占用车道, t.REQUESTCODE 申请编号, t.roadstart 占路起始路段, t.roadend 占路结束路段, t.SAFEINFO 施工安全措施, t.SAFEAPPLY 施工安全措施申请单位, t.SAFECHAIRMAN 施工安全措施法人代表, t.SAFEDEPT 施工安全措施施工单位, t.SAFEPRINCIPAL 施工安全措施负责人, t.DIGDEPTADDRESS 施工单位地址, t.CHAIRMANPHONE 法人代表电话, t.DADUISCENE 大队现场勘查情况, t.ZHIDUISCENE 支队现场勘查情况, t.LIGHTINFO 基本情况信号灯, t.SIGNINFO 基本情况标志牌, t.RETICULEINFO 基本情况标线, t.RAILINFO 基本情况护栏, t.SURFACEINFO 基本情况路面情况, t.OTHERINFO 基本情况其他, t.CIRCULARINFO 施工通告, t.DELAYTIME 延期天数'
where id='022';
-- jira-40769
delete from psa_monitor_param_config where id='2020040323';
-- jira-40746
update psa_monitor_exe_plan_config t set t.frequency='0 0 0 * * ?' where t.id='102' or t.id='70';
-- jira-40862
update psa_monitor_execute_config t set t.del_flag='0' where id='107';
--- jira-40854
insert into psa_warning_field (FIELDID, FIELDNAME, ISCOLLIDE, DISPLAYWIDTH, SQLID, ID)
values ('syxzv', '使用性质', 'Y', 100, '004', '262');
update psa_monitor_field_relation  t set t.fieldid='syxzv' where t.id='493';
update psa_exc_value_relation set REMARK='[{"desc":"违法行为","key":"wfxwc","value":"value1"},{"desc":"使用性质","key":"syxzv","value":"value2"},{"desc":"处罚时间","key":"cfsj","value":"value3"}]'
where id='054';
-- jira-40905
update psa_monitor_info m set m.tables='0206,0203' where m.id='0705';
--jira-40906
update psa_monitor_info m set m.tables='0206,0401' where m.id='0706';
--jira-40860
update  psa_exc_value_relation t set t.remark='[{"desc":"过车时间","key":"gcsj","value":"value1"},{"desc":"表名","key":"tablename","value":"value3"}]' where t.monitor_id='0701';
update  psa_exc_value_relation t set t.remark='[{"desc":"录入时间","key":"lrsj","value":"value1"},{"desc":"表名","key":"tablename","value":"value2"}]' where t.monitor_id='0702';
insert into psa_exc_value_relation (ID, MONITOR_ID, REMARK)
values ('061', '0701', '[{"desc":"表名","key":"tablename","value":"value2"}]');
--jira-40896
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_wfcl_12', '', 'psa_wfcl_alotofdropillegal_count', '1', '1', '', '违法处理大量撤销违法处罚分析模型可配置数量参数');
---jira-40920
insert into psa_monitor_param_config (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_danger_15', '', 'psa_danger_punishdiscretion_wfxw', '1', '10170,10271,10650,10651,10660,10670,10671,10680,10681,10711,10712,11010,13310,13441,16031,16032,16220,17124,20050,20140,30010,30030,40080,42040,4302,46080,50029,50039,50049,50059,50069,50109,50119,50139,50169,50179,50260,50270,50290,5603,56030,57019,57029,57039,57049,57059,60180,60240,60250,60260,60261,60270,60280,60290,60300,6031,60310,60510,60520,60530,60540,60550,60560,60570,60580,60590,60600,60610,60620,60630,70035,77900,80100,80140,80150,80220,80230', '', '危化品行政处罚自由裁量可配置违法行为参数');
--jira-40902
update  psa_monitor_info t set t.monitor_name = '票据使用人与领用人不一致' where t.id='0313';
--jira-40912
update psa_monitor_field_relation t set t.fieldid='wfxwv' where id='492';
update psa_exc_value_relation set REMARK='[{"desc":"违法行为","key":"wfxwv","value":"value1"},{"desc":"使用性质","key":"syxzv","value":"value2"},{"desc":"处罚时间","key":"cfsj","value":"value3"}]'
where monitor_id='0705';
--jira-40913
update psa_collide_sql set fields='t.pzbh 凭证编号, t.DSR 当事人, t.DH 电话, completehphm(t.hphm,t.hpzl) 号牌号码, t.JDCSYR 机动车所有人, t.WFSJ 违法时间, t.WFDZ 违法地点, c.wfms 违法行为1, t.SCZ1 实测值, t.BZZ1 标准值, c1.wfms 违法行为2, t.SCZ2 实测值, t.BZZ2 标准值, dc1.wfms 违法行为3, t.SCZ3 实测值, t.BZZ3 标准值, dc2.wfms 违法行为4, t.SCZ4 实测值, t.BZZ4 标准值, dc3.wfms 违法行为5, t.SCZ5 实测值, t.BZZ5 标准值, c3.dmsm1 人员分类, c4.dmsm1 交通方式, nvl(p.policename,t.zqmj) 执勤民警, test.transformcode(t.qzcslx,''04'',''0011'') 强制措施类型, t.QTQZCS 其他强制措施类型描述, t.JSCJSJ 接受处理时间, decode(CJBJ,''0'',''未裁决'',''1'',''已裁决'') 裁决标记, t.CJSJ 裁决时间, nvl(p1.policename,t.lrr) 录入人, t.LRSJ 录入时间, t.MJYJ 民警意见, decode(CLDXBJ,''0'',''本地'',''1'',''本省外地市'',''2'',''外省'') 处理对象标记, decode(t.XXLY,''1'',''现场处罚'',''2'',''非现场处罚'') 信息来源'
where id='003';
--jira-40989
update psa_monitor_info t set t.tables='0203,0206' where t.id ='0105';
--jira-40955
update psa_monitor_execute_config t set t.del_flag='0' where id='100';
--jira-40911,40733
update psa_monitor_info t set t.tables='0206,0217,0401,0402' where id='0407';
update psa_monitor_info t set t.tables='0206,0217,0401,0402' where id='0408';
update psa_monitor_info t set t.tables='0206,0217,0401,0402' where id='0704';
update psa_monitor_info t set t.tables='0206,0217,0401,0402' where id='0706';
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('707', '07', '0402');
insert into psa_monitor_third_sys_config (ID, MONITOR_ID, THIRD_SYSTEM)
values ('040402', '04', '0402');
--jira-41047
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('032', 't.id ID, decode(t.status,1,''扣押中'',2,''已放行'',10,''放行申请中'',11,''放行审核失败'',12,''可放行'',13,''等待直接领导审核'',14,''等待高级领导审核'',20,''扣押待确认'',21,''案件移交中'',22,''移交失败'') 状态, t.vehicle_id 车辆编号, t.status_desc 状态描述, t.start_time 开始时间, p.name 流程开始创建用户, t.end_time 结束时间, p2.name 流程结束用户', 'test.in_vehicle_status t left join test.operator p on p.id=t.start_user left join test.operator p2 on p2.id=t.end_user', 't.id=?');
update psa_collide_sql t set t.tablename='test.drv_pointreset t' where id='009';
update psa_collide_sql t set t.tablename='test.acd_gfile t left join department d on d.cdepartmentid=glbm left join police_data p on p.policeid=jbr' where id='017';

--jira-41049
delete FROM psa_monitor_info t where t.parent_id='02';
insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0203', '02', '1', '无放车条放车', '0', '2', null, null, '0401,0402');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0202', '02', '1', '违规申请放行', '0', '2', null, null, '0206,0401,0402,0403');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0201', '02', '1', '扣车未入停车场', '0', '2', null, null, '0217,0401,0402');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0204', '02', '2', '未上传现场照片', '0', '2', null, null, '0401,0402,0406');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0205', '02', '2', '扣车手续不全', '0', '2', null, null, '0401,0402,0403,0217');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0207', '02', '2', '违法记录消除未放车', '0', '2', null, null, '0206,0401,0403,0407');

insert into psa_monitor_info (ID, PARENT_ID, TYPE, MONITOR_NAME, STATUS, MONITOR_LEVEL, PATH_NAME, REMARK1, TABLES)
values ('0206', '02', '2', '放行申请被频繁驳回', '0', '2', null, null, '0401,0403');
commit;

----------------------------QD.PSA.A2 END---------------------------------------

----------------------------QD.PSA.A3 START--------------------------------------
--jira-41172,41174
update  psa_exc_value_relation t set t.remark='[{"desc":"录入时间","key":"lrsj","value":"value1"},{"desc":"表名","key":"tablename","value":"value3"}]' where t.monitor_id='0702';
update psa_exc_value_relation t set t.monitor_id='0707',t.remark='[{"desc":"表名","key":"tablename","value":"value3"}]' where t.id='061';

--jira-41171
update psa_system_config t set t.sys_name='vio_dxjl' where t.sys_name='vio_dxjz';

--jira-41237
update psa_monitor_info t set t.tables='0401,0402,0404' where t.id='0203';
update psa_monitor_info t set t.tables='0206,0401,0403' where t.id='0207';
commit;
----------------------------QD.PSA.A3 END---------------------------------------

----------------------------QD.PSA.A4 START--------------------------------------
--jira-41698
delete from psa_collide_sql where id='006';
insert into psa_collide_sql (ID, FIELDS, TABLENAME, CONDITION)
values ('006', 't.XM 姓名, decode(XB,''1'',''男'',''2'',''女'') 性别, t.SFZMHM 身份证号码, to_char(t.CSRQ,''yyyy-mm-dd'') 出生日期, c.dmsm1 国籍, t.DJZSXZQH 登记住所行政区划, t.DJZSXXDZ 登记住所详细地址, t.LXZSXZQH 联系住所行政区划, t.LXZSXXDZ 联系住所详细地址, t.LXZSYZBM 联系住所邮政编码, t.LXDH 联系电话, t.SJHM 手机号码, t.DZYX 电子邮箱, t.ZZZM 暂住证明, t.ZZFZJG 暂住发证机关, to_char(t.ZZFZRQ,''yyyy-mm-dd'') 暂住发证日期, decode(t.SFBD,''1'',''是'',''0'',''否'',t.SFBD) 是否本地, t.DWBH 属地信息, to_char(t.SYYXQZ,''yyyy-mm-dd'') 审验有效期止, decode(RYZT,''0'',''正常'',''1'',''有吸毒记录'',RYZT) 人员状态, decode(SXBJ,''1'',''是'',''2'',''否'',sxbj) 实习标记, t.ZJCX 准驾车型, t.YZJCX 原准驾车型, to_char(t.QFRQ,''yyyy-mm-dd'') 下一清分日期, to_char(t.SYRQ,''yyyy-mm-dd'') 下一审验日期, to_char(t.CCLZRQ,''yyyy-mm-dd'') 初次领证日期, t.CCFZJG 初次发证机关, t.JZQX 驾证期限, to_char(t.YXQS,''yyyy-mm-dd'') 有效期始, to_char(t.YXQZ,''yyyy-mm-dd'') 有效期止, t.LJJF 累积记分, to_char(t.CFRQ,''yyyy-mm-dd'') 超分日期, to_char(t.XXTZRQ,''yyyy-mm-dd'') 学习通知日期, t.BZCS 补证次数, test.transformcode(t.zt,''00'',''2005'') 驾驶证状态, t.JXMC 驾校名称, t.JLY 教练员
', 'test.drivinglicense t left join test.frm_code c on c.dmz=t.gj and c.xtlb=''00'' and c.dmlb=''0031''', 't.xh=?');

update PSA_MONITOR_PARAM_CONFIG set DESCRIPTION = '超载车辆处置滞留时间过长上限可配置阈值参数' where ID = 'psa_overload_07';

insert into PSA_MONITOR_PARAM_CONFIG (ID, MONITOR_ID, PARAM_CODE, PARAM_TYPE, PARAM_VALUE, PARAM_SUB_CODE, DESCRIPTION)
values ('psa_overload_15', null, 'psa_overload_threshold2', '1', '10', null, '超载车辆处置滞留时间过长下限可配置阈值参数');

update psa_warning_field set iscollide = 'N' where id = '190';
update psa_warning_field t set t.fieldname='总案件数',iscollide = 'N' where id='191';

update psa_collide_sql set tablename='detect_speed_data' where id='021';

update psa_warning_field set displaywidth = '150' where fieldid = 'sybm' and id = '255';
commit;
----------------------------QD.PSA.A4 END---------------------------------------



----------------------------QD.PIS.A1 START--------------------------------------
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('DELAY_LIMMIT', '10', '申请延期时限', null, '申请延期最大时间限制（单位：天）', '64');
insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('RETURN_LIMIT', '2', '退回时限', null, '退回时限配置(单位为小时，默认2小时)', '65');
commit;


insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('QUICK_PHRASE', '01', '需现场核实', null, '请主办单位办结时提报必须填写以下信息： 1.出警单位： 2.出警时间： 3.出警地点： 4.出警人员及职务： 5.现场照片： 6.处置结果： 还可根据实际情况补充其他处理情况', '67');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('QUICK_PHRASE', '02', '无需现场核实', null, '请主办单位办结时提报必须填写以下信息： 1.处置单位： 2.处置人员及职务： 3.核实方式： 4.核实结果： 5.处置动作： 6.处置结果： 还可根据实际情况补充其他处理情况。', '68');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('QUICK_PHRASE', '03', '设施类', null, '请主办单位办结时提报必须填写以下信息： 1.核实时间： 2.核实方式： 3.核实结果： 4.处置动作： 5.修复时限： 6.处置结果： 还可根据实际情况补充其他处理情况。', '69');

insert into pis_param_config (PARAM_CODE, PARAM_VALUE, PARAM_DESC, PARAM_TYPE, PARAM_COMMENT, PARAM_ID)
values ('QUICK_PHRASE', '04', '舆情类', null, '请主办单位办结时提报必须填写以下信息： 1.核实时间： 2.核实方式： 3.核实原始事件情况： 4.落实目前状况： 5.处置措施及动作： 6.处置结果： 还可根据实际情况补充其他处理情况。', '70');


truncate table pis_info_details;
insert into pis_info_details(info_id,info_location) 
select t.info_id,belongRoad(splitstr(t.info_coordinate,1,','),splitstr(t.info_coordinate,2,',')) from pis_info_base t where t.info_coordinate is not null
and belongRoad(splitstr(t.info_coordinate,1,','),splitstr(t.info_coordinate,2,',')) is not null;
commit;


insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010306','情报统计','情报统计','images/3.jpg','openReactPage("hrv","view/intelligence","情报统计","/HiatmpPro/index.html");','0103','10306','1');
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030601', '010306', '显示', '显示', null);
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030601');
commit;
--------------------------------QD-PIS.A1 END-----------------------------

--------------------------------QD-PIS.A2 START-----------------------------
update menu m set m.on_click = 'openReactPage("pis","pis/InfoConfirm","情报确认","/HiatmpPro/index.html");' where m.id = '010304';
commit;

insert into PIS_PARAM_CONFIG (param_code, param_value, param_desc, param_type, param_comment, param_id)
values ('INFO_STATUS', '07', '已退回', null, '情报状态', '66');
commit;
ALTER TABLE pis_info_merge  ADD  MERGE_HOURS  VARCHAR2(100);

insert into menu(id,name,title,image,on_click,parent_id,order_id,version) values ('010307','情报考核','情报考核','images/3.jpg','openReactPage("pis","pis/infoCheck","情报考核","/HiatmpPro/index.html");','0103','10307','1');
insert into OPERATE_COMPONENT (id, menu_id, name, title, order_id) values ('01030701', '010307', '显示', '显示', null);
insert into role_operation_relation (ROLEID, OPERATIONID) values ('2c90af8423bc50b30123bc577ef30002', '01030701');
commit;
--------------------------------QD-PIS.A2 END-----------------------------

--------------------------------QD-PIS.A3 START-----------------------------
insert into enum_type (enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) 
values ('17002','01','0','0','部门类型','机关处室','0');
insert into enum_type (enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) 
values ('17002','02','0','0','部门类型','直属区市大队','0');
insert into enum_type (enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) 
values ('17002','03','0','0','部门类型','直属高速大队','0');
insert into enum_type (enumtypeid,enumvalue,dispindex,valid,enumdesc,enumname,isdefault) 
values ('17002','04','0','0','部门类型','分管区市大队','0');
commit;

delete from enum_type e where e.enumtypeid = '1110';
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '01', 0, 0, null, '交通拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '02', 0, 0, null, '交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '03', 0, 0, null, '交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '04', 0, 0, null, '信息咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '05', 0, 0, null, '交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '06', 0, 0, null, '危难求助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '07', 0, 0, null, '突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '08', 0, 0, null, '反映情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '09', 0, 0, null, '秩序整治', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '10', 0, 0, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '11', 0, 0, null, '交通管制', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '12', 0, 0, null, '恶劣天气', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '13', 0, 0, null, '交通规划', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1110, '14', 0, 0, null, '交办任务', 0);
commit;

delete from enum_type e where e.enumtypeid = '1120';
commit;
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0404', 0, 0, null, '交通事故', 0);
insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0205', 0, 0, null, '求助查处', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0206', 0, 0, null, '举报反映', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0207', 0, 0, null, '违法停车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0208', 0, 0, null, '低速行驶', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0101', 0, 0, null, '反映拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0102', 0, 0, null, '检测拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0103', 0, 0, null, '其他路况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0201', 0, 0, null, '交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0202', 0, 0, null, '超载', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0203', 0, 0, null, '超速', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0204', 0, 0, null, '其他交通违法', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0209', 0, 0, null, '违章变线', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0210', 0, 0, null, '逆向行驶', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0211', 0, 0, null, '行人违章', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0212', 0, 0, null, '横穿道路', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0213', 0, 0, null, '重点车违反限行规定', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0214', 0, 0, null, '客车超员', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0215', 0, 0, null, '酒驾、毒驾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0301', 0, 0, null, '其他交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0302', 0, 0, null, '机动车与行人', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0303', 0, 0, null, '单方交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0304', 0, 0, null, '车损交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0305', 0, 0, null, '伤人交通事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0306', 0, 0, null, '非机动车与行人', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0307', 0, 0, null, '非机动车与非机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0308', 0, 0, null, '机动车与非机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0309', 0, 0, null, '机动车与机动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0310', 0, 0, null, '单车肇事', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0311', 0, 0, null, '逃逸事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0312', 0, 0, null, '后报事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0313', 0, 0, null, '路外事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0314', 0, 0, null, '高速公路事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0315', 0, 0, null, '快速理赔', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0316', 0, 0, null, '协商处理', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0317', 0, 0, null, '简易程序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0318', 0, 0, null, '死亡事故', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0401', 0, 0, null, '其他业务咨询', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0402', 0, 0, null, '车管驾管', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0403', 0, 0, null, '12123APP使用', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0501', 0, 0, null, '信号灯故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0502', 0, 0, null, '视频故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0503', 0, 0, null, '其他交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0504', 0, 0, null, '防护栏故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0505', 0, 0, null, '诱导屏故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0506', 0, 0, null, '标志、标线、标牌故障', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0507', 0, 0, null, '其他交通设施', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0508', 0, 0, null, '标志标线不清', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0509', 0, 0, null, '指示牌、信号灯遮挡', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0510', 0, 0, null, '隔离墩损坏', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0511', 0, 0, null, '限高杆', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0512', 0, 0, null, '杆体', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0513', 0, 0, null, '机柜、机箱', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0514', 0, 0, null, '交通检查井', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0515', 0, 0, null, '交通线缆', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0601', 0, 0, null, '其他危难救助', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0602', 0, 0, null, '交通护导', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0603', 0, 0, null, '车辆救援', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0701', 0, 0, null, '其他突发事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0702', 0, 0, null, '烟雾报警', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0703', 0, 0, null, '火焰报警', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0704', 0, 0, null, '车辆遗洒', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0705', 0, 0, null, '发生火灾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0706', 0, 0, null, '人员聚众', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0707', 0, 0, null, '公共设施抢修', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0708', 0, 0, null, '涉案事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0709', 0, 0, null, '涉外事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0801', 0, 0, null, '其他情况', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0802', 0, 0, null, '联系移车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0803', 0, 0, null, '投诉、建议', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0804', 0, 0, null, '表扬', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0901', 0, 0, null, '道路交通秩序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0902', 0, 0, null, '非道路交通秩序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0903', 0, 0, null, '其他交通秩序', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0904', 0, 0, null, '道路拥堵', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0905', 0, 0, null, '违法停车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0906', 0, 0, null, '大货车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0907', 0, 0, null, '摩托车、电动车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0908', 0, 0, null, '僵尸车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0909', 0, 0, null, '敏感车辆', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0910', 0, 0, null, '违法举报', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0911', 0, 0, null, '渣土车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0912', 0, 0, null, '公交车', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0913', 0, 0, null, '私占车位', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0914', 0, 0, null, '未礼让行人', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '0915', 0, 0, null, '违法占用应急车道', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1001', 0, 0, null, '其他', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1002', 0, 0, null, '涉外事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1003', 0, 0, null, '敏感事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1101', 0, 0, null, '收费站关闭', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1102', 0, 0, null, '道路封闭', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1103', 0, 0, null, '限行', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1104', 0, 0, null, '道路施工', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1201', 0, 0, null, '大雾', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1202', 0, 0, null, '暴雨', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1203', 0, 0, null, '大雪', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1204', 0, 0, null, '路面结冰', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1205', 0, 0, null, '路面湿滑', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1206', 0, 0, null, '大风', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1207', 0, 0, null, '路面高温', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1208', 0, 0, null, '积水事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1209', 0, 0, null, '积雪事件', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1301', 0, 0, null, '信号灯配时', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1302', 0, 0, null, '标志标线设置', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1303', 0, 0, null, '小区微循环', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1304', 0, 0, null, '建议加设信号灯', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1305', 0, 0, null, '建议加装护栏', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1306', 0, 0, null, '建议加装限高杆', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1307', 0, 0, null, '可变车道', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1308', 0, 0, null, '停车规划', 0);

insert into enum_type (ENUMTYPEID, ENUMVALUE, DISPINDEX, VALID, ENUMDESC, ENUMNAME, ISDEFAULT)
values (1120, '1401', 0, 0, null, '领导指示', 0);
commit;
--------------------------------QD-PIS.A3 END-----------------------------
