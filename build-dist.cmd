@echo off
setlocal

cd "%~dp0"

mkdir bld\dist\

For %%a in (
"ColorHexConverter\ColorHexConverter\bin\Release\net48\*.dll"
"ColorHexConverter\ColorHexConverter\bin\Release\net48\*.exe"
"ColorHexConverter\ColorHexConverter\bin\Release\net48\*.exe.config"
) do (
xcopy /s /d "%%~a" bld\dist\
)
