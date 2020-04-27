CREATE TABLE DT_Rtbl (

DTR_No int IDENTITY (1,1) PRIMARY KEY,
DTR_PDate Date NOT NULL,
DTR_Shift varchar(50) NOT NULL,
DTR_Station varchar(50) NOT NULL,
DTR_Machine varchar(50) NOT NULL,
DTR_SKU varchar(50) NOT NULL,
DTR_Operator1 varchar(50) NOT NULL,
DTR_Operator2 varchar(50),
DTR_DStartTime Datetime NOT NULL,
DTR_DEndTime Datetime NOT NULL,
DTR_Minutes int NOT NULL,
DTR_Issue varchar(250) NOT NULL,
DTR_Particular varchar(50) NOT NULL,
DTR_Action varchar(250) NOT NULL,
DTR_Responsible varchar(250) NOT NULL,
DTR_Dcodes varchar(50) NOT NULL,
DTR_16MLosses varchar(50) NOT NULL,
DTR_MacCat varchar(50) NOT NULL,
DTR_FGCode varchar(50) NOT NULL,
DTR_CategoryDet varchar(50) NOT NULL, 
DTR_Production varchar(50) NOT NULL,
DTR_Wk varchar(50) NOT NULL,
DTR_Month int NOT NULL



);