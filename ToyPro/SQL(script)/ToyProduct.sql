/* 장난감정보 */
DROP TABLE toy_info 
	CASCADE CONSTRAINTS;

/* 서고이용정보 */
DROP TABLE library_use 
	CASCADE CONSTRAINTS;

/* 서고정보 */
DROP TABLE library_info 
	CASCADE CONSTRAINTS;

/* 대여점정보 */
DROP TABLE rental_shop 
	CASCADE CONSTRAINTS;

/* 분관운영정보 */
DROP TABLE TABLE4 
	CASCADE CONSTRAINTS;

/* 분류정보 */
DROP TABLE category_info 
	CASCADE CONSTRAINTS;

/* 구정보 */
DROP TABLE gu_info 
	CASCADE CONSTRAINTS;

/* 장난감정보 */
CREATE TABLE toy_info (
	toy_code VARCHAR2(20) NOT NULL, /* 장난감번호 */
	rental_code INTEGER NOT NULL, /* 대여점번호 */
	category_code VARCHAR2(10), /* 분류번호 */
	toy_name VARCHAR2(100) NOT NULL, /* 장난감이름 */
	business VARCHAR2(50), /* 업체명 */
	region VARCHAR2(50), /* 제조국 */
	made_date VARCHAR2(40), /* 제조년일 */
	get_date VARCHAR2(40), /* 입수년월일 */
	use_age VARCHAR2(50), /* 이용연령 */
	rental_state VARCHAR2(20) NOT NULL, /* 대여상태 */
	toy_img VARCHAR2(100), /* 장난감이미지 */
	detail CLOB /* 상세설명 */
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

/* 서고이용정보 */
CREATE TABLE library_use (
	loc_code INTEGER NOT NULL /* 서고코드 */
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

/* 서고정보 */
CREATE TABLE library_info (
	loc_no INTEGER NOT NULL, /* 서고번호 */
	location VARCHAR2(255) NOT NULL, /* 서고명 */
	toy_cnt INTEGER NOT NULL, /* 장난감수 */
	loc_code INTEGER NOT NULL, /* 서고코드 */
	rental_code INTEGER /* 대여점번호 */
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

/* 대여점정보 */
CREATE TABLE rental_shop (
	rental_code INTEGER NOT NULL, /* 대여점번호 */
	gu_code INTEGER NOT NULL, /* 구일련번호 */
	rental_name VARCHAR2(70) NOT NULL, /* 대여점명 */
	addr VARCHAR2(255), /* 주소 */
	tel VARCHAR2(30), /* 전화번호 */
	use_hours VARCHAR2(100), /* 이용시간 */
	rental_term VARCHAR2(30), /* 대여기간 */
	rental_cnt VARCHAR2(30), /* 대여수량 */
	toy_cnt VARCHAR2(10), /* 장난감개수 */
	close_day VARCHAR2(50), /* 휴관일 */
	website VARCHAR2(255) /* 홈페이지 */
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

/* 분관운영정보 */
CREATE TABLE TABLE4 (
	rental_code INTEGER NOT NULL /* 대여점번호 */
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

/* 분류정보 */
CREATE TABLE category_info (
	category_code VARCHAR2(10) NOT NULL, /* 분류번호 */
	category_name VARCHAR2(30) NOT NULL /* 분류명 */
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

/* 구정보 */
CREATE TABLE gu_info (
	gu_code INTEGER NOT NULL, /* 구일련번호 */
	gu_name VARCHAR2(20) NOT NULL /* 구이름 */
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
