-- 1. Создать базу данных homeworks
-- 2.  В этой базе создать таблицу staff с полями:
--  • id – integer - уникальное значение, не пустое, с автозаполнением 
--  • firstname - varchar - не пустое
--  • lastname - varchar - не пустое
--  • position - varchar
--  • age - integer - от 0 до 110(вкл.)
--  • has_child – char только один символ, по умолчанию 'N' 
--  • username - varchar - уникальный
-- 3. Добавить 5 строк.

create database homeworks;
use homeworks;
create table staff(
id int primary key auto_increment,
firstname varchar(50) not null,
lastname varchar(50) not null,
position varchar(50),
age int check(age between 0 and 110),
has_child char(1) default 'N',
username varchar(50) unique not null
);

insert into staff(firstname, lastname, position, age, has_child, username)
values ('John', 'Smith', 'FE', 37, 'Y', 'john_sm'),
('Lisa', 'Braun', 'Manager', 25, 'N', 'lis_br'),
('David', 'Miller', 'QA', 43, 'Y', 'david_m'),
('Anna', 'Davis', 'Designer', 30, 'Y', 'anna_ds'),
('Olga', 'Petrova', 'HR', 27, 'N', 'olya_p');

select * from staff;

