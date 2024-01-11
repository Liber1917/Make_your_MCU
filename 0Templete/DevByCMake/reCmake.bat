@echo off

@REM 删除build目录下的所有文件和文件夹
rm -r -f ./build/*

@REM cmake输出到build目录
cmake -G "Unix Makefiles" -B ./build

