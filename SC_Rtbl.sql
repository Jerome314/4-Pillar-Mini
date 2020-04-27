CREATE TABLE SC_Rtbl (

SCR_No int IDENTITY (1,1) PRIMARY KEY,
SCR_PDate Date NOT NULL,
SCR_Shift varchar(50) NOT NULL,
SCR_Station varchar(50) NOT NULL,
SCR_Machine varchar(50) NOT NULL,
SCR_SKU varchar(50) NOT NULL,
SCR_Operator1 varchar(50) NOT NULL,
SCR_Operator2 varchar(50),
SCR_Type varchar(50) NOT NULL,
SCR_Details varchar(50) NOT NULL,
SCR_Quantity int NOT NULL,
SCR_MacCat varchar(50) NOT NULL,
SCR_FGCode varchar(50) NOT NULL,
SCR_CategoryDet varchar(50) NOT NULL, 
SCR_Production varchar(50) NOT NULL,
SCR_Wk varchar(50) NOT NULL,
SCR_Month int NOT NULL



);