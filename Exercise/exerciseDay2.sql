mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employee           |
| gokul              |
| information_schema |
| mysql              |
| performance_schema |
| players            |
| sys                |
+--------------------+
7 rows in set (0.10 sec)

mysql> use players;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_players |
+-------------------+
| alt               |
| childalt          |
| cricketer         |
| deal              |
| parents           |
| username          |
+-------------------+
6 rows in set (0.03 sec)

mysql> create table father(
    -> id int ,
    -> reg_no int unique,
    -> name varchar(20),
    -> class varchar(10),
    -> dep varchar(25)
    -> );
Query OK, 0 rows affected (0.38 sec)

mysql> desc father;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| reg_no | int         | YES  | UNI | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| class  | varchar(10) | YES  |     | NULL    |       |
| dep    | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> insert into father values(
    -> 1,20260761,"aathi","A","bsc_cs"
    -> );
Query OK, 1 row affected (0.03 sec)

mysql> insert into father values(
    -> 2,20260762,"aarthi","A","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into father values(
    -> 3,20260763,"barathi","A","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into father values(
    -> 4,20260764,"dass","A","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into father values(
    -> 5,20260765,"gokul","A","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> select * from father;
+------+----------+---------+-------+--------+
| id   | reg_no   | name    | class | dep    |
+------+----------+---------+-------+--------+
|    1 | 20260761 | aathi   | A     | bsc_cs |
|    2 | 20260762 | aarthi  | A     | bsc_cs |
|    3 | 20260763 | barathi | A     | bsc_cs |
|    4 | 20260764 | dass    | A     | bsc_cs |
|    5 | 20260765 | gokul   | A     | bsc_cs |
+------+----------+---------+-------+--------+
5 rows in set (0.00 sec)

mysql> create tables son(
    -> id int,
    -> reg_no int,
    -> name varchar(20),
    -> class varchar(10),
    -> dep varchar(25)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'tables son(
id int,
reg_no int,
name varchar(20),
class varchar(10),
dep varchar' at line 1
mysql> create table son(
    -> id int,
    -> reg_no int,
    -> name varchar(20),
    -> class varchar(10),
    -> dep varchar(25)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> desc son;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| reg_no | int         | YES  |     | NULL    |       |
| name   | varchar(20) | YES  |     | NULL    |       |
| class  | varchar(10) | YES  |     | NULL    |       |
| dep    | varchar(25) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into son values(
    -> 1,20260766,"karthi","B","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into son values(
    -> 2,20260767,"logan","B","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into son values(
    -> 6,20260768,"nithi","B","bsc_cs"
    -> );
Query OK, 1 row affected (0.01 sec)

mysql> insert into son values(
    -> 7,20260769,"imman","B","bsc_cs"
    -> );
Query OK, 1 row affected (0.06 sec)

mysql> insert into son values(
    -> 7,20260769,"jousik","B","bsc_cs"
    -> insert into son values(^C
mysql> insert into son values(
    -> 8,20260769,"jousik","B","bsc_cs"
    -> );
Query OK, 1 row affected (0.03 sec)

mysql> select * from son;
+------+----------+--------+-------+--------+
| id   | reg_no   | name   | class | dep    |
+------+----------+--------+-------+--------+
|    1 | 20260766 | karthi | B     | bsc_cs |
|    2 | 20260767 | logan  | B     | bsc_cs |
|    6 | 20260768 | nithi  | B     | bsc_cs |
|    7 | 20260769 | imman  | B     | bsc_cs |
|    8 | 20260769 | jousik | B     | bsc_cs |
+------+----------+--------+-------+--------+
5 rows in set (0.03 sec)

mysql> select son.id,son.reg_no,son.name,father.id,father.reg_no,father.
name from son
    -> join father
    -> where son.id=father.id;
+------+----------+--------+------+----------+--------+
| id   | reg_no   | name   | id   | reg_no   | name   |
+------+----------+--------+------+----------+--------+
|    1 | 20260766 | karthi |    1 | 20260761 | aathi  |
|    2 | 20260767 | logan  |    2 | 20260762 | aarthi |
+------+----------+--------+------+----------+--------+
2 rows in set (0.11 sec)

mysql> select son.id,son.reg_no,son.name,father.id,father.reg_no,father.name from son
    -> left join father
    -> on son.id=father.id;
+------+----------+--------+------+----------+--------+
| id   | reg_no   | name   | id   | reg_no   | name   |
+------+----------+--------+------+----------+--------+
|    1 | 20260766 | karthi |    1 | 20260761 | aathi  |
|    2 | 20260767 | logan  |    2 | 20260762 | aarthi |
|    6 | 20260768 | nithi  | NULL |     NULL | NULL   |
|    7 | 20260769 | imman  | NULL |     NULL | NULL   |
|    8 | 20260769 | jousik | NULL |     NULL | NULL   |
+------+----------+--------+------+----------+--------+
5 rows in set (0.05 sec)

mysql> select son.id,son.reg_no,son.name,father.id,father.reg_no,father.name from son
    -> rigth join father
    -> on son.id=father.id;
ERROR 1054 (42S22): Unknown column 'son.id' in 'field list'
mysql> select son.id,son.reg_no,son.name,father.id,father.reg_no,father.name from son
    -> right join father
    -> on son.id=father.id;
+------+----------+--------+------+----------+---------+
| id   | reg_no   | name   | id   | reg_no   | name    |
+------+----------+--------+------+----------+---------+
|    1 | 20260766 | karthi |    1 | 20260761 | aathi   |
|    2 | 20260767 | logan  |    2 | 20260762 | aarthi  |
| NULL |     NULL | NULL   |    3 | 20260763 | barathi |
| NULL |     NULL | NULL   |    4 | 20260764 | dass    |
| NULL |     NULL | NULL   |    5 | 20260765 | gokul   |
+------+----------+--------+------+----------+---------+
5 rows in set (0.02 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| employee           |
| gokul              |
| information_schema |
| mysql              |
| performance_schema |
| players            |
| sys                |
+--------------------+
7 rows in set (0.13 sec)

mysql> use employee;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_employee |
+--------------------+
| dept               |
| emp                |
+--------------------+
2 rows in set (0.02 sec)

mysql> select * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.06 sec)

mysql> select deptno,count(*) as total from emp
    -> group by deptno
    -> having count(deptno)=3;
+--------+-------+
| deptno | total |
+--------+-------+
|     10 |     3 |
+--------+-------+
1 row in set (0.01 sec)

mysql> select deptno,count(*) as total from emp
    -> group by deptno
    -> having count(deptno)>3;
+--------+-------+
| deptno | total |
+--------+-------+
|     20 |     5 |
|     30 |     6 |
+--------+-------+
2 rows in set (0.00 sec)

mysql> select deptno,count(*) as total from emp
    -> group by deptno;
+--------+-------+
| deptno | total |
+--------+-------+
|     20 |     5 |
|     30 |     6 |
|     10 |     3 |
+--------+-------+
3 rows in set (0.00 sec)

mysql> select distrct emp;
ERROR 1054 (42S22): Unknown column 'distrct' in 'field list'
mysql> select distrct emp
    ->
    -> ;
ERROR 1054 (42S22): Unknown column 'distrct' in 'field list'
mysql> select distrct deptno
    -> ;
ERROR 1054 (42S22): Unknown column 'distrct' in 'field list'
mysql> select distict emp
    -> ;
ERROR 1054 (42S22): Unknown column 'distict' in 'field list'
mysql> select distinct from emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from emp' at line 1
mysql> select distinct * from emp;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.04 sec)

mysql> select distinct comm from emp;
+---------+
| comm    |
+---------+
|    NULL |
|  300.00 |
|  500.00 |
| 1400.00 |
|    0.00 |
+---------+
5 rows in set (0.00 sec)

mysql> select distinct sal from emp;
+---------+
| sal     |
+---------+
|  800.00 |
| 1600.00 |
| 1250.00 |
| 2975.00 |
| 2850.00 |
| 2450.00 |
| 3000.00 |
| 5000.00 |
| 1500.00 |
| 1100.00 |
|  950.00 |
| 1300.00 |
+---------+
12 rows in set (0.00 sec)
