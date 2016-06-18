create procedure RetriveMessage
@allocatedID varchar,
@empID varchar(200)
as 
DECLARE @SQL nvarchar(max)
begin

  SET @SQL = 'create view AssignedMessage AS
            select '+ @empID +' as EmployeeID,MessageID, LocationID, EarthQuakeID, ChildCasualty, YouthCasualty,
            ElderlyCasualty, ModeratelyInjured, SeverelyInjured from information where AllocatedID = ' + @allocatedID

   EXEC (@SQL)

   INSERT INTO Report (EmployeeID, LocationID, EarthquakeID, ChildCasualty, YouthCasualty, ElderlyCasualty, ModeratelyInjured, SeverelyInjured)
	(
		select EmployeeID, LocationID, EarthquakeID, avg(ChildCasualty), avg(YouthCasualty), avg(ElderlyCasualty), avg(ModeratelyInjured), avg(SeverelyInjured)
		from AssignedMessage m
		where m.LocationID = 1
		group by m.EmployeeID, m.LocationID, m.EarthQuakeID
	)
end


DECLARE @allocatedID varchar
DECLARE @empID varchar
execute RetriveMessage @allocatedID = 2, @empID = 40

select * from AssignedMessage
select * from Report

drop procedure RetriveMessage
drop view AssignedMessage
truncate table Report