CREATE TABLE SKU_tbl (

SKU_No int IDENTITY (1,1) PRIMARY KEY,
SKU_ItemDes varchar(50) NOT NULL,
SKU_FG_Code varchar(50) NOT NULL,
SKU_Category varchar(50) NOT NULL,
SKU_CategoryDet varchar(50) NOT NULL,
SKU_G_Pcs int NOT NULL,
SKU_Pcs_Cs int NOT NULL,
SKU_Production varchar(50) NOT NULL



);