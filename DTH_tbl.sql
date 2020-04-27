CREATE TABLE DTH_tbl (

DTH_No int IDENTITY (1,1) PRIMARY KEY,
DTH_OPNo int NOT NULL,
DTH_Shift varchar(50) NOT NULL,
DTH_PDStartTime Datetime NOT NULL,
DTH_PDEndTime Datetime NOT NULL,
DTH_Operator1 varchar(50) NOT NULL,
DTH_Operator2 varchar(50),
DTH_Tplanned int NOT NULL,
DTH_Tunplanned int NOT NULL


);
