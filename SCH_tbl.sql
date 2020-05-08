CREATE TABLE SCH_tbl (

SCH_No int IDENTITY (1,1) PRIMARY KEY,
SCH_OPNo int NOT NULL,
SCH_Filled int NOT NULL,
SCH_Empty int NOT NULL,
SCH_Status varchar(50) NOT NULL,
SCH_EncodedBy varchar(50) NOT NULL,
SCH_Tencoded Timestamp NOT NULL


);
