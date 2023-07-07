@echo off
color 7
:login
cls
echo ******************************************************
echo                    LOGIN USER
echo ******************************************************
echo.
echo ------------------------------------------------------
set /p name=       User        : 
set /p password=   Password    : 
if %password% == mursalim (
    goto begin
) else (
    echo Password salah
    set /p x= enter...........!!
    goto login
)


:begin
cls
echo ******************************************************
echo                    HALAMAN UTAMA
echo ******************************************************
echo.
echo 1. Menu Setting
echo 2. Menu Restaurant
echo 3. exit
echo ------------------------------------------------------

set /p pil=Pilihan Menu Anda : 

if %pil% == 1 goto setting
if %pil% == 2 goto restaurant
if %pil% == 3 goto keluar

:setting
cls
echo ------------------------------------------------------
echo                    SETTING KOMPUTER
echo ------------------------------------------------------
echo                   [1] Setting Keyboard
echo                   [2] Setting Language
echo                   [3] Setting Date
echo                   [4] Add User
echo                   [5] Sound Contorl
echo                   [6] Open Startup
echo                   [7] Chrome
echo                   [8] Kembali                  [0] keluar
echo.

set /p "pilihmenu=Masukkan Pilihan Menu : "
if %pilihmenu%==1 goto Keyboard
if %pilihmenu%==2 goto Language
if %pilihmenu%==3 goto Date
if %pilihmenu%==4 goto User
if %pilihmenu%==5 goto sound
if %pilihmenu%==6 goto startup
if %pilihmenu%==7 goto chrome
if %pilihmenu%==8 goto back
if %pilihmenu%==0 goto exit