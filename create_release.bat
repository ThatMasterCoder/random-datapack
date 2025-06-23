@echo off
echo Creating release zip for Random-Datapack...

REM version number
set "version=1.1.0"

REM Create temporary directory outside current folder
set "tempDir=%~dp0..\temp_release"
set "zipName=%~dp0..\random-datapack-v%version%.zip"

REM Clean up any existing temp directory
if exist "%tempDir%" rmdir /s /q "%tempDir%"

REM Create temp directory
mkdir "%tempDir%"

REM Copy all files and folders first
xcopy "%~dp0*" "%tempDir%\" /E /I /Q

REM Remove unwanted files from temp directory
del "%tempDir%\*.bat" 2>nul
del "%tempDir%\*.zip" 2>nul
del "%tempDir%\*.ps1" 2>nul

REM Use PowerShell to create the zip (works on Windows 10+)
powershell -command "Compress-Archive -Path '%tempDir%\*' -DestinationPath '%zipName%' -Force"

REM Clean up
rmdir /s /q "%tempDir%"

echo.
echo Successfully created: random_datapack-v%version%.zip
echo Location: %~dp0..\
echo Ready for GitHub release!
pause