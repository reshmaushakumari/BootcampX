SELECT students.name student, avg(duration) as average_assignment_duration
FROM assignment_submissions JOIN students
ON students.id = student_id
WHERE students.end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;