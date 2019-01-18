--INSERT MORE DATA INTO CANDIDTAE, INTERVIEWER, POSITION, COMPANY AND INTERVIEW ITEM TABLES
-- Insert into Candidate table
--select * from Candidate
--alter table Position
--alter column PositionName varchar (25)
alter table Company
alter column CoStreetName varchar (60)

select * from Candidate
INSERT INTO Candidate (CandidateId, CFName, CLName, CPhone, CStreetNo,
CStreetName, CCity, CState, CZip, CExperience, CRelevantExp)
VALUES (6, 'Robinson', 'Curt', '315-555-6666', '12', 'Ostrom Ave', 'Los
Angeles', 'CA', '90205', 'Database, Business Analysis', 'Business Analysis')
INSERT INTO Candidate (CandidateId, CFName, CLName, CPhone, CStreetNo,
CStreetName, CCity, CState, CZip, CExperience, CRelevantExp)
VALUES (7, 'Austin','Byron', '805-280-2018', '54', 'Skyline Blvd',
'Oakland', 'CA', '94620', 'Consultant, Developer', 'Consultant')
INSERT INTO Candidate (CandidateId, CFName, CLName, CPhone, CStreetNo,
CStreetName, CCity, CState, CZip, CExperience, CRelevantExp)
VALUES (8, 'Tin', 'Chung', '315-685-8898', '69', 'Comstock Ave', 'Paperwork
City', 'CA', '94645', 'Developer, Business Analysis', 'Developer')
INSERT INTO Candidate (CandidateId, CFName, CLName, CPhone, CStreetNo,
CStreetName, CCity, CState, CZip, CExperience, CRelevantExp)
VALUES (9, 'Cassandra', 'Alvarado', '315-555-8888', '1348', 'Elm St.',
'Denver', 'CO', '80012', 'Database, Business Analysis', 'Database')
INSERT INTO Candidate (CandidateId, CFName, CLName, CPhone, CStreetNo,
CStreetName, CCity, CState, CZip, CExperience, CRelevantExp)
VALUES (10, 'Beverly', 'Baker', '315-556-9999', '4387', 'College Drive',
'Dayton', 'OH', '45404', 'Database, Business Analysis, Developer, Analyst',
'Database')
--Insert into Interviewer table
INSERT INTO Interviewer (InterviewerId, IFName, ILName, IPhone, IEmail,
IStreetNo, IStreetName, ICity, IState, IZip, ISchedule)
VALUES (6, 'Toshiro', 'Yamada', '315-666-2584', 'toshiroyamada@syr.edu',
'137', 'Geary Blvd.', 'San Francisco', 'CA', '94111', '9am-5pm Monday –
Friday')
INSERT INTO Interviewer (InterviewerId, IFName, ILName, IPhone, IEmail,
IStreetNo, IStreetName, ICity, IState, IZip)
VALUES (7, 'Gerald', 'Bernstein', '315-777-1115',
'gearaldbernstein@syr.edu', '717', 'Wilshire Blvd.', 'Los Angeles', 'CA',
'90048')
INSERT INTO Interviewer (InterviewerId, IFName, ILName, IPhone, IEmail,
IStreetNo, IStreetName, ICity, IState, IZip, ISchedule)
VALUES (8, 'Rose','Barbara', '315-888-8881', 'rosebarbara@syr.edu', '957',
'Wilshire Blvd.', 'Los Angeles', 'CA', '90048', '8am-6pm Monday – Saturday')
INSERT INTO Interviewer (InterviewerId, IFName, ILName, IPhone, IEmail,
IStreetNo, IStreetName, ICity, IState, IZip)
VALUES (9, 'Steven', 'Bernstein', '315-999-9991', 'stevenbernstein@syr.edu',
'5152', 'Rural Route 12', 'Searchlight', 'NV', '89046')
INSERT INTO Interviewer (InterviewerId, IFName, ILName, IPhone, IEmail,
IStreetNo, IStreetName, ICity, IState, IZip, ISchedule)
VALUES (10, 'Shawn', 'Micheal', '315-101-1010', 'shawnmicheal@syr.edu',
'258', '1st St. NE', 'St. Paul', 'MN', '55111', '9:30am-5:30pm Monday –
Friday')
--Insert into Company table
INSERT INTO Company (CompanyId, CompanyName, CompanyPhone, CompanyWebsite,
CoStreetNo, CoStreetName, CoCity, CoState, CoZip)
VALUES (6, 'Google', '300-000-0000', 'www.google.com', '873', 'Lafayette
Rd', 'Mountain View', 'CA', '13205')
INSERT INTO Company (CompanyId, CompanyName, CompanyPhone, CompanyWebsite,
CoStreetNo, CoStreetName, CoCity, CoState, CoZip)
VALUES (7, 'SAS', '311-111-1111', 'www.SAS.com', '456', 'Summer Ave',
'Cary', 'NC', '81000')
INSERT INTO Company (CompanyId, CompanyName, CompanyPhone, CompanyWebsite,
CoStreetNo, CoStreetName, CoCity, CoState, CoZip)
VALUES (8, 'NetApp', '315-333-4787', 'www.netapp.com', '791', 'Maryland
Ave', 'Sunnyvale', 'CA', '13801')
INSERT INTO Company (CompanyId, CompanyName, CompanyPhone, CompanyWebsite,
CoStreetNo, CoStreetName, CoCity, CoState, CoZip)
VALUES (9, 'Edward Jones', '315-444-5677', 'www.edwardjones.com', '437',
'Lanchaster Ave', 'St. Loius', 'MO', '79147')
INSERT INTO Company (CompanyId, CompanyName, CompanyPhone, CompanyWebsite,
CoStreetNo, CoStreetName, CoCity, CoState, CoZip)
VALUES (10, 'Qualcomm', '315-479-5182', 'www.qualcomm.com', '825',
'Ackerman Street', 'Weston', 'FL', '45071')
--Insert into Position table
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (3, 'Database Analyst', 'Executive', 'yes', '2')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (4, 'Risk Manager', 'Executive', 'no', '3')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (6, 'Software Developer', 'Entry', 'yes', '6')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (7, 'Business Analyst', 'Entry', 'yes', '6')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (8, 'Database Administrator', 'Executive', 'yes', '7')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (9, 'Technical Manager', 'Executive', 'no', '8')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (10, 'Advisory Associate', 'Staff', 'yes', '9')
select * from Position
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (11, 'Project Manager', 'Entry', 'no', '10')
INSERT INTO Position (PositionId, PositionName, PositionLevel,
PositionAvailable, CompanyId)
VALUES (12, 'Project Manager', 'Managerial', 'no', '10')
--Insert into Interview table
--select * from Interview

INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (6,2,'2013-05-07 00:00:00.000',6,7,6);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (7,1,'2013-04-28 00:00:00.000',7,7,7);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (8,3,'2013-10-07 00:00:00.000',8,8,8);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (9,5,'2013-10-17 00:00:00.000',9,9,9);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (10,2,'2013-06-07 00:00:00.000',6,7,12);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (11,1,'2013-08-08 00:00:00.000',7,7,11);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (12,3,'2013-10-07 00:00:00.000',10,8,5);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (13,5,'2013-8-18 00:00:00.000',10,9,9);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (14,2,'2013-06-28 00:00:00.000',5,7,6);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (15,1,'2013-07-27 00:00:00.000',3,8,9);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (16,3,'2013-01-06 00:00:00.000',6,8,12);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (17,1,'2013-10-17 00:00:00.000',6,9,9);

INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (18,2,'2013-06-07 00:00:00.000',4,7,12);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (19,1,'2013-08-08 00:00:00.000',2,10,11);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (20,2,'2013-10-7 00:00:00.000',10,8,5);
INSERT INTO Interview(InterviewId, RoundNumber, InterviewDate, CandidateId,
InterviewerId, PositionId)
VALUES (21,2,'2013-6-17 00:00:00.000',10,9,9);

CREATE VIEW INTERVIEWS_SUMMARY AS
select c.CandidateId, c.CFName,c.CLName, i.InterviewId, i1.InterviewerId, i1.IFName, i1.ILName from Candidate c
join 
Interview i on c.CandidateId=i.CandidateId
join 
Interviewer i1 on i.InterviewerId=i1.InterviewerId

SELECT * FROM INTERVIEWS_SUMMARY

SELECT * FROM Position
SELECT * FROM Interview

CREATE VIEW POSITION_SUMMARY AS
SELECT c.CompanyId, c.CompanyName, count(p.PositionId) as Number_of_Positions FROM Position p 
join Interview i on p.PositionId=i.PositionId
join Company c on p.CompanyId=c.CompanyId
WHERE i.InterviewDate between '2013-07-01' and '2013-12-31'
GROUP BY c.CompanyId, c.CompanyName

select * from POSITION_SUMMARY

create view maximum_candicate_interview_summary as
select c.CandidateId, CFName, CLName, count(InterviewId) as Number_of_Interviews
from Candidate c
join 
Interview i on c.CandidateId=i.CandidateId
group by c.CandidateId, CFName, CLName
having count(InterviewId)= (select max(abc.cnt) from (select c.CandidateId , c.CFName, c.CLName,count(InterviewId) as cnt from Interview i
join
Candidate c on i.CandidateId=c.CandidateId
group by c.CandidateId,c.CFName, c.CLName) as abc)

select * from maximum_candicate_interview_summary

create view minimum_interviewer_prescription_summary as 
select i2.InterviewerId, i2.IFName, i2.ILName, count(InterviewId) as Number_of_Interviews
from Interviewer i2
left join 
Interview i on i.InterviewerId=i2.InterviewerId
group by i2.InterviewerId, i2.IFName, i2.ILName
having count(InterviewId)= (select min(cnt) from (select count(InterviewId) as cnt from Interview i
right join
Interviewer i2 on i2.InterviewerId=i.InterviewerId
group by i2.InterviewerId) as abc)

create view position_interview_summary as
select p.PositionId, p.PositionName, count(InterviewId) as Number_of_Interviews
from Position p
join 
Interview i on p.PositionId=i.PositionId
group by p.PositionId, p.PositionName
having count(InterviewId)= (select max(abc.cnt) from (select count(InterviewId) as cnt from Interview i
join
Position p on p.PositionId=i.PositionId
group by p.PositionId) as abc)

select * from position_interview_summary

BEGIN TRANSACTION
--Candidate
  insert into Candidate (CandidateId,CFName,CLName,CPhone,CStreetno,CStreetName,CCity,CState,CZip,CExperience,CRelevantExp)
  values (11,'Shah','Kantilal','315-525-2552',193, 'Lancaster Ave', 'Syracuse','NY', 13210, 'Database, Development','Database Administration');

 --Position
 --PositionId varchar(20),  PositionName  ,  PositionLevel ,  PositionAvailable ,  CompanyId ,
   insert into Position values(13,'Database Developer','Entry','yes',6);

--Interview Table

--InterviewId varchar(20),RoundNumber   InterviewDate , CandidateId ,  InterviewerId ,PositionId ,
  insert into Interview values(22,1,'2013-11-08 00:00:00.000',11,8,13);

rollback

select * from Candidate
select * from Interview
select * from Position

Begin Transaction


 --Position
 --PositionId varchar(20),  PositionName  ,  PositionLevel ,  PositionAvailable ,  CompanyId ,
   insert into Position values(13,'Program Analyst','Staff','yes',11);

--Interview Table

--InterviewId varchar(20),RoundNumber   InterviewDate , CandidateId ,  InterviewerId ,PositionId ,
  insert into Interview values(22,1,'2013-11-01 00:00:00.000',2,8,13);
  insert into Interview values(23,1,'2013-11-01 00:00:00.000',5,8,13);
  insert into Interview values(24,1,'2013-11-01 00:00:00.000',8,8,13);

--Company
  insert into Company(CompanyId, CompanyName, CompanyPhone, Companywebsite, CoStreetNo, CoStreetName,CoCity, CoState, CoZip)
    values (11, 'Apple', '400-000-1212', 'www.apple.com', 1, 'Infinite Loop Cupertino', 'California', 'CA', 95014);

--commit

select * from Company
select * from Position
select 8 from Interview






