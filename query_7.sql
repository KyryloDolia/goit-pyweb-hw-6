SELECT 
    s.fullname AS student_name,
    gr.grade,
    gr.subject_id 
FROM 
    grades gr
JOIN 
    students s ON gr.student_id = s.id
WHERE 
    s.group_id = 1
    AND gr.subject_id = 1;
