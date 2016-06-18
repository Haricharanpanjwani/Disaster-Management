use DBProject
--Analysis Procedure
create procedure AllocateResource
@location int
AS 
BEGIN

insert into Analysis (GenerateDate, LocationID) values (cast(getdate() as Date), @location)

Update Analysis set

--LocationID = @location,

Rice = (select (CEILING(((p.Child - r.ChildCasualty) /1000) * 250) + CEILING(((p.Adult - r.YouthCasualty) /1000) *400) + CEILING(((p.Old - r.ElderlyCasualty) / 1000) *350))
from Report r 
INNER JOIN Population p 
ON r.LocationID = p.LocationID
where p.LocationID = @location),

Water = (select (CEILING(((p.Child - r.ChildCasualty) * 1.5)) + CEILING((p.Adult - r.YouthCasualty) * 3) + CEILING((p.Old  - r.ElderlyCasualty) *2.5))
from Report r 
INNER JOIN Population p 
ON r.LocationID = p.LocationID
where p.LocationID = @location),

Tent = (select (CEILING(((p.Child - r.ChildCasualty) + CEILING(p.Adult - r.YouthCasualty) + CEILING(p.Old - r.ElderlyCasualty)) / 1000))
from Report r 
INNER JOIN Population p 
ON r.LocationID = p.LocationID
where p.LocationID = @location),

HospitalBed = (select (CEILING(r.severelyinjured))
from Report r 
INNER JOIN Population p 
ON r.LocationID = p.LocationID
where p.LocationID = @location),

FirstAid = (select (CEILING((r.ModeratelyInjured * 3/ 4)))
from Report r 
INNER JOIN Population p 
ON r.LocationID = p.LocationID
where p.LocationID = @location)

where GenerateDate = (CAST(GETDATE() as date)) and locationID = @location

END

execute AllocateResource @location = 1

select * from report
select * from analysis
select * from ResourceAllocated
select * from tracking

drop procedure AllocateResource
