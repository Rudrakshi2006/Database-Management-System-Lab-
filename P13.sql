CREATE TABLE route_header (
    route_id INT PRIMARY KEY,
    origin VARCHAR2(20),
    destination VARCHAR2(20),
    fare NUMBER(7,2),
    distance INT,
    capacity INT
);
INSERT INTO route_header VALUES (101, 'Delhi', 'Jaipur', 0, 250, 150);
INSERT INTO route_header VALUES (102, 'Delhi', 'Mumbai', 0, 800, 200);
INSERT INTO route_header VALUES (103, 'Delhi', 'London', 0, 4000, 300);

CREATE OR REPLACE PROCEDURE update_fare(p_id INT)
AS
    v_dist INT;
BEGIN
    SELECT distance INTO v_dist
    FROM route_header
    WHERE route_id = p_id;

    IF v_dist < 500 THEN
        UPDATE route_header SET fare = 190.98 WHERE route_id = p_id;
        DBMS_OUTPUT.PUT_LINE('Fare updated to 190.98');

    ELSIF v_dist BETWEEN 501 AND 1000 THEN
        UPDATE route_header SET fare = 876 WHERE route_id = p_id;
        DBMS_OUTPUT.PUT_LINE('Fare updated to 876');

    ELSE
        DBMS_OUTPUT.PUT_LINE('Distance > 1000. No fare update.');
    END IF;
END;
/
