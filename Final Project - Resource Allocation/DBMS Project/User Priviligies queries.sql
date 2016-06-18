use DBProject

select * from earthquake

update Earthquake set OccurenceDate = '2013-13-13' where LocationID = 3

insert into earthquake values (5, GETDATE(), 7, 120, 37);