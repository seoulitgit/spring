/*부서 테이블*/
CREATE TABLE dept_info (
	code	varchar2(10)	NOT NULL	PRIMARY KEY,
	dname	varchar2(30)	NOT NULL,
	phone	varchar2(15)	NOT NULL,
	memo	varchar2(100)
);

insert into dept_info values ('01','인사팀','080-511-5223','2011년 하반기 제품 품평회 실시예정');
insert into dept_info values ('02','회계팀','080-525-6533','2011년 하반기 제품 품평회 실시예정');
insert into dept_info values ('03','영업팀','080-513-6540','2011년 하반기 제품 품평회 실시예정');
insert into dept_info values ('04','디자인팀','080-511-9865','2011년 하반기 제품 품평회 실시예정');
insert into dept_info values ('05','판촉팀','080-512-6767','7/14 판촉물 및 거래처 평가 회의보고 예정');
insert into dept_info values ('06','홍보팀','080-557-9980','2011년 하반기 제품 품평회 실시예정');

/*사원 테이블*/
CREATE TABLE  emp_info	(										
	name		varchar2(20)	NOT NULL,
	emp_id		varchar2(20)	NOT NULL	PRIMARY KEY,
	dept		VARCHAR2(20)	NOT NULL	REFERENCES dept_info (code) on delete cascade,
	jikup		VARCHAR2(20)	NOT NULL,
	sex		CHAR(1)		NOT NULL,
	phone		VARCHAR2(11),
	email		VARCHAR2(30),
	address		VARCHAR2(100),
	hiredate	VARCHAR2(8),
	zipcode		VARCHAR2(7),
	image		VARCHAR2(100)
);

insert into emp_info values ('김가영','A2004004','01','01','W','01098760898','rinilove86@naver.com','진주시 상봉동 1063-19 3층','20040411','660-051','');
insert into emp_info values ('김시우','A2009102','02','02','M','01058990898','seewoo21@hanmail.net','진주시 상봉동 1063-19 3층','20091212','660-051','');
insert into emp_info values ('문나리','A2011071','04','05','W','01093411170','narinari@hanmail.net','진주시 칠암동','20110711','660-280','');

/*ALTER TABLE emp_info
	ADD FOREIGN KEY (dept)
	REFERENCES dept_info (code);*/
	
/*우편번호 테이블*/
CREATE TABLE zipcode_info (
	zipcode		varchar2(7)	NOT NULL,
	sido		varchar2(20)	NOT NULL,
	gugun		varchar2(30)	NOT NULL,
	dong		varchar2(20)	NOT NULL,
	bunji		varchar2(15)
);

/*학력사항 테이블*/
create sequence education_seq
	increment by 1
	start with 1;

CREATE TABLE education_info (
	entrance	varchar2(10)	NOT NULL,
	graduate	varchar2(10)	NOT NULL,
	school		varchar2(50)	NOT NULL,
	department	varchar2(30),
	division	varchar2(30)	NOT NULL,
	grade		varchar2(10),
	location	varchar2(30),
	emp_id		varchar2(20)	NOT NULL	REFERENCES emp_info (emp_id) on delete cascade,
	code		varchar2(10)	NOT NULL	PRIMARY KEY
);

insert into education_info values ('1998/03/04','2001/2/14','진주여중',NULL,'졸업',NULL,'진주시','A2004004',education_seq.nextval);
insert into education_info values ('2001/02/25','2004/2/16','경해여고','문과','졸업',NULL,'진주시','A2004004',education_seq.nextval);
insert into education_info values ('2006/03/04','2009/2/20','진주중',NULL,'졸업',NULL,'진주시','A2009102',education_seq.nextval);
insert into education_info values ('2009/03/02','2012/','진주고','이과','재학중',NULL,'진주시','A2009102',education_seq.nextval);

/*경력사항 테이블*/
create sequence career_seq
	increment by 1
	start with 1;

CREATE TABLE career_info (
	period		varchar2(20)	NOT NULL,
	employment	varchar2(30)	NOT NULL,
	position	varchar2(20)	NOT NULL,
	work		varchar2(30)	NOT NULL,
	reason		varchar2(50)	NOT NULL,
	emp_id		varchar2(20)	NOT NULL	REFERENCES emp_info (emp_id) on delete cascade,
	code		varchar2(10)	NOT NULL	PRIMARY KEY
);

insert into career_info values ('04/05~05/07','힐튼호텔','사원','고객서비스','이직','A2004004',career_seq.nextval);
insert into career_info values ('05/08~06/07','마이다스G/C','사원','고객서비스','이직','A2004004',career_seq.nextval);
insert into career_info values ('07/08~10/12','금강제화','사원','고객서비스','공부','A2004004',career_seq.nextval);
insert into career_info values ('09/12~10/12','삼성그룹','대리','인사관리','이직','A2009102',career_seq.nextval);

/*자격증 테이블*/
create sequence license_seq
	increment by 1
	start with 1;

CREATE TABLE license_info (
	license		varchar2(30)	NOT NULL,
	num			varchar2(20)	NOT NULL,
	acquisition	varchar2(10)	NOT NULL,
	grade		varchar2(20),
	emp_id		varchar2(20)	NOT NULL	REFERENCES emp_info (emp_id) on delete cascade,
	code		varchar2(10)	NOT NULL	PRIMARY KEY
);

insert into license_info values ('워드프로세서','05-19-072302','2005/06/17','1급','A2004004',license_seq.nextval);
insert into license_info values ('운전면허증','06-006989-10','2006/02/16','1종보통','A2004004',license_seq.nextval);
insert into license_info values ('OCA','111211','2010/05',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCJP','121212','2010/06',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCWCP','131213','2010/06',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCBCD','141214','2010/06',NULL,'A2009102',license_seq.nextval);

/*가족사항 테이블*/
create sequence family_seq
	increment by 1
	start with 1;

CREATE TABLE family_info (
	relation	varchar2(20)	NOT NULL,
	name		varchar2(20)	NOT NULL,
	birth		varchar2(10)	NOT NULL,
	academic	varchar2(40)	NOT NULL,
	job		varchar2(30)	NOT NULL,
	live_check	varchar2(20)	NOT NULL,
	emp_id		varchar2(20)	NOT NULL	REFERENCES emp_info (emp_id) on delete cascade,
	code		varchar2(10)	NOT NULL	PRIMARY KEY
);

insert into family_info values ('부','김종배','1958/03/26','고졸','GS칼텍스','동거','A2004004',family_seq.nextval);
insert into family_info values ('모','이진숙','1961/04/25','고졸','사회복지사','동거','A2004004',family_seq.nextval);
insert into family_info values ('남동생','김시우','1993/12/12','고등학교 재학중','학생','동거','A2004004',family_seq.nextval);
insert into family_info values ('부','김종배','1958/03/26','고졸','GS칼텍스','동거','A2009102',family_seq.nextval);
insert into family_info values ('모','이진숙','1961/04/25','고졸','사회복지사','동거','A2009102',family_seq.nextval);
insert into family_info values ('누나','김가영','1986/02/16','전문대졸','컴퓨터 프로그래머','동거','A2009102',family_seq.nextval);
insert into family_info values ('부','문혁','1958/01/01','대졸','소방관','동거','A2011071',family_seq.nextval);
insert into family_info values ('모','개나리','1959/02/02','전문대졸','미용실','동거','A2011071',family_seq.nextval);
insert into family_info values ('오빠','문길동','1982/03/03','대졸','공무원','비동거','A2011071',family_seq.nextval);

