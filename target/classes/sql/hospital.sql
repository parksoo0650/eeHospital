DROP TABLE Chart;
DROP TABLE Treatment;
DROP TABLE Patient;
DROP TABLE Nurse;
DROP TABLE Doctor;
SELECT pat_id, doc_id, nur_id,pat_pass,pat_name, pat_gen,
	    pat_jumin,pat_phone, pat_email, pat_addr ,pat_job FROM Patient;
SELECT * FROM Chart;
SELECT pat_id,doc_id,nur_id,pat_pass,pat_name,pat_gen,pat_jumin,pat_phone,pat_email,pat_addr,pat_job FROM Patient where pat_id='soo'
-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
CREATE TABLE Doctor(
    doc_id VARCHAR2(20),
    doc_pass VARCHAR2(20) NOT NULL, 
    major_treat VARCHAR2(20) NOT NULL,
    doc_name VARCHAR2(20) NOT NULL,
    doc_gen VARCHAR2(2) NOT NULL,
    doc_phone VARCHAR2(20),
    doc_email VARCHAR2(20) NOT NULL,
    doc_position VARCHAR2(20) NOT NULL,
    PRIMARY KEY(doc_id)
);

-- nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
CREATE TABLE Nurse(
    nur_id VARCHAR2(20),
    nurPass VARCHAR2(20) NOT NULL,
    major_job VARCHAR2(20) NOT NULL,
    nur_name VARCHAR2(20) NOT NULL,
    nur_gen VARCHAR2(20) NOT NULL,
    nur_phone VARCHAR2(20),
    nur_email VARCHAR2(20),
    nur_position VARCHAR2(20) NOT NULL,
    PRIMARY KEY(nur_id)
);

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
CREATE TABLE Patient(
    pat_id VARCHAR2(20),
    nur_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    pat_pass VARCHAR2(20) NOT NULL,
    pat_name VARCHAR2(20) NOT NULL,
    pat_gen VARCHAR2(2) NOT NULL,
    pat_jumin VARCHAR2(20) NOT NULL,
    pat_addr VARCHAR2(20) NOT NULL,
    pat_phone VARCHAR2(20),
    pat_email VARCHAR2(20),
    pat_job VARCHAR2(20) NOT NULL,
    PRIMARY KEY(pat_id),
    FOREIGN KEY(nur_id) REFERENCES Nurse(nur_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id)
);

-- treat_id, pat_id, doc_id, treat_contents, treat_date
CREATE TABLE Treatment(
    treat_id VARCHAR2(20),
    pat_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    treat_contents VARCHAR2(100) NOT NULL,
    treat_date DATE NOT NULL,
    PRIMARY KEY(treat_id),
    FOREIGN KEY(pat_id) REFERENCES Patient(pat_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id)
);

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
CREATE TABLE Chart(
    chart_id VARCHAR2(20),
    treat_id VARCHAR2(20) NOT NULL,
    doc_id VARCHAR2(20) NOT NULL,
    pat_id VARCHAR2(20) NOT NULL,
    nur_id VARCHAR2(20) NOT NULL,
    chart_contents VARCHAR2(100) NOT NULL,
    PRIMARY KEY(chartId),
    FOREIGN KEY(treat_id) REFERENCES Treatment(treat_id),
    FOREIGN KEY(doc_id) REFERENCES Doctor(doc_id),
    FOREIGN KEY(pat_id) REFERENCES Patient(pat_id),
    FOREIGN KEY(nur_id) REFERENCES Nurse(nur_id)
);

-- dummy 입력 부분-- doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position
-- SELECT * FROM Doctor;
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee', '1', '소아과', '이태정', 'M', '010-333-1340', 'ltj@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dahn', '1', '내과', '안성기', 'M', '011-222-0987', 'ask@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim', '1', '외과', '김민종', 'M', '010-333-8743', 'kmj@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dlee2', '1', '피부과', '이태서', 'M', '019-777-3764', 'lts@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim2', '1', '소아과', '김연아', 'F', '010-555-3746', 'kya@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dcha', '1', '내과', '차태현', 'M', '011-222-7643', 'cth@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('djeon', '1', '소아과', '전지현', 'F', '010-999-1265', 'jjh@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dhong', '1', '피부과', '홍길동', 'M', '016-333-7263', 'hgd@hanbh.com', '전문의');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dyou', '1', '방사선과', '유재석', 'M', '010-222-1263', 'yjs@hanbh.com', '과장');
INSERT INTO Doctor(doc_id, doc_pass, major_treat, doc_name, doc_gen, doc_phone, doc_email, doc_position) VALUES ('dkim3', '1', '외과', '김병만', 'M', '010-555-3542', 'kbm@hanbh.com', '전문의');

-- nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position
-- SELECT * FROM  Nurse;
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim',  '1', '소아과', '김은영', 'F', '010-555-8751', 'key@hanbh.com', '수간호사');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyoon', '1', '내과', '윤성애', 'F', '016-333-8745', 'ysa@hanbh.com', '수간호사');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nshin', '1', '피부과', '신지원', 'M', '010-666-7646', 'sjw@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nyou',  '1', '방사선과', '유정화', 'F', '010-333-4588', 'yjh@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nla',   '1', '내과', '라하나', 'F', '010-222-1340', 'nhn@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim2', '1', '소아과', '김화경', 'F', '019-888-4116', 'khk@hanbh.com', '주임');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee',  '1', '소아과', '이선용', 'M', '010-777-1234', 'lsy@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nkim3', '1', '외과', '김현', 'M', '010-999-8520', 'kh@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('npark', '1', '피부과', '박성완', 'M', '010-777-4996', 'psw@hanbh.com', '간호사');
INSERT INTO Nurse(nur_id, nurPass, major_job, nur_name, nur_gen, nur_phone, nur_email, nur_position) VALUES ('nlee2', '1', '외과', '이서연', 'F', '010-222-3214', 'lsy2@hanbh.com', '간호사');

-- pat_id, nur_id, doc_id, pat_pass, pat_name, pat_gen, pat_jumin, pat_addr, pat_phone, pat_email, pat_job
-- SELECT * FROM Patient;
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
-- treat_id, pat_id, doc_id, treat_contents, treat_date
-- SELECT * FROM Treatment;
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130516023', 'pahn',  'dlee',  '감기, 몸살', '2013-05-16');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('130628100', 'pkim',  'dahn',  '피부 트러블 치료', '2013-06-28');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131205056', 'plee',  'dkim',  '목 디스크로 MRI 촬영', '2013-12-05');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131218024', 'pchoi', 'dlee2', '중이염', '2013-12-18');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('131224012', 'pjeong','dkim2', '장염', '2013-12-24');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140103001', 'pyou',  'dcha',  '여드름 치료', '2014-01-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140109026', 'pchoi2','djeon', '위염', '2014-01-09');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140226102', 'plee2', 'dhong', '화상치료', '2014-02-26');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140303003', 'poh',   'dyou',  '교통사고 외상치료', '2014-03-03');
INSERT INTO Treatment(treat_id, pat_id, doc_id, treat_contents, treat_date) VALUES ('140308087', 'psong', 'dkim3', '장염', '2014-03-08');

-- chart_id, treat_id, doc_id, nur_id, pat_id, chartContent
-- SELECT * FROM Chart;
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_130516023', '130516023', 'dlee', 'nkim',  'pahn',  '감기 주사 및 약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_130628100', '130628100', 'dahn',  'nyoon',  'pkim',   '피부 감염 방지 주사' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('r_131205056', '131205056', 'dkim',  'nshin',  'plee',   '주사 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_131218024', '131218024', 'dlee2', 'nyou',   'pchoi',  '귓속청소 및 약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_131224012', '131224012', 'dkim2', 'nla',    'pjeong', '장염 입원치료' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('d_140103001', '140103001', 'dcha',  'nkim2',  'pyou',   '여드림 치료약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('i_140109026', '140109026', 'djeon', 'nlee',   'pchoi2', '위내시경' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140226102', '140226102', 'dhong', 'nkim3',  'plee2',  '화상 크림약 처방' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('s_140303003', '140303003', 'dyou',  'npark',  'poh',    '입원치료' );
INSERT INTO Chart(chart_id, treat_id, doc_id, nur_id, pat_id, chart_contents) VALUES ('p_140308087', '140308087', 'dkim3', 'nlee2',  'psong',  '장염 입원치료' );
