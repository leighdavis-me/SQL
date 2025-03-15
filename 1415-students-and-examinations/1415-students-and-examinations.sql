SELECT T.student_id, T.student_name, U.subject_name, COUNT(E.student_id) AS attended_exams
FROM Students T
JOIN Subjects U
LEFT JOIN Examinations E
ON T.student_id = E.student_id AND U.subject_name = E.subject_name
GROUP BY T.student_id, T.student_name, U.subject_name
ORDER BY T.student_id, T.student_name, U.subject_name;