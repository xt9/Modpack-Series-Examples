set PACKNAME=The_Pack_Name
set VERSION=0.1
set FILENAME=%PACKNAME%-%VERSION%.zip
set BUILD_JSON=./general.json

twitch_export.exe -p %VERSION% -n %PACKNAME% -c %BUILD_JSON%
move %FILENAME% build/
pause