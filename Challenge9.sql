
drop table if exists titles;
create table titles(
    title_id varchar,
    title varchar,
    PRIMARY KEY (title_id)
);
select * from titles;

drop table if exists employees;
create table employees(
    emp_no INT,
    emp_title_id varchar,
    birth_date date,
    first_name varchar,
    last_name varchar,
    sex varchar,
    hire_date date,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
    
);
select * from employees;

drop table if exists departments;
create table departments(
    dept_no varchar,
    dept_name varchar,
    PRIMARY KEY (dept_no)
);
select * from departments;

drop table if exists dept_manager;
create table dept_manager(
    dept_no varchar,
    emp_no INT,
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    PRIMARY KEY (dept_no, emp_no)
);
select * from dept_manager;

drop table if exists dept_emp;
create table dept_emp(
    emp_no INT,
    dept_no varchar,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
    
);
select * from dept_emp;

drop table if exists salaries;
create table salaries(
    emp_no INT,
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
select * from salaries;