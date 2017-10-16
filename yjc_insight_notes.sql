CREATE TABLE registeredStaff (
  /*Staff who have begun an insight meeting*/
Id serial PRIMARY KEY,
Session_Day  DATE,
First_Name TEXT NOT NULL,
Last_Name TEXT NOT NULL,
Title TEXT,
MeetingStart TIME,
Interviewer1 TEXT,
Interviewer2 TEXT,
Completed TEXT);

CREATE TABLE match (
  /*Lists winners of matches*/
match serial PRIMARY KEY,
player1_id SMALLINT,
player2_id SMALLINT,
winner SMALLINT);



function registerStaff(){
  registerStaffSQL = """INPUT INTO registeredStaff (Session_Day, First_Name, Last_Name, Title, Start, Interviewer1, Interviewer2) VALUES (dateField, timeField, firstNameField, lastNameField, titleField, interviewerField, interviewer2Field)"""
  cur.execute(registerStaffSQL)
  cnx.commit()
  popup.style.display = "none";
}

DROP PROCEDURE IF EXISTS `registerStaff`
GO

DELIMITER //
CREATE PROCEDURE registerStaff
     (
        IN  Id BIGINT,
        IN  Session_Day DATE,
        IN  First_Name TEXT,
        IN  Last_Name TEXT,
        IN  Title TEXT,
        IN  MeetingStart TIME,
        IN  Interviewer1 TEXT,
        IN  Interviewer2 TEXT
      )
BEGIN

    INSERT INTO registeredStaff
         (
           Session_Day,
           First_Name,
           Last_Name,
           Title,
           MeetingStart,
           Interviewer1,
           Interviewer2
         )
    VALUES
         (
           Session_Day,
           First_Name,
           Last_Name,
           Title,
           MeetingStart,
           Interviewer1,
           Interviewer2
         );
END//

GO
