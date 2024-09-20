@REM 关闭命令行回显，避免显示每条命令。
@echo off
@REM 调用 gradlew 脚本执行 assembleRelease 任务，--no-daemon 参数用于避免使用 Gradle 守护进程。%~dp0 表示当前批处理文件所在的目录。
call "%~dp0\gradlew" assembleRelease --no-daemon
@REM 调用 genJar.bat 脚本，并传递第一个参数 %1。
call "%~dp0\jar\genJar.bat" %1
@REM 暂停脚本执行，等待用户按任意键继续。
pause