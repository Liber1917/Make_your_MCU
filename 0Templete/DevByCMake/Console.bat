@echo off
@REM 设置当前目录为脚本所在目录
set "CURRENT_DIR=%~dp0"
@REM 设置变量为交叉编译命令的环境根目录
set "MSYS2=E:\SoftWare\msys64"

@REM 配置兼容 Windows 系统环境变量
set "PATH=C:\WINDOWS\system32;C:\WINDOWS;C:\WINDOWS\System32\Wbem;C:\WINDOWS\System32\WindowsPowerShell\v1.0"
@REM 添加 MSYS2 路径到环境变量，兼容 Unix
set "PATH=%MSYS2%\mingw64\bin;%MSYS2%\usr\bin;%MSYS2%\mingw32\bin;%PATH%"
@REM 添加 ARM 交叉编译器路径到环境变量
set "PATH=%CURRENT_DIR%\toolchain\arm-none-eabi\bin;%PATH%"

@REM 设置 ConEmu 路径
set "ConEmu=%CURRENT_DIR%\ConEmu\ConEmu64.exe"
@REM 启动 ConEmu，并打开两个新的控制台窗口
start %ConEmu% -title console ^
	-runlist -new_console:d:"%CURRENT_DIR%\build":t:build ^
	^|^|^| -new_console:d:"%CURRENT_DIR%":t:tools ^
