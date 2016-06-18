select count(n.roleID), r.RoleName 
from NgoVolunteer n
INNER JOIN Role r
ON n.roleID = r.RoleID
where n.NgoID IN (select ngoID from NGO where locationID = 10)
group by r.RoleName


select count(e.roleID), r.RoleName 
from Employee e
INNER JOIN Role r
ON e.roleID = r.RoleID
where e.companyID IN (select companyId from company where locationID = 10)
group by r.RoleName


select * from INFORMATION