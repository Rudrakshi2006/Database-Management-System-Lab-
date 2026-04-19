CREATE TABLE emp_data (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR2(50),
    salary NUMBER
);

CREATE OR REPLACE TRIGGER check_salary_limit
BEFORE INSERT ON emp_data
FOR EACH ROW
DECLARE
    v_min NUMBER;
    v_max NUMBER;
BEGIN
    SELECT NVL(MIN(salary),0), NVL(MAX(salary),0)
    INTO v_min, v_max
    FROM emp_data;

    IF v_min > 0 AND :NEW.salary > (10 * v_min) THEN
        RAISE_APPLICATION_ERROR(-20002, 'Salary too high');
    END IF;

    IF v_max > 0 AND :NEW.salary < (v_max / 10) THEN
        RAISE_APPLICATION_ERROR(-20003, 'Salary too low');
    END IF;
END;
/
