-- CREATE DATABASE msis_triage;

USE msis_triage;

CREATE TABLE Patient (
    patientGuid VARCHAR(64) PRIMARY KEY,
    firstName VARCHAR(64),
    lastName VARCHAR(64),
    dob DATE DEFAULT NULL,
    sexAtBirth CHAR(1) DEFAULT ''
);

INSERT INTO Patient (patientGuid, firstName, lastName, sexAtBirth, dob) VALUES
("SOME-REALLY-LONG-1234", "Sylvia", "Hernandez", "2012-09-01",  "F"),
("SOME-REALLY-SHORT-5678", "Vish", "Balasubramanian", "1950-12-15",  "M"),
("SOME-UNIQUE-ABCDE1", "J", "Doe", "1950",  ""),
("SOME-DUMMY-DATA", "Pepper", "Potts", "1990-01-31",  "F");

SELECT * FROM Patient;



CREATE TABLE PatientVisit (
  visitID INTEGER AUTO_INCREMENT,
  patientGuid VARCHAR (64) UNIQUE,
  visitDescription TEXT NOT NULL DEFAULT '',
  visitDateUtc DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  priority ENUM('Low','Medium','High') NOT NULL DEFAULT('Low'),
)

INSERT INTO PatientVisit (visitID, patientGuid, visitDescription) VALUES
(1,'SOME-REALLY-LONG-1235','ANXIETY FROM D&S')