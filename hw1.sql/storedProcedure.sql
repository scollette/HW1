CREATE OR REPLACE PROCEDURE managers(p_dept_id int,p_manager_id int)IS
BEGIN
update departments 
set department_id = p_dept_id
where manager_id = p_manager_id
end;
execute managers(100,101)
execute managers(99,101)
