SELECT cohorts.name as cohorts_name, COUNT(assignment_submissions.id) as total_submissions
FROM cohorts
JOIN students ON cohorts.id = cohort_id
JOIN assignment_submissions ON student_id  = students.id  
GROUP BY cohorts.name
ORDER BY COUNT(assignment_submissions.id) DESC
;