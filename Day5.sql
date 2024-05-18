show databases ;

CREATE DATABASE TriggerExample;   

USE TriggerExample;     -- Logged into Database

-- DDL(Data definition Language) is Used & Creating PrimaryTable

CREATE TABLE PrimaryTable(                
id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(20) not null,
gender CHAR CHECK (gender in ('m','f')),
phonenumber BIGINT UNIQUE,
location DATETIME DEFAULT current_timestamp
);
-- Populating The Values in PrimaryTable
               
INSERT INTO PrimaryTable(firstname,gender,phonenumber) values('Hariharan','m',12345678);
INSERT INTO PrimaryTable(firstname,gender,phonenumber) values('Revathi','f',98765543);
INSERT INTO PrimaryTable(firstname,gender,phonenumber) values('saranya','f',12398877);

SELECT * FROM PrimaryTable  ;

-- DDL(Data definition Language) is Used & Creating SecondaryTable The Table Remains same

CREATE TABLE SecondaryTable(              
id INT,
users varchar(255),
action_performed varchar(255),
loc datetime default current_timestamp
);

SHOW TABLES;

SELECT * FROM SecondaryTable;

-- Create Trigger When PrimaryTable Belongs to Insert Operation Secondary Tables is also affected

DELIMITER //
CREATE TRIGGER Trg_Action           
AFTER INSERT ON PrimaryTable
FOR EACH ROW
BEGIN
    DECLARE ID INT;
    SET ID = NEW.id;
    INSERT INTO SecondaryTable (id, users, action_performed) 
    VALUES (ID, USER(), 'inserted');
END//
DELIMITER ;

--  Create Trigger When PrimaryTable Belongs to Delete Operation Secondary Tables is also affected

DELIMITER //  
CREATE TRIGGER Trg_Action_delete         
AFTER DELETE ON PrimaryTable
FOR EACH ROW
BEGIN
    INSERT INTO SecondaryTable (id, users, Action_Performed)
    VALUES (OLD.id, USER(), 'Deleted');
END//
DELIMITER ;

  --  Create Trigger When PrimaryTable Belongs to Updation Operation Secondary Tables is also affected
  
DELIMITER //  
CREATE TRIGGER Trg_Action_Update      
AFTER Update ON PrimaryTable
FOR EACH ROW
BEGIN
    INSERT INTO SecondaryTable (id, users, action_performed)
    VALUES (OLD.id, USER(), 'Updated');
END//

DELIMITER ;

-- Insertion Action is Done

INSERT INTO PrimaryTable(firstname,gender,phonenumber) values('saranya','f',1273977);

-- Updation Action is Done

UPDATE  Primarytable
SET phonenumber=898447757
WHERE id=1;

-- Delete Action is Done
DELETE FROM PrimaryTable
where id=4;


SELECT * FROM PrimaryTable;
SELECT * FROM SecondaryTable;
