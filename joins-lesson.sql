--select * from PatientStay

--select * from DimHospital


SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital

SELECT
    *
FROM
    dIMHOSPITALBAD

SELECT
    h.Hospital AS HospitalFromLookup
    ,ps.Hospital AS HospitalOfThePatient
    ,h.HospitalType
    ,ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    --PatientStay ps LEFT JOIN DimHospitalBad h ON ps.Hospital = h.Hospital
    DimHospitalBad h FULL OUTER JOIN PatientStay ps ON ps.Hospital = h.Hospital

SELECT
    *
FROM
    DimHospitalBad

--list patients in the PRU
SELECT
    ps.PatientId
    ,ps.AdmittedDate
    ,ps.DischargeDate
FROM
    PatientStay ps
WHERE
    ps.Hospital = 'PRU'

