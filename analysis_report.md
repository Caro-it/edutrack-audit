# Auditoría de Datos — EduTrack (Q3)

Análisis de la tabla `enrollments` antes del ciclo de reportes del Q3. Las consultas Q1–Q5 se ejecutaron sobre los datos originales; Q9–Q12 después de las correcciones (Q6–Q8).

## Q1 - Inscripciones en 'Intro to Python'
Resultado: 5 inscripciones
- Emily Watson – emily.watson@student.edutrack.com – 85%
- Klaus Weber – klaus.weber@student.edutrack.com – 92%
- Marco Rossi – marco.rossi@student.edutrack.com – 88%
- James Miller – james.miller@test.com – 30%
- Priya Sharma – priya.sharma@student.edutrack.com – 55%

## Q2 - Inscripciones con completion_percentage < 10 (posibles abandonos)
Resultado: 4 inscripciones
- Lucia Fernandes – Web Design Basics – 5%
- Lucia Fernandes – Digital Marketing 101 – 3%
- Yuki Nakamura – UI/UX Fundamentals – 0%
- Pierre Dubois – UI/UX Fundamentals – 0%

## Q3 - Inscripciones con instructor NULL
Resultado: 2 inscripciones (ids 10 y 11, ambas de UI/UX Fundamentals)

## Q4 - Top 5 por completion_percentage sin aprobar
Resultado: 5 inscripciones
1. Emily Watson – Web Design Basics – 60%
2. Priya Sharma – Intro to Python – 55%
3. Yuki Nakamura – Data Analysis with SQL – 45%
4. Emily Watson – Advanced Python – 40%
5. James Miller – Intro to Python – 30%

Observaciones:
- Emily Watson aparece dos veces porque tiene dos inscripciones sin aprobar en cursos distintos.
- James Miller (james.miller@test.com) es una cuenta de prueba: se eliminó en la Q8.

## Q5 - Inscripciones desde 2024-07-01 (más recientes primero)
Resultado: 9 inscripciones
1. 2025-03-05 – Emily Watson – Advanced Python
2. 2025-02-20 – Pierre Dubois – Data Analysis with SQL
3. 2025-01-10 – Priya Sharma – Intro to Python
4. 2024-12-01 – Priya Sharma – Digital Marketing 101
5. 2024-11-05 – Pierre Dubois – UI/UX Fundamentals
6. 2024-10-11 – Yuki Nakamura – UI/UX Fundamentals
7. 2024-09-03 – Yuki Nakamura – Data Analysis with SQL
8. 2024-08-09 – Marco Rossi – Intro to Python
9. 2024-07-01 – Lucia Fernandes – Digital Marketing 101

## Q6 - Inscripción faltante añadida
Resultado: 1 fila insertada (id 18) — Lucia Fernandes, Advanced Python, 2025-04-01, 0%, no aprobado, 69.99, instructor Carlos Vega.

## Q7 - Instructor NULL → 'Pending assignment'
Filas afectadas: 2 (ids 10 y 11, UI/UX Fundamentals). Tras el UPDATE, la Q3 devuelve 0 filas.

## Q8 - Eliminación de cuentas @test.com
Filas encontradas con el SELECT previo: 2 (id 13 James Miller, id 14 Alex Chen)
Filas eliminadas: 2. Tras el DELETE, el SELECT devuelve 0 filas.

## Q9 - Inscripciones por categoría
Resultado:
- Programming: 7
- Design: 4
- Data: 3
- Marketing: 2

## Q10 - Promedio de completado por curso (menor a mayor)
Resultado:
- UI/UX Fundamentals: 0.00
- Web Design Basics: 32.50
- Digital Marketing 101: 36.50
- Advanced Python: 45.00
- Data Analysis with SQL: 47.67
- Intro to Python: 80.00

## Q11 - Cursos con más de 3 inscripciones
Resultado:
- Intro to Python: 4

## Q12 - Ingresos totales por categoría (mayor a menor)
Resultado:
- Programming: 409.93
- Data: 179.97
- Design: 169.96
- Marketing: 59.98

## Conclusiones
- Categoría con más inscripciones e ingresos: Programming.
- Peor rendimiento: UI/UX Fundamentals (0% de completado medio y sin instructor asignado) y Web Design Basics (32.50%).
- Se corrigieron 2 registros sin instructor, se añadió 1 inscripción faltante y se eliminaron 2 cuentas de prueba.
