SELECT class FROM (SELECT DISTINCT student, class FROM courses) t GROUP BY class HAVING COUNT(*) >= 5
