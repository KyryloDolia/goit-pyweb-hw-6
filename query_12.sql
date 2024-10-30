SELECT 
    s.fullname AS student_name,
    gr.grade,
    gr.grade_date
FROM 
    grades gr
JOIN 
    students s ON gr.student_id = s.id
WHERE 
    s.group_id = 1
    AND gr.subject_id = 1
    AND gr.grade_date = (
        SELECT MAX(grade_date)
        FROM grades
        WHERE subject_id = 1
    );
