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

mysql> use playes;
ERROR 1049 (42000): Unknown database 'playes'
mysql> use players;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_players |
+-------------------+
| cricketer         |
| deal              |
| parents           |
| username          |
+-------------------+
4 rows in set (0.03 sec)

mysql> select * from deal;
Empty set (0.12 sec)

mysql> create table alt(
    -> id int primary key auto_increment,
    -> name varchar(20) not null,
    -> last varchar(15) not null,
    -> subject varchar(30) not null,
    -> marks bigint unique);
Query OK, 0 rows affected (0.29 sec)

mysql> desc alt;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| id      | int         | NO   | PRI | NULL    | auto_increment |
| name    | varchar(20) | NO   |     | NULL    |                |
| last    | varchar(15) | NO   |     | NULL    |                |
| subject | varchar(30) | NO   |     | NULL    |                |
| marks   | bigint      | YES  | UNI | NULL    |                |
+---------+-------------+------+-----+---------+----------------+
5 rows in set (0.02 sec)

mysql> craete childalt(
    -> id int,
    -> ^C
mysql> insert into alt values(1,"aathi","kannu","tamil",45);
Query OK, 1 row affected (0.19 sec)

mysql> drop table alt;
Query OK, 0 rows affected (0.09 sec)

mysql> show tables;
+-------------------+
| Tables_in_players |
+-------------------+
| cricketer         |
| deal              |
| parents           |
| username          |
+-------------------+
4 rows in set (0.06 sec)

mysql> create tabel alt(
    -> id int not null unique,
    -> name varchar(20) not null,
    ->
    -> ^C
mysql> create table alt(
    -> id int,
    -> name varchar(20),
    -> last varchar(10),
    -> regno bigint unique,
    -> class varchar(15)
    -> );
Query OK, 0 rows affected (0.39 sec)

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
5 rows in set (0.04 sec)

mysql> create table childalt(
    -> id int,
    -> ^C
mysql> insert into alt values(1,"aathi","kannu",20220761,"multimedia");
Query OK, 1 row affected (0.02 sec)

mysql> insert into alt values(2,"barath","kumar",20220762,"computerscience");
Query OK, 1 row affected (0.01 sec)

mysql> insert into alt values(3,"gokul","raj",20220763,"infromationtechnology");
ERROR 1406 (22001): Data too long for column 'class' at row 1
mysql> insert into alt values(3,"gokul","raj",20220763,"infromation");
Query OK, 1 row affected (0.01 sec)

mysql> insert into alt values(4,"vicky","P",20220764,"multimedia");
Query OK, 1 row affected (0.01 sec)

mysql> insert into alt values(5,"vishnu","dass",20220765,"computerscience");
Query OK, 1 row affected (0.01 sec)

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
5 rows in set (0.00 sec)

mysql> create table childalt(
    -> id int,
    -> name varchar(20),
    -> last varchar(10),
    -> regno bigint unique,
    -> class varchar(15)
    -> );
Query OK, 0 rows affected (0.13 sec)

mysql> desc childalt;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(20) | YES  |     | NULL    |       |
| last  | varchar(10) | YES  |     | NULL    |       |
| regno | bigint      | YES  | UNI | NULL    |       |
| class | varchar(15) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> insert into childalt values(1,"raja","c",20220766,"bba");
Query OK, 1 row affected (0.01 sec)

mysql> insert into childalt values(2,"murali","m",20220767,"Bsc");
Query OK, 1 row affected (0.01 sec)

mysql> insert into childalt values(6,"sam","n",20220768,"bcom");
Query OK, 1 row affected (0.01 sec)

mysql> insert into childalt values(7,"karthi","k",20220769,"bbc");
Query OK, 1 row affected (0.01 sec)

mysql> insert into childalt values(8,"hari","h",20220770,"bca");
Query OK, 1 row affected (0.01 sec)

mysql> select * from childalt;
+------+--------+------+----------+-------+
| id   | name   | last | regno    | class |
+------+--------+------+----------+-------+
|    1 | raja   | c    | 20220766 | bba   |
|    2 | murali | m    | 20220767 | Bsc   |
|    6 | sam    | n    | 20220768 | bcom  |
|    7 | karthi | k    | 20220769 | bbc   |
|    8 | hari   | h    | 20220770 | bca   |
+------+--------+------+----------+-------+
5 rows in set (0.00 sec)

mysql>
mysql>
mysql> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> join alt
    -> where childalt.id=alt.id;
+------+--------+------+------+--------+-------+
| id   | name   | last | id   | name   | last  |
+------+--------+------+------+--------+-------+
|    1 | raja   | c    |    1 | aathi  | kannu |
|    2 | murali | m    |    2 | barath | kumar |
+------+--------+------+------+--------+-------+
2 rows in set (0.14 sec)

mysql> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> left join alt
    -> where childalt.id=alt.id;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where childalt.id=alt.id' at line 3
mysql> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> left join alt
    -> on childalt.id=alt.id;
+------+--------+------+------+--------+-------+
| id   | name   | last | id   | name   | last  |
+------+--------+------+------+--------+-------+
|    1 | raja   | c    |    1 | aathi  | kannu |
|    2 | murali | m    |    2 | barath | kumar |
|    6 | sam    | n    | NULL | NULL   | NULL  |
|    7 | karthi | k    | NULL | NULL   | NULL  |
|    8 | hari   | h    | NULL | NULL   | NULL  |
+------+--------+------+------+--------+-------+
5 rows in set (0.01 sec)

mysql> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> right join alt
    -> on childalt.id=alt.id;
+------+--------+------+------+--------+-------+
| id   | name   | last | id   | name   | last  |
+------+--------+------+------+--------+-------+
|    1 | raja   | c    |    1 | aathi  | kannu |
|    2 | murali | m    |    2 | barath | kumar |
| NULL | NULL   | NULL |    3 | gokul  | raj   |
| NULL | NULL   | NULL |    4 | vicky  | P     |
| NULL | NULL   | NULL |    5 | vishnu | dass  |
+------+--------+------+------+--------+-------+
5 rows in set (0.00 sec)

mysql> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> left join alt
    -> on childalt.id=alt.id
    -> union
    -> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> right join alt
    -> on childalt.id=alt.id
    -> ;
+------+--------+------+------+--------+-------+
| id   | name   | last | id   | name   | last  |
+------+--------+------+------+--------+-------+
|    1 | raja   | c    |    1 | aathi  | kannu |
|    2 | murali | m    |    2 | barath | kumar |
|    6 | sam    | n    | NULL | NULL   | NULL  |
|    7 | karthi | k    | NULL | NULL   | NULL  |
|    8 | hari   | h    | NULL | NULL   | NULL  |
| NULL | NULL   | NULL |    3 | gokul  | raj   |
| NULL | NULL   | NULL |    4 | vicky  | P     |
| NULL | NULL   | NULL |    5 | vishnu | dass  |
+------+--------+------+------+--------+-------+
8 rows in set (0.05 sec)

mysql> create view VW_joins as
    -> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> right join alt
    -> on childalt.id=alt.id
    -> union
    -> select childalt.id,childalt.name,childalt.last,alt.id,alt.name,alt.last from childalt
    -> left join alt
    -> on childalt.id=alt.id;
ERROR 1060 (42S21): Duplicate column name 'id'
mysql>
