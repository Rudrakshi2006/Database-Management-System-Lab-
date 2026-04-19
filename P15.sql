SET SERVEROUTPUT ON;

CREATE OR REPLACE PROCEDURE get_employee_name(p_emp_id NUMBER)
IS
    v_name emp.ename%TYPE;
BEGIN
    SELECT ename INTO v_name
    FROM emp
    WHERE empno = p_emp_id;

    DBMS_OUTPUT.PUT_LINE('Employee Name: ' || v_name);

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error: Employee not found');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Multiple records found');
END;
/




SET SERVEROUTPUT ON;

DECLARE
    marks NUMBER := 35;
    fail EXCEPTION;
BEGIN
    IF marks < 40 THEN
        RAISE fail;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Pass');

EXCEPTION
    WHEN fail THEN
        DBMS_OUTPUT.PUT_LINE('Fail: Marks less than 40');
END;
/
