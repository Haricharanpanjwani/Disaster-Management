create procedure MessageAssign
@person_Id int
as  
begin

    Exec (' create view Message AS
			select 1, MessageID, LocationID, EarthQuakeID, ChildCasualty, YouthCasualty,
			ElderlyCasualty, ModeratelyInjured ,SeverelyInjured, AllocatedID 
			from information where AllocatedID = 1
		')
end

drop procedure MessageAssign

GO

DECLARE @person_id int
EXECUTE MessageAssign @person_id = 1


select * from AssignedMessage


--Cursor Creation
DECLARE @personID int
DECLARE @Result int
DECLARE curs CURSOR LOCAL FAST_FORWARD FOR
   select AllocatedID from VolunteerList v

OPEN curs

FETCH NEXT FROM curs INTO @personID

WHILE @@FETCH_STATUS = 0 BEGIN
   EXECUTE @Result = MessageAssign  @personID
   FETCH NEXT FROM curs INTO @personID
   PRINT @Result
    --PRINT @Result
END

CLOSE curs
DEALLOCATE curs



create procedure AssignMessagedd 
@person_Id int
AS 
DECLARE @message int
BEGIN 
INSERT into #AssignedMessage (EmpId, MessageId, LocationId, EarthquakeId, ChildCasualtyNo, YouthCasualtyNo,
ElderlyCasualtyNo ,
ModeratelyInjuredNo ,SeverlyInjuredNo)   select 1, MessageID, LocationID, EarthQuakeID, ChildCasualty, YouthCasualty,
ElderlyCasulaty,
ModeratelyInjured ,SeverelyInjured, AllocatedID from message where PersonID = @person_Id

END
