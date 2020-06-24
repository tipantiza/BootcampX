SELECT teachers.name as teacher_name, students.name as student_name, assignments.name as assignments_name, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM teachers
JOIN assistance_requests ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY duration;
