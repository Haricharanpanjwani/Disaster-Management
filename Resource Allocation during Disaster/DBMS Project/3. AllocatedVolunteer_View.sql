create view VolunteerList as 
(
    select row_number() over ( order by PERSON_NAME) as AllocatedID, PERSON_NAME, Type
	from  (
        select Name as PERSON_NAME, 'NGO' as Type 
		from NGOVOLUNTEER n
		where NGOId IN (select NGOID from NGO where LocationID = 10)
		UNION
		select  Name, 'COMPANY' as Type
		from employee
		where companyID IN (select companyId from company where locationID = 10)
    ) a
)

select * from VolunteerList

drop view VolunteerList
