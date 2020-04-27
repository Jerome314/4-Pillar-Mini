CREATE TABLE OEE_Rtbl (

OEE_No int IDENTITY (1,1) PRIMARY KEY,
OEE_PDate Date NOT NULL,
OEE_Shift varchar(50) NOT NULL,
OEE_Rtime int NOT NULL,
OEE_Station varchar(50) NOT NULL,
OEE_Machine varchar(50) NOT NULL,
OEE_SKU varchar(50) NOT NULL,
OEE_Operator1 varchar(50) NOT NULL,
OEE_Operator2 varchar(50),
OEE_Output_Cs int NOT NULL,
OEE_Dplan_Cs int NOT NULL,
OEE_MSPD int NOT NULL,
OEE_Pcs_Cs int NOT NULL,
OEE_Packaging varchar(50) NOT NULL,
OEE_PlannedDT int NOT NULL,
OEE_UnplannedDT int NOT NULL,
OEE_FiSCedScrap int NOT NULL,
OEE_EmptyScrap int NOT NULL,
OEE_Output_Pcs int NOT NULL, -- Computed Value
OEE_LTime int NOT NULL,
OEE_OTime int NOT NULL,
OEE_OTot int NOT NULL,
OEE_TheoOPpcs int NOT NULL,
OEE_MacCat varchar(50) NOT NULL,
OEE_FGCode varchar(50) NOT NULL,
OEE_CategoryDet varchar(50) NOT NULL, 
OEE_Production varchar(50) NOT NULL,
OEE_Wk varchar(50) NOT NULL,
OEE_Month int NOT NULL



);