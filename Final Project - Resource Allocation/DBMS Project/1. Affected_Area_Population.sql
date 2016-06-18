use DBProject

CREATE TRIGGER AFFECTED_AREA_POPULATION ON Earthquake 
FOR INSERT 
AS 
IF EXISTS (SELECT * FROM Earthquake 
where OccurenceDate = cast(GETDATE() as date))
BEGIN
select * from population 
where locationID IN 
(select LocationID from Earthquake where OccurenceDate = cast(GETDATE() as date))
END

---------------------------------------------------------------------------------------

insert into earthquake values (5, GETDATE(), 7, 120, 37);

----------------------------------------------------------------------------------------


drop trigger AFFECTED_AREA_POPULATION

select count(locationID), locationID from Earthquake
group by locationID
