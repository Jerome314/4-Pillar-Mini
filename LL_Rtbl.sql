CREATE TABLE LL_Rtbl (

LL_No int IDENTITY (1,1) PRIMARY KEY,
LL_PDate Date NOT NULL,
LL_Shift varchar(50) NOT NULL,
LL_Rtime int NOT NULL,
LL_Station varchar(50) NOT NULL,
LL_Machine varchar(50) NOT NULL,
LL_SKU varchar(50) NOT NULL,
LL_Operator1 varchar(50) NOT NULL,
LL_Operator2 varchar(50),
LL_Output_Cs int NOT NULL,
LL_G_Pcs int NOT NULL,
LL_Pcs_Cs int NOT NULL,
LL_Proration int NOT NULL,
LL_ProrationKG int NOT NULL,
LL_OutputKG int NOT NULL,
LL_Category varchar(50) NOT NULL,
LL_MacCat varchar(50) NOT NULL,
LL_FGCode varchar(50) NOT NULL,
LL_CategoryDet varchar(50) NOT NULL, 
LL_Production varchar(50) NOT NULL,
LL_Wk varchar(50) NOT NULL,
LL_Month int NOT NULL



);