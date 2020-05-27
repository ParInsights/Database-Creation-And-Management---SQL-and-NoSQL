-- Creating a guest user for database user CREATE USER guestuser FOR LOGIN guestuser 
SELECT * FROM vc_User -- revoke select permissions! 
REVOKE SELECT ON vc_User to guestuser 
--Grant read permission on the user table GRANT SELECT ON vc_MostProlificUsers to guestuser 
-- allow guestuser to run some stored procedures GRANT EXECUTE ON vc_AddUserLogin TO guestuser 
GRANT EXECUTE ON vc_FinishVidCast TO guestuser SELECT * FROM vc_UserLogin 
-- finding info about this clearly revolutionary vidcast SELECT * FROM vc_VidCast WHERE VidCastTitle LIKE 'Rock Your Way To Success' 
REVOKE EXECUTE ON vc_AddUserLogin to guestuser REVOKE EXECUTE ON vc_FinishVidCast to guestuser 
-- Creating a new table CREATE TABLE lab_Test ( 
lab_TestID int identity primary key, lab_testText varchar(20) unique not null 
) 
CREATE TABLE lab_Log ( lab_LogID int identity primary key, lab_logInt int unique not null 
) 
INSERT INTO lab_Test (lab_testText) VALUES ('One'), ('Two'), ('Three') INSERT INTO lab_log (lab_logInt) SELECT lab_TestID FROM lab_Test 
--STEP 1 BEGIN TRANSACTION BEGIN TRANSACTION 
-- STEP 2 ASSESS DECLARE @rc int SET @rc = @@ROWCOUNT -- Initially 0 
-- STEP 3 MAKE CHANGE INSERT INTO lab_Test (lab_testText) VALUES (‘Patel’) 
-- STEP 4 CHECK STATE OF THINGS IF(@rc = @@ROWCOUNT) -- if @@ROWCOUNT was not changed, fail BEGIN 
-- STEP 5 -- if failed SELECT 'Bail out! It Failed!' ROLLBACK 
END ELSE -- Success! Continue. BEGIN -- Step 5 if succeeded 
SELECT 'YAY! It worked!' INSERT INTO lab_Log (lab_logInt) VALUES (@@identity) COMMIT 
END 
SELECT * FROM lab_Log SELECT * FROM lab_Test 
