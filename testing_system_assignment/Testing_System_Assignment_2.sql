DROP DATABASE IF EXISTS testing_system_assignment;
CREATE DATABASE testing_system_assignment_2;
USE testing_system_assignment_2;

DROP DATABASE IF EXISTS  Department;
CREATE TABLE  Department(
	DepartmentID 	 SMALLINT ,
	DepartmentName 	VARCHAR(50)  
); 
DROP DATABASE IF EXISTS  Position;
CREATE TABLE Position (
	PositionID 			TINYINT  UNSIGNED,
	PositionName 		VARCHAR (20)  
);
DROP DATABASE IF EXISTS `Account`;
CREATE TABLE`Account`(
	AccountID		TINYINT UNSIGNED ,
	Email   		VARCHAR(50) UNIQUE KEY,
	Username        VARCHAR (50) UNIQUE KEY,
	FullName 		VARCHAR (50),
	DepartmentID 	TINYINT UNSIGNED,
	PositionID 		TINYINT UNSIGNED,
	CreateDate 		DATE,
	FOREIGN KEY (DepartementID) REFERENCES Departement( DepartementID)
);
DROP DATABASE IF EXISTS `Group`;
 CREATE TABLE `Group`(
	GroupID 		INT UNSIGNED,
	GroupName		VARCHAR(50),
	CreatorID 		TINYINT UNSIGNED,
	CreatorDate     DATE,
    FOREIGN KEY  (CreatorID) REFERENCES  `Account`(CreatorID)
); 
DROP DATABASE IF EXISTS GroupAccount;
 CREATE TABLE GroupAccount (
	GrouID 			INT UNSIGNED,
	AccountID		TINYINT UNSIGNED,
	JoinDane 		DATE 
 );
 DROP DATABASE IF EXISTS TyppeQuestion ;
 CREATE TABLE TyppeQuestion (
 TypeID				INT UNSIGNED ,
 TypeName			TINYINT UNSIGNED 
 );
 DROP DATABASE IF EXISTS CategoryQuestion ;
 CREATE TABLE		CategoryQuestion (
 CategoryID			INT UNSIGNED ,
 CategoryName		VARCHAR (20)
 );
 DROP DATABASE IF EXISTS Questiom;
  CREATE TABLE Question (
   QuestionID		INT ,
   Content			VARCHAR (50),
   CategoryID		VARCHAR (50),
   TypelID			INT UNSIGNED ,
   CreatorID		INT UNSIGNED ,
   CreateDate		DATE
   );
   DROP DATABASE IF EXISTS Answer ;
    CREATE TABLE Answer (
		AnswerID 		VARCHAR(50),
		Content 		VARCHAR(50),
		QuesrtionID		 VARCHAR(50),
		isCorret		 VARCHAR(50)
    );
    DROP DATABASE IF EXISTS ExamID ;
     CREATE TABLE ExamID (
		 ExamID 		INT PRIMARY KEY ,
		 Title 			INT,
		 CategonryID 	VARCHAR(50),
		 Duration 		TIME,
		 CreatorID 		VARCHAR(50),
		 CreateDate		 DATETIME
     );
     DROP DATABASE IF EXISTS ExamQuestion ;
      CREATE TABLE ExamQuestion (
		  ExamID 		INT ,
		  QuestionID 	VARCHAR(50)
      );
   
   INSERT INTO `Deparment` (`DeparmentName`) VALUES 
								(1,'Marketing'		),
								(2,'SALE'			),
								(3,'Bao ve'			),
								(4,'Nhan su'		),
								(5,'Ky thuat'		),
								(6,'Tai chinh'		),
								(7,'Pho giam doc'	),
								(8,'Giam doc	'	),
								(9,'Thu ki'			),
								(10,'Ban hang'		);
 
 INSERT INTO `Account`		(Email,FulName,DepartmentID,PositionID,CreateDate)
 VALUES
		('haidang29productions@gmail.com',		'dangblack',			'5',	'1',	'2020-03-05'),
		('Account1@gmail.com',					'quanganhh',			'1',	'2',	'2020-03-05'),
		('Account2@gmail.com',					'vanchien',				'2',	'3',	'2020-03-07'),
		('Account3@gmail.com',					'cocoduongqua',			'3',	'4',	'2020-03-08'),
		('Account4@gmail.com',					'doccocaubai',			'4',	'4',	'2020-03-10'),
		('Dapphatchetngay@gmail.com',			'khabanh',				'6',	'3',	'2020-04-05'),
		('Songcodaoly@gmail.com',				'huanhoahong',			'7',	'2', 	'2020-05-09' ),
		('sontungmtp@gmail.com',				'tungnui',				'8',	'1',	'2020-04-07'),
		('duonghuu@gmail.com',					'duonghuu',				'9',	'2',	'2020-04-07'),
		('Vtiaccady@gmail.com',					'Vtiaccady',			'10',	'1',	'2020-04-09');
        
        
  INSERT INTO `Group`	(GroupID,CreatorID,CreateID)   
  VALUES  
		('Testing system',5,'2019-03-05'),
		('Development',1,'2020-03-07'),
		('VTI Sale',01,'2020-03-09'),
		('VTI Sale',02,'2020-03-10'),
		('VTI Sale',03,'2020-03-28'),
		('VTI Creator',6,'2019-04-06'),
		('VTI Marketing01',7,'2020-04-07'),
		('Managemant',8,'2020-04-08'),
		('Chat with love',9,'2020-04-09'),
		('VI TI AI',10,'2020-04-10');
      
      
      
      
	## them du lieu 
   INSERT INTO `GroupAccount`	(GroupID,AccountID,JoinDate) 
   VALUES
				(1,		2	,'2019-03-05'		),
				(1,		2	,'2020-03-07'		),
				(3,		3	,'2020-03-09'		),
				(3,		4	,'2020-03-10'		),
				(5,		5	,'2020-03-28'		),
				(1,		3	,'2020-04-06'		),
				(1,		7	,'2020-04-07'		),
				(8,		3	,'2020-04-08'		),
				(1,		9	,'2020-04-09'		),
				(10,		10	,'2020-04-10'	);
                
   INSERT INTO Typequestion		(Typname)  
   VALUES
				('Essay'),
                ('Muntiple-choice');
                
   INSERT INTO Categoryquestion		(CategoryName) 
   VALUES
				('Java'),
				('ASP.NET'),
				('ADO.NET'),
				('SQL'),
				('Postman'),
				('Ruby'),
				('Python'),
				('C++'),
				('C Sharp'),
				('PHP');
     
     INSERT INTO `department` (`DepartmentName`) VALUES 
     ('Nguyen AAA'),
     ('Nguyen CCC'),
     ('Nguyen DDD'),
     ('Nguyen FFF');
     
INSERT INTO `testing_system_assignment_2`.`department` (`DepartmentName`) VALUES ('Nguyen BBB');

     
SELECT  *
FROM  Department;

# SEL 
SELECT *
FROM Department
WHERE DepartmentName = '%CCC';		
		
        
		