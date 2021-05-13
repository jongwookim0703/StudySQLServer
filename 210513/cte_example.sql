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
		WHEN 1 THEN '총합계' END AS [상품그룹]

      , Summ AS [그룹별 구매금액]
--	  , Div 
   FROM cte_summary