select * from Candidate
select * from Company
select * from Position
select * from Interview
select * from Interviewer

--Adding column to Candidate table
alter table Candidate
add CMiddlenameInitial varchar(10);

--Adding column to Interviewer table
alter table Interviewer
add CMiddlenameInitial varchar(10);

--Updating the State Name to its abbreviation and altering the data type
update Candidate
set CState ='NY' where CState='New York'
update Interviewer
set IState ='NY' where IState='New York'
update Company
set CoState ='NY' where CoState='New York'

--Changing the column's datatype to accomadate the updated user input
alter table Candidate 
ALTER COLUMN CState char(2);

alter table Company 
ALTER COLUMN CoState char(2);

alter table Interviewer 
ALTER COLUMN IState char(2);

--Simple data Questions

--a. Candidates who live in area having zip code “13225”
select * from Candidate where CZip=13225

--b.  Interviewers living on “Lancaster Ave”.
select IFName, ILName, ICity, IState from Interviewer where IStreetName ='Lancaster Ave'
select * from Interview
--c Update the table ‘Interview’, set date as ‘2013-09-28 00:00:00.000’ where 
--  interviewID is ‘1’. Find all interviews that took place on 28th day in the month of
--	September, 2013. Show Interviewer ID and Position ID.
	Update Interview 
	set InterviewDate ='2013-09-28 00:00:00.000' where InterviewId = 1

	select InterviewerId, PositionId from Interview where Day(InterviewDate)=28

--d. Positions that are not available for 'Executive' level.
	select * from Position where PositionLevel not in ('Executive')

--e. Interviews that exceeded 2 rounds
	select InterviewerId, CandidateId, InterviewDate from Interview where RoundNumber>2

	--4. a. Number of candicates in each zip code
	select CZip, count(CandidateId) as Number_of_Students from Candidate group by CZip

	--b. Sort interview table by round number
	select InterviewId,  InterviewerId, InterviewDate from Interview order by RoundNumber
	
	--c Sort interview by Interview date
	select InterviewId,  InterviewerId from Interview order by InterviewDate

	--d. Avg, Min & Max round numbers for each candidate in the interview table
	select CandidateId, avg(RoundNumber) as Average_Round_Numbers, min(RoundNumber) as Min_Round_Numbers, max(RoundNumber) as Max_Round_Numbers from Interview group by CandidateId

	--e. Candidates with average round number less than 3
	select CandidateId, avg(RoundNumber) as Average_Round_Number  from Interview group by CandidateId having avg(RoundNumber)<3 