
--Location Table
create table Location(
LocationID int NOT NULL IDENTITY(1,1),
City varchar(50),
State varchar(50),
LocationXCoordinate float,
LocationYCoordinate float
Primary Key (LocationID)
)

--Earthquake Table
create table Earthquake (
EarthquakeID int NOT NULL IDENTITY(1,1),
LocationID int NOT NULL,
OccurenceDate Date,
QuakeIntensity decimal(2,2),
EpicXCoordinate float,
EpicYCoordinate float
PRIMARY KEY (EarthquakeID)
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
)


--Population Table
Create table Population (
LocationID int NOT NULL,
Child bigint,
Adult bigint,
Old bigint,
Year_date Date
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
)

--NGO
create table NGO (
NgoID int NOT NULL IDENTITY(1,1), 
NgoName varchar(100),
TotalVolunteer int,
LocationID int NOT NULL,
PRIMARY KEY (NgoID),
FOREIGN KEY (LocationID) REFERENCES Location(LocationID)
)

--Role
Create table Role(
RoleID int NOT NULL IDENTITY(1,1),
RoleName varchar(100),
PRIMARY KEY(RoleID)
)

--NGO Volunteers
create table NgoVolunteer (
VolunteerID int NOT NULL IDENTITY(1,1), 
NgoID int NOT NULL,
Name varchar(100),
DoB date,
RoleID int,
PRIMARY KEY (VolunteerID),
FOREIGN KEY (RoleID) REFERENCES Role(RoleID),
FOREIGN KEY (NgoID) REFERENCES Ngo(NgoID)
)

--COMPANY
create Table Company (
CompanyID int NOT NULL IDENTITY(1,1),
LocationID int NOT NULL,
CompanyName varchar(100),
TotalAnalyst int,
TotalGroundStaff int,
PRIMARY KEY (CompanyID),
FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE
)

--Warehouse
create table Warehouse (
WarehouseID int NOT NULL IDENTITY(1,1),
WarehouseName varchar(100),
LocationID int NOT NULL,
PRIMARY KEY (WarehouseID),
FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE
)


--Hospital
create table Hospital(
HospitalID int  NOT NULL IDENTITY(1,1),
LocationID int NOT NULL,
HospitalName varchar(100),
HospitalBed int,
TotalDoctor int,
TotalNurse int,
PRIMARY KEY (HospitalID),
FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE
)


--- Organization
create table Organization(
OrganizationID int NOT NULL IDENTITY(1,1),
LocationID int NOT NULL,
OrganizationName varchar(50),
Website varchar(100),
PRIMARY KEY (OrganizationID),
FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE
)


--EMPLOYEE
create table Employee (
EmployeeID int  NOT NULL IDENTITY(1,1),
Name varchar(100),
Dob Date,
RoleID int,
CompanyID int,
PRIMARY KEY (EmployeeID),
FOREIGN KEY (CompanyID) References Company(CompanyID) ON DELETE CASCADE
)


--Analysis Table
create table Analysis (
AnalysisID int NOT NULL IDENTITY(1,1),
LocationID int NOT NULL,
Water bigint,
Rice bigint,
Tent bigint,
FirstAid bigint,
HospitalBed bigint,
GenerateDate Date,
PRIMARY KEY (AnalysisID),
CONSTRAINT fk_location FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE
)

---RESOURCE ALLOCATED
create table ResourceAllocated (
ResourceID int NOT NULL IDENTITY(1,1),
AnalysisID int NOT NULL,
WarehouseID int NOT NULL,
Water bigint,
Rice bigint,
Tent bigint,
FirstAid bigint,
HospitalBed bigint,
GenerateDate date,
PRIMARY KEY (ResourceID),
CONSTRAINT fk_analysis FOREIGN KEY (AnalysisID) References Analysis(AnalysisID) ON DELETE CASCADE,
CONSTRAINT fk_warehouse FOREIGN KEY (WarehouseID) References Warehouse(WarehouseID)
)

--INFORMATION
create table INFORMATION (
MessageID int NOT NULL IDENTITY(1,1),
AllcoatedID int,
ChildCasualty int,
YouthCasualty int,
ElderlyCasualty int,
ModeratelyInjured int,
Severelyinjured int,
LocationID int NOT NULL,
EarthquakeID int NOT NULL,
PRIMARY KEY (MessageID),
FOREIGN KEY (LocationID) References Location(LocationID) ON DELETE CASCADE,
FOREIGN KEY (EarthquakeID) References Earthquake(EarthquakeID)
)

---TRACKING
create table Tracking (
TrackingID int NOT NULL IDENTITY(1,1),
ResourceID int NOT NULL,
PRIMARY KEY (TrackingID),
FOREIGN KEY (ResourceID) References ResourceAllocated(ResourceID) ON DELETE CASCADE
)

--Report Generation
create table Report (
ReportID int NOT NULL IDENTITY(1,1),
EmployeeID int NOT NULL,
LocationID int NOT NULL,
EarthquakeID int NOT NULL,
ChildCasualty bigint,
YouthCasualty bigint,
ElderlyCasulty bigint,
ModeratelyInjured bigint,
SeverelyInjured bigint,
PRIMARY KEY (ReportID),
FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
FOREIGN KEY (LocationID) REFERENCES Location(LocationID),
FOREIGN KEY (EarthquakeID) REFERENCES Earthquake(EarthquakeID)
)
