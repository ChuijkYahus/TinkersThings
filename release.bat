@echo off

IF EXIST build RMDIR /q /s build
IF EXIST "Tinker-Things-#.#.#.jar" DEL "Tinker-Things-#.#.#.jar"
MKDIR build

REM Copy required files into build directory
XCOPY src build /s /i /q
XCOPY generated\assets build\assets /s /i /q

REM Zipping contents
cd build
jar --create --file ../Tinker-Things-#.#.#.jar *
cd ..

REM Removing build directory
RMDIR /q /s build
