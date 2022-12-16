SELECT 
    u.name AS writer
    COUNT(t.message) AS testiimonialCount,
FROM testimonials t
JOIN users u ON t."writerId"=u.id
WHERE t."writerId"=435
GROUP BY u.name;