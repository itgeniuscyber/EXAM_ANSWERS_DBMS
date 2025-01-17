
CREATE TABLE Visit_Record (
    Visit_ID INT PRIMARY KEY,
    Patient_ID INT,
    Visit_Date DATE,
    Doctor_Assigned VARCHAR(100),
    Diagnosis TEXT,
    Treatment TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
);