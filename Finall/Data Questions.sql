select * from SubMagType
select * from Subscription

-- Total Revenue for the month of July 2018	
select sum(s3.SubCost) as Total_Revenue from (select s1.SubID,s2.SubCost from Subscription s1 join SubMagType s2 on s1.SSubMagtypeID=s2.SubMagTypeID where s1.SubStartDate between '2018-07-01' and '2018-07-31') as s3

--Number of new Subscriptions for the Vogue Magazine March 2018's E-Book issue
select count(SubID) as Number_of_Subscriptions  from Subscription s1 join SubMagType s2 on s1.SSubMagtypeID=s2.SubMagTypeID where s1.SubStartDate between '2018-03-01' and '2018-03-31'

--Number of Advertisements from Tennessee
select count(*) as Num_of_advertisements from AdvertTracker a1 join Advertisement a2 on a1.AdvertID=a2.AdvertID where a2.ClientStateID='TN'

--Number of Advertisements in the August Issue on both Physical & E-Book
select count(*) as Num_of_Advts from AdvertTracker where IssueID in (8,20)

--Number of Customers from the State of New York
select count(*) as Num_of_Customers from Customer where CStateID='NY'

--expenditure of the January 2018 magazine
select i.IssueID, i.Month , (PostalCost+PackagingCost+PrintingCost+PaperCost+TransportationCost) as Total_Cost from Expenditure e join Issue i  on e.EIssueID=i.IssueID where EIssueID in (select IssueID from Issue i where Month='January')

--Number of Issues Published in 2018
select count(*) as Number_of_Issues from Issue


