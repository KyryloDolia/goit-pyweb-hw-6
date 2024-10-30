SELECT 
    AVG(gr.grade) AS average_grade
FROM 
    grades gr
JOIN 
    subjects sub ON gr.subject_id = sub.id
WHERE 
    gr.student_id = 1
    AND sub.teacher_id = 1;
