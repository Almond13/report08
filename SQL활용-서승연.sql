-- 1번 데이터베이스생성
DROP DATABASE IF EXISTS  member_db;
DROP USER IF EXISTS  member_db@localhost;
create user member_db@localhost identified WITH mysql_native_password  by 'member_db';
create database member_db;
grant all privileges on member_db.* to member_db@localhost with grant option;
USE member_db;


-- 2번 테이블생성
CREATE TABLE login_info (
    member_num INTEGER AUTO_INCREMENT PRIMARY KEY,
    member_id VARCHAR(18) NOT NULL UNIQUE,
    member_pass VARCHAR(18) NOT NULL
);


-- 3번 데이터생성
INSERT INTO login_info (member_id, member_pass) VALUES('ssy1234', 'sss1234!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy2345', 'sss2345!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy3456', 'sss3456!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy4567', 'sss4567!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy5678', 'sss5678!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy7890', 'sss7890!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy8901', 'sss8901!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy9012', 'sss9012!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy0123', 'sss0123!');
INSERT INTO login_info (member_id, member_pass) VALUES('ssy1123', 'sss1123!');

ALTER TABLE login_info CHANGE member_num 회원번호 INT AUTO_INCREMENT ;
ALTER TABLE login_info CHANGE member_id 회원아이디 VARCHAR(18) NOT NULL;
ALTER TABLE login_info CHANGE member_pass 패스워드 VARCHAR(18) NOT NULL;


-- 4번 데이터선택
SELECT 회원번호,회원아이디,패스워드 FROM login_info ORDER BY 회원번호 DESC;


-- 5번 테이블생성
CREATE TABLE notice (
    notice_num INTEGER AUTO_INCREMENT PRIMARY KEY NOT NULL,
    notice_tit VARCHAR(40) NOT NULL,
    notice_txt VARCHAR(100),
    notice_date DATE,
    user_name VARCHAR(20),
    user_num INTEGER NOT NULL
);


-- 6번 데이터삽입
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('안내드립니다', '로그인안내드립니다', date(sysdate()),'김유신',1);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('배송안내', '배송안내드립니다', STR_TO_DATE('2022-03-10','%Y-%m-%d'),'최영',0002);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('문의상세안내', '비밀번호변경방법', STR_TO_DATE('2022-03-09','%Y-%m-%d'),'홍길동',0003);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('문의답변지연안내', '문의가많습니다', STR_TO_DATE('2022-03-08','%Y-%m-%d'),'임꺽정',0004);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('전화문의관련', '전화는평일에만가능합니다', STR_TO_DATE('2022-03-08','%Y-%m-%d'),'박문수',0005);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('결제관련', '결제오류로임시중지안내드립니다', STR_TO_DATE('2022-03-08','%Y-%m-%d'),'대조영',0006);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('배송지연안내', '연휴로배송이지연됩니다', STR_TO_DATE('2022-03-08','%Y-%m-%d'),'강감찬',0007);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('품절상품구매안내', '입고일은추후안내하겟습니다', STR_TO_DATE('2022-03-05','%Y-%m-%d'),'장영실',0008);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('설연휴배송지연안내', '설연휴라물량이많습니다', STR_TO_DATE('2022-03-05','%Y-%m-%d'),'한명회',0009);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('붓품절상품관련', '붓요청이많아재입고중입니다', STR_TO_DATE('2022-03-04','%Y-%m-%d'),'한석봉',0010);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('상품품질안내', '상품품질이이상할시문의주세요', STR_TO_DATE('2022-03-01','%Y-%m-%d'),'김삿갓',0011);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('반품신청안내', '일주일이내로가능합니다', STR_TO_DATE('2022-02-27','%Y-%m-%d'),'김정호',0012);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('상품교환관련안내', '교환문의주세요', STR_TO_DATE('2022-02-23','%Y-%m-%d'),'최무선',0013);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('품질문제안내', '일주일이내로가능하고실착용한흔적이있으면불가능합니다', STR_TO_DATE('2022-02-23','%Y-%m-%d'),'김부식',0014);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('반품지연안내', '반품은순차적으로진행됩니다', STR_TO_DATE('2022-02-22','%Y-%m-%d'),'이율곡',0015);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('삼품문의안내', '상품문의안내게시판에문의주세요', STR_TO_DATE('2022-02-21','%Y-%m-%d'),'오죽헌',0016);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('가격변동안내', '원가상승으로가격이변동됩니다', STR_TO_DATE('2022-02-21','%Y-%m-%d'),'정약용',0017);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('세일안내', '이벤트페이지를참고하세요', STR_TO_DATE('2022-02-21','%Y-%m-%d'),'지석영',0018);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('색상교환안내', '일주일이내색상교환가능합니다', STR_TO_DATE('2022-02-20','%Y-%m-%d'),'손병희',0019);
INSERT INTO notice (notice_tit, notice_txt, notice_date, user_name, user_num) VALUES('사이즈교환안내', '일주일이내사이즈교환가능합니다', STR_TO_DATE('2022-02-20','%Y-%m-%d'),'이종무',0020);

ALTER TABLE notice CHANGE notice_num 일련번호 INTEGER AUTO_INCREMENT NOT NULL;
ALTER TABLE notice CHANGE notice_tit 제목 VARCHAR(40) NOT NULL;
ALTER TABLE notice CHANGE notice_txt 내용 VARCHAR(100);
ALTER TABLE notice CHANGE notice_date 작성일 DATE;
ALTER TABLE notice CHANGE user_name 작성자 VARCHAR(20);
ALTER TABLE notice CHANGE user_num 회원번호 INTEGER NOT NULL;


-- 7번 데이터선택
SELECT * FROM notice ORDER BY 작성일 ASC, 일련번호 DESC;


-- 8번함수,조건사용
SELECT '김' AS 성, count(작성자) AS 인원수
FROM notice
WHERE 작성자 like '김%';


-- 9번 데이터삭제
DELETE FROM notice WHERE 제목 = null;


-- 10번 데이터변경
UPDATE login_info SET 패스워드 = 'qwr1234' WHERE 회원번호=5;


-- 11번 인덱스설정
CREATE INDEX idx_notice ON notice(제목,내용);


-- 12번 인덱스를 이용한 검색효율성
SELECT * FROM login_info WHERE login_info.회원아이디 LIKE '%12%';
-- Query cost:1.25

SELECT * FROM notice WHERE notice.제목 LIKE '%상품%' AND notice.내용 LIKE '%문의%';
-- Query cost :2.25


-- 13번 뷰의 생성
CREATE VIEW my_view
AS SELECT login_info.회원아이디,notice.제목,notice.내용,notice.작성일,notice.작성자
FROM login_info JOIN notice ON login_info.회원번호=notice.회원번호
GROUP BY notice.회원번호;


-- 14번 뷰의 생성
CREATE VIEW my_view2(제목,작성일,작성자,회원아이디)
AS SELECT notice.제목,notice.작성일,notice.작성자,my_view.회원아이디
FROM notice JOIN my_view ON notice.작성자=my_view.작성자
GROUP BY notice.작성자;


-- 15번 모두삭제
DROP DATABASE member_db;
DROP USER member_db@localhost;



