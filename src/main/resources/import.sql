-- 사용자(비밀번호 : qwert12345!)
INSERT INTO TB_USER (LOGIN_ID, NAME, PW, PHONE, LST_CNN_DT, LST_CNN_IP, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('admin', '관리자', 'd8182d4e196d4530ac50bf7b9f3acf111ec218122400fe595e484973bd6d70878c8c0b323bc37a4c685f946e8e5823a784dcbe4a74a9240a5a4725d2d468ebda', '01012345678', LOCALTIME(), '127.0.0.1', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_USER (LOGIN_ID, NAME, PW, PHONE, LST_CNN_DT, LST_CNN_IP, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('test1', '히포크라테스', 'd8182d4e196d4530ac50bf7b9f3acf111ec218122400fe595e484973bd6d70878c8c0b323bc37a4c685f946e8e5823a784dcbe4a74a9240a5a4725d2d468ebda', '01012345678', LOCALTIME(), '127.0.0.1', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_USER (LOGIN_ID, NAME, PW, PHONE, LST_CNN_DT, LST_CNN_IP, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('test2', '나이팅게일', 'd8182d4e196d4530ac50bf7b9f3acf111ec218122400fe595e484973bd6d70878c8c0b323bc37a4c685f946e8e5823a784dcbe4a74a9240a5a4725d2d468ebda', '01012345678', LOCALTIME(), '127.0.0.1', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');

-- 역할
INSERT INTO TB_ROLE (CODE, NAME, UDT_DT, UDT_ID, REG_DT, REG_ID, USE_YN, DEL_YN) VALUES ('ROLE_ADMIN', '관리자', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_ROLE (CODE, NAME, UDT_DT, UDT_ID, REG_DT, REG_ID, USE_YN, DEL_YN) VALUES ('ROLE_DOCTOR', '의사', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_ROLE (CODE, NAME, UDT_DT, UDT_ID, REG_DT, REG_ID, USE_YN, DEL_YN) VALUES ('ROLE_NURSE', '간호사', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');

-- 메뉴
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU110', '환자 리스트', 0, 0, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU120', '진행중', 1, 0, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU130', '완료/종료', 1, 1, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU210', '설정', 0, 1, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU220', '회원 관리', 1, 0, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU230', '메시지 관리 ', 1, 1, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU240', '수술 관리', 1, 2, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');
INSERT INTO TB_MENU (CODE, NAME, MENU_LEVEL, MENU_ORDER, REG_DT, REG_ID, UDT_DT, UDT_ID, USE_YN, DEL_YN) VALUES ('MNU250', '항응고제 관리', 1, 3, LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');

-- 분과
INSERT INTO TB_DEPARTMENT (NAME, UDT_DT, UDT_ID, REG_DT, REG_ID, USE_YN, DEL_YN) VALUES ('치과', LOCALTIME(), 'admin', LOCALTIME(), 'admin', 'Y', 'N');

-- 사용자 역할
INSERT INTO TB_USER_ROLE (USER_ID, ROLE_ID) VALUES (1, 1);
INSERT INTO TB_USER_ROLE (USER_ID, ROLE_ID) VALUES (2, 2);
INSERT INTO TB_USER_ROLE (USER_ID, ROLE_ID) VALUES (3, 3);

-- 사용자 분과
INSERT INTO TB_USER_DEPARTMENT (USER_ID, DEPARTMENT_ID) VALUES (1, 1);
INSERT INTO TB_USER_DEPARTMENT (USER_ID, DEPARTMENT_ID) VALUES (2, 1);
INSERT INTO TB_USER_DEPARTMENT (USER_ID, DEPARTMENT_ID) VALUES (3, 1);

-- 역할 권한
-- 관리자
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 1);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 2);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 3);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 4);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 5);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 6);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 7);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (1, 8);

-- 의사/간호사
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (2, 1);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (2, 2);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (2, 3);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (3, 1);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (3, 2);
INSERT INTO TB_ROLE_AUTH (ROLE_ID, MENU_ID) VALUES (3, 3);

