DECLARE
    num1 NUMBER := 10;
    num2 NUMBER := 0;
    result NUMBER;
BEGIN
    result := num1 / num2;

    DBMS_OUTPUT.PUT_LINE('Result: ' || result);

EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Division by zero is not allowed');
END;
/

DECLARE
    invalid_age EXCEPTION;
    age NUMBER := 16;
BEGIN
    IF age < 18 THEN
        RAISE invalid_age;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Eligible to vote');

EXCEPTION
    WHEN invalid_age THEN
        DBMS_OUTPUT.PUT_LINE('Error: Age must be 18 or above');
END;
/

DECLARE
    low_salary EXCEPTION;
    v_salary emp.sal%TYPE;
BEGIN
    SELECT sal INTO v_salary
    FROM emp
    WHERE empno = 101;

    IF v_salary < 30000 THEN
        RAISE low_salary;
    END IF;

    DBMS_OUTPUT.PUT_LINE('Salary is valid');

EXCEPTION
    WHEN low_salary THEN
        DBMS_OUTPUT.PUT_LINE('Error: Salary below minimum limit');

    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee not found');

    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error: Multiple employees found');
END;
/
