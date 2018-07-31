create database school;
use school;

-- create table students(
--     id int not null auto_increment primary key,
--     first_name varchar(100) not null 
-- )

-- create table papers(
--     id int not null auto_increment primary key,
--     grade varchar(100) not null,
--     title varchar(100) not null,
--     student_id int not null,
--     foreign key(student_id) references students(id)
-- )


-- INSERT INTO students (first_name) VALUES 
-- ('Caleb'), ('Samantha'), ('Raj'), ('Carlos'), ('Lisa');

-- INSERT INTO papers (student_id, title, grade ) VALUES
-- (1, 'My First Book Report', 60),
-- (1, 'My Second Book Report', 75),
-- (2, 'Russian Lit Through The Ages', 94),
-- (2, 'De Montaigne and The Art of The Essay', 98),
-- (4, 'Borges and Magical Realism', 89);

-- select first_name, title, grade from students
--     right join papers on students.id = papers.student_id
--     ORDER BY papers.grade desc;


-- select first_name, ifnull(title, 'MISSING'), ifnull(grade, 0) from students
--     left join papers on students.id = papers.student_id
--     order by papers.grade desc;

-- select first_name, ifnull(avg(grade), 0) as 'avg' from students
--     left join papers on students.id = papers.student_id
--     group by students.id
--     order by avg desc;


-- select 
--     first_name,
--     ifnull(avg(grade), 0) as 'avg',
--     case
--         when ifnull(avg(grade), 0) >= 75 then 'PASSED'
--         else 'FAILED'
--     end as 'passing_status'
--     from students
--     left join papers on students.id = papers.student_id
--     group by students.id
--     order by avg desc;