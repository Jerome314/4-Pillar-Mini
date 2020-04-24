CREATE TABLE OP_tbl (

OP_No int IDENTITY (1,1) PRIMARY KEY,
OP_PDate Date NOT NULL,
OP_Shift varchar(50) NOT NULL,
OP_DStartTime Datetime NOT NULL,
OP_DEndTime Datetime NOT NULL,
OP_Rtime int NOT NULL, -- Computed Value
OP_Station varchar(50) NOT NULL,
OP_MacNo int NOT NULL,
OP_OPerator1 varchar(50) NOT NULL,
OP_OPerator2 varchar(50),
OP_SKUNo int NOT NULL,
OP_Output_Cs int NOT NULL,
OP_Output_Pcs int NOT NULL, -- Computed Value
OP_Dplan_Cs int NOT NULL,
OP_Status varchar(50) NOT NULL,
OP_Encodedby varchar(50) NOT NULL,
OP_TEncoded Timestamp NOT NULL,


);
