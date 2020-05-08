--ALTER VIEW LL_view AS

SELECT

OP_NO AS LL_OPNo,
OP_PDate AS LL_PDate,
OP_Station AS LL_Station,
OP_MacNo AS LL_MacNo,
OP_SKUNo AS LL_SKUNo,
((OP_Output_Cs * SKU_Pcs_Cs) + SCCheck_TFilled) AS hha,
((OP_Output_Cs * SKU_Pcs_Cs) + SCCheck_TFilled)/ CAST(Proration_TotPcs AS float) AS LL_Proration,
(CAST(((OP_Output_Cs * SKU_Pcs_Cs) + SCCheck_TFilled) AS float)/ CAST(Proration_TotPcs AS float)) * INH_Batch AS LL_Input_KG,
(OP_Output_Cs * SKU_Pcs_Cs * SKU_G_Pcs)/1000 AS LL_Output_KG

FROM OP_tbl

LEFT JOIN SKU_tbl ON OP_SKUNo = SKU_No
LEFT JOIN SCCheck_view ON
OP_PDate =  SCCheck_PDate AND
OP_MacNo = SCCheck_MacNo AND
OP_SKUNo = SCCheck_SKUNo
LEFT JOIN INH_tbl ON
OP_PDate = INH_PDate AND
OP_Station = INH_Station AND
OP_SKUNo = INH_SKUNo
LEFT JOIN Proration_view ON 
OP_PDate = Proration_PDate AND
OP_Station = Proration_Station AND
OP_SKUNo = Proration_SKUNo

