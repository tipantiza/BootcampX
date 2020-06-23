  SELECT  students.name, cohorts.name, students.start_date as student_start_date, cohorts.start_date as cohort_start_date
  FROM students 
  JOIN cohorts on cohorts.id = cohort_id
  WHERE cohorts.start_date != students.start_date
  ;
 