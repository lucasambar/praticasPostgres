SELECT 
users.id,
users.name,
roles.name AS role,
companies.name AS company,
experiences."startDate"
FROM experiences
JOIN users
ON users.id=experiences."userId"
JOIN roles
ON roles.id=experiences."roleId"
JOIN companies
ON companies.id=experiences."companyId"
WHERE experiences."userId" = 30
AND experiences."endDate" IS NULL;