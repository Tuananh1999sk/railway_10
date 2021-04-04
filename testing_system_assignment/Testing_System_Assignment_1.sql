DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1; 

CREATE TABLE Department (
	 department_id 		INT,
	 departmentname     VARCHAR(50)
); 

CREATE TABLE Position (
	positionID 		INT,
	positionName 	VARCHAR(50) 
);

CREATE TABLE  `Account` (
	AccountID 		INT,
	Email  			VARCHAR(50),
	Username       INT,
	FullName 		INT,
	DepartmentID 	VARCHAR(50),
	PositionID 		INT,
	CreateDate 		VARCHAR(50)
);
 CREATE TABLE `Group` (
	GroupID 		VARCHAR(50),
	GroupName		 VARCHAR(50),
	CreatorID 		VARCHAR(50),
	CreatorDate 	VARCHAR(50)
);
 CREATE TABLE GroupAccount (
	GrouID 			VARCHAR(50),
	AccountID		 VARCHAR(50),
	JoinDane 		VARCHAR(50)
 );
  CREATE TABLE TypeQuestion (
	TypeID 			VARCHAR(50),
	TypeName 		VARCHAR(50)
  );
   CREATE TABLE CategoryQuestion(
	 QestionID VARCHAR(50),
	   Content 			VARCHAR(50),
	   CategoryID 		VARCHAR(50),
	   TypeID			 VARCHAR(50),
	   CreatorID		 VARCHAR(50),
	   CreateDate 		VARCHAR(50)
   );
   CREATE TABLE Question (
   QuestionID		INT ,
   Content			VARCHAR (50),
   CategoryID		VARCHAR (50),
   TypelID			INT UNSIGNED ,
   CreatorID		INT ,
   CreateDate		DATE
   );
    CREATE TABLE Answer (
		AnswerID 		VARCHAR(50),
		Content 		VARCHAR(50),
		QuesrtionID		 VARCHAR(50),
		isCorret		 VARCHAR(50)
    );
     CREATE TABLE ExamID (
		 ExamID 		VARCHAR(50),
		 Title 			VARCHAR(50),
		 CategonryID 	VARCHAR(50),
		 Duration 		VARCHAR(50),
		 CreatorID 		VARCHAR(50),
		 CreateDate		 VARCHAR(50)
     );
      CREATE TABLE ExamQuestion (
		  ExamID 		VARCHAR(50),
		  QuestionID 	VARCHAR(50)
      );
   
   
   
