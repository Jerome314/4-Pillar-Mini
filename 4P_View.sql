ALTER VIEW FP_view AS

SELECT DISTINCT 

OP_No AS 'No',
OP_PDate AS 'PDate',
OP_Station AS 'Station',
Mac_Machine AS 'Machine',
SKU_ItemDes AS 'SKU',
OP_Output_Cs AS 'Output (CS)',
FORMAT(CAST(OP_Output_Cs AS FLOAT) / NULLIF(CAST(OP_Dplan_Cs AS FLOAT),0),'P') AS '%OR',
FORMAT(CAST(([Operating Time] * [Output (Pcs)]) AS FLOAT)/ CAST(([Theo Pcs] * [Loading Time]) AS FLOAT),'P') AS '%OEE',
FORMAT(CAST([Filled Scrap] + [Empty Scrap] AS FLOAT)/ CAST([Output (Pcs)] AS FLOAT),'P') AS '%Scrap',
FORMAT(1-(LLCheck_Output_KG/NULLIF(LLCheck_Input_KG,0)),'P') AS '%Line Loss'




FROM OP_tbl

LEFT JOIN Mac_tbl ON OP_MacNo = Mac_No
LEFT JOIN SKU_tbl ON OP_SKUNo = SKU_No
LEFT JOIN OEE_View ON OP_No = [OEE NO]
LEFT JOIN LLCheck_view ON OP_No = LLCheck_OPNo;