/*�μ� ���̺�*/
CREATE TABLE dept_info (
	code	varchar2(10)	NOT NULL	PRIMARY KEY,
	dname	varchar2(30)	NOT NULL,
	phone	varchar2(15)	NOT NULL,
	memo	varchar2(100)
);

insert into dept_info values ('01','�λ���','080-511-5223','2011�� �Ϲݱ� ��ǰ ǰ��ȸ �ǽÿ���');
insert into dept_info values ('02','ȸ����','080-525-6533','2011�� �Ϲݱ� ��ǰ ǰ��ȸ �ǽÿ���');
insert into dept_info values ('03','������','080-513-6540','2011�� �Ϲݱ� ��ǰ ǰ��ȸ �ǽÿ���');
insert into dept_info values ('04','��������','080-511-9865','2011�� �Ϲݱ� ��ǰ ǰ��ȸ �ǽÿ���');
insert into dept_info values ('05','������','080-512-6767','7/14 ���˹� �� �ŷ�ó �� ȸ�Ǻ��� ����');
insert into dept_info values ('06','ȫ����','080-557-9980','2011�� �Ϲݱ� ��ǰ ǰ��ȸ �ǽÿ���');

/*��� ���̺�*/
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

insert into emp_info values ('�谡��','A2004004','01','01','W','01098760898','rinilove86@naver.com','���ֽ� ����� 1063-19 3��','20040411','660-051','');
insert into emp_info values ('��ÿ�','A2009102','02','02','M','01058990898','seewoo21@hanmail.net','���ֽ� ����� 1063-19 3��','20091212','660-051','');
insert into emp_info values ('������','A2011071','04','05','W','01093411170','narinari@hanmail.net','���ֽ� ĥ�ϵ�','20110711','660-280','');

/*ALTER TABLE emp_info
	ADD FOREIGN KEY (dept)
	REFERENCES dept_info (code);*/
	
/*�����ȣ ���̺�*/
CREATE TABLE zipcode_info (
	zipcode		varchar2(7)	NOT NULL,
	sido		varchar2(20)	NOT NULL,
	gugun		varchar2(30)	NOT NULL,
	dong		varchar2(20)	NOT NULL,
	bunji		varchar2(15)
);

/*�з»��� ���̺�*/
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

insert into education_info values ('1998/03/04','2001/2/14','���ֿ���',NULL,'����',NULL,'���ֽ�','A2004004',education_seq.nextval);
insert into education_info values ('2001/02/25','2004/2/16','���ؿ���','����','����',NULL,'���ֽ�','A2004004',education_seq.nextval);
insert into education_info values ('2006/03/04','2009/2/20','������',NULL,'����',NULL,'���ֽ�','A2009102',education_seq.nextval);
insert into education_info values ('2009/03/02','2012/','���ְ�','�̰�','������',NULL,'���ֽ�','A2009102',education_seq.nextval);

/*��»��� ���̺�*/
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

insert into career_info values ('04/05~05/07','��ưȣ��','���','������','����','A2004004',career_seq.nextval);
insert into career_info values ('05/08~06/07','���̴ٽ�G/C','���','������','����','A2004004',career_seq.nextval);
insert into career_info values ('07/08~10/12','�ݰ���ȭ','���','������','����','A2004004',career_seq.nextval);
insert into career_info values ('09/12~10/12','�Ｚ�׷�','�븮','�λ����','����','A2009102',career_seq.nextval);

/*�ڰ��� ���̺�*/
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

insert into license_info values ('�������μ���','05-19-072302','2005/06/17','1��','A2004004',license_seq.nextval);
insert into license_info values ('����������','06-006989-10','2006/02/16','1������','A2004004',license_seq.nextval);
insert into license_info values ('OCA','111211','2010/05',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCJP','121212','2010/06',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCWCP','131213','2010/06',NULL,'A2009102',license_seq.nextval);
insert into license_info values ('SCBCD','141214','2010/06',NULL,'A2009102',license_seq.nextval);

/*�������� ���̺�*/
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

insert into family_info values ('��','������','1958/03/26','����','GSĮ�ؽ�','����','A2004004',family_seq.nextval);
insert into family_info values ('��','������','1961/04/25','����','��ȸ������','����','A2004004',family_seq.nextval);
insert into family_info values ('������','��ÿ�','1993/12/12','����б� ������','�л�','����','A2004004',family_seq.nextval);
insert into family_info values ('��','������','1958/03/26','����','GSĮ�ؽ�','����','A2009102',family_seq.nextval);
insert into family_info values ('��','������','1961/04/25','����','��ȸ������','����','A2009102',family_seq.nextval);
insert into family_info values ('����','�谡��','1986/02/16','��������','��ǻ�� ���α׷���','����','A2009102',family_seq.nextval);
insert into family_info values ('��','����','1958/01/01','����','�ҹ��','����','A2011071',family_seq.nextval);
insert into family_info values ('��','������','1959/02/02','��������','�̿��','����','A2011071',family_seq.nextval);
insert into family_info values ('����','���浿','1982/03/03','����','������','�񵿰�','A2011071',family_seq.nextval);

