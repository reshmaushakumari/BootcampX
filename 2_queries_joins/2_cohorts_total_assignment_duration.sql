SELECT sum(duration) as total_duration
FROM assignment_submissions where student_id in (SELECT s.id
FROM students s JOIN cohorts c
ON s.cohort_id = c.id
WHERE c.name = 'FEB12');