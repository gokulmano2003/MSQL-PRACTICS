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
7 rows in set (0.01 sec)

mysql> show tables;
+--------------------+
| Tables_in_employee |
+--------------------+
| dept               |
| emp                |
+--------------------+
2 rows in set (0.00 sec)

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
    -> where hiredate=1981-02-02;
Empty set, 1 warning (0.01 sec)

mysql> select * from emp
    -> where sal=1250;
+-------+--------+----------+------+------------+---------+---------+--------+
| empno | ename  | job      | mgr  | hiredate   | sal     | comm    | deptno |
+-------+--------+----------+------+------------+---------+---------+--------+
|  7521 | WARD   | SALESMAN | 7698 | 1981-02-22 | 1250.00 |  500.00 |     30 |
|  7654 | MARTIN | SALESMAN | 7698 | 1981-09-28 | 1250.00 | 1400.00 |     30 |
+-------+--------+----------+------+------------+---------+---------+--------+
2 rows in set (0.04 sec)

mysql> select * from emp
    -> where hiredate=1981;
Empty set, 1 warning (0.01 sec)

mysql> select * from emp
    -> where deptno=10;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp
    -> where deptno=10,20,30;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',20,30' at line 2
mysql> select * from emp
    -> where deptno=10 and 20;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
3 rows in set (0.00 sec)

mysql> select * from emp
    -> where deptno=10;
+-------+--------+-----------+------+------------+---------+------+--------+
| empno | ename  | job       | mgr  | hiredate   | sal     | comm | deptno |
+-------+--------+-----------+------+------------+---------+------+--------+
|  7782 | CLARK  | MANAGER   | 7839 | 1981-06-09 | 2450.00 | NULL |     10 |
|  7839 | KING   | PRESIDENT | NULL | 1981-11-17 | 5000.00 | NULL |     10 |
|  7934 | MILLER | CLERK     | 7782 | 1982-01-23 | 1300.00 | NULL |     10 |
+-------+--------+-----------+------+------------+---------+------+--------+
3 rows in set (0.05 sec)

mysql> select definct deptno from emp;
ERROR 1054 (42S22): Unknown column 'definct' in 'field list'
mysql> select destinct deptno from emp;
ERROR 1054 (42S22): Unknown column 'destinct' in 'field list'
mysql> select deptno from emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     30 |
|     20 |
|     30 |
|     30 |
|     10 |
|     20 |
|     10 |
|     30 |
|     20 |
|     30 |
|     20 |
|     10 |
+--------+
14 rows in set (0.00 sec)

mysql> select distinct deptno from emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     10 |
+--------+
3 rows in set (0.01 sec)

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
14 rows in set (0.01 sec)

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
7 rows in set (0.07 sec)

mysql> use gokul;
Database changed
mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| contactprimary  |
| dept            |
| details         |
| emailverify     |
| emp             |
| krishna         |
| native          |
| product         |
| raj             |
| student         |
+-----------------+
10 rows in set (0.01 sec)

mysql> select * from contactprimary;
+----+-----------+-----------+-------------+-------------+--------+
| id | name      | last_name | phonenumber | nationality | gender |
+----+-----------+-----------+-------------+-------------+--------+
|  1 | Gokul Raj | P         |  6384579273 | INDIAN      | m      |
|  2 |  Raj      | A         |  6334579273 | INDIAN      | F      |
|  3 | hari      | P         |  6384579293 | american    | m      |
|  6 | hari      | H         | 12345679780 | NULL        | m      |
|  8 | raja      | H         |  1234567990 | valparai    | m      |
+----+-----------+-----------+-------------+-------------+--------+
5 rows in set (0.04 sec)

mysql> desc contactprimary;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int         | NO   | PRI | NULL    | auto_increment |
| name        | varchar(20) | NO   |     | NULL    |                |
| last_name   | char(20)    | NO   |     | NULL    |                |
| phonenumber | bigint      | YES  | UNI | NULL    |                |
| nationality | varchar(15) | YES  |     | NULL    |                |
| gender      | char(1)     | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
6 rows in set (0.01 sec)

mysql> alter table contactprimary
    -> drop column gender;
Query OK, 0 rows affected (0.11 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc contactprimary;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int         | NO   | PRI | NULL    | auto_increment |
| name        | varchar(20) | NO   |     | NULL    |                |
| last_name   | char(20)    | NO   |     | NULL    |                |
| phonenumber | bigint      | YES  | UNI | NULL    |                |
| nationality | varchar(15) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
5 rows in set (0.00 sec)

mysql> alter table contactprimary
    -> rename 'nationality' to 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''nationality' to 'nation'' at line 2
mysql> alter table contactprimary
    -> modify rename 'nationality' to 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rename 'nationality' to 'nation'' at line 2
mysql> alter table contactprimary
    -> alter rename 'nationality' to 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'rename 'nationality' to 'nation'' at line 2
mysql> alter table contactprimary
    ->  rename 'nationality' , 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''nationality' , 'nation'' at line 2
mysql> alter table contactprimary
    ->  rename  column 'nationality' to 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''nationality' to 'nation'' at line 2
mysql> alter table contactprimary
    ->  rename  column to 'nationality', 'nation';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'to 'nationality', 'nation'' at line 2
mysql> alter table contactprimary
    ->  rename  column nationality to nation;
Query OK, 0 rows affected (0.12 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> alter table contactprimary
    ->  rename  table contactprimary to nation;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table contactprimary to nation' at line 2
mysql> alter table contactprimary
    ->  rename nation;
Query OK, 0 rows affected (0.22 sec)

mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| dept            |
| details         |
| emailverify     |
| emp             |
| krishna         |
| nation          |
| native          |
| product         |
| raj             |
| student         |
+-----------------+
10 rows in set (0.04 sec)

mysql> desc nation;
+-------------+-------------+------+-----+---------+----------------+
| Field       | Type        | Null | Key | Default | Extra          |
+-------------+-------------+------+-----+---------+----------------+
| id          | int         | NO   | PRI | NULL    | auto_increment |
| name        | varchar(20) | NO   |     | NULL    |                |
| last_name   | char(20)    | NO   |     | NULL    |                |
| phonenumber | bigint      | YES  | UNI | NULL    |                |
| nation      | varchar(15) | YES  |     | NULL    |                |
+-------------+-------------+------+-----+---------+----------------+
5 rows in set (0.02 sec)

mysql> alter table contactprimary
    -> drop column id;
ERROR 1146 (42S02): Table 'gokul.contactprimary' doesn't exist
mysql> alter table nation
    -> drop column id;
Query OK, 5 rows affected (0.32 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc nation;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| name        | varchar(20) | NO   |     | NULL    |       |
| last_name   | char(20)    | NO   |     | NULL    |       |
| phonenumber | bigint      | YES  | UNI | NULL    |       |
| nation      | varchar(15) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> create table parent(
    -> id int primary key,
    -> name varchar(20) not null,
    -> phoneno bigint unique,
    -> nationality default 'indian');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'default 'indian')' at line 5
mysql> create table parent(
    -> id int primary key,
    -> name varchar(20) not null,
    -> phoneno bigint unique,
    -> nationality varchar(10) default 'indian');
Query OK, 0 rows affected (0.11 sec)

mysql> desc parent;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| id          | int         | NO   | PRI | NULL    |       |
| name        | varchar(20) | NO   |     | NULL    |       |
| phoneno     | bigint      | YES  | UNI | NULL    |       |
| nationality | varchar(10) | YES  |     | indian  |       |
+-------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into parent values(1,'gokul',1234567890);
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into parent(id,name,phoneno) values(1,'gokul',1234567890);
Query OK, 1 row affected (0.02 sec)

mysql> insert into parent(id,name,phoneno) values(1,'gokul',1234567890,'american');
ERROR 1136 (21S01): Column count doesn't match value count at row 1
mysql> insert into parent values(1,'gokul',1234567890,'american');
ERROR 1062 (23000): Duplicate entry '1' for key 'parent.PRIMARY'
mysql> insert into parent values(1,'gokul',1234567840,'american');
ERROR 1062 (23000): Duplicate entry '1' for key 'parent.PRIMARY'
mysql> insert into parent values(2,'gokul',7458798670,'american');
Query OK, 1 row affected (0.01 sec)

mysql> insert into parent values(2,'gokul',7458798670,'american'),(3,"hari",342415678,"indian");
ERROR 1062 (23000): Duplicate entry '2' for key 'parent.PRIMARY'
mysql> insert into parent values(3,'gokul',745879870,'american'),(4,"hari",342415678,"indian");
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from parent;
+----+-------+------------+-------------+
| id | name  | phoneno    | nationality |
+----+-------+------------+-------------+
|  1 | gokul | 1234567890 | indian      |
|  2 | gokul | 7458798670 | american    |
|  3 | gokul |  745879870 | american    |
|  4 | hari  |  342415678 | indian      |
+----+-------+------------+-------------+
4 rows in set (0.00 sec)

mysql> create table child(
    -> id int foreign key references parent(id),
    -> english varchar(10) check (english>17),
    -> tamil int check (tamil>35),
    -> maths int check (maths>25));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key references parent(id),
english varchar(10) check (english>17),
tami' at line 2
mysql> create table child(
    -> id int foreign key references parent(id),
    -> english int check (english>17),
    -> tamil int check (tamil>35),
    -> maths int check (maths>25));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key references parent(id),
english int check (english>17),
tamil int ch' at line 2
mysql> create table child(
    -> id int,
    -> english int check (english>17),
    -> tamil int check (tamil>35),
    -> id foreign key references parent(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key references parent(id))' at line 5
mysql> create table child(
    -> id int,
    -> english int check (english>17),
    -> tamil int check (tamil>35),
    -> id int foreign key references parent(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'foreign key references parent(id))' at line 5
mysql> create table child(
    -> id int,
    -> english int check (english>17),
    -> tamil int check (tamil>35),
    -> foreign key(id) references parent(id));
Query OK, 0 rows affected (0.32 sec)

mysql> desc child;
+---------+------+------+-----+---------+-------+
| Field   | Type | Null | Key | Default | Extra |
+---------+------+------+-----+---------+-------+
| id      | int  | YES  | MUL | NULL    |       |
| english | int  | YES  |     | NULL    |       |
| tamil   | int  | YES  |     | NULL    |       |
+---------+------+------+-----+---------+-------+
3 rows in set (0.04 sec)

mysql> insert into child values(1,20,35);
ERROR 3819 (HY000): Check constraint 'child_chk_2' is violated.
mysql> insert into child values(1,20,36);
Query OK, 1 row affected (0.01 sec)

mysql> select * from parent;
+----+-------+------------+-------------+
| id | name  | phoneno    | nationality |
+----+-------+------------+-------------+
|  1 | gokul | 1234567890 | indian      |
|  2 | gokul | 7458798670 | american    |
|  3 | gokul |  745879870 | american    |
|  4 | hari  |  342415678 | indian      |
+----+-------+------------+-------------+
4 rows in set (0.01 sec)

mysql> select * from child;
+------+---------+-------+
| id   | english | tamil |
+------+---------+-------+
|    1 |      20 |    36 |
+------+---------+-------+
1 row in set (0.00 sec)

mysql> insert into child values(5,20,35);
ERROR 3819 (HY000): Check constraint 'child_chk_2' is violated.
mysql> insert into child values(5,20,36);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`gokul`.`child`, CONSTRAINT `child_ibfk_1` FOREIGN KEY (`id`) REFERENCES `parent` (`id`))
mysql> insert into child values(2,20,36);
Query OK, 1 row affected (0.01 sec)

mysql> select * from child;
+------+---------+-------+
| id   | english | tamil |
+------+---------+-------+
|    1 |      20 |    36 |
|    2 |      20 |    36 |
+------+---------+-------+
2 rows in set (0.00 sec)

mysql> select * from parent;
+----+-------+------------+-------------+
| id | name  | phoneno    | nationality |
+----+-------+------------+-------------+
|  1 | gokul | 1234567890 | indian      |
|  2 | gokul | 7458798670 | american    |
|  3 | gokul |  745879870 | american    |
|  4 | hari  |  342415678 | indian      |
+----+-------+------------+-------------+
4 rows in set (0.00 sec)

mysql> select * from parent
    -> ;
+----+-------+------------+-------------+
| id | name  | phoneno    | nationality |
+----+-------+------------+-------------+
|  1 | gokul | 1234567890 | indian      |
|  2 | gokul | 7458798670 | american    |
|  3 | gokul |  745879870 | american    |
|  4 | hari  |  342415678 | indian      |
+----+-------+------------+-------------+
4 rows in set (0.00 sec)

mysql> delete table parent
    -> where name="gokul" and phoneno=1234567890;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table parent
where name="gokul" and phoneno=1234567890' at line 1
mysql> delete table parent
    -> where id=1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table parent
where id=1' at line 1
mysql> delete table parent
    -> where id=4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table parent
where id=4' at line 1
mysql> delete from parent
    -> where id=1;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`gokul`.`child`, CONSTRAINT `child_ibfk_1` FOREIGN KEY (`id`) REFERENCES `parent` (`id`))
mysql> select len("gokul");
ERROR 1305 (42000): FUNCTION gokul.len does not exist
mysql> delete from parent
    -> where id=4;
Query OK, 1 row affected (0.02 sec)

mysql> delete from parent
    -> where id=2;
ERROR 1451 (23000): Cannot delete or update a parent row: a foreign key constraint fails (`gokul`.`child`, CONSTRAINT `child_ibfk_1` FOREIGN KEY (`id`) REFERENCES `parent` (`id`))
mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| child           |
| dept            |
| details         |
| emailverify     |
| emp             |
| krishna         |
| nation          |
| native          |
| parent          |
| product         |
| raj             |
| student         |
+-----------------+
12 rows in set (0.04 sec)

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
7 rows in set (0.01 sec)

mysql> use sys;
Database changed
mysql> show tables;
+-----------------------------------------------+
| Tables_in_sys                                 |
+-----------------------------------------------+
| host_summary                                  |
| host_summary_by_file_io                       |
| host_summary_by_file_io_type                  |
| host_summary_by_stages                        |
| host_summary_by_statement_latency             |
| host_summary_by_statement_type                |
| innodb_buffer_stats_by_schema                 |
| innodb_buffer_stats_by_table                  |
| innodb_lock_waits                             |
| io_by_thread_by_latency                       |
| io_global_by_file_by_bytes                    |
| io_global_by_file_by_latency                  |
| io_global_by_wait_by_bytes                    |
| io_global_by_wait_by_latency                  |
| latest_file_io                                |
| memory_by_host_by_current_bytes               |
| memory_by_thread_by_current_bytes             |
| memory_by_user_by_current_bytes               |
| memory_global_by_current_bytes                |
| memory_global_total                           |
| metrics                                       |
| processlist                                   |
| ps_check_lost_instrumentation                 |
| schema_auto_increment_columns                 |
| schema_index_statistics                       |
| schema_object_overview                        |
| schema_redundant_indexes                      |
| schema_table_lock_waits                       |
| schema_table_statistics                       |
| schema_table_statistics_with_buffer           |
| schema_tables_with_full_table_scans           |
| schema_unused_indexes                         |
| session                                       |
| session_ssl_status                            |
| statement_analysis                            |
| statements_with_errors_or_warnings            |
| statements_with_full_table_scans              |
| statements_with_runtimes_in_95th_percentile   |
| statements_with_sorting                       |
| statements_with_temp_tables                   |
| sys_config                                    |
| user_summary                                  |
| user_summary_by_file_io                       |
| user_summary_by_file_io_type                  |
| user_summary_by_stages                        |
| user_summary_by_statement_latency             |
| user_summary_by_statement_type                |
| version                                       |
| wait_classes_global_by_avg_latency            |
| wait_classes_global_by_latency                |
| waits_by_host_by_latency                      |
| waits_by_user_by_latency                      |
| waits_global_by_latency                       |
| x$host_summary                                |
| x$host_summary_by_file_io                     |
| x$host_summary_by_file_io_type                |
| x$host_summary_by_stages                      |
| x$host_summary_by_statement_latency           |
| x$host_summary_by_statement_type              |
| x$innodb_buffer_stats_by_schema               |
| x$innodb_buffer_stats_by_table                |
| x$innodb_lock_waits                           |
| x$io_by_thread_by_latency                     |
| x$io_global_by_file_by_bytes                  |
| x$io_global_by_file_by_latency                |
| x$io_global_by_wait_by_bytes                  |
| x$io_global_by_wait_by_latency                |
| x$latest_file_io                              |
| x$memory_by_host_by_current_bytes             |
| x$memory_by_thread_by_current_bytes           |
| x$memory_by_user_by_current_bytes             |
| x$memory_global_by_current_bytes              |
| x$memory_global_total                         |
| x$processlist                                 |
| x$ps_digest_95th_percentile_by_avg_us         |
| x$ps_digest_avg_latency_distribution          |
| x$ps_schema_table_statistics_io               |
| x$schema_flattened_keys                       |
| x$schema_index_statistics                     |
| x$schema_table_lock_waits                     |
| x$schema_table_statistics                     |
| x$schema_table_statistics_with_buffer         |
| x$schema_tables_with_full_table_scans         |
| x$session                                     |
| x$statement_analysis                          |
| x$statements_with_errors_or_warnings          |
| x$statements_with_full_table_scans            |
| x$statements_with_runtimes_in_95th_percentile |
| x$statements_with_sorting                     |
| x$statements_with_temp_tables                 |
| x$user_summary                                |
| x$user_summary_by_file_io                     |
| x$user_summary_by_file_io_type                |
| x$user_summary_by_stages                      |
| x$user_summary_by_statement_latency           |
| x$user_summary_by_statement_type              |
| x$wait_classes_global_by_avg_latency          |
| x$wait_classes_global_by_latency              |
| x$waits_by_host_by_latency                    |
| x$waits_by_user_by_latency                    |
| x$waits_global_by_latency                     |
+-----------------------------------------------+
101 rows in set (0.02 sec)

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
7 rows in set (0.00 sec)

mysql> use palyer;
ERROR 1049 (42000): Unknown database 'palyer'
mysql> use player;
ERROR 1049 (42000): Unknown database 'player'
mysql> use players
Database changed
mysql> create table parend(
    -> id int primary key,
    -> name varchar(20)not null,
    -> mark int not null);
Query OK, 0 rows affected (0.10 sec)

mysql> desc parend;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
| mark  | int         | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into parend values(1,"krishna",50);
Query OK, 1 row affected (0.02 sec)

mysql> insert into parend values(2,"krish",40);
Query OK, 1 row affected (0.01 sec)

mysql> insert into parend values(3,"kri",30);
Query OK, 1 row affected (0.01 sec)

mysql> select * from parend;
+----+---------+------+
| id | name    | mark |
+----+---------+------+
|  1 | krishna |   50 |
|  2 | krish   |   40 |
|  3 | kri     |   30 |
+----+---------+------+
3 rows in set (0.00 sec)

mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foregin key (id) references parend(name)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key (id) references parend(name)
)' at line 4
mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foregin key(id) references parend(name)
    -> );
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(id) references parend(name)
)' at line 4
mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foregin key(id) references parend(id));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'key(id) references parend(id))' at line 4
mysql> show tables;
+-------------------+
| Tables_in_players |
+-------------------+
| cricketer         |
| marks             |
| parend            |
| username          |
+-------------------+
4 rows in set (0.05 sec)

mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foreign key(id) references parend(id));
Query OK, 0 rows affected (0.18 sec)

mysql> drop child;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'child' at line 1
mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foreign key(id) references parend(name));
ERROR 1050 (42S01): Table 'child' already exists
mysql> drop table child;
Query OK, 0 rows affected (0.05 sec)

mysql> create table child(
    -> id int,
    -> tamil int check (tamil>55),
    -> foreign key(id) references parend(name));
ERROR 3780 (HY000): Referencing column 'id' and referenced column 'name' in foreign key constraint 'child_ibfk_1' are incompatible.
mysql> drop table parend;
Query OK, 0 rows affected (0.04 sec)

mysql> create table parents(
    -> id int,
    -> name varchar(20) primary key,
    -> lang int not null);
Query OK, 0 rows affected (0.06 sec)

mysql> desc parents;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
| lang  | int         | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table parents
    -> add constraint lang unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 2
mysql> alter table parents
    -> add constraint lang int unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'int unique' at line 2
mysql> alter table parents
    -> modify column lang unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'unique' at line 2
mysql> alter table parents
    -> add constraint un_name lang unique;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'lang unique' at line 2
mysql> alter table parents
    -> drop column lang;
Query OK, 0 rows affected (0.06 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc parent;
ERROR 1146 (42S02): Table 'players.parent' doesn't exist
mysql> desc parents;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> alter table parents
    -> add column mark int unique;
Query OK, 0 rows affected (0.25 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc parents;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | NO   | PRI | NULL    |       |
| mark  | int         | YES  | UNI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> create table deal(
    -> id int,
    -> tamil int check (tamil>50),
    -> foreign key(id) references parents(id));
ERROR 1822 (HY000): Failed to add the foreign key constraint. Missing index for constraint 'deal_ibfk_1' in the referenced table 'parents'
mysql> create table deal(
    -> id int,
    -> tamil int check (tamil>50),
    -> foreign key(id) references parents(mark));
Query OK, 0 rows affected (0.10 sec)

mysql> desc deal;
+-------+------+------+-----+---------+-------+
| Field | Type | Null | Key | Default | Extra |
+-------+------+------+-----+---------+-------+
| id    | int  | YES  | MUL | NULL    |       |
| tamil | int  | YES  |     | NULL    |       |
+-------+------+------+-----+---------+-------+
2 rows in set (0.01 sec)

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
7 rows in set (0.01 sec)

mysql> use gokul;
Database changed
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
14 rows in set (0.04 sec)

mysql> truncate table emp;
Query OK, 0 rows affected (0.12 sec)

mysql> select * from emp;
Empty set (0.00 sec)

mysql> desc emp;
+----------+--------------+------+-----+---------+-------+
| Field    | Type         | Null | Key | Default | Extra |
+----------+--------------+------+-----+---------+-------+
| empno    | decimal(4,0) | NO   |     | NULL    |       |
| ename    | varchar(10)  | YES  |     | NULL    |       |
| job      | varchar(9)   | YES  |     | NULL    |       |
| mgr      | decimal(4,0) | YES  |     | NULL    |       |
| hiredate | date         | YES  |     | NULL    |       |
| sal      | decimal(7,2) | YES  |     | NULL    |       |
| comm     | decimal(7,2) | YES  |     | NULL    |       |
| deptno   | decimal(2,0) | YES  |     | NULL    |       |
+----------+--------------+------+-----+---------+-------+
8 rows in set (0.02 sec)

mysql> use employee;
Database changed
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

mysql> select deptno from emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     30 |
|     20 |
|     30 |
|     30 |
|     10 |
|     20 |
|     10 |
|     30 |
|     20 |
|     30 |
|     20 |
|     10 |
+--------+
14 rows in set (0.00 sec)

mysql> select distict(deptno) from emp;
ERROR 1305 (42000): FUNCTION employee.distict does not exist
mysql> select distict deptno from emp;
ERROR 1054 (42S22): Unknown column 'distict' in 'field list'
mysql> select distinct deptno from emp;
+--------+
| deptno |
+--------+
|     20 |
|     30 |
|     10 |
+--------+
3 rows in set (0.00 sec)

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

mysql> select min(sal) from emp;
+----------+
| min(sal) |
+----------+
|   800.00 |
+----------+
1 row in set (0.01 sec)

mysql> select max(sal) from emp;
+----------+
| max(sal) |
+----------+
|  5000.00 |
+----------+
1 row in set (0.00 sec)

mysql> select * from emp
    -> where sal=800;
+-------+-------+-------+------+------------+--------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal    | comm | deptno |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.01 sec)

mysql> select * from emp
    -> where sal=(select min(sal) from emp);
+-------+-------+-------+------+------------+--------+------+--------+
| empno | ename | job   | mgr  | hiredate   | sal    | comm | deptno |
+-------+-------+-------+------+------------+--------+------+--------+
|  7369 | SMITH | CLERK | 7902 | 1980-12-17 | 800.00 | NULL |     20 |
+-------+-------+-------+------+------------+--------+------+--------+
1 row in set (0.02 sec)

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

mysql> select deptno,count(*) from emp
    -> group by deptno;
+--------+----------+
| deptno | count(*) |
+--------+----------+
|     20 |        5 |
|     30 |        6 |
|     10 |        3 |
+--------+----------+
3 rows in set (0.01 sec)

mysql> select deptno,count(*) from emp
    -> group by mgr;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'employee.emp.deptno' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select mgr,count(*) from emp
    -> group by mgr;
+------+----------+
| mgr  | count(*) |
+------+----------+
| 7902 |        1 |
| 7698 |        5 |
| 7839 |        3 |
| 7566 |        2 |
| NULL |        1 |
| 7788 |        1 |
| 7782 |        1 |
+------+----------+
7 rows in set (0.00 sec)

mysql> select deptno,count(*) as total from emp
    -> group by mgr;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'employee.emp.deptno' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select mgr,count(*) as total from emp
    -> group by mgr;
+------+-------+
| mgr  | total |
+------+-------+
| 7902 |     1 |
| 7698 |     5 |
| 7839 |     3 |
| 7566 |     2 |
| NULL |     1 |
| 7788 |     1 |
| 7782 |     1 |
+------+-------+
7 rows in set (0.00 sec)

mysql> select deptno,count(*) as total from emp
    -> group by deptno
    -> having count(deptno)=3
    -> ;
+--------+-------+
| deptno | total |
+--------+-------+
|     10 |     3 |
+--------+-------+
1 row in set (0.01 sec)

mysql> select mgr,count(*) as total from emp
    -> group by mgr
    -> having count(mgr)>1;
+------+-------+
| mgr  | total |
+------+-------+
| 7698 |     5 |
| 7839 |     3 |
| 7566 |     2 |
+------+-------+
3 rows in set (0.00 sec)
