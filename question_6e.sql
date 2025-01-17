CREATE OR REPLACE TRIGGER Check_Limit_Stud_Sports
BEFORE INSERT ON Stud_Sport
FOR EACH ROW
BEGIN
   IF (SELECT COUNT(*) FROM Stud_Sport WHERE studentid = :NEW.studentid) >= 3 THEN
      RAISE_APPLICATION_ERROR(-20001, 'A student can only participate in a maximum of 3 sports.');
   END IF;
END;
