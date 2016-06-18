create Trigger resourceMgmt on Analysis
after update
as
if exists (Select * from Analysis where GenerateDate = (CAST(GETDATE() as Date)))
BEGIN

DECLARE @warehouseID int
SET @warehouseID = (select top 1 WarehouseID from Warehouse
where locationID IN
(select e.locationID from distance e
where e.distance = (select min(d.distance) from distance d)));

Insert into ResourceAllocated(AnalysisID, WarehouseID, Water, Rice, Tent, FirstAid, HospitalBed, GenerateDate)
Select AnalysisID, @warehouseID, Water, Rice, Tent, FirstAid, HospitalBed, (CAST(GETDATE() as Date))
from Analysis where GenerateDate = (CAST(GETDATE() as Date))
END

select * from ResourceAllocated where GenerateDate = '2015-12-08'

drop trigger resourceMgmt