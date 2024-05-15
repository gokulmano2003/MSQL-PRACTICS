
    -> ;
+--------------------+
| Database           |
+--------------------+
| gokul              |
| information_schema |
| mysql              |
| performance_schema |
| players            |
| sys                |
+--------------------+
6 rows in set (0.01 sec)

mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| details         |
| krishna         |
| native          |
| raj             |
| student         |
+-----------------+
5 rows in set (0.01 sec)

mysql> create table emailverify(id int, name varchar(10),Emailid varchar(20
    -> ),password bigint,phoneNu bigint,male/female);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '/female)' at line 2
mysql> create table emailverify(id int, name varchar(10),Emailid varchar(20),password bigint,phoneNu bigint,'male/female');
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''male/female')' at line 1
mysql> create table emailverify(id int, name varchar(10),Emailid varchar(20),password bigint,phoneNu bigint,'male/female' varchar(5));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''male/female' varchar(5))' at line 1
mysql> create table emailverify(id int, name varchar(10),Emailid varchar(20),password bigint,phoneNu bigint,"male/female" varchar(15));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '"male/female" varchar(15))' at line 1
mysql> create table emailverify(id int, name varchar(10),Emailid varchar(20),password bigint,phoneNu bigint);
Query OK, 0 rows affected (0.10 sec)

mysql> desc emailverify;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| id       | int         | YES  |     | NULL    |       |
| name     | varchar(10) | YES  |     | NULL    |       |
| Emailid  | varchar(20) | YES  |     | NULL    |       |
| password | bigint      | YES  |     | NULL    |       |
| phoneNu  | bigint      | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into emailverify(1,"Gokul","gokulmano2003@gmail.com",332003,6384579273);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"Gokul","gokulmano2003@gmail.com",332003,6384579273)' at line 1
mysql> insert into emailverify(1,"Gokul","gokulmanogmail.com",332003,6384579273);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"Gokul","gokulmanogmail.com",332003,6384579273)' at line 1
mysql> insert into emailverify(1,"Gokul","gokulmanogmailcom",332003,6384579273);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"Gokul","gokulmanogmailcom",332003,6384579273)' at line 1
mysql> insert into emailverify(1,"Gokul","gokulmanog",332003,6384579273);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"Gokul","gokulmanog",332003,6384579273)' at line 1
mysql> insert into emailverify(1,"Gokul","gokulkrishna",332003,6384579273);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '1,"Gokul","gokulkrishna",332003,6384579273)' at line 1
mysql> insert into emailverify values(1,"Gokul","gokulmano2003@gmail.com",332003,6384579273);
ERROR 1406 (22001): Data too long for column 'Emailid' at row 1
mysql> insert into emailverify values(1,"Gokul","gokulmanogmail.com",332003,6384579273);
Query OK, 1 row affected (0.01 sec)

mysql> select * from emailverify;
+------+-------+--------------------+----------+------------+
| id   | name  | Emailid            | password | phoneNu    |
+------+-------+--------------------+----------+------------+
|    1 | Gokul | gokulmanogmail.com |   332003 | 6384579273 |
+------+-------+--------------------+----------+------------+
1 row in set (0.00 sec)

mysql> create table mypruduct(id int, name varchar(100),Companyname varchar(30),quailty varchar(10),Product int);
Query OK, 0 rows affected (0.11 sec)

mysql> desc mupruduct;
ERROR 1146 (42S02): Table 'gokul.mupruduct' doesn't exist
mysql> desc mypruduct;
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| id          | int          | YES  |     | NULL    |       |
| name        | varchar(100) | YES  |     | NULL    |       |
| Companyname | varchar(30)  | YES  |     | NULL    |       |
| quailty     | varchar(10)  | YES  |     | NULL    |       |
| Product     | int          | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> drop table mypruduct;
Query OK, 0 rows affected (0.06 sec)

mysql> create table pruduct(id int,Companyname varchar(30),quailty varchar(10),ProductCount int);
Query OK, 0 rows affected (0.07 sec)

mysql> drop table pruduct;
Query OK, 0 rows affected (0.04 sec)

mysql> create table pruduct(id int,productname varchar(40),Companyname varchar(30),quailty varchar(10),ProductCount int);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into product values(1,"laptop","HP","fristquailty",3);
ERROR 1146 (42S02): Table 'gokul.product' doesn't exist
mysql> drop table pruduct;
Query OK, 0 rows affected (0.07 sec)

mysql> create table mypruduct(id int,productname varchar(20),Companyname varchar(30),quailty varchar(10),ProductCount int);
Query OK, 0 rows affected (0.07 sec)

mysql> insert into product values(1,"laptop","HP","fristquailty",3),(2,"phones","Realme",10);
ERROR 1146 (42S02): Table 'gokul.product' doesn't exist
mysql> desc product;
ERROR 1146 (42S02): Table 'gokul.product' doesn't exist
mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| details         |
| emailverify     |
| krishna         |
| mypruduct       |
| native          |
| raj             |
| student         |
+-----------------+
7 rows in set (0.02 sec)

mysql> drop table mypruduct;
Query OK, 0 rows affected (0.05 sec)

mysql> create table product(id int,productname varchar(20),Companyname varchar(30),quailty varchar(10),ProductCount int);
Query OK, 0 rows affected (0.06 sec)

mysql> insert into product values(1,"laptop","HP","fristquailty",3),(2,"phones","Realme",10);
ERROR 1136 (21S01): Column count doesn't match value count at row 2
mysql> insert into product values(1,"laptop","HP","fristquailty",3);
ERROR 1406 (22001): Data too long for column 'quailty' at row 1
mysql> insert into mypruduct values(1,"laptop","HP","fristquailty",3);
ERROR 1146 (42S02): Table 'gokul.mypruduct' doesn't exist
mysql> show tables;
+-----------------+
| Tables_in_gokul |
+-----------------+
| details         |
| emailverify     |
| krishna         |
| native          |
| product         |
| raj             |
| student         |
+-----------------+
7 rows in set (0.00 sec)

mysql> desc product;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| id           | int         | YES  |     | NULL    |       |
| productname  | varchar(20) | YES  |     | NULL    |       |
| Companyname  | varchar(30) | YES  |     | NULL    |       |
| quailty      | varchar(10) | YES  |     | NULL    |       |
| ProductCount | int         | YES  |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into product values(1,"laptop","HP","frist",3);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(2,"phone","realme","frist",8);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(2,"phone","vivo","frist",7);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(2,"mouse","target","frist",9);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(2,"note","classmet","frist",10);
Query OK, 1 row affected (0.01 sec)

mysql> insert into product values(2,"pen","classmet","frist",15);
Query OK, 1 row affected (0.01 sec)

mysql> select * from product;
+------+-------------+-------------+---------+--------------+
| id   | productname | Companyname | quailty | ProductCount |
+------+-------------+-------------+---------+--------------+
|    1 | laptop      | HP          | frist   |            3 |
|    2 | phone       | realme      | frist   |            8 |
|    2 | phone       | vivo        | frist   |            7 |
|    2 | mouse       | target      | frist   |            9 |
|    2 | note        | classmet    | frist   |           10 |
|    2 | pen         | classmet    | frist   |           15 |
+------+-------------+-----------
