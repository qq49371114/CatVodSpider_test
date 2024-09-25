@echo off

call "%~dp0\gradlew" assembleRelease --no-daemon -Xlint:deprecation

call "%~dp0\jar\genJar.bat" %1

pause