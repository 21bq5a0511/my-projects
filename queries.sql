-- List all appointments for a given doctor
SELECT * FROM Appointments WHERE DoctorID = 1;

-- Show all unpaid bills
SELECT * FROM Billing WHERE Paid = FALSE;

-- Get patient details with their assigned doctor
SELECT p.FullName AS Patient, d.FullName AS Doctor, a.AppointmentDate
FROM Appointments a
JOIN Patients p ON a.PatientID = p.PatientID
JOIN Doctors d ON a.DoctorID = d.DoctorID;

--Get all data from patients
select * from patients
