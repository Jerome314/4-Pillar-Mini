ALTER VIEW DTCheck_view AS

SELECT
OP_PDate AS DTCheck_PDate,
OP_MacNo AS DTCheck_MacNo,
OP_SKUNo AS DTCheck_SKUNo,
ISNULL(SUM( CASE WHEN DT_Description = 'Planned CIP' OR
DT_Description = 'Planned Mixing, Batching, Cooking' OR
DT_Description = 'Planned Line Clearance' OR
DT_Description = 'Planned Set-up/ Changeover' OR
DT_Description = 'End Run' OR
DT_Description = 'Meet Plan'
THEN DT_Minutes END),0) AS DTCheck_TPlanned,
ISNULL(SUM( CASE WHEN DT_Description != 'Planned CIP' AND
DT_Description != 'Planned Mixing, Batching, Cooking' AND
DT_Description != 'Planned Line Clearance' AND
DT_Description != 'Planned Set-up/ Changeover' AND
DT_Description != 'End Run' AND
DT_Description != 'Meet Plan'
THEN DT_Minutes END),0) AS DTCheck_TUnplanned



FROM OP_tbl

LEFT JOIN DT_tbl ON OP_No = DT_OPNo

GROUP BY
OP_Pdate,
OP_MacNo,
OP_SKUNo;

