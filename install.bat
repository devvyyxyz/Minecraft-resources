@echo off
echo Welcome to the Minecraft Resources Installer!

:menu
echo.
echo Please select the type of resource to install:
echo 1. Texture Pack
echo 2. Mod
echo 3. Data Pack
echo 4. Exit
set /p choice="Enter your choice: "

if "%choice%"=="1" goto texture
if "%choice%"=="2" goto mod
if "%choice%"=="3" goto datapack
if "%choice%"=="4" exit
echo Invalid choice. Please try again.
goto menu

:texture
set /p url="Enter the download URL for the texture pack: "
set dest="%APPDATA%\.minecraft\resourcepacks"
echo Downloading Texture Pack...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %dest%\texturepack.zip"
echo Texture Pack installed successfully in %dest%.
goto menu

:mod
set /p url="Enter the download URL for the mod: "
set dest="%APPDATA%\.minecraft\mods"
echo Downloading Mod...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %dest%\mod.jar"
echo Mod installed successfully in %dest%.
goto menu

:datapack
set /p url="Enter the download URL for the data pack: "
set /p world="Enter the name of your Minecraft world: "
set dest="%APPDATA%\.minecraft\saves\%world%\datapacks"
echo Downloading Data Pack...
powershell -Command "Invoke-WebRequest -Uri %url% -OutFile %dest%\datapack.zip"
echo Data Pack installed successfully in %dest%.
goto menu
