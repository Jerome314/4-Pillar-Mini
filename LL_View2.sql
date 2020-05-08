CREATE VIEW LL_View AS

SELECT
OP_No AS 'LL No',
OP_PDate AS 'PDate',
DTH_Shift AS 'Shift',
OP_Station AS 'Station',
Mac_Machine AS 'Machine',
SKU_ItemDes AS 'SKU',
DTH_Operator1 AS 'Operator1',
DTH_Operator2 AS 'Operator2',
OP_Output_Cs AS 'Output(CS)',
SKU_G_Pcs AS 'G/Pcs',
SKU_Pcs_Cs AS 'Pcs/Cs',
(((OP_Output_Cs * SKU_Pcs_Cs) + SCH_Filled)/Proration_Tot) AS '% Proration',

LL_OutputKG int NOT NULL,
LL_Category varchar(50) NOT NULL,
Mac_MacCat AS 'Machine Cat',
SKU_FG_Code AS 'FG Code',
SKU_CategoryDet AS 'Item CatDet', 
SKU_Production AS 'Production',
Date_Wk AS 'Week',
Date_Month AS 'Month No'

FROM OP_tbl



);