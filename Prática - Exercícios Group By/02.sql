SELECT 
    u.id AS id,
    COUNT(e."courseId") AS education
FROM educations e
JOIN users u ON e."userId"=u.id
GROUP BY u.id;