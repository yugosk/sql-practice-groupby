Questão 1:
SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

Questão 2:
SELECT users.id, COUNT(educations.id) AS "educations" FROM users
JOIN educations on users.id = educations."userId"
GROUP BY users.id;

Questão 3:
SELECT users.name AS "writer", COUNT(testimonials.id) AS "testimonialCount" FROM users
JOIN testimonials ON users.id = testimonials."writerId"
WHERE users.id = 435
GROUP BY users.name;

Questão 4:
SELECT MAX(salary) AS "maximumSalary", roles.name AS "role" FROM jobs
JOIN roles ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY roles.name;

Bônus:
SELECT schools.name as "school", courses.name AS "course",
COUNT(educations.*)AS "studentsCount"
FROM educations
JOIN schools ON schools.id = educations."schoolId"
JOIN courses ON educations."courseId" = courses.id
WHERE educations.status='ongoing' OR educations.status='finished'
GROUP BY schools.name, courses.name
ORDER BY "studentsCount" DESC
LIMIT 3;