--Procedure to get the message from a specific person
create procedure VolunteerMessage 
@personId int
AS 
DECLARE @message int
BEGIN 
select * from INFORMATION where AllocatedID = @personId
END

--DECLARE @Message
exec VolunteerMessage @personID = 2

--Cursor Creation
DECLARE @personID int
DECLARE @Result int
DECLARE curs CURSOR LOCAL FAST_FORWARD FOR
   select AllocatedID from VolunteerList v

OPEN curs

FETCH NEXT FROM curs INTO @personID

WHILE @@FETCH_STATUS = 0 BEGIN
   EXECUTE @Result = VolunteerMessage  @personID
   FETCH NEXT FROM curs INTO @personID
   PRINT @Result
    --PRINT @Result
END

CLOSE curs
DEALLOCATE curs

drop procedure VolunteerMessage
