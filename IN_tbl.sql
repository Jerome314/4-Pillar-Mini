CREATE TABLE IN_tbl (

IN_No int IDENTITY (1,1) PRIMARY KEY,
IN_PDate Date NOT NULL,
IN_Station varchar(50) NOT NULL,
IN_SKUNo int NOT NULL,
IN_Batch int NOT NULL,
IN_Status varchar(50) NOT NULL,
IN_EncodedBy varchar(50) NOT NULL,
IN_TEncoded Timestamp NOT NULL


);
