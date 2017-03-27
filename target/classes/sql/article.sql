--seq,pat_id,title,content,regdate(2017-02-15),readCount--
--CREATE SEQUENCE
CREATE SEQUENCE art_seq
START WITH 5
INCREMENT BY 1
NOCACHE
NOCYCLE;

--CREATE TABLE Article
CREATE TABLE Article(
	art_seq DECIMAL PRIMARY KEY,
	pat_pat_id VARCHAR2(10),
	title VARCHAR2(50),
	content VARCHAR2(100),
	regdate VARCHAR2(10),
	readCount DECIMAL,
	FOREIGN KEY(pat_pat_id) REFERENCES Patient(pat_pat_id)
)
DROP TABLE Article;
SELECT * FROM MEMBER;
--INSERT

INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pahn',   'nkim',   'dlee',   '1', '안상건', 'M', '232345', '서울', '010-555-7845', 'ask@ab.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pkim',   'nyoon',  'dahn',   '1', '김성룡', 'M', '543545', '서울', '010-333-7812', 'ksr@bb.com', '자영업');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee',   'nshin',  'dkim',   '1', '이종진', 'M', '433424', '부산', '019-888-4859', 'ljj@ab.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi',  'nyou',   'dlee2',  '1', '최광석', 'M', '677675', '당진', '010-222-4847', 'cks@cc.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pjeong', 'nla',    'dkim2',  '1', '정한경', 'M', '744533', '강릉', '010-777-9630', 'jhk@ab.com', '교수');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pyou',   'nkim2',  'dcha',   '1', '유원현', 'M', '765546', '대구', '016-777-0214', 'ywh@cc.com', '자영업');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('pchoi2', 'nlee',   'djeon',  '1', '최재정', 'M', '454543', '부산', '010-555-4187', 'cjj@bb.com', '회사원');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('plee2',  'nkim3',  'dhong',  '1', '이진희', 'F', '119768', '서울', '010-888-3675', 'ljh@ab.com', '교수');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('poh',    'npark',  'dyou',   '1', '오나미', 'F', '234234', '속초', '010-999-6541', 'onm@cc.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('psong',  'nlee2',  'dkim3',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('song',  'nlee2',  'dcha',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('kim',  'nlee2',  'dkim3',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('soo',  'nlee2',  'dyou',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('lee',  'nkim3',  'dhong',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Ooh',  'nkim3',  'djeon',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');
INSERT INTO Patient(pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job) VALUES ('Doe',  'nkim3',  'dkim2',  '1', '송성묵', 'M', '987643', '서울', '010-222-5874', 'ssm@bb.com', '학생');

INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pahn', '안녕', '안녕하세요? 홍길동 입니다.', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pkim',  'aaa', '한빛병원 후기입니다.', '2017-02-15',100);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pkim',  '명량', '23전23승', '2017-02-15',50);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'plee',  '가야', '한빛 병원추천합니다.', '2017-02-15',20);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pyou',  '운영자', '운영자입니다.', '2017-02-15',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pyou',  '최고!', '한빛병원 정형외과', '2017-02-15',1);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL,'pyou',  'bbb', '한빛병원 후기입니다.', '2017-02-15',100);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'kim',  '병원', '최고의병원', '2017-02-15',50);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'kim',  '공지입니다.', '내일부터 설 연휴간 병원 휴무입니다.', '2017-02-15',120);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'kim', '병원추천', '병원 추천합니다.', '2017-02-15',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'kim', '병원', '17대1', '2017-02-15',14);

INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Doe',  '그레이트월', '2017.02.16 대개봉', '2017-02-16',1);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Doe',  '이상 영락', '이상 영락과 가치를 칼이다', '2017-02-16',100);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Doe', '품으며 ', '풀이 두손을 되려니와,', '2017-02-16',50);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Doe',  '만물', '가슴에 힘차게 충분히 있으랴? .', '2017-02-16',20);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Doe',  '열매', '그들은 열매를 길지 기쁘다.', '2017-02-16',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'song',  '철환', '하였는가 끓는다', '2017-02-16',1);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL,'song',  '관현악', '그들에게 그러므로 구하지 설산에서 방지하는 사막이다', '2017-02-16',100);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'song',  '광야', '따뜻한 우리 광야에서 못할 눈에 때문이다.', '2017-02-16',50);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Ooh',  '열락.', '열락의 이 평화스러운 보배를 것이다. ', '2017-02-16',120);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Ooh',  '무한한 인생', '끝까지 무한한 그들의 인생을 그들은 것이다. ', '2017-02-16',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'Ooh','영락', '돋고, 우리 그들의 얼마나 영락과 목숨이 따뜻한 보라. ', '2017-02-16',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pchoi2',  '심장을 위하여', '위하여 굳세게 과실이 없으면 심장의 많이 위하여서, ', '2017-02-16',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pchoi2',  '청춘의봄바람', '청춘의 봄바람이다.', '2017-02-16',14);
INSERT INTO Article (art_seq, pat_id,  title, content, regdate, readCount)
VALUES(art_seq.NEXTVAL, 'pchoi2',  '역사를 희망', '희망의 낙원을 듣기만 광야에서 넣는 황금시대의 황금시대다. ', '2017-02-16',14);
--READ ALL
SELECT * FROM Article;
--READ SOME
SELECT * FROM Article WHERE pat_id LIKE '%hong%';
--READ ONE
SELECT * FROM Article WHERE art_seq=1;
--UPDATE
UPDATE Article SET content = '자유게시판' WHERE pat_id='hong';
UPDATE Article SET title = 'aaa',content = 'aaa' WHERE pat_id='hong'
--DELETE
DELETE FROM Article WHERE hong = 'hong';
DELETE FROM Article WHERE pat_id = 'hong' and art_seq='45'

SELECT t2.*
	   FROM (SELECT ROWNUM seq,t.*
       FROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2
       WHERE t2.seq BETWEEN 1 AND 5
       
       SELECT t2.* FROM (SELECT ROWNUM seq,t.* FROM (SELECT * FROM ARTICLE ORDER BY art_seq DESC) t) t2 WHERE t2.seq BETWEEN 21 AND 25 