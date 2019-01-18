--Candiate
create table Candidate(
  CandidateId varchar(20),
  CFName varchar(20) not null,
  CLName varchar(20) not null,
  CPhone varchar(20) not null,
  CStreetno varchar(20) not null,
  CStreetName varchar(20) not null,
  CCity varchar(20) not null,
  CState varchar(20) not null,
  CZip varchar(20) not null,
  CExperience varchar(50) not null,
  CRelevantExp varchar(20) not null,
  PRIMARY KEY(CandidateId));
 
 --Company
  create table Company(
  CompanyId varchar(20),
  CompanyName varchar(20) not null,
  CompanyPhone varchar(20) not null,
  Companywebsite varchar(20) not null,
  CoStreetNo varchar(20) not null,
  CoStreetName varchar(20) not null,
  CoCity varchar(20) not null,
  CoState varchar(20) not null,
  CoZip varchar(20) not null,
  PRIMARY KEY(CompanyId));
  
 --Position
  create table Position(
  PositionId varchar(20),
  PositionName varchar(20) not null,
  PositionLevel varchar(20) not null,
  PositionAvailable varchar(20) not null,
  CompanyId varchar(20) not null,
  PRIMARY KEY(PositionId),
  FOREIGN KEY (CompanyId) REFERENCES Company(CompanyId),
  CONSTRAINT chk_PositionLevel CHECK (PositionLevel IN ('Internship', 'Entry', 'Executive', 'Managerial','Staff')));
 
--Interviewer  
  create table Interviewer(
  InterviewerId varchar(20),
  IFName varchar(20) not null,
  ILName varchar(20) not null,
  IPhone varchar(20) not null,
  IEmail varchar(30) not null, 
  IStreetno varchar(20) not null,
  IStreetName varchar(20) not null,
  ICity varchar(20) not null,
  IState varchar(20) not null,
  IZip varchar(20) not null,
  ISchedule varchar(60),
  PRIMARY KEY(InterviewerId));
  
 --Interview
  create table Interview(
  InterviewId varchar(20),
  RoundNumber integer NOT NULL,
  InterviewDate DATETIME DEFAULT CURRENT_TIMESTAMP,
  CandidateId varchar(20),
  InterviewerId varchar(20) not null,
  PositionId varchar(20) not null,
  PRIMARY KEY(InterviewId),
  FOREIGN KEY (CandidateId) REFERENCES Candidate(CandidateId),
  FOREIGN KEY (InterviewerId) REFERENCES Interviewer(InterviewerId),
  FOREIGN KEY (PositionId) REFERENCES Position(PositionId));

  --Inserting data into the tables

  --Candidate
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (1,'Nathan','Kerr','312-555-5555',112, 'Lafayette Rd', 'Syracuse','New York', 13205, 'Database, Business Analysis','Database');
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (2,'Sebastin','Chapman','312-555-6666',17, 'James St', 'Syracuse','New York', 13210, 'Consultant, Business Analysis','Consultant');
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (3,'Heather','Cameron','312-555-7777',410, 'Constock Ave', 'Syracuse','New York', 13210, 'Developer, Business Analysis','Developer');
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (4,'Olivia','Wallace','312-555-8888',4248, 'Nottingham Rd', 'Syracuse','New York', 13244, 'Database, Business Analysis','Database');
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (5,'Lily','Turner','312-555-9999',3, 'Ostrom Ave', 'Syracuse','New York', 13225, 'Database, Business Analysis, Developer, Analyst','Database');

  select * from Candidate

  --Interviewer
  insert into Interviewer (InterviewerId, IFName, ILName, IPhone,IEmail, IStreetno, IStreetName, ICity,IState, IZip, ISchedule)
  values (1, 'Dorothy', 'Paige', '315-555-0126', 'dorothy.paige@syr.edu', 137, 'Sumner Ave', 'Syracuse', 'New York', 13210, '9am-5pm Monday - Friday');
  insert into Interviewer (InterviewerId, IFName, ILName, IPhone,IEmail, IStreetno, IStreetName, ICity,IState, IZip, ISchedule)
  values (2, 'Amy', 'May', '315-555', 'amy.may@syr.edu', 777, 'Ackerman Ave', 'Syracuse', 'New York', 13210, null);
  insert into Interviewer (InterviewerId, IFName, ILName, IPhone,IEmail, IStreetno, IStreetName, ICity, IState,IZip, ISchedule)
  values (3, 'Charles', 'Duncan', '315-444-5555', 'charles.duncan@syr.edu', 345, 'Lancaster Ave', 'Syracuse', 'New York', 13210, '8am-6pm Monday - Saturday');
  insert into Interviewer (InterviewerId, IFName, ILName, IPhone,IEmail, IStreetno, IStreetName, ICity, IState,IZip, ISchedule)
  values (4, 'Victor', 'Miller', '315-333-5565', 'victor.miller@syr.edu', 7116, 'Lafayette Rd', 'Syracuse', 'New York', 13205, null);
  insert into Interviewer (InterviewerId, IFName, ILName, IPhone,IEmail, IStreetno, IStreetName, ICity, IState,IZip, ISchedule)
  values (5, 'Ray', 'Mysterio', '315-555-0126', 'dorothy.paige@syr.edu', 137, 'Sumner Ave', 'Syracuse', 'New York', 13210, '9am-5pm Monday - Friday');

  select * from Interviewer

  --Company
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName,CoCity, CoState, CoZip)
  values (1, 'Ernest & Young', '315-129-5677', 'www.ey.com', 234, 'Lafayette Rd', 'New york', 'New York', 123205);
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName, CoCity,CoState, CoZip)
  values (2, 'Deloitte', '315-356-5887', 'www.delloitte.com', 456, 'Sumner Ave', 'New york', 'New York', 13100);
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName,CoCity, CoState, CoZip)
  values (3, 'PWC', '315-894-4787', 'www.pwc.com', 791, 'Maryland Ave', 'New york', 'New York', 13801);
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName,CoCity, CoState, CoZip)
  values (4, 'KPMG', '315-129-5887', 'www.kpmg.com', 437, 'Lanchaster Ave', 'New york', 'New York', 12147);
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName,CoCity, CoState, CoZip)
  values (5, 'Cognizant', '315-479-5182', 'www.cognizant.com', 825, 'Ackerman Street', 'New york', 'New York', 10071);  
  
  select * from Company

    --Position

  insert into Position values(1,'Technology Analyst','Internship','yes',1);
  insert into Position values(2,'Business Analyst','Entry','yes',1);
  insert into Position values(3,'Database Analyst','Executive','yes',2);
  insert into Position values(4,'Risk Manager','Executive','no',3);
  insert into Position values(5,'Advisory Consultant','Staff','yes',4);
  insert into Position values(6,'Project Manager','Managerial','no',5);


  Select * from Position;


  --Interview Table

  insert into Interview values(1,2,'2013-09-27 00:00:00.000',1,1,1);
  insert into Interview values(2,1,'2013-09-28 00:00:00.000',2,2,2);
  insert into Interview values(3,3,'2013-09-17 00:00:00.000',3,3,1);
  insert into Interview values(4,2,'2015-02-11 21:27:13.530',1,2,1);
  insert into Interview values(5,5,'2013-09-17 00:00:00.000',5,5,5);


  Select * from Interview;


