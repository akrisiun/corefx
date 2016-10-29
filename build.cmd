@if not defined _echo @echo off
setlocal

if /I [%1] == [-?] goto Usage
set "__args=%*"
if /i [%1] == [native] (set __buildSpec=native&&set "__args=%__args:~6%"&&shift&&goto Tools)
if /i [%1] == [managed] (set __buildSpec=managed&&set "__args=%__args:~7%"&&shift&&goto Tools)

:Build
call %~dp0build-native.cmd %*
if NOT [%ERRORLEVEL%]==[0] exit /b 1
call %~dp0build-managed.cmd %*
exit /b %ERRORLEVEL%

:Usage
echo.
echo There are new changes on how we build. Use this script only for generic
echo build instructions that apply for both build native and build managed.
echo Otherwise:
echo.
echo Before                Now
echo build.cmd native      build-native.cmd
echo build.cmd managed     build-managed.cmd
echo.
echo For more information: "https://github.com/dotnet/corefx/blob/master/Documentation/project-docs/developer-guide.md"
echo ----------------------------------------------------------------------------
echo.
echo.
goto :Build
