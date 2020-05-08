ALTER VIEW SCCheck_view AS

SELECT
OP_PDate AS SCCheck_PDate,
OP_MacNo AS SCCheck_MacNo,
OP_SKUNo AS SCCheck_SKUNo,
ISNULL(SUM( CASE WHEN SC_Type = 'Filled'
THEN SC_Quantity END),0) AS SCCheck_TFilled,
ISNULL(SUM( CASE WHEN SC_Type = 'Empty'
THEN SC_Quantity END),0) AS SCCheck_TEmpty

FROM OP_tbl

LEFT JOIN SC_tbl ON OP_No = SC_OPNo

GROUP BY
OP_PDate,
OP_MacNo,
OP_SKUNo;

