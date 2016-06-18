

ALTER TABLE Analysis DROP CONSTRAINT fk_location

alter table ResourceAllocated DROP CONSTRAINT fk_analysis
alter table ResourceAllocated DROP CONSTRAINT fk_warehouse

alter table Tracking DROP CONSTRAINT fk_resource


truncate table analysis
truncate table resourceAllocated
truncate table Tracking

SELECT * FROM ANALYSIS
SELECT * FROM ResourceAllocated
SELECT * FROM TRACKING


alter table Analysis ADD CONSTRAINT fk_location FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE

alter table ResourceAllocated ADD CONSTRAINT fk_analysis FOREIGN KEY (AnalysisID) References Analysis(AnalysisID) ON DELETE CASCADE
alter table ResourceAllocated ADD CONSTRAINT fk_warehouse FOREIGN KEY (WarehouseID) References Warehouse(warehouseID)

alter table Tracking ADD CONSTRAINT fk_resource FOREIGN KEY (ResourceID) References ResourceAllocated(ResourceID)


select * from resourceAllocated

(
SELECT OBJECT_NAME(OBJECT_ID) AS NameofConstraint,
SCHEMA_NAME(schema_id) AS SchemaName,
OBJECT_NAME(parent_object_id) AS TableName,
type_desc AS ConstraintType
FROM sys.objects 
WHERE type_desc IN ('FOREIGN_KEY_CONSTRAINT'))
and SCHEMA_NAME like 'dbo'
and OBJECT_NAME like 'ResourceAllocated'
)

select * from ResourceAllocated

Alter table Tracking ADD CONSTRAINT fk_resource FOREIGN KEY (ResourceID) References ResourceAllocated(ResourceID) ON DELETE CASCADE
SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE WHERE table_name = 'res'

SELECT OBJECT_NAME(OBJECT_ID) AS NameofConstraint,
SCHEMA_NAME(schema_id) AS SchemaName,
OBJECT_NAME(parent_object_id) AS TableName,
type_desc AS ConstraintType
FROM sys.objects 
WHERE type_desc IN ('FOREIGN_KEY_CONSTRAINT')
GO 

select count(locationID), locationID from Population
group by locationID

delete from Earthquake where locationID =3