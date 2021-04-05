 DROP DATABASE IF EXISTS testing_system_assignment_2;
CREATE DATABASE testing_system_assignment_2;
USE testing_system_assignment_2;

-- DROP DATABASE IF EXISTS  Department;
CREATE TABLE `Department`(
	DepartmentID 	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	DepartmentName 	VARCHAR(50) NOT NULL UNIQUE KEY 
); 
-- DROP DATABASE IF EXISTS  Position;
CREATE TABLE Position (
	PositionID 			TINYINT  UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	PositionName 		VARCHAR (20)  
);
-- DROP DATABASE IF EXISTS `Account`;
CREATE TABLE `Account`(
	AccountID		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
	Email   		VARCHAR(50) NOT NULL UNIQUE KEY,
	Username        VARCHAR (50) NOT NULL UNIQUE KEY,
	FullName 		VARCHAR (50) NOT NULL,
    DepartmentID	TINYINT UNSIGNED NOT NULL,
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
 
 -- BỔ SUNG BẢNG VÀ CHỮA BÀI 2
 INSERT INTO `Account`		(Email,FulName,DepartmentID,PositionID,CreateDate)
 VALUES
		('haidang29productions@gmail.com',	'dangblack',		'nguyễn hải đăng',			'5',	'1',	'2020-03-05'),
		('Account1@gmail.com',				'quanganhh',		'nguyen chien thang2',		'1',	'2',	'2020-03-05'),
		('Account2@gmail.com',				'vanchien',			'nguyen van chien',			'2',	'3',	'2020-03-07'),
		('Account3@gmail.com',				'cocoduongqua',		'dương do',					'3',	'4',	'2020-03-08'),
		('Account4@gmail.com',				'doccocaubai',		'nguyen chien thang1',		'4',	'4',	'2020-03-10'),
		('Dapphatchetngay@gmail.com',		'khabanh',			'ngo ba kha',				'6',	'3',	'2020-04-05'),
		('Songcodaoly@gmail.com',			'huanhoahong',		'bui xuan huan',			'7',	'2',	'2020-05-09' ),
		('sontungmtp@gmail.com',			'tungnui',			'nguyen thanh tung',		'8',	'1',	'2020-04-07'),
		('duonghuu@gmail.com',				'duonghuu',			'duong van huu',			'9',	'2',	'2020-04-07'),
		('Vtiaccady@gmail.com',				'Vtiaccady',		'vi ti ai',					'10',	'1',	'2020-04-09');
        
        
  INSERT INTO `Group`	(GroupID,CreatorID,CreateID)   
  VALUES  
		('Testing system'		,	5	,	'2019-03-05'),
		('Development'			,	1	,	'2020-03-07'),
		('VTI Sale'				,	01	,	'2020-03-09'),
		('VTI Sale'				,	02	,	'2020-03-10'),
		('VTI Sale'				,	03	,	'2020-03-28'),
		('VTI Creator'			,	6	,	'2019-04-06'),
		('VTI Marketing01'		,	7	,	'2020-04-07'),
		('Managemant'			,	8	,	'2020-04-08'),
		('Chat with love'		,	9	,	'2020-04-09'),
		('VI TI AI'				,	10	,	'2020-04-10');
        
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
			
            
	INSERT INTO	TypeQuestion	(TypeName)
    VALUES						('Essay'),
							('Multiple-choce');
    
    INSERT INTO CategoryQuestion 	(CategoryName) 
    VALUES		('Java'			),
				('ASP.NET'		),
				('ADO.NET'		),
				('SQL'			),
				('Postman'		),
				('Ruby'			),
				('Python'		),
				('C++'			),
				('C Shazrp'		),
				('PHP'			);
                
	INSERT INTO Question (Content,	CategoryID,TypeID,CreatorID,CreateDate) 
    VALUES		(N'cau hoi ve Java cau hoi ve Java cau hoi ve Java cau',1,'1','2','2020-04-05'),
				(N'hoi ve PHP'			,	10	,	'2'	,	'2'		,'2020-04-05'),
				(N'hoi ve C#'			,	9	,	'2'	,	'3'		,'2020-04-06'),
				(N'hoi ve Ruby'			,	6	,	'1'	,	'4'		,'2020-04-06'),
				(N'hoi ve Postman'		,	5	,	'1'	,	'5'		,'2020-04-06'),
				(N'hoi ve ADO.NET'		,	3	,	'2'	,	'6'		,'2020-04-06'),
				(N'hoi ve ASP.NET'		,	2	,	'1'	,	'7'		,'2020-04-06'),
				(N'Hoi ve C++'			,	8	,	'1'	,	'8'		,'2020-04-07'),
				(N'hoi ve SQL'			,	4	,	'2'	,	'9'		,'2020-04-07'),
				(N'hoi ve Python'		,	7	,	'1'	,	'10'	,'2020-04-07');
     
     INSERT INTO Answer (Content,QuestionID,isCorrect) 
     VALUES			(N'Trả lời 01',1,0),
     		(N'Trả lời 02'		,	1	,	1	),
     		(N'Trả lời 03'		,	1	,	0	),
     		(N'Trả lời 04'		,	1	,	1	),
     		(N'Trả lời 05'		,	2	,	1	),
     		(N'Trả lời 06'		,	3	,	1	),
     		(N'Trả lời 07'		,	4	,	0	),
     		(N'Trả lời 08'		,	8	,	0	),
     		(N'Trả lời 09'		,	9	,	1	),
     		(N'Trả lời 10'		,	10	,	1	);
            
      INSERT INTO Exam        (`Code`,Title,CategoryID,Duration,CreatorID,CreateDate) 
      VALUES	('VTIQ001'		,N'Đề thi C#'		,	1	,	60	,	'5'	,	'2019-04-05'),
      			('VTIQ002'		,N'Đề thi PHP'		,	10	,	60	,	'2'	,	'2019-04-05'),
      			('VTIQ003'		,N'Đề thi C++'		,	9	,	120	,	'2'	,	'2019-04-07'),
      			('VTIQ004'		,N'Đề thi Java'		,	6	,	60	,	'3'	,	'2020-04-08'),
      			('VTIQ005'		,N'Đề thi Ruby'		,	5	,	120	,	'4'	,	'2020-04-10'),
      			('VTIQ006'		,N'Đề thi Postman'	,	3	,	60	,	'6'	,	'2020-04-05'),
      			('VTIQ007'		,N'Đề thi SQL'		,	2	,	60	,	'7'	,	'2020-04-05'),
      			('VTIQ008'		,N'Đề thi Pytho'	,	8	,	60	,	'8'	,	'2020-04-07'),
      			('VTIQ009'		,N'Đề thi ADO.NET'	,	4	,	90	,	'4'	,	'2020-04-07'),
      			('VTIQ010'		,N'Đề thi ÁP.NET'	,	7	,	90	,	'10',	'2020-04-08');
                
		INSERT INTO ExamQuestion		(ExamID,QuestionID) 
        VALUES			(	1	,	5),
        				(	2	,	10),
        				(	3	,	4),
        				(	4	,	3),
        				(	5	,	7),
        				(	6	,	10),
        				(	7	,	2),
        				(	8	,	10),
        				(	9	,	9),
        				(	10	,	8);
        				
	
      
     		
    
		
        
		