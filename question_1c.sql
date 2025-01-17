SELECT p.Patient_ID, p.Full_Name, a.Allergy_Name, ec.Contact_Name, ec.Contact_Phone
FROM Patient p
JOIN Allergies a ON p.Patient_ID = a.Patient_ID
JOIN Emergency_Contact ec ON p.Patient_ID = ec.Patient_ID;
