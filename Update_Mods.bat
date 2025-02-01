@echo off
set Repository_Path=%~dp0
echo Repository_Path: %Repository_Path%
%~d0
cd %Repository_Path%


set Git_exe="%Repository_Path%Git-App\cmd\git"
echo %Git_exe%
%Git_exe% pull


set /p MOD_FOLDER=<"%Repository_Path%\Mod_folder_path.txt"
call set "MOD_FOLDER=%MOD_FOLDER%"

echo %MOD_FOLDER%
dir "%MOD_FOLDER%"
del /f /q /s %MOD_FOLDER%
dir "%MOD_FOLDER%"
xcopy "%Repository_Path%\mods" %MOD_FOLDER% /s /e /h
dir "%MOD_FOLDER%"

pause