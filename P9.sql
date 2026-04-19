CREATE OR REPLACE FUNCTION decimal_to_binary(n IN NUMBER)
RETURN VARCHAR2
IS
    binary_result VARCHAR2(100) := '';
    num NUMBER := n;
    remainder NUMBER;
BEGIN
    IF num = 0 THEN
        RETURN '0';
    END IF;

    WHILE num > 0 LOOP
        remainder := MOD(num, 2);
        binary_result := remainder || binary_result;
        num := TRUNC(num / 2);
    END LOOP;

    RETURN binary_result;
END;

SET SERVEROUTPUT ON;

DECLARE
    decimal_num NUMBER := 10;
    binary_value VARCHAR2(100);
BEGIN
    binary_value := decimal_to_binary(decimal_num);

    DBMS_OUTPUT.PUT_LINE('Binary equivalent of ' || decimal_num || ' is: ' || binary_value);
END;
/


/
