Microsoft Windows [Version 10.0.22631.3593]
(c) Microsoft Corporation. All rights reserved.

C:\Users\ADMIN>my -u root -p
'my' is not recognized as an internal or external command,
operable program or batch file.

C:\Users\ADMIN>mysql -u root -p
Enter password: ********
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 16
Server version: 8.0.37 MySQL Community Server - GPL

Copyright (c) 2000, 2024, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
| triggerexample     |
+--------------------+
8 rows in set (0.04 sec)

mysql> use employee;
Database changed
mysql> show tables;
+--------------------+
| Tables_in_employee |
+--------------------+
| dept               |
| dummy              |
| dummy2             |
| emp                |
| vw_join            |
+--------------------+
5 rows in set (0.02 sec)

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
14 rows in set (0.01 sec)

mysql> select * from emp
    -> where sal=
    -> (select min(sal) from emp);
+-------+-------+-------+------+------------+--------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal    | comm | deptno |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.09 sec)

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
14 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc
    -> limit 5;
+-------+-------+-----------+------+------------+---------+------+--------+
| empno | ename | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+-----------+------+------------+---------+------+--------+
|  7839 | KING  | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7788 | SCOTT | ANALYST   | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
|  7902 | FORD  | ANALYST   | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7566 | JONES | MANAGER   | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER   | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
+-------+-------+-----------+------+------------+---------+------+--------+
5 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc
    -> offset 1 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'offset 1 2' at line 3
mysql> select * from emp
    -> order by sal desc
    -> offset 1
    -> limit 2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'offset 1
limit 2' at line 3
mysql> select * from emp
    -> order by sal desc
    -> limit 2
    -> offset 1;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
2 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc
    -> limit 3
    -> offset 2;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7902 | FORD  | ANALYST | 7566 | 1981-12-03 | 3000.00 | NULL |     20 |
|  7566 | JONES | MANAGER | 7839 | 1981-04-02 | 2975.00 | NULL |     20 |
|  7698 | BLAKE | MANAGER | 7839 | 1981-05-01 | 2850.00 | NULL |     30 |
+-------+-------+---------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc
    -> limit 1
    -> offset 2;
+-------+-------+---------+------+------------+---------+------+--------+
| empno | ename | job     | mgr  | hiredate   | sal     | comm | deptno |
+-------+-------+---------+------+------------+---------+------+--------+
|  7788 | SCOTT | ANALYST | 7566 | 1982-12-09 | 3000.00 | NULL |     20 |
+-------+-------+---------+------+------------+---------+------+--------+
1 row in set (0.00 sec)

mysql> select * from emp
    -> order by sal desc;
+-------+--------+-----------+------+------------+---------+---------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+-----------+------+------------+---------+---------+--------+
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 |    NULL |     10 |
|  7788 | SCOTT  | ANALYST   | 7566 | 1982-12-09 | 3000.00 |    NULL |     20 |
|  7902 | FORD   | ANALYST   | 7566 | 1981-12-03 | 3000.00 |    NULL |     20 |
|  7566 | JONES  | MANAGER   | 7839 | 1981-04-02 | 2975.00 |    NULL |     20 |
|  7698 | BLAKE  | MANAGER   | 7839 | 1981-05-01 | 2850.00 |    NULL |     30 |
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 |    NULL |     10 |
|  7499 | ALLEN  | SALESMAN  | 7698 | 1981-02-20 | 1600.00 |  300.00 |     30 |
|  7844 | TURNER | SALESMAN  | 7698 | 1981-09-08 | 1500.00 |    0.00 |     30 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 |    NULL |     10 |
|  7521 | WARD   | SALESMAN  | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN  | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
|  7876 | ADAMS  | CLERK     | 7788 | 1983-01-12 | 1100.00 |    NULL |     20 |
|  7900 | JAMES  | CLERK     | 7698 | 1981-12-03 |  950.00 |    NULL |     30 |
|  7369 | SMITH  | CLERK     | 7902 | 1980-12-17 |  800.00 |    NULL |     20 |
+-------+--------+-----------+------+------------+---------+---------+--------+
14 rows in set (0.00 sec)

mysql> select lower(job) from emp;
+------------+
| lower(job) |
+------------+
| clerk      |
| salesman   |
| salesman   |
| manager    |
| salesman   |
| manager    |
| manager    |
| analyst    |
| president  |
| salesman   |
| clerk      |
| clerk      |
| analyst    |
| clerk      |
+------------+
14 rows in set (0.01 sec)

mysql> select lower(job) as job from emp;
+-----------+
| job       |
+-----------+
| clerk     |
| salesman  |
| salesman  |
| manager   |
| salesman  |
| manager   |
| manager   |
| analyst   |
| president |
| salesman  |
| clerk     |
| clerk     |
| analyst   |
| clerk     |
+-----------+
14 rows in set (0.00 sec)

mysql> select lower(job) as job from emp
    -> order by job;
+-----------+
| job       |
+-----------+
| analyst   |
| analyst   |
| clerk     |
| clerk     |
| clerk     |
| clerk     |
| manager   |
| manager   |
| manager   |
| president |
| salesman  |
| salesman  |
| salesman  |
| salesman  |
+-----------+
14 rows in set (0.00 sec)

mysql> select lower(job) as job from emp
    -> order by job;
+-----------+
| job       |
+-----------+
| analyst   |
| analyst   |
| clerk     |
| clerk     |
| clerk     |
| clerk     |
| manager   |
| manager   |
| manager   |
| president |
| salesman  |
| salesman  |
| salesman  |
| salesman  |
+-----------+
14 rows in set (0.00 sec)

mysql> select distinct lower(job) as job from emp
    -> order by job;
+-----------+
| job       |
+-----------+
| analyst   |
| clerk     |
| manager   |
| president |
| salesman  |
+-----------+
5 rows in set (0.02 sec)

mysql> select substring(job,1,2) from emp;
+--------------------+
| substring(job,1,2) |
+--------------------+
| CL                 |
| SA                 |
| SA                 |
| MA                 |
| SA                 |
| MA                 |
| MA                 |
| AN                 |
| PR                 |
| SA                 |
| CL                 |
| CL                 |
| AN                 |
| CL                 |
+--------------------+
14 rows in set (0.01 sec)

mysql> select empname from emp;
ERROR 1054 (42S22): Unknown column 'empname' in 'field list'
mysql> select ename from emp;
+--------+
| ename  |
+--------+
| SMITH  |
| ALLEN  |
| WARD   |
| JONES  |
| MARTIN |
| BLAKE  |
| CLARK  |
| SCOTT  |
| KING   |
| TURNER |
| ADAMS  |
| JAMES  |
| FORD   |
| MILLER |
+--------+
14 rows in set (0.00 sec)

mysql> select ename from emp
    -> where like '%a';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like '%a'' at line 2
mysql> select ename from emp
    -> where like ename='%a';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'like ename='%a'' at line 2
mysql> select ename from emp
    -> where ename like '%a';
Empty set (0.01 sec)

mysql> select ename from emp
    -> where ename like 'a%';
+-------+
| ename |
+-------+
| ALLEN |
| ADAMS |
+-------+
2 rows in set (0.00 sec)

mysql> select * emp;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'emp' at line 1
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
14 rows in set (0.03 sec)

mysql> select job from emp
    -> group by job;
+-----------+
| job       |
+-----------+
| CLERK     |
| SALESMAN  |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
+-----------+
5 rows in set (0.01 sec)

mysql> select job,count(job) from emp
    -> group by job;
+-----------+------------+
| job       | count(job) |
+-----------+------------+
| CLERK     |          4 |
| SALESMAN  |          4 |
| MANAGER   |          3 |
| ANALYST   |          2 |
| PRESIDENT |          1 |
+-----------+------------+
5 rows in set (0.01 sec)

mysql> select job from emp
    -> ;
+-----------+
| job       |
+-----------+
| CLERK     |
| SALESMAN  |
| SALESMAN  |
| MANAGER   |
| SALESMAN  |
| MANAGER   |
| MANAGER   |
| ANALYST   |
| PRESIDENT |
| SALESMAN  |
| CLERK     |
| CLERK     |
| ANALYST   |
| CLERK     |
+-----------+
14 rows in set (0.00 sec)

mysql> select job,count(job) from emp
    -> group by job
    -> having count(job)<1;
Empty set (0.01 sec)

mysql> select job,count(job) from emp
    -> group by job
    -> having count(job)>1;
+----------+------------+
| job      | count(job) |
+----------+------------+
| CLERK    |          4 |
| SALESMAN |          4 |
| MANAGER  |          3 |
| ANALYST  |          2 |
+----------+------------+
4 rows in set (0.00 sec)

mysql> select job,count(job) from emp
    -> group by job
    -> having count(job)>=1;
+-----------+------------+
| job       | count(job) |
+-----------+------------+
| CLERK     |          4 |
| SALESMAN  |          4 |
| MANAGER   |          3 |
| ANALYST   |          2 |
| PRESIDENT |          1 |
+-----------+------------+
5 rows in set (0.08 sec)

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
| triggerexample     |
+--------------------+
8 rows in set (0.13 sec)

mysql> use players;
Database changed
mysql> show talbes;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'talbes' at line 1
mysql> show tables;
+-------------------+
| Tables_in_players |
+-------------------+
| alt               |
| childalt          |
| cricketer         |
| deal              |
| father            |
| parents           |
| son               |
| username          |
+-------------------+
8 rows in set (0.03 sec)

mysql> desc alt;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| last  | varchar(10) | YES  |     | NULL    |       |
| regno | bigint      | YES  | UNI | NULL    |       |
| class | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.25 sec)

mysql> desc childalt
    -> ;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| last  | varchar(10) | YES  |     | NULL    |       |
| regno | bigint      | YES  | UNI | NULL    |       |
| class | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.03 sec)

mysql>
mysql> create view mother as
    -> select childalt.id,childalt.name,childalt.last,childalt.regno,childalt.class,alt.id,alt.name,alt.last,alt.regno,alt.class from childalt
    -> join alt
    -> on childalt.id=alt.id;
ERROR 1060 (42S21): Duplicate column name 'id'
mysql> select childalt.id,childalt.name,childalt.last,childalt.regno,childalt.class,alt.id,alt.name,alt.last,alt.regno,alt.class from childalt
    -> join alt
    -> on childalt.name=alt.name;
Empty set (0.12 sec)

mysql> select * from alt;
+------+--------+-------+----------+-----------------+
| id   | name   | last  | regno    | class           |
+------+--------+-------+----------+-----------------+
|    1 | aathi  | kannu | 20220761 | multimedia      |
|    2 | barath | kumar | 20220762 | computerscience |
|    3 | gokul  | raj   | 20220763 | infromation     |
|    4 | vicky  | P     | 20220764 | multimedia      |
|    5 | vishnu | dass  | 20220765 | computerscience |
+------+--------+-------+----------+-----------------+
5 rows in set (0.02 sec)

mysql> select childalt.id,childalt.name,childalt.last,childalt.regno,childalt.class,alt.id,alt.name,alt.last,alt.regno,alt.class from childalt
    -> join alt
    -> where childalt.name=alt.name;
Empty set (0.18 sec)

mysql> select childalt.id,childalt.name,childalt.last,childalt.regno,childalt.class,alt.id,alt.name,alt.last,alt.regno,alt.class from childalt
    -> join alt
    -> where childalt.id=alt.id;
+------+--------+------+----------+-------+------+--------+-------+----------+-----------------+
| id   | name   | last | regno    | class | id   | name   | last  | regno    | class           |
+------+--------+------+----------+-------+------+--------+-------+----------+-----------------+
|    1 | raja   | c    | 20220766 | bba   |    1 | aathi  | kannu | 20220761 | multimedia      |
|    2 | murali | m    | 20220767 | Bsc   |    2 | barath | kumar | 20220762 | computerscience |
+------+--------+------+----------+-------+------+--------+-------+----------+-----------------+
2 rows in set (0.01 sec)
