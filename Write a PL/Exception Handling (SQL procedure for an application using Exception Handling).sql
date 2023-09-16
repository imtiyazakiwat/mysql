CREATE TABLE customer6161(
  id NUMBER(10),
  name VARCHAR2(10),
  age NUMBER(10),
  address VARCHAR2(10),
  salary NUMBER(10)
);

INSERT INTO customer6161 VALUES('1', 'Ramesh', '23', 'Allahabad', '20000');
INSERT INTO customer6161 VALUES('2', 'Suresh', '22', 'Kanpur', '22000');
INSERT INTO customer6161 VALUES('3', 'Mahesh', '24', 'Ghaziabad', '24000');
INSERT INTO customer6161 VALUES('4', 'Chandan', '25', 'Noida', '26000');
INSERT INTO customer6161 VALUES('5', 'Alex', '21', 'Paris', '28000');
INSERT INTO customer6161 VALUES('6', 'Sunita', '20', 'Delhi', '30000');

DECLARE
  c_id customer6161.id%TYPE := 8;
  c_name customer6161.name%TYPE;
  c_addr customer6161.address%TYPE;
BEGIN
  SELECT name, address INTO c_name, c_addr
  FROM customer6161
  WHERE id = c_id;

  DBMS_OUTPUT.PUT_LINE('Name:' || c_name);
  DBMS_OUTPUT.PUT_LINE('Address:' || c_addr);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No such customer!');
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('ERROR!');
END;
/
