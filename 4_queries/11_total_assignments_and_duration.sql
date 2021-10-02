SELECT day,
COUNT(*) as number_of_assignments,
SUM(assignments.duration)
FROM assignments
GROUP BY day
ORDER BY day ASC;