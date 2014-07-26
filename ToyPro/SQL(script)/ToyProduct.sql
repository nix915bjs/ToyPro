/* �峭������ */
DROP TABLE toy_info 
	CASCADE CONSTRAINTS;

/* �����̿����� */
DROP TABLE library_use 
	CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE library_info 
	CASCADE CONSTRAINTS;

/* �뿩������ */
DROP TABLE rental_shop 
	CASCADE CONSTRAINTS;

/* �а������ */
DROP TABLE TABLE4 
	CASCADE CONSTRAINTS;

/* �з����� */
DROP TABLE category_info 
	CASCADE CONSTRAINTS;

/* ������ */
DROP TABLE gu_info 
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
	detail CLOB /* �󼼼��� */
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

/* �����̿����� */
CREATE TABLE library_use (
	loc_code INTEGER NOT NULL /* �����ڵ� */
);

CREATE UNIQUE INDEX PK_library_use
	ON library_use (
		loc_code ASC
	);

ALTER TABLE library_use
	ADD
		CONSTRAINT PK_library_use
		PRIMARY KEY (
			loc_code
		);

/* �������� */
CREATE TABLE library_info (
	loc_no INTEGER NOT NULL, /* �����ȣ */
	location VARCHAR2(255) NOT NULL, /* ����� */
	toy_cnt INTEGER NOT NULL, /* �峭���� */
	loc_code INTEGER NOT NULL, /* �����ڵ� */
	rental_code INTEGER /* �뿩����ȣ */
);

CREATE UNIQUE INDEX PK_library_info
	ON library_info (
		loc_no ASC
	);

ALTER TABLE library_info
	ADD
		CONSTRAINT PK_library_info
		PRIMARY KEY (
			loc_no
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

/* �а������ */
CREATE TABLE TABLE4 (
	rental_code INTEGER NOT NULL /* �뿩����ȣ */
);

CREATE UNIQUE INDEX PK_TABLE4
	ON TABLE4 (
		rental_code ASC
	);

ALTER TABLE TABLE4
	ADD
		CONSTRAINT PK_TABLE4
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

ALTER TABLE library_info
	ADD
		CONSTRAINT FK_library_use_TO_library_info
		FOREIGN KEY (
			loc_code
		)
		REFERENCES library_use (
			loc_code
		);

ALTER TABLE library_info
	ADD
		CONSTRAINT FK_rental_shop_TO_library_info
		FOREIGN KEY (
			rental_code
		)
		REFERENCES rental_shop (
			rental_code
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

ALTER TABLE TABLE4
	ADD
		CONSTRAINT FK_rental_shop_TO_TABLE4
		FOREIGN KEY (
			rental_code
		)
		REFERENCES rental_shop (
			rental_code
		);
		
commit;
