ALTER VIEW OTime_view AS

SELECT

DTH_OPNo AS OTime_OPNo,
DATEDIFF(mi, DTH_PDStartTime, DTH_PDEndTime)- DTH_Tplanned- DTH_Tunplanned AS OTime


FROM DTH_tbl;