CREATE TABLE emp (
    emp_id INT,
    emp_name VARCHAR2(50),
    salary NUMBER
);

CREATE TABLE audit_emp (
    emp_id INT,
    emp_name VARCHAR2(50),
    salary NUMBER,
    operation VARCHAR2(10)
);

CREATE OR REPLACE TRIGGER trg_audit_emp
AFTER INSERT OR UPDATE OR DELETE ON emp
FOR EACH ROW
BEGIN
    IF INSERTING THEN
        INSERT INTO audit_emp VALUES (:NEW.emp_id, :NEW.emp_name, :NEW.salary, 'INSERT');

    ELSIF UPDATING THEN
        INSERT INTO audit_emp VALUES (:NEW.emp_id, :NEW.emp_name, :NEW.salary, 'UPDATE');

    ELSIF DELETING THEN
        INSERT INTO audit_emp VALUES (:OLD.emp_id, :OLD.emp_name, :OLD.salary, 'DELETE');
    END IF;
END;
/
