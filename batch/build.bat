@echo off

REM create build directory
IF NOT EXIST ..\build mkdir ..\build
pushd ..\build

echo.
echo - Build directory created.
echo.
echo - Initiating specified builds....
echo.

echo -----------------------
echo // COMPILER WARNINGS //
echo -----------------------
REM compile and link 'sourceName'
REM generate executable target file 'targetName'
g++ -std=c++17 -Wall -Wextra -pedantic -o targetName.exe ..\code\sourceName.cpp
echo.
echo.
echo -- All builds completed! --

REM jump back to original directory
popd
