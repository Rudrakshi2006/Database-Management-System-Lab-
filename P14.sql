CREATE TABLE accounts (
    acc_id INT PRIMARY KEY,
    acc_name VARCHAR2(50),
    balance NUMBER(10,2)
);


CREATE OR REPLACE TRIGGER restrict_weekend_dml
BEFORE INSERT OR UPDATE OR DELETE ON accounts
DECLARE
    v_day VARCHAR2(10);
BEGIN
    v_day := TO_CHAR(SYSDATE, 'DY');

    IF v_day IN ('SAT', 'SUN') THEN
        RAISE_APPLICATION_ERROR(-20001, 'No operations allowed on weekends');
    END IF;
END;
/
