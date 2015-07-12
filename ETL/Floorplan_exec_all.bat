call C:\Apps\Gizinta\gseFP\ETL\BldgOutline_sync.bat
if %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
call C:\Apps\Gizinta\gseFP\ETL\Floorplan_sync.bat
if %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
call C:\Apps\Gizinta\gseFP\ETL\Publication_sync.bat
