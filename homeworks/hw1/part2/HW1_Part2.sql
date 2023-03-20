CREATE TABLE Health_Camp_Detail ( 
	Health_Camp_ID       BIGINT NOT NULL  PRIMARY KEY  ,
	Camp_Start_Date      DATE     ,
	Camp_End_Date        DATE     ,
	Category1            VARCHAR(10)     ,
	Category2            CHAR(1)     ,
	Category3            INTEGER     
 ) ;

CREATE TABLE Patient_Profile ( 
	Patient_ID           BIGINT NOT NULL  PRIMARY KEY  ,
	Online_Follower      BOOLEAN     ,
	LinkedIn_Shared      BOOLEAN     ,
	Twitter_Shared       BOOLEAN     ,
	Facebook_Shared      BOOLEAN     ,
	Income               INTEGER     ,
	Education_Score      FLOAT(3,10)     ,
	Age                  INTEGER     ,
	First_Interaction    DATE     ,
	City_Type            CHAR(1)     ,
	Employer_Category    VARCHAR(50)     
 ) ;

CREATE TABLE Second_Health_Camp_Attended ( 
	Patient_ID           BIGINT NOT NULL    ,
	Health_Camp_ID       BIGINT NOT NULL    ,
	"Health Score"       FLOAT(1,10)     ,
	ID                   BIGINT NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES Patient_Profile( Patient_ID )  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES Health_Camp_Detail( Health_Camp_ID )  
 ) ;

CREATE TABLE Third_Health_Camp_Attended ( 
	Patient_ID           BIGINT NOT NULL    ,
	Health_Camp_ID       BIGINT NOT NULL    ,
	Number_of_stall_visited INTEGER     ,
	Last_Stall_Visited_Number INTEGER     ,
	ID                   BIGINT NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES Patient_Profile( Patient_ID )  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES Health_Camp_Detail( Health_Camp_ID )  
 ) ;

CREATE TABLE First_Health_Camp_Attended ( 
	Patient_ID           BIGINT NOT NULL    ,
	Health_Camp_ID       BIGINT NOT NULL    ,
	Donation             INTEGER     ,
	Health_Score         FLOAT(1,10)     ,
	ID                   BIGINT NOT NULL  PRIMARY KEY  ,
	FOREIGN KEY ( Patient_ID ) REFERENCES Patient_Profile( Patient_ID )  ,
	FOREIGN KEY ( Health_Camp_ID ) REFERENCES Health_Camp_Detail( Health_Camp_ID )  
 ) ;