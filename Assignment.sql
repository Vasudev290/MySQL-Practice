mysql user: root
password: vasu@123

PRACTICE DATA;-

create table employee(
    -> eid int not null,
    -> ename varchar(32) not null,
    -> email varchar(45) not null,
    -> eage int not null,
    -> esal float not null,
    -> city varchar(32) not null,
    -> state varchar(32) not null,
    -> zin_code int not null,
    -> mobile int not null,
    -> jobrole varchar(32) not null
    -> );

insert into employee value(102, "Vijay kumar", "vijay@gmail.com", 50, 750000.00, "Chennai", "Tamilnadu", 600012, 9886-420-097, "Actor"),
(103, "Ajith Kumar", "ajith@gmail.com", 55, 750000.00, "Chennai", "Tamilnadu", 600073, 9468-990-983, "Bike-Racer"),
(104, "Suriya", "suriya@gmail.com", 45, 650000.00, "Pondey", "Pudecherry", 634073, 9360-390-143, "Socailist"),
(105, "Srikanth", "srikanth@gmail.com", 35, 450000.00, "Wayanad", "Kerala", 750073, 9360-390-123, "Manager"),
(106, "Anjali", "anjali@gmail.com", 53, 750000.00, "Bhubaneshwar", "Odisa", 876542, 9360-390-456, "Asst-Manager"),
(107, "Anil", "anil@gmail.com", 29, 650000.00, "GandhiNagar", "Gujarath", 098756, 9360-390-789, "Team Lead"),
(108, "Aarith", "aarthi@gmail.com", 70, 500000.00, "Mumbai", "Maharastha", 897645, 9360-390-012, "Trainee"),
(109, "Surya", "surya@gmail.com", 75, 800000.00, "Kolkata", "West-Bengal", 906745, 9360-390-345, "Jr_Devloper"),
(110, "VijayBittu", "vijaybittu@gmail.com", 70, 900000.00, "New Delhi", "North-India", 123452, 9360-390-567, "Sr_Devloper"),
(110, "Akitha", "akitha@gmail.com", 70, 9200000.00, "New Delhi", "North-India", 123452, 9360-390-567, "Sr_Devloper"),
(111, "Aravind", "aravind@gmail.com", 50, 1000000.00, "Amaravati", "Andra Pradesh", 098751, 9360-390-890, "Data analyst"),
(112, "Amith", "amith@gmail.com", 23, 350000.00, "Hyderbad", "Telangana", 564523, 9360-390-123, "Data Engineer"),
(113, "Vaishnavi", "vaishnavi@gmail.com", 28, 250000.00, "Belagavi", "North-Karnataka", 340967, 9360-390-456, "Jr_Devloper"),
(114, "Yacob", "yacob@gmail.com", 35, 850000.00, "Bhopal", "Madhya Pradesh", 234561, 9360-390-654, "Product-Manager"),
(115, "Bharath", "bharath@gmail.com", 42, 1250000.00, "Kasimer", "Himachal Pradesh", 123243, 9360-390-321, "Project-Manager"),
(116, "Sushmitha", "sushmitha@gmail.com", 53, 690000.00, "Kathmandu", "Nepal", 456789, 9360-390-098, "Quality Trainee"),
(117, "Mahalakshmi", "maha@gmail.com", 53, 680000.00, "Chennai", "Tamilnadu", 600012, 9360-390-765, "Quality lead"),
(118, "Deepthi", "deepthi@gmail.com", 80, 900000.00, "Amaravati", "Andra Pradesh", 098751, 9360-390-432, "Jr_Devloper"),
(119, "Varalakshmi", "vara@gmail.com", 75, 2000000.00, "Kolkata", "West-Bengal", 906745, 9360-390-145, "Center-Manager"),
(120, "Harish", "harish@gmail.com", 45, 100000.00, "Bhubaneshwar", "Odisa", 876542, 9360-390-679, "Zone-Manager");


1. Write a query to fetch people whose last name is same.

 select * from employee where ename like "%r";
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
| eid | ename       | email           | eage | esal   | city    | state     | zin_code | mobile | jobrole    |
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
| 102 | Vijay kumar | vijay@gmail.com |   50 | 750000 | Chennai | Tamilnadu |   600012 |   9369 | Actor      |
| 103 | Ajith Kumar | ajith@gmail.com |   55 | 750000 | Chennai | Tamilnadu |   600073 |   7495 | Bike-Racer |
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
2 rows in set (0.00 sec)

2. Write a query to fetch whose age is grater then 70.
select * from employee where eage>70;
+-----+-------------+-------------------+------+---------+-----------+---------------+----------+--------+----------------+
| eid | ename       | email             | eage | esal    | city      | state         | zin_code | mobile | jobrole        |
+-----+-------------+-------------------+------+---------+-----------+---------------+----------+--------+----------------+
| 109 | Surya       | surya@gmail.com   |   75 |  800000 | Kolkata   | West-Bengal   |   906745 |   8625 | Jr_Devloper    |
| 118 | Deepthi     | deepthi@gmail.com |   80 |  900000 | Amaravati | Andra Pradesh |    98751 |   8538 | Jr_Devloper    |
| 119 | Varalakshmi | vara@gmail.com    |   75 | 2000000 | Kolkata   | West-Bengal   |   906745 |   8825 | Center-Manager |
+-----+-------------+-------------------+------+---------+-----------+---------------+----------+--------+----------------+
3 rows in set (0.00 sec)

3. Write a query to to fetch people with same city.
select * from employee where city="Chennai" or city="New Delhi";
+-----+-------------+----------------------+------+---------+-----------+-------------+----------+--------+--------------+
| eid | ename       | email                | eage | esal    | city      | state       | zin_code | mobile | jobrole      |
+-----+-------------+----------------------+------+---------+-----------+-------------+----------+--------+--------------+
| 102 | Vijay kumar | vijay@gmail.com      |   50 |  750000 | Chennai   | Tamilnadu   |   600012 |   9369 | Actor        |
| 103 | Ajith Kumar | ajith@gmail.com      |   55 |  750000 | Chennai   | Tamilnadu   |   600073 |   7495 | Bike-Racer   |
| 110 | VijayBittu  | vijaybittu@gmail.com |   70 |  900000 | New Delhi | North-India |   123452 |   8403 | Sr_Devloper  |
| 110 | Akitha      | akitha@gmail.com     |   70 | 9200000 | New Delhi | North-India |   123452 |   8403 | Sr_Devloper  |
| 117 | Mahalakshmi | maha@gmail.com       |   53 |  680000 | Chennai   | Tamilnadu   |   600012 |   8205 | Quality lead |
+-----+-------------+----------------------+------+---------+-----------+-------------+----------+--------+--------------+
5 rows in set (0.00 sec)

4. Write a query to to fetch whose name ends with 'h'.
 select * from employee where ename like "%h";
+-----+----------+--------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| eid | ename    | email              | eage | esal    | city         | state            | zin_code | mobile | jobrole         |
+-----+----------+--------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| 105 | Srikanth | srikanth@gmail.com |   35 |  450000 | Wayanad      | Kerala           |   750073 |   8847 | Manager         |
| 108 | Aarith   | aarthi@gmail.com   |   70 |  500000 | Mumbai       | Maharastha       |   897645 |   8958 | Trainee         |
| 112 | Amith    | amith@gmail.com    |   23 |  350000 | Hyderbad     | Telangana        |   564523 |   8847 | Data Engineer   |
| 115 | Bharath  | bharath@gmail.com  |   42 | 1250000 | Kasimer      | Himachal Pradesh |   123243 |   8649 | Project-Manager |
| 120 | Harish   | harish@gmail.com   |   45 |  100000 | Bhubaneshwar | Odisa            |   876542 |   8291 | Zone-Manager    |
+-----+----------+--------------------+------+---------+--------------+------------------+----------+--------+-----------------+
5 rows in set (0.00 sec)

5. Write a query to count person whose last name ends with 'i'.
select * from employee where ename like "%i";
+-----+-------------+---------------------+------+---------+--------------+-----------------+----------+--------+----------------+
| eid | ename       | email               | eage | esal    | city         | state           | zin_code | mobile | jobrole        |
+-----+-------------+---------------------+------+---------+--------------+-----------------+----------+--------+----------------+
| 106 | Anjali      | anjali@gmail.com    |   53 |  750000 | Bhubaneshwar | Odisa           |   876542 |   8514 | Asst-Manager   |
| 113 | Vaishnavi   | vaishnavi@gmail.com |   28 |  250000 | Belagavi     | North-Karnataka |   340967 |   8514 | Jr_Devloper    |
| 117 | Mahalakshmi | maha@gmail.com      |   53 |  680000 | Chennai      | Tamilnadu       |   600012 |   8205 | Quality lead   |
| 118 | Deepthi     | deepthi@gmail.com   |   80 |  900000 | Amaravati    | Andra Pradesh   |    98751 |   8538 | Jr_Devloper    |
| 119 | Varalakshmi | vara@gmail.com      |   75 | 2000000 | Kolkata      | West-Bengal     |   906745 |   8825 | Center-Manager |
+-----+-------------+---------------------+------+---------+--------------+-----------------+----------+--------+----------------+
5 rows in set (0.00 sec)

6. Write a query to find person with highest salary.
select * from employee order by esal desc limit 1;
+-----+--------+------------------+------+---------+-----------+-------------+----------+--------+-------------+
| eid | ename  | email            | eage | esal    | city      | state       | zin_code | mobile | jobrole     |
+-----+--------+------------------+------+---------+-----------+-------------+----------+--------+-------------+
| 110 | Akitha | akitha@gmail.com |   70 | 9200000 | New Delhi | North-India |   123452 |   8403 | Sr_Devloper |
+-----+--------+------------------+------+---------+-----------+-------------+----------+--------+-------------+
1 row in set (0.00 sec)

7. Write a query to find person with lowest salary.
select * from employee order by esal limit 1;
+-----+--------+------------------+------+--------+--------------+-------+----------+--------+--------------+
| eid | ename  | email            | eage | esal   | city         | state | zin_code | mobile | jobrole      |
+-----+--------+------------------+------+--------+--------------+-------+----------+--------+--------------+
| 120 | Harish | harish@gmail.com |   45 | 100000 | Bhubaneshwar | Odisa |   876542 |   8291 | Zone-Manager |
+-----+--------+------------------+------+--------+--------------+-------+----------+--------+--------------+
1 row in set (0.00 sec)

8. Write a query to change last name of person whose id is 102.
select * from employee;
+-----+-------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| eid | ename       | email                | eage | esal    | city         | state            | zin_code | mobile | jobrole         |
+-----+-------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| 101 | Vasu        | Vasu@gmail.com       |   23 |  340000 | Bangalore    | Karnataka        |   560073 |   8131 | Jr_Devloper     |
| 102 | Vijay kumar | vijay@gmail.com      |   50 |  750000 | Chennai      | Tamilnadu        |   600012 |   9369 | Actor           |
| 103 | Ajith Kumar | ajith@gmail.com      |   55 |  750000 | Chennai      | Tamilnadu        |   600073 |   7495 | Bike-Racer      |
| 104 | Suriya      | suriya@gmail.com     |   45 |  650000 | Pondey       | Pudecherry       |   634073 |   8827 | Socailist       |
| 105 | Srikanth    | srikanth@gmail.com   |   35 |  450000 | Wayanad      | Kerala           |   750073 |   8847 | Manager         |
| 106 | Anjali      | anjali@gmail.com     |   53 |  750000 | Bhubaneshwar | Odisa            |   876542 |   8514 | Asst-Manager    |
| 107 | Anil        | anil@gmail.com       |   29 |  650000 | GandhiNagar  | Gujarath         |    98756 |   8181 | Team Lead       |
| 108 | Aarith      | aarthi@gmail.com     |   70 |  500000 | Mumbai       | Maharastha       |   897645 |   8958 | Trainee         |
| 109 | Surya       | surya@gmail.com      |   75 |  800000 | Kolkata      | West-Bengal      |   906745 |   8625 | Jr_Devloper     |
| 110 | VijayBittu  | vijaybittu@gmail.com |   70 |  900000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 110 | Akitha      | akitha@gmail.com     |   70 | 9200000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 111 | Aravind     | aravind@gmail.com    |   50 | 1000000 | Amaravati    | Andra Pradesh    |    98751 |   8080 | Data analyst    |
| 112 | Amith       | amith@gmail.com      |   23 |  350000 | Hyderbad     | Telangana        |   564523 |   8847 | Data Engineer   |
| 113 | Vaishnavi   | vaishnavi@gmail.com  |   28 |  250000 | Belagavi     | North-Karnataka  |   340967 |   8514 | Jr_Devloper     |
| 114 | Yacob       | yacob@gmail.com      |   35 |  850000 | Bhopal       | Madhya Pradesh   |   234561 |   8316 | Product-Manager |
| 115 | Bharath     | bharath@gmail.com    |   42 | 1250000 | Kasimer      | Himachal Pradesh |   123243 |   8649 | Project-Manager |
| 116 | Sushmitha   | sushmitha@gmail.com  |   53 |  690000 | Kathmandu    | Nepal            |   456789 |   8872 | Quality Trainee |
| 117 | Mahalakshmi | maha@gmail.com       |   53 |  680000 | Chennai      | Tamilnadu        |   600012 |   8205 | Quality lead    |
| 118 | Deepthi     | deepthi@gmail.com    |   80 |  900000 | Amaravati    | Andra Pradesh    |    98751 |   8538 | Jr_Devloper     |
| 119 | Varalakshmi | vara@gmail.com       |   75 | 2000000 | Kolkata      | West-Bengal      |   906745 |   8825 | Center-Manager  |
| 120 | Harish      | harish@gmail.com     |   45 |  100000 | Bhubaneshwar | Odisa            |   876542 |   8291 | Zone-Manager    |
+-----+-------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
21 rows in set (0.00 sec)

mysql> update table employee set ename="Vijay Shankar" Where eid=102;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee set ename="Vijay Shankar" Where eid=102' at line 1
mysql> update table employee set ename="Vijay Shankar" Where eid="102" ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'table employee set ename="Vijay Shankar" Where eid="102"' at line 1
mysql> update employee set ename="Vijay Shankar" where eid=102;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| eid | ename         | email                | eage | esal    | city         | state            | zin_code | mobile | jobrole         |
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| 101 | Vasu          | Vasu@gmail.com       |   23 |  340000 | Bangalore    | Karnataka        |   560073 |   8131 | Jr_Devloper     |
| 102 | Vijay Shankar | vijay@gmail.com      |   50 |  750000 | Chennai      | Tamilnadu        |   600012 |   9369 | Actor           |

9. Write a query to find name of person whose name start's with 'A' and city name starts with 'B'.
select ename from employee where ename like "A%" and city like "B%";
+--------+
| ename  |
+--------+
| Anjali |
+--------+
1 row in set (0.00 sec)

10. Write a query to find person with highest salary in 'New Delhi'.

select ename,esal from employee where city="New Delhi" order by esal desc limit 1;
+--------+---------+
| ename  | esal    |
+--------+---------+
| Akitha | 9200000 |
+--------+---------+
1 row in set (0.00 sec)
11. Write a query to to find person who line in 'New Delhi' with age above 70.
select ename, eage from employee where city= "New Delhi" and eage<70;
Empty set (0.00 sec)

12. Write a query to find person with salary below 500000.
select * from employee where esal < 500000;
+-----+-----------+---------------------+------+--------+--------------+-----------------+----------+--------+---------------+
| eid | ename     | email               | eage | esal   | city         | state           | zin_code | mobile | jobrole       |
+-----+-----------+---------------------+------+--------+--------------+-----------------+----------+--------+---------------+
| 101 | Vasu      | Vasu@gmail.com      |   23 | 340000 | Bangalore    | Karnataka       |   560073 |   8131 | Jr_Devloper   |
| 105 | Srikanth  | srikanth@gmail.com  |   35 | 450000 | Wayanad      | Kerala          |   750073 |   8847 | Manager       |
| 112 | Amith     | amith@gmail.com     |   23 | 350000 | Hyderbad     | Telangana       |   564523 |   8847 | Data Engineer |
| 113 | Vaishnavi | vaishnavi@gmail.com |   28 | 250000 | Belagavi     | North-Karnataka |   340967 |   8514 | Jr_Devloper   |
| 120 | Harish    | harish@gmail.com    |   45 | 100000 | Bhubaneshwar | Odisa           |   876542 |   8291 | Zone-Manager  |
+-----+-----------+---------------------+------+--------+--------------+-----------------+----------+--------+---------------+
5 rows in set (0.00 sec)

13. Write a query to find name of people with salary range between 20000 to 40000.
select * from employee where esal between 200000 and 400000;
+-----+-----------+---------------------+------+--------+-----------+-----------------+----------+--------+---------------+
| eid | ename     | email               | eage | esal   | city      | state           | zin_code | mobile | jobrole       |
+-----+-----------+---------------------+------+--------+-----------+-----------------+----------+--------+---------------+
| 101 | Vasu      | Vasu@gmail.com      |   23 | 340000 | Bangalore | Karnataka       |   560073 |   8131 | Jr_Devloper   |
| 112 | Amith     | amith@gmail.com     |   23 | 350000 | Hyderbad  | Telangana       |   564523 |   8847 | Data Engineer |
| 113 | Vaishnavi | vaishnavi@gmail.com |   28 | 250000 | Belagavi  | North-Karnataka |   340967 |   8514 | Jr_Devloper   |
+-----+-----------+---------------------+------+--------+-----------+-----------------+----------+--------+---------------+
3 rows in set (0.00 sec)

15. Write a query to find person whose first name third character is 'j'.
select * from employee where ename like "_j%";
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
| eid | ename       | email           | eage | esal   | city    | state     | zin_code | mobile | jobrole    |
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
| 103 | Ajith Kumar | ajith@gmail.com |   55 | 750000 | Chennai | Tamilnadu |   600073 |   7495 | Bike-Racer |
+-----+-------------+-----------------+------+--------+---------+-----------+----------+--------+------------+
1 row in set (0.00 sec)

16. Write a query to find person whose first name third character is 'i' and live in 'New Delhi'.
select * from employee where ename like "_i%" and city="New Delhi";
+-----+------------+----------------------+------+--------+-----------+-------------+----------+--------+-------------+
| eid | ename      | email                | eage | esal   | city      | state       | zin_code | mobile | jobrole     |
+-----+------------+----------------------+------+--------+-----------+-------------+----------+--------+-------------+
| 110 | VijayBittu | vijaybittu@gmail.com |   70 | 900000 | New Delhi | North-India |   123452 |   8403 | Sr_Devloper |
+-----+------------+----------------------+------+--------+-----------+-------------+----------+--------+-------------+
1 row in set (0.00 sec)

17. Write a query to count persons whose first name third character is 'j'.
select count(ename) from employee where substring(ename, 3, 1)="j";
+--------------+
| count(ename) |
+--------------+
|            3 |
+--------------+
1 row in set (0.00 sec)

18. Write a query to fetch person with lowest salary and add 10000 to its salary.
19. Write a query to Sort the table by ascending.
select * from employee order by ename ;
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| eid | ename         | email                | eage | esal    | city         | state            | zin_code | mobile | jobrole         |
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| 108 | Aarith        | aarthi@gmail.com     |   70 |  500000 | Mumbai       | Maharastha       |   897645 |   8958 | Trainee         |
| 103 | Ajith Kumar   | ajith@gmail.com      |   55 |  750000 | Chennai      | Tamilnadu        |   600073 |   7495 | Bike-Racer      |
| 110 | Akitha        | akitha@gmail.com     |   70 | 9200000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 112 | Amith         | amith@gmail.com      |   23 |  350000 | Hyderbad     | Telangana        |   564523 |   8847 | Data Engineer   |
| 107 | Anil          | anil@gmail.com       |   29 |  650000 | GandhiNagar  | Gujarath         |    98756 |   8181 | Team Lead       |
| 106 | Anjali        | anjali@gmail.com     |   53 |  750000 | Bhubaneshwar | Odisa            |   876542 |   8514 | Asst-Manager    |
| 111 | Aravind       | aravind@gmail.com    |   50 | 1000000 | Amaravati    | Andra Pradesh    |    98751 |   8080 | Data analyst    |
| 115 | Bharath       | bharath@gmail.com    |   42 | 1250000 | Kasimer      | Himachal Pradesh |   123243 |   8649 | Project-Manager |
| 118 | Deepthi       | deepthi@gmail.com    |   80 |  900000 | Amaravati    | Andra Pradesh    |    98751 |   8538 | Jr_Devloper     |
| 120 | Harish        | harish@gmail.com     |   45 |  100000 | Bhubaneshwar | Odisa            |   876542 |   8291 | Zone-Manager    |
| 117 | Mahalakshmi   | maha@gmail.com       |   53 |  680000 | Chennai      | Tamilnadu        |   600012 |   8205 | Quality lead    |
| 105 | Srikanth      | srikanth@gmail.com   |   35 |  450000 | Wayanad      | Kerala           |   750073 |   8847 | Manager         |
| 104 | Suriya        | suriya@gmail.com     |   45 |  650000 | Pondey       | Pudecherry       |   634073 |   8827 | Socailist       |
| 109 | Surya         | surya@gmail.com      |   75 |  800000 | Kolkata      | West-Bengal      |   906745 |   8625 | Jr_Devloper     |
| 116 | Sushmitha     | sushmitha@gmail.com  |   53 |  690000 | Kathmandu    | Nepal            |   456789 |   8872 | Quality Trainee |
| 113 | Vaishnavi     | vaishnavi@gmail.com  |   28 |  250000 | Belagavi     | North-Karnataka  |   340967 |   8514 | Jr_Devloper     |
| 119 | Varalakshmi   | vara@gmail.com       |   75 | 2000000 | Kolkata      | West-Bengal      |   906745 |   8825 | Center-Manager  |
| 101 | Vasu          | Vasu@gmail.com       |   23 |  340000 | Bangalore    | Karnataka        |   560073 |   8131 | Jr_Devloper     |
| 102 | Vijay Shankar | vijay@gmail.com      |   50 |  750000 | Chennai      | Tamilnadu        |   600012 |   9369 | Actor           |
| 110 | VijayBittu    | vijaybittu@gmail.com |   70 |  900000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 114 | Yacob         | yacob@gmail.com      |   35 |  850000 | Bhopal       | Madhya Pradesh   |   234561 |   8316 | Product-Manager |
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
21 rows in set (0.00 sec)

20. Write a query to Sort the table by descending.
select * from employee order by ename desc ;
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| eid | ename         | email                | eage | esal    | city         | state            | zin_code | mobile | jobrole         |
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+
| 114 | Yacob         | yacob@gmail.com      |   35 |  850000 | Bhopal       | Madhya Pradesh   |   234561 |   8316 | Product-Manager |
| 110 | VijayBittu    | vijaybittu@gmail.com |   70 |  900000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 102 | Vijay Shankar | vijay@gmail.com      |   50 |  750000 | Chennai      | Tamilnadu        |   600012 |   9369 | Actor           |
| 101 | Vasu          | Vasu@gmail.com       |   23 |  340000 | Bangalore    | Karnataka        |   560073 |   8131 | Jr_Devloper     |
| 119 | Varalakshmi   | vara@gmail.com       |   75 | 2000000 | Kolkata      | West-Bengal      |   906745 |   8825 | Center-Manager  |
| 113 | Vaishnavi     | vaishnavi@gmail.com  |   28 |  250000 | Belagavi     | North-Karnataka  |   340967 |   8514 | Jr_Devloper     |
| 116 | Sushmitha     | sushmitha@gmail.com  |   53 |  690000 | Kathmandu    | Nepal            |   456789 |   8872 | Quality Trainee |
| 109 | Surya         | surya@gmail.com      |   75 |  800000 | Kolkata      | West-Bengal      |   906745 |   8625 | Jr_Devloper     |
| 104 | Suriya        | suriya@gmail.com     |   45 |  650000 | Pondey       | Pudecherry       |   634073 |   8827 | Socailist       |
| 105 | Srikanth      | srikanth@gmail.com   |   35 |  450000 | Wayanad      | Kerala           |   750073 |   8847 | Manager         |
| 117 | Mahalakshmi   | maha@gmail.com       |   53 |  680000 | Chennai      | Tamilnadu        |   600012 |   8205 | Quality lead    |
| 120 | Harish        | harish@gmail.com     |   45 |  100000 | Bhubaneshwar | Odisa            |   876542 |   8291 | Zone-Manager    |
| 118 | Deepthi       | deepthi@gmail.com    |   80 |  900000 | Amaravati    | Andra Pradesh    |    98751 |   8538 | Jr_Devloper     |
| 115 | Bharath       | bharath@gmail.com    |   42 | 1250000 | Kasimer      | Himachal Pradesh |   123243 |   8649 | Project-Manager |
| 111 | Aravind       | aravind@gmail.com    |   50 | 1000000 | Amaravati    | Andra Pradesh    |    98751 |   8080 | Data analyst    |
| 106 | Anjali        | anjali@gmail.com     |   53 |  750000 | Bhubaneshwar | Odisa            |   876542 |   8514 | Asst-Manager    |
| 107 | Anil          | anil@gmail.com       |   29 |  650000 | GandhiNagar  | Gujarath         |    98756 |   8181 | Team Lead       |
| 112 | Amith         | amith@gmail.com      |   23 |  350000 | Hyderbad     | Telangana        |   564523 |   8847 | Data Engineer   |
| 110 | Akitha        | akitha@gmail.com     |   70 | 9200000 | New Delhi    | North-India      |   123452 |   8403 | Sr_Devloper     |
| 103 | Ajith Kumar   | ajith@gmail.com      |   55 |  750000 | Chennai      | Tamilnadu        |   600073 |   7495 | Bike-Racer      |
| 108 | Aarith        | aarthi@gmail.com     |   70 |  500000 | Mumbai       | Maharastha       |   897645 |   8958 | Trainee         |
+-----+---------------+----------------------+------+---------+--------------+------------------+----------+--------+-----------------+

21. Write a query to show person whose name's last third word is 'j' and salary is more then 30000. 
22. Write a query to show all people who live in 'Bangalore' and 'Wayanad'.
mysql> select * from employee where city="Wayanad" or city="Bangalore";
+-----+----------+--------------------+------+--------+-----------+-----------+----------+--------+-------------+
| eid | ename    | email              | eage | esal   | city      | state     | zin_code | mobile | jobrole     |
+-----+----------+--------------------+------+--------+-----------+-----------+----------+--------+-------------+
| 101 | Vasu     | Vasu@gmail.com     |   23 | 340000 | Bangalore | Karnataka |   560073 |   8131 | Jr_Devloper |
| 105 | Srikanth | srikanth@gmail.com |   35 | 450000 | Wayanad   | Kerala    |   750073 |   8847 | Manager     |
+-----+----------+--------------------+------+--------+-----------+-----------+----------+--------+-------------+
2 rows in set (0.00 sec)

23. Write a query to fetch people with first name conunt is 5.
mysql> select * from employee order by ename limit 5;
+-----+-------------+------------------+------+---------+-------------+-------------+----------+--------+---------------+
| eid | ename       | email            | eage | esal    | city        | state       | zin_code | mobile | jobrole       |
+-----+-------------+------------------+------+---------+-------------+-------------+----------+--------+---------------+
| 108 | Aarith      | aarthi@gmail.com |   70 |  500000 | Mumbai      | Maharastha  |   897645 |   8958 | Trainee       |
| 103 | Ajith Kumar | ajith@gmail.com  |   55 |  750000 | Chennai     | Tamilnadu   |   600073 |   7495 | Bike-Racer    |
| 110 | Akitha      | akitha@gmail.com |   70 | 9200000 | New Delhi   | North-India |   123452 |   8403 | Sr_Devloper   |
| 112 | Amith       | amith@gmail.com  |   23 |  350000 | Hyderbad    | Telangana   |   564523 |   8847 | Data Engineer |
| 107 | Anil        | anil@gmail.com   |   29 |  650000 | GandhiNagar | Gujarath    |    98756 |   8181 | Team Lead     |
+-----+-------------+------------------+------+---------+-------------+-------------+----------+--------+---------------+
5 rows in set (0.00 sec)

24. Write a query to group by people with their age.
mysql> select ename as Name, eage as Age from employee;
+---------------+-----+
| Name          | Age |
+---------------+-----+
| Vasu          |  23 |
| Vijay Shankar |  50 |
| Ajith Kumar   |  55 |
| Suriya        |  45 |
| Srikanth      |  35 |
| Anjali        |  53 |
| Anil          |  29 |
| Aarith        |  70 |
| Surya         |  75 |
| VijayBittu    |  70 |
| Akitha        |  70 |
| Aravind       |  50 |
| Amith         |  23 |
| Vaishnavi     |  28 |
| Yacob         |  35 |
| Bharath       |  42 |
| Sushmitha     |  53 |
| Mahalakshmi   |  53 |
| Deepthi       |  80 |
| Varalakshmi   |  75 |
| Harish        |  45 |
+---------------+-----+
21 rows in set (0.00 sec)
26. Write a query to find people with null salary.
27. Write a query to find people whose cities are not null.
28. Write a query to delete data of person whose id is 109.
29. Write a query to group by people with their age and show first three rows of data.
select eage as Age from employee group by eage order by eage limit 3;
+-----+
| Age |
+-----+
|  23 |
|  28 |
|  29 |
+-----+

30. Write a query to group by people of 'New Delhi' by their last name.
select ename as Name,count(*) as Count from employee where city="New Delhi" group by ename order by count desc;
+------------+-------+
| Name       | Count |
+------------+-------+
| VijayBittu |     1 |
| Akitha     |     1 |
+------------+-------+


