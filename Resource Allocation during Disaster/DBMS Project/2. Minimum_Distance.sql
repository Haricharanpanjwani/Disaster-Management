use DBProject

CREATE PROCEDURE MinDistance
@location  int,
@latitude float,
@longitude float,
@myCurrentLongitude float,
@myCurrentLatitude float
AS
DECLARE @locationID int
DECLARE @result int
DECLARE @radiusOfTheEarth int 
SET @radiusOfTheEarth = 6371--km
BEGIN
SELECT @locationID = @location
select @result = ( @radiusOfTheEarth 
       * acos( cos( radians(@myCurrentLatitude) ) 
       * cos( radians( @latitude ) ) 
       * cos( radians( @longitude ) - radians(@myCurrentLongitude) ) + sin( radians(@myCurrentLatitude) ) 
       * sin( radians( @latitude ) ) ) )
RETURN @result
END


create table distance (
LocationID int,
Distance int)


--Cursor Creation
DECLARE @loc int
DECLARE @lat float
DECLARE @long float
DECLARE @epix float
DECLARE @epiy float
DECLARE @locationID int
DECLARE @Result int

DECLARE curs CURSOR LOCAL FAST_FORWARD FOR
   select l.LocationID, LocationXCoordinate, LocationYCoordinate, EpicXcoordinate, EpicYcoordinate 
   from earthquake e, Location l
   where e.OccurenceDate =(CAST(GETDATE() as DATE)) 
   and l.LocationID NOT IN 
(select LocationID from Earthquake where OccurenceDate =cast(GETDATE() as date))

OPEN curs

FETCH NEXT FROM curs INTO @loc, @lat, @long, @epix, @epiy

WHILE @@FETCH_STATUS = 0 BEGIN
   EXECUTE @Result = MinDistance  @loc, @lat, @long, @epix, @epiy
   INSERT into distance values(@loc, @Result)
   FETCH NEXT FROM curs INTO @loc, @lat, @long, @epix, @epiy
   PRINT @Result
    --PRINT @Result
END

select distinct locationID, distance from distance
where distance = (select min(distance) from distance)

--truncate table distance

CLOSE curs
DEALLOCATE curs

drop procedure MinDistance
truncate table distance