set curpath=%CD%
cd "%~dp0"
@gcc -ansi -pedantic -Wall src/tools/txt2c.c -o src/tools/txt2c
@src\tools\txt2c.exe src/base.lua src/tools.lua src/driver_gcc.lua src/driver_clang.lua src/driver_cl.lua src/driver_solstudio.lua src/driver_xlc.lua > src/internal_base.h
@gcc -pedantic -Wall src/*.c src/lua/*.c -o bam -I src/lua/
cd %curpath%
