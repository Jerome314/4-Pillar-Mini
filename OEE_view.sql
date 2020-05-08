ALTER VIEW OEE_View AS

SELECT DISTINCT
OP_No AS 'OEE No',
OP_PDate AS 'PDate', 
DTH_Shift AS 'Shift', 
OP_Station AS 'Station',
Mac_Machine AS 'Machine',
SKU_ItemDes AS 'SKU',
DTH_Operator1 AS 'Operator1',
DTH_Operator2 AS 'Operator2',
OP_Output_Cs AS OEE_Output_Cs,
OP_Dplan_Cs AS OEE_Dplan_Cs,
MSPD_MSPD AS OEE_MSPD,
SKU_Pcs_Cs AS OEE_Pcs_Cs,
DTCheck_TPlanned AS 'Planned DT',
DTCheck_TUnplanned AS 'Unplanned DT',
SCCheck_TFilled AS 'Filled Scrap',
SCCheck_TEmpty AS 'Empty Scrap',
OP_Output_Cs * SKU_Pcs_Cs AS 'Output (Pcs)',
DATEDIFF(mi, DTH_PDStartTime, DTH_PDEndTime) AS OEE_Rtime,
LTime AS 'Loading Time',
OTime AS 'Operating Time',
SCCheck_TFilled + SCCheck_TEmpty + (OP_Output_Cs * SKU_Pcs_Cs) AS 'Total Output',
OTime * MSPD_MSPD AS 'Theo Pcs',
Mac_MacCat AS 'Machine Cat',
SKU_FG_Code AS 'FG Code',
SKU_CategoryDet AS 'Item CatDet', 
SKU_Production AS 'Production',
Date_Wk AS 'Week',
Date_Month AS 'Month No'
--FORMAT(([Operating Time] * [Output (Pcs)])/([Theo Pcs] * [Loading Time]),'P') AS '%OEE'

FROM OP_tbl

LEFT Join DTH_tbl ON OP_No = DTH_OPNo
LEFT Join Mac_tbl ON OP_MacNo = Mac_No
LEFT Join SKU_tbl ON OP_SKUNo = SKU_No
LEFT Join MSPD_tbl ON OP_MacNo = MSPD_Mac AND OP_SKUNo = MSPD_SKU
LEFT Join SCH_tbl ON OP_No = SCH_OPNo
LEFT Join Date_tbl ON OP_PDate = Date_Date
LEFT Join LTime_view ON OP_No = LTime_OPNo
LEFT Join OTime_view ON OP_No = OTime_OPNo
LEFT JOIN SCCheck_view ON
OP_PDate =  SCCheck_PDate AND
OP_MacNo = SCCheck_MacNo AND
OP_SKUNo = SCCheck_SKUNo
LEFT JOIN DTCheck_view ON
OP_PDate =  DTCheck_PDate AND
OP_MacNo = DTCheck_MacNo AND
OP_SKUNo = DTCheck_SKUNo;


