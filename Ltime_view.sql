ALTER VIEW LTime_view AS

SELECT

DTH_OPNo AS LTime_OPNo,
DATEDIFF(mi, DTH_PDStartTime, DTH_PDEndTime)- DTH_Tplanned AS LTime


FROM DTH_tbl;