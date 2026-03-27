-- Employee Attrition Analysis

-- 1. Total employees
SELECT COUNT(*) AS total_employees
FROM employees;

-- 2. Total attrition count
SELECT COUNT(*) AS attrition_count
FROM employees
WHERE attrition = 'Yes';

-- 3. Overall attrition rate
SELECT 
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*) AS attrition_rate
FROM employees;

-- 4. Attrition by department
SELECT 
    department,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS attrition_count,
    ROUND(COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY department
ORDER BY attrition_rate DESC;

-- 5. Attrition by job role
SELECT 
    job_role,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS attrition_count,
    ROUND(COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY job_role
ORDER BY attrition_rate DESC;

-- 6. Attrition by overtime
SELECT 
    overtime,
    COUNT(*) AS total_employees,
    COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) AS attrition_count,
    ROUND(COUNT(CASE WHEN attrition = 'Yes' THEN 1 END) * 100.0 / COUNT(*), 2) AS attrition_rate
FROM employees
GROUP BY overtime
ORDER BY attrition_rate DESC;
