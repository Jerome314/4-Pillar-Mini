--ALTER VIEW Proration_view AS

SELECT

OP_PDATE AS Proration_PDate,
OP_Station AS Proration_Station,
OP_SKUNo AS Proration_SKUNo,
SUM((OP_Output_Cs * SKU_Pcs_Cs) + SCCheck_TFilled) AS Proration_TotPcs

FROM OP_tbl

LEFT JOIN SKU_tbl ON OP_SKUNo = SKU_No
LEFT JOIN SCH_tbl ON OP_No = SCH_OPNo
LEFT JOIN SCCheck_view ON
OP_PDate =  SCCheck_PDate AND
OP_MacNo = SCCheck_MacNo AND
OP_SKUNo = SCCheck_SKUNo


GROUP BY
OP_PDATE,
OP_Station,
OP_SKUNo;


