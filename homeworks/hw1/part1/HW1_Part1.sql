CREATE TABLE Supervisors ( 
	Supervisor_ID        BIGINT NOT NULL  PRIMARY KEY  
 );

CREATE TABLE Employees ( 
	Employee_ID          BIGINT NOT NULL  PRIMARY KEY  ,
	Supervisor_ID        BIGINT     ,
	FOREIGN KEY ( Supervisor_ID ) REFERENCES Supervisors( Supervisor_ID )  
 );

CREATE TABLE EmployeesManagement ( 
	ID                   BIGINT NOT NULL  PRIMARY KEY  ,
	Employee_ID          BIGINT     ,
	Supervisor_ID        BIGINT     ,
	FOREIGN KEY ( Employee_ID ) REFERENCES Employees( Employee_ID )  ,
	FOREIGN KEY ( Supervisor_ID ) REFERENCES Supervisors( Supervisor_ID )  
 );

CREATE TABLE Positions ( 
	Position_ID          BIGINT NOT NULL    ,
	travel_required      BOOLEAN NOT NULL    ,
	Employee_ID          BIGINT     ,
	CONSTRAINT pk_Positions PRIMARY KEY ( Position_ID, travel_required ),
	FOREIGN KEY ( Employee_ID ) REFERENCES Employees( Employee_ID )  
 );

CREATE TABLE Projects ( 
	Project_ID           BIGINT NOT NULL  PRIMARY KEY  ,
	Employee_ID          BIGINT     ,
	FOREIGN KEY ( Employee_ID ) REFERENCES Employees( Employee_ID )  
 );

CREATE TABLE Departments ( 
	Department_ID        BIGINT NOT NULL  PRIMARY KEY  ,
	Employee_ID          BIGINT     ,
	FOREIGN KEY ( Employee_ID ) REFERENCES Employees( Employee_ID )  
 );
