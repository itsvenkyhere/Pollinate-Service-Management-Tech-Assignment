CREATE TABLE PROJECTS
(
PROJECTID INT
,PROJECTEDMONTH DATE
,LABOR INT
,EQUIPMENT INT
);

INSERT INTO PROJECTS VALUES (1,'2021-09-01', 500, 0)
, (1,'2021-10-01', 250,250)
, (1,'2021-11-01', 100,50)
, (2,'2021-11-01', 100,50)
, (2,'2021-12-01', 100,50);



DECLARE @PIVOT_COLUMN [NVARCHAR](MAX);
DECLARE @QUERY [NVARCHAR](MAX);

/*SELECT PIVOT COLUMN*/
SELECT @PIVOT_COLUMN= COALESCE(@PIVOT_COLUMN+',','')+ QUOTENAME(PROJECTEDMONTH) FROM
(SELECT DISTINCT [PROJECTEDMONTH] FROM PROJECTS WHERE PROJECTID=1 )TAB

/*CREATE DYNAMIC QUERY*/
SELECT @QUERY='SELECT ''Labor'' AS title, '+@PIVOT_COLUMN+'FROM
(SELECT LABOR,PROJECTEDMONTH  FROM PROJECTS WHERE PROJECTID=1 )TAB1
PIVOT
(
    MAX (LABOR)
    FOR PROJECTEDMONTH IN  ('+@PIVOT_COLUMN+')
) AS TAB2
UNION ALL
SELECT ''Equipment'' AS title, '+@PIVOT_COLUMN+'FROM
(SELECT EQUIPMENT,PROJECTEDMONTH  FROM PROJECTS WHERE PROJECTID=1 )TAB3
PIVOT
(
    MAX (EQUIPMENT)
    FOR PROJECTEDMONTH IN  ('+@PIVOT_COLUMN+')
) AS TAB4'

/*EXECUTE QUERY*/
EXEC  SP_EXECUTESQL  @QUERY