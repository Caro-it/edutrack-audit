-- Q1: inscripciones Intro to Python
SELECT student_name, student_email, completion_percentage
FROM enrollments
WHERE course_title = 'Intro to Python';

-- Q2: inscripciones con completion_percentage < 10
SELECT *
FROM enrollments
WHERE completion_percentage < 10;

-- Q3: inscripciones con instructor NULL
FROM enrollments
WHERE instructor is null;

-- Q4: top 5 sin aprobar por completion
SELECT *
FROM enrollments
WHERE passed = false
ORDER BY completion_percentage DESC
LIMIT 5;

-- Q5: inscripciones desde 2024-07-01
SELECT *
FROM enrollments
WHERE enrollment_date >= '2024-07-01'
ORDER BY enrollment_date DESC;



