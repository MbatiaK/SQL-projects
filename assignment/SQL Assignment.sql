-- Q1. Create and use schema 
CREATE SCHEMA nairobi_academy;

-- Q2. Create students table 
CREATE TABLE students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender VARCHAR(1),
    date_of_birth DATE,
    class VARCHAR(10),
    city VARCHAR(50)
);
-- Q3. Create subjects table 
CREATE TABLE subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100) NOT NULL UNIQUE,
    department VARCHAR(50),
    teacher_name VARCHAR(100),
    credits INT
);

-- Q4. Create exam_results table 
CREATE TABLE exam_results (
    result_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    subject_id INT NOT NULL,
    marks INT NOT NULL,
    exam_date DATE,
    grade VARCHAR(2)
);

-- Q5 & Q6. Alterations 
ALTER TABLE students ADD phone_number VARCHAR(20);
ALTER TABLE subjects RENAME COLUMN credits TO credit_hours;

-- Q7. Remove phone_number 
ALTER TABLE students DROP COLUMN phone_number;

--Q8. Insert Students [cite: 9, 27]

INSERT INTO students (student_id, first_name, last_name, gender, date_of_birth, class, city) VALUES
(1, 'Amina', 'Wanjiku', 'F', '2008-03-12', 'Form 3', 'Nairobi'),
(2, 'Brian', 'Ochieng', 'M', '2007-07-25', 'Form 4', 'Mombasa'),
(3, 'Cynthia', 'Mutua', 'F', '2008-11-05', 'Form 3', 'Kisumu'),
(4, 'David', 'Kamau', 'M', '2007-02-18', 'Form 4', 'Nairobi'),
(5, 'Esther', 'Akinyi', 'F', '2009-06-30', 'Form 2', 'Nakuru'),
(6, 'Felix', 'Otieno', 'M', '2009-09-14', 'Form 2', 'Eldoret'),
(7, 'Grace', 'Mwangi', 'F', '2008-01-22', 'Form 3', 'Nairobi'),
(8, 'Hassan', 'Abdi', 'M', '2007-04-09', 'Form 4', 'Mombasa'),
(9, 'Ivy', 'Chebet', 'F', '2009-12-01', 'Form 2', 'Nakuru'),
(10, 'James', 'Kariuki', 'M', '2008-08-17', 'Form 3', 'Nairobi');

select * from students

-- Q9. Insert Subjects 
INSERT INTO subjects (subject_id, subject_name, department, teacher_name, credit_hours) VALUES
(1, 'Mathematics', 'Sciences', 'Mr. Njoroge', 4),
(2, 'English', 'Languages', 'Ms. Adhiambo', 3),
(3, 'Biology', 'Sciences', 'Ms. Otieno', 4),
(4, 'History', 'Humanities', 'Mr. Waweru', 3),
(5, 'Kiswahili', 'Languages', 'Ms. Nduta', 3),
(6, 'Physics', 'Sciences', 'Mr. Kamande', 4),
(7, 'Geography', 'Humanities', 'Ms. Chebet', 3),
(8, 'Chemistry', 'Sciences', 'Ms. Muthoni', 4),
(9, 'Computer Studies', 'Sciences', 'Mr. Oduya', 3),
(10, 'Business Studies', 'Humanities', 'Ms. Wangari', 3);

select * from subjects;

-- Q10. Insert Exam Results 

INSERT INTO exam_results (result_id, student_id, subject_id, marks, exam_date, grade) VALUES
(1, 1, 1, 78, '2024-03-15', 'B'),
(2, 1, 2, 85, '2024-03-16', 'A'),
(3, 2, 1, 92, '2024-03-15', 'A'),
(4, 2, 3, 55, '2024-03-17', 'C'),
(5, 3, 2, 49, '2024-03-16', 'D'),
(6, 3, 4, 71, '2024-03-18', 'B'),
(7, 4, 1, 88, '2024-03-15', 'A'),
(8, 4, 6, 63, '2024-03-19', 'C'),
(9, 5, 5, 39, '2024-03-20', 'F'),
(10, 6, 9, 95, '2024-03-21', 'A');

select * from exam_results;

-- Q12 & Q13. Updates 
UPDATE students SET city = 'Nairobi' WHERE student_id = 5;
UPDATE exam_results SET marks = 59 WHERE result_id = 5;

select * from students

-- Q14. Delete 
DELETE FROM exam_results WHERE result_id = 9;


-- SECTION C
-- Q15. Form 4 students 
select * from students where class = 'Form 4'

-- Q16. Sciences department 
select * from subjects where department = 'Sciences';

-- Q17. Marks >= 70 
select * from exam_results where marks >= 70;

-- Q18. Female students 
select * from students where gender = 'F';

-- Q19. Form 3 AND Nairobi [cite: 41]
select * from students where class = 'Form 3' and city = 'Nairobi';

-- Q20. Form 2 OR Form 4 [cite: 42]
select * from students where class = 'Form 2' OR class = 'Form 4';

--PART 2
--SECTION A

--Q1. Between 50 and 80
select * from exam_results where marks between 50 AND 80;

-- Q2. Date range 
select * from exam_results where exam_date between '2024-03-15' AND '2024-03-18';

--Q3. IN operator 
select * from students where city in ('Nairobi', 'Mombasa', 'Kisumu');

-- Q4. NOT IN operator 
select * from students where class not in ('Form 2', 'Form 3');

-- Q5. LIKE (A or E) 
select * from students where first_name like 'A%' or first_name like 'E%';

-- Q6. LIKE (Contains 'Studies') 
select * from subjects where subject_name like '%Studies%';

--Section B
-- Q7. Count Form 3 
select count(*) from students where class = 'Form 3';

-- Q8. Count results >= 70
select count(*) from exam_results where marks >= 70;


--Section C

--Q9. Grade descriptions 

select *,
    case 
        when marks >= 80 then 'Distinction'
        when marks >= 60 then 'Merit'
        when marks >= 40 then 'Pass'
        else 'Fail'
    end as  performance
from exam_results;

select * from exam_results;

-- Q10. Student levels 
select first_name, last_name, class,
    case 
        when class in ('Form 3', 'Form 4') then 'Senior'
        when class in ('Form 1', 'Form 2') then 'Junior'
    end as student_level
from students;

select * from students;