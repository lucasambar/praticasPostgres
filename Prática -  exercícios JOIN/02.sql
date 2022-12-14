SELECT 
testimonials.id AS id
w.name AS writer
r.name AS recipient
testimonials.message AS message
FROM testimonials
JOIN users w
ON testimonials."writerId"=w.id
JOIN usersr
ON testimonials."recipientId"=users.id;
