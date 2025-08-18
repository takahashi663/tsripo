-- 部署テーブルの作成
CREATE TABLE department  (
  dept_id NUMBER(1) PRIMARY KEY,
  dept_name VARCHAR2(30 CHAR) NOT NULL
);
-- 社員テーブルの作成
CREATE TABLE employee (
  emp_id NUMBER(4) PRIMARY KEY,
  emp_name VARCHAR2(30 CHAR) NOT NULL,
  gender NUMBER(1) DEFAULT 0 NOT NULL,
  birthday DATE NOT NULL,
  dept_id NUMBER(1) NOT NULL REFERENCES department(dept_id)
);


-- シーケンスの作成
CREATE SEQUENCE seq_emp NOCACHE;


-- 部署テーブルへのレコード登録
INSERT INTO department VALUES (1,'営業部');
INSERT INTO department VALUES (2,'経理部');
INSERT INTO department VALUES (3,'総務部');


-- 社員テーブルへのレコード登録
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '鈴木太郎', 1, '1986/10/12', 1);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '田中二郎', 1, '1979/07/02', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '渡辺花子', 2, '1988/04/23', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '三浦薫', 0, '2004/11/09', 2);
INSERT INTO employee VALUES (seq_emp.NEXTVAL, '花山りん', 9, '2010/12/30', 1);


COMMIT;
