CREATE TABLE DT_tbl (

DT_No int IDENTITY (1,1) PRIMARY KEY,
DT_DTHNo int NOT NULL,
DT_DStartTime Datetime NOT NULL,
DT_DEndTime Datetime NOT NULL,
DT_Minutes int NOT NULL, -- Computed Value
DT_DesNo int NOT NULL, 
DT_Particular varchar(50) NOT NULL,
DT_Action varchar(250) NOT NULL,
DT_Responsible varchar(50) NOT NULL,
DT_Type varchar(50) NOT NULL,
DT_Status varchar(50) NOT NULL,
DT_EncodedBy varchar(50) NOT NULL,
DT_TEncoded Timestamp NOT NULL,



);
