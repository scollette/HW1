CREATE OR REPLACE FUNCTION managerDetails (v_dept_id employees.department_id%TYPE)
 RETURN VARCHAR IS
v_lastName employees.last_name%TYPE;
v_firstName employees.first_name%TYPE;

BEGIN
SELECT e.last_name, e.first_name INTO v_lastName, v_firstName
FROM employees e join departments d
ON (d.manager_id = e.employee_id)
WHERE d.department_id = v_dept_id;

RETURN v_lastName || v_firstName

END;