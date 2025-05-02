@echo off
setlocal EnableDelayedExpansion

REM WARNING: You are running this script at your own risk.
REM The author assumes no responsibility for any consequences.
REM ============================================================
REM Author:   BO$ <https://github.com/bos-8>
REM Date:     2025-05-02
REM Version:  1.0
REM Description: Start Portable MongoDB with dynamic port check
REM ========================================================

title MongoDB - LOCAL PORTABLE SERVER

REM === PATH & PORT CONFIGURATION ===
set MONGO_HOME=%~dp0
set MONGO_BIN=%MONGO_HOME%\bin
set MONGO_DATA=%MONGO_HOME%\db
set MONGO_LOG=%MONGO_HOME%\log
set MONGO_PORT=27018

echo.
echo            __  ___                        ____  ____
echo           /  ^|/  /___  ____  ____  ____  / __ \/ __ ^|
echo          / /^|_/ / __ \/ __ \/ __ `/ __ \/ / / / __  ^|
echo         / /  / / /_/ / / / / /_/ / /_/ / /_/ / /_/ /
echo        /_/  /_/\____/_/ /_/\__, /\____/_____/_____/
echo                           /____/
echo.
echo               MongoDB - LOCAL PORTABLE SERVER
echo ============================================================
echo  script started at: ^| %date% %time%
echo  script path:       ^| %~dp0
echo  script name:       ^| %~nx0
echo ------------------------------------------------------------
echo  script author:     ^| BO$
echo ============================================================
echo    WARNING: You are running this script at your own risk.
echo.

REM === CREATE FOLDERS IF NEEDED ===
if not exist "%MONGO_DATA%" mkdir "%MONGO_DATA%"
if not exist "%MONGO_LOG%" mkdir "%MONGO_LOG%"

REM === CHECK IF PORT IS FREE, IF NOT — INCREMENT ===
:check_port
netstat -an | findstr /R /C:":%MONGO_PORT%[ ].*LISTENING" >nul
if not errorlevel 1 (
  echo Port %MONGO_PORT% is in use. Trying next port...
  set /a MONGO_PORT=%MONGO_PORT%+1
  goto check_port
)

REM === CHECK IF PORT IS IN USE ===
echo Starting MongoDB on port %MONGO_PORT%...
echo.
echo MongoDB is running on mongodb://localhost:%MONGO_PORT%
echo CTRL+C to stop MongoDB.

REM === START MONGODB SERVER ===
"%MONGO_BIN%\mongod.exe" --port %MONGO_PORT% --dbpath "%MONGO_DATA%" --logpath "%MONGO_LOG%\mongo.log" --logappend

endlocal
