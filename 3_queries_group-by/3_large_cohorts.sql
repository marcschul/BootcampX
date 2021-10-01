SELECT cohorts.name as cohort_name, COUNT(students.id) as student_count
FROM cohorts
JOIN students on cohorts.id = cohort_id
GROUP BY cohort_name
HAVING COUNT(students.id) >= 18
ORDER BY student_count ASC, cohort_name ASC;