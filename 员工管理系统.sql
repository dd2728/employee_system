-- 建表语句
CREATE TABLE eUSER (
  id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(255) NOT NULL,
  PASSWORD VARCHAR(255) NOT NULL,
  user_type VARCHAR(255) NOT NULL
);
CREATE TABLE department (
  id INT PRIMARY KEY AUTO_INCREMENT,
  department_name VARCHAR(255) NOT NULL
);
CREATE TABLE ePOSITION (
  id INT PRIMARY KEY AUTO_INCREMENT,
  position_name VARCHAR(255) NOT NULL,
  department_id INT,
  FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE employee (
  id INT PRIMARY KEY AUTO_INCREMENT,
  NAME VARCHAR(255) NOT NULL,
  id_number VARCHAR(255) NOT NULL,
  phone_number VARCHAR(255) NOT NULL,
  sex VARCHAR(255) NOT NULL,
  eposition_id INT,
  department_id INT,
  FOREIGN KEY (eposition_id) REFERENCES `eposition`(id),
  FOREIGN KEY (department_id) REFERENCES department(id)
);
CREATE TABLE notice (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  content TEXT
);

-- 查看表
SELECT * FROM eUSER;
SELECT * FROM department;
SELECT * FROM ePOSITION;
SELECT * FROM employee;
SELECT * FROM notice;

-- !!!!!!删除表
DROP TABLE eUSER;
DROP TABLE department;
DROP TABLE ePOSITION;
DROP TABLE employee;
DROP TABLE notice;

-- 插入数据
INSERT INTO eUSER (username, PASSWORD, user_type)
VALUES ('张三', '123456', '管理员'),
       ('李四', '123456', '管理员'),
       ('王五', '123456', '管理员'),
       ('小明', '123456', '员工'),
       ('小华', '123456', '员工'),
       ('小红', '123456', '员工'),
       ('小兰', '123456', '员工');
INSERT INTO department (department_name)
VALUES ('人力'),('财务'),('技术');
INSERT INTO ePOSITION (position_name,department_id)
VALUES ('人力总监','1'),('人力专员','1'),('人力助理','1'),
       ('财务总监','2'),('会计','2'),('出纳','2'),
       ('技术总监','3'),('工程师','3'),('程序员','3');
INSERT INTO employee (NAME,id_number,phone_number,sex,eposition_id,department_id)
VALUES ('张三', '321623197606083478', '18816781987','女','1','1'),
       ('李四', '321623197606083478', '18816781987','女','2','1'),
       ('王五', '321623197606083478', '18816781987','男','3','1'),
       ('小明', '321623197606083478', '18816781987','男','1','2'),
       ('小华', '321623197606083478', '18816781987','男','2','3'),
       ('小红', '321623197606083478', '18816781987','男','3','2'),
       ('小兰', '321623197606083478', '18816781987','女','2','3');
INSERT INTO notice (title,content)
VALUES ('放假通知','2023年6月22日至6月24日为端午假期，祝大家端午节快乐！');


SELECT COUNT(*) FROM euser WHERE username ='zhangsan'
SELECT * FROM euser WHERE username LIKE '%小%'
