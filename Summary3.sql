use gt081024;
create database company_db;
use company_db;
create table employees(
	id INT PRIMARY KEY AUTO_INCREMENT,
	name varchar(50) NOT NULL,
	position varchar(50) NOT NULL,
	salary decimal(10,2) check(salary > 0),
	hire_date varchar(10) NOT NULL
    );
    
    alter table employees
    add column email varchar(50),
    drop column hire_date,
    rename column position to job_title,
    modify column salary int,
    add column department varchar(50) after job_title;
    
    insert into employees (name, job_title, department, salary, email)
    values ('Анна Иванова', 'Менеджер', 'Отдел продаж', 60000, 'anna.ivanova@example.ru'),
    ('Иван Смирнов', 'Разработчик', 'IT', 75000, 'ivan.smirnov@example.com'),
    ('Мария Петрова', 'Бухгалтер', 'Финансы', 50000, 'maria.petrova@example.com'),
    ('Петр Васильев', 'Разработчик', 'IT', 80000, 'petr.vasiliev@example.ru'),
    ('Екатерина Соколова', 'HR-специалист', 'HR', 55000, 'ekaterina.sokolova@example.com'),
    ('Алексей Кузнецов', 'Менеджер по продажам', 'Отдел продаж', 65000, 'alexey.kuznetsov@example.ge'),
    ('Ольга Морозова', 'Аналитик', 'Финансы', 70000, 'olga.morozova@example.com');
    
    select *
	from employees
    where department in ('IT', 'Финансы');
    
    select *
    from employees
    where name like '% С%';
    
	select *
    from employees
    where email like '%@example.com';
    
	select *
    from employees
    where salary between 60000 and 75000;
    
    select *
    from employees
    where job_title like '%Менеджер%';
    
    select *
    from employees
    where department != 'HR';
    
    select *
    from employees
    where salary > 70000 or department = 'Финансы';
    
    select *
    from employees
    where email like '%.ru' or email like '%.ge';
    
    select *
    from employees
    where name like '% %ов%' or name like '% %ев%';
    
    select *
    from employees
    where salary < 55000 and department != 'IT';
    
    select *
    from employees
    order by name;
    
	select *
    from employees
    order by salary desc;
    
    select *
    from employees
    where department in ('IT', 'Финансы')
    order by salary desc;
    
	select *
	from employees
	where salary > 60000
	order by SUBSTRING_INDEX(name, ' ', -1) asc;  -- мы это не проходили, но нагуглила
    
    select distinct department
	from employees;
    
    select distinct job_title
	from employees;
    
    drop table employees;
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    
