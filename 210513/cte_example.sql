-- Group By Rollup
   WITH cte_summary(GRP, Summ, Div)
     AS
(
 SELECT groupName AS [GRP]
      , SUM (price*amount) AS Summ
	  , GROUPING_ID(groupName) AS Div
   FROM buyTbl
  GROUP BY RollUp (groupName)
)

 SELECT 
        CASE Div
		WHEN 0 THEN grp
		WHEN 1 THEN '���հ�' END AS [��ǰ�׷�]

      , Summ AS [�׷캰 ���űݾ�]
--	  , Div 
   FROM cte_summary