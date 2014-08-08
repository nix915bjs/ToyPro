/* �峭������ */
DROP TABLE toy_info 
	CASCADE CONSTRAINTS;

/* �뿩������ */
DROP TABLE rental_shop 
	CASCADE CONSTRAINTS;

/* �з����� */
DROP TABLE category_info 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE gu_info 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE notice 
	CASCADE CONSTRAINTS;

/* �峭������ */
CREATE TABLE toy_info (
	toy_code VARCHAR2(20) NOT NULL, /* �峭����ȣ */
	rental_code INTEGER NOT NULL, /* �뿩����ȣ */
	category_code VARCHAR2(10), /* �з���ȣ */
	toy_name VARCHAR2(100) NOT NULL, /* �峭���̸� */
	business VARCHAR2(50), /* ��ü�� */
	region VARCHAR2(50), /* ������ */
	made_date VARCHAR2(40), /* �������� */
	get_date VARCHAR2(40), /* �Լ������ */
	use_age VARCHAR2(50), /* �̿뿬�� */
	rental_state VARCHAR2(20) NOT NULL, /* �뿩���� */
	toy_img VARCHAR2(100), /* �峭���̹��� */
	detail CLOB, /* �󼼼��� */
	reg_date DATE DEFAULT SYSDATE NOT NULL /* ����� */
);

CREATE UNIQUE INDEX PK_toy_info
	ON toy_info (
		toy_code ASC,
		rental_code ASC
	);

ALTER TABLE toy_info
	ADD
		CONSTRAINT PK_toy_info
		PRIMARY KEY (
			toy_code,
			rental_code
		);

/* �뿩������ */
CREATE TABLE rental_shop (
	rental_code INTEGER NOT NULL, /* �뿩����ȣ */
	gu_code INTEGER NOT NULL, /* ���Ϸù�ȣ */
	rental_name VARCHAR2(70) NOT NULL, /* �뿩���� */
	addr VARCHAR2(255), /* �ּ� */
	tel VARCHAR2(30), /* ��ȭ��ȣ */
	use_hours VARCHAR2(100), /* �̿�ð� */
	rental_term VARCHAR2(30), /* �뿩�Ⱓ */
	rental_cnt VARCHAR2(30), /* �뿩���� */
	toy_cnt VARCHAR2(10), /* �峭������ */
	close_day VARCHAR2(50), /* �ް��� */
	website VARCHAR2(255) /* Ȩ������ */
);

CREATE UNIQUE INDEX PK_rental_shop
	ON rental_shop (
		rental_code ASC
	);

ALTER TABLE rental_shop
	ADD
		CONSTRAINT PK_rental_shop
		PRIMARY KEY (
			rental_code
		);

/* �з����� */
CREATE TABLE category_info (
	category_code VARCHAR2(10) NOT NULL, /* �з���ȣ */
	category_name VARCHAR2(30) NOT NULL /* �з��� */
);

CREATE UNIQUE INDEX PK_category_info
	ON category_info (
		category_code ASC
	);

ALTER TABLE category_info
	ADD
		CONSTRAINT PK_category_info
		PRIMARY KEY (
			category_code
		);

/* ������ */
CREATE TABLE gu_info (
	gu_code INTEGER NOT NULL, /* ���Ϸù�ȣ */
	gu_name VARCHAR2(20) NOT NULL /* ���̸� */
);

CREATE UNIQUE INDEX PK_gu_info
	ON gu_info (
		gu_code ASC
	);

ALTER TABLE gu_info
	ADD
		CONSTRAINT PK_gu_info
		PRIMARY KEY (
			gu_code
		);

/* �������� */
CREATE TABLE notice (
	notice_code INTEGER NOT NULL, /* �Խñ۹�ȣ */
	subject VARCHAR2(255) NOT NULL, /* ���� */
	reg_date DATE DEFAULT sysdate NOT NULL, /* ����� */
	notice_count INTEGER DEFAULT 0 NOT NULL, /* ��ȸ�� */
	writer VARCHAR2(20) NOT NULL, /* �ۼ��� */
	notice_content CLOB NOT NULL, /* �Խñ� */
	attachment VARCHAR2(50) /* ÷������ */
);

CREATE UNIQUE INDEX PK_notice
	ON notice (
		notice_code ASC
	);

ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			notice_code
		);

ALTER TABLE toy_info
	ADD
		CONSTRAINT FK_rental_shop_TO_toy_info
		FOREIGN KEY (
			rental_code
		)
		REFERENCES rental_shop (
			rental_code
		);

ALTER TABLE toy_info
	ADD
		CONSTRAINT FK_category_info_TO_toy_info
		FOREIGN KEY (
			category_code
		)
		REFERENCES category_info (
			category_code
		);

ALTER TABLE rental_shop
	ADD
		CONSTRAINT FK_gu_info_TO_rental_shop
		FOREIGN KEY (
			gu_code
		)
		REFERENCES gu_info (
			gu_code
		);
		
commit;

-- �� ���� ���̺� ������ �Է�

insert into gu_info values(1, '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���ϱ�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���Ǳ�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���α�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '��õ��');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '�����');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���빮��');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���۱�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���빮��');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���ʱ�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���ϱ�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���ı�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '��õ��');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '��������');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '��걸');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '����');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '���α�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '�߱�');

insert into gu_info values((SELECT NVL(MAX(gu_code)+1, 1) FROM gu_info), '�߷���');

commit;

-- �з� ���� ���̺� ������ �Է�
insert into category_info values('000', '�ڵ�����');

insert into category_info values('100', '���ҳ���');

insert into category_info values('200', '������');

insert into category_info values('300', '��ü����');

insert into category_info values('400', '����(����)��');

insert into category_info values('500', '��');

insert into category_info values('600', '����');

insert into category_info values('700', '����');

insert into category_info values('800', '��Ÿ');

commit;

-- �뿩�� ���� ���̺� �Ϻ� �Է� - �뿩����ȣ(rental_code), ���Ϸù�ȣ(gu_code), �뿩����(rental_name)
insert into rental_shop(rental_code, gu_code, rental_name) values(1, 1, '����������������������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 1, '����������������������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 1, '����������������������(��ġ��)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 1, '����������������������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 2, '����������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 2, '����������(õȣ��)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 3, '���ϱ� �峭��������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 3, '�峭������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 4, 'Ű��Ű�� ���հ���');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 5, '�޳�����');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 6, '��̾���');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 7, '���� �޳����峭������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 7, '���� �޳����峭������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 8, '�峭������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 8, '�峭������(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 9, '��������峭��������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 10, '������ ����������������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 10, '�����̳����� �������ö���');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 11, '���빮�� �������ö���(��ʸ���)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 11, '���빮�� �������ö���(������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 12, '���۱�����������������(�������ö���)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 12, '�ξ��峭���뿩��');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 12, '��翵���Ƶ����̼���');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 12, '�Ŵ�濵���Ƶ����̼���');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 13, '��ȭ �峭���뿩��');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 13, '���� �峭���뿩��');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 14, '���빮������������������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 15, '���ʱ� ����������������(�峭��������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 16, '�������峭������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 17, '�峭��������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 17, 'sb�峭��������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 18, '���̰��뿩��');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 19, '��õ�� ����������������(�������ö���)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 20, '�峭�� ������ �̿');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 21, '��� ���̳븮 �峭������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 22, '�������������������� �� ��� �峭������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 23, '���α� ���������������� �峭��������');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 24, '�Ŵ��峭��������(Ű������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 24, '�߸��峭��������(Ű������)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 25, '�峭���뿩����(�߶���)');

insert into rental_shop(rental_code, gu_code, rental_name) values((SELECT NVL(MAX(rental_code)+1, 1) FROM rental_shop), 25, '�峭���뿩����(�����)');

--notice insert
INSERT INTO notice VALUES ((SELECT NVL(MAX(notice_code)+1, 1) FROM notice), '����1',SYSDATE, 0, '����', '�����Դϴ�','');
	
commit;
