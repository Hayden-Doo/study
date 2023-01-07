USE daanguen_app;

SHOW TABLES;

-- Create Table (엑셀 Sheet 하나 만들기)

CREATE TABLE users(
	user_no INT NOT NULL AUTO_INCREMENT, 
	user_id VARCHAR(50),
	user_name varchar(50),
	user_pwd VARCHAR(50),
	PRIMARY KEY(user_no)
);

-- 테이블 구조 보기
DESC users;

-- 1. R(Select)
SELECT * FROM users;

-- 2. C(Insert)
INSERT users(
	user_id,
	user_name,
	user_pwd
) VALUES (
	'doo',
	'해도',
	'123465'
);
INSERT users(
	user_id,
	user_name,
	user_pwd
) VALUES (
	'doo1',
	'해도1',
	'123465'
);
INSERT users(
	user_id,
	user_name,
	user_pwd
) VALUES (
	'doo2',
	'해도2',
	'123465'
);

-- 3. U(Update) : 고객은 아이디가 doo1인 사람의 이름과, 비번을 두해도, 1111로 바꾸고 싶다
UPDATE users SET user_name = '두해도', user_pwd='1111' WHERE user_id='doo1';
UPDATE users SET user_pwd='222222' WHERE user_pwd='123456';
SELECT * FROM users;

-- EX) "서울"에 사는 "20대" "남성"의 목록을 뽑아라 R(Select)
-- "서울" && "20대" && "남성"
WHERE location = "서울" AND  "20대" AND  "남성"

-- "서울"에 사는 "20대" "남성"의성별을 "여성"으로 변경하라 U(Update)
-- "서울"에 사는 "20대" "남성"을 삭제하라 D (Delete)

-- EX) "서울"에 살거나 "20대" 니가 "남성"의 목록을 뽑아라
-- "서울" && "20대" && "남성"
WHERE location = "서울" OR  "20대" OR  "남성"

-- 4. D (Delete)

CREATE DATABASE daanguen_app;

SHOW DATABASES;
USE daanguen_app;
SHOW TABLES;
daanguen_app
DESC users;






CREATE DATABASE web06_db;
-- 데이터베이스용 계정 만들기 
GRANT ALL PRIVILEGES ON web06_db.* TO web06@'%' IDENTIFIED BY '123456';
-- web06_db의 모든(ALL PRIVILEGES ) 권한을 web06이라는 아이디를 가진 계정에게 부여 
-- web06 계정의 접근위치는 외부 전체(%)
-- ex) 172.1.1.3이라는 클라이언트만 접슨하게 하겠다 to web06@'172.1.1.3'
GRANT ALL PRIVILEGES ON web06_db.* TO web06@localhost IDENTIFIED BY '123456';

SELECT VERSION();

USE web06_db;

--특정 버전, 위의 명령어가 안될 떼(grant)
CREATE USER 'web06'@'%' IDENTIFIED BY '123456';
CREATE USER 'web06'@'localhost' IDENTIFIED BY '123456';
GRANT ALL PRIVILEGES ON web06_db.* TO 'web06'@'%';
GRANT ALL PRIVILEGES ON web06_db.* TO 'web06'@'localhost';

DESC web06_user;

CREATE TABLE web06_user ( -- excel sheet 명은 web06_user 
	-- excel 의 column 명을 정의하는 곳
	user_no INT,
	user_name varchar(50), -- 50자의 가변 문자열
	user_pwd varchar(50), 
	insertDate DATETIME DEFAULT CURRENT_TIMESTAMP
	);
	
INSERT web06_user
(
	user_no,
	user_name,
	user_pwd
) VALUES (
	1,
	'doo',
	'123465'
);
	
USE web_project_01;

CREATE TABLE users_info(
user_no INT NOT NULL AUTO_INCREMENT,
user_id VARCHAR(50),
user_pwd VARCHAR(50),
user_name varchar(50),
PRIMARY KEY(user_no)
);
	
DESC users_info;

-- 당근앱용 데이터 베이스
CREATE DATABASE daanguen_mvc;
-- daanguen_mvc 데이터베이스 선택
USE daanguen_mvcmembers;

-- 회원 데이블 만들기 
CREATE TABLE members(
userNo INT AUTO_INCREMENT NOT NULL COMMENT '회원식별번호',
userName VARCHAR(100) NOT NULL COMMENT '회원이름',
userEmail VARCHAR(255) NOT NULL COMMENT '회원이메일',
userPwd VARCHAR(64) NOT NULL COMMENT '회원비밀번호',
registDate DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL COMMENT '가입일호',
CONSTRAINT member_pk PRIMARY KEY(userNo)
);

DESC members;

SELECT * FROM members;

SELECT userEmail from members where userEmail = 'doo@gmail.com';




