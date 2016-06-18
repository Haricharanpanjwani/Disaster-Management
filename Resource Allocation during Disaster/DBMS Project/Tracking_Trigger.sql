create Trigger InitiateTracking on ResourceAllocated
after Insert
as 
IF Exists (Select * from ResourceAllocated where GenerateDate = (CAST(GETDATE() as Date)))
BEGIN 
Insert into TRACKING(ResourceID) select resourceID from ResourceAllocated where GenerateDate = (CAST(GETDATE() as Date))
END

select * from Tracking

drop trigger InitiateTracking