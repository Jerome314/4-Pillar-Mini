CREATE TABLE DT_tbl (

DT_No int PRIMARY KEY,
DT_OPNo int NOT NULL,
DT_DTHNo int NOT NULL,
DT_DStartTime Datetime NOT NULL,
DT_DEndTime Datetime NOT NULL,
DT_Minutes int NOT NULL,
DT_Description varchar(250) NOT NULL,
DT_Particular varchar(250),
DT_Action varchar(250),
DT_Responsible varchar(250) NOT NULL,
DT_Status varchar(50) NOT NULL,
DT_Encodedby varchar(50) NOT NULL,
DT_TEncoded Timestamp NOT NULL
);