CREATE OR REPLACE PROCEDURE calc_grade(
    m1 NUMBER, m2 NUMBER, m3 NUMBER, m4 NUMBER
)
AS
    tot NUMBER;
    avg_marks NUMBER;
BEGIN
    tot := m1 + m2 + m3 + m4;
    avg_marks := tot / 4;

    DBMS_OUTPUT.PUT_LINE('Total: ' || tot);
    DBMS_OUTPUT.PUT_LINE('Average: ' || avg_marks);

    IF avg_marks >= 75 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: A');
    ELSIF avg_marks >= 60 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: B');
    ELSIF avg_marks >= 35 THEN
        DBMS_OUTPUT.PUT_LINE('Grade: C');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Grade: FAIL');
    END IF;
END;
/

SET SERVEROUTPUT ON;
EXEC calc_grade(80, 70, 90, 85);
