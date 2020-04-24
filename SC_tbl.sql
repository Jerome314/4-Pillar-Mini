CREATE TABLE SC_tbl (

SC_No int IDENTITY (1,1) PRIMARY KEY,
SC_OPNo int NOT NULL,
SC_Type varchar(50) NOT NULL,
SC_Category varchar(50) NOT NULL,
SC_Quantity int NOT NULL,
SC_Status varchar(50) NOT NULL,
SC_EncodedBy varchar(50) NOT NULL,
SC_TEncoded Timestamp NOT NULL


);