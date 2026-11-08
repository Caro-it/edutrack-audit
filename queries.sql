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

-- Q6: insertar inscripción faltante (Lucia Fernandes - Advanced Python)
INSERT INTO enrollments (id, student_id, student_name, student_email, course_id, course_title,
category, enrollment_date, completion_percentage, passed, monthly_fee_paid, instructor)
VALUES (18, 3, 'Lucia Fernandes', 'lucia.fernandes@student.edutrack.com', 5, 'Advanced Python', 'Programming', '2025-04-01', 0, false, 69.99, 'Carlos Vega');

-- Q7: asignar 'Pending assignment' a instructor NULL
UPDATE enrollments
SET instructor = 'Pending assignment'
WHERE instructor IS NULL;

-- Q8: eliminar inscripciones de cuentas de prueba (@test.com)
-- SELECT previo para confirmar las filas afectadas
SELECT *
FROM enrollments
WHERE student_email LIKE '%@test.com';

-- Q9: inscripciones por categoría
SELECT category, COUNT(*)
FROM enrollments
GROUP BY category;

-- Q10: promedio de completion_percentage por curso (menor a mayor)
SELECT course_title, ROUND(AVG(completion_percentage), 2)
FROM enrollments
GROUP BY course_title
ORDER BY 2;

-- Q11: cursos con más de 3 inscripciones
SELECT course_title, COUNT(*)
FROM enrollments
GROUP BY course_title
HAVING COUNT(*) > 3;

-- Q12: ingresos totales por categoría (mayor a menor)
SELECT category, SUM(monthly_fee_paid)
FROM enrollments
GROUP BY category
ORDER BY 2 DESC;
