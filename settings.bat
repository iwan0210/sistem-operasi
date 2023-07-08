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
if %pilihmenu%==1 goto keyboard
if %pilihmenu%==2 goto language
if %pilihmenu%==3 goto date
if %pilihmenu%==4 goto user
if %pilihmenu%==5 goto sound
if %pilihmenu%==6 goto startup
if %pilihmenu%==7 goto chrome
if %pilihmenu%==8 goto back
if %pilihmenu%==0 goto exit

:keyboard
cls
start control keyboard
goto setting
pause

:language
cls
start intl.cpl
goto setting
pause

:date
cls
start timedate.cpl
goto setting
pause

:user
cls
start Netplwiz.exe
goto setting
pause

:sound
cls
start SndVol.exe
goto setting
pause
cls

:startup
cls
start msconfig
goto setting
pause

:chrome
cls
"C:\Program Files\Google\Chrome\Application\chrome.exe"
goto setting
pause

:back
goto begin

:exit
exit

:restaurant
cls
echo ======================================================
echo         SELAMAT DATANG DI RESTO SERBA LARANG
echo ======================================================
echo.
echo Menu makanan :
echo [1] Paket 1 (ayam + es teh)
echo [2] Paket 2 (ayam bakar + teh anget)
echo [3] Paket 3 (ayam goreng krispy)
echo [4] Paket Premium (gurame + cumi)
echo [5] Paket gold (gurame + seafood)
echo [6] exit          [7] kembali
set /p pilihan= Pilihan Menu Anda :

if %pilihan% == 1 goto 1
if %pilihan% == 2 goto 2
if %pilihan% == 3 goto 3
if %pilihan% == 4 goto 4
if %pilihan% == 5 goto 5
if %pilihan% == 6 goto 6
if %pilihan% == 7 goto back

:1
cls
echo ======================================================
echo Nama Paket = Paket 1 (ayam + es teh)
echo Harga = 50.000
echo Keuntungan = nasi + air putih + kurma
echo ======================================================
pause
goto restaurant

:2
cls
echo ======================================================
echo Nama Paket = Paket 2 (ayam bakar + teh anget)
echo Harga = 75.000
echo Keuntungan = nasi + air putih + kurma
echo ======================================================
pause
goto restaurant

:3
cls
echo ======================================================
echo Nama Paket = Paket 3 (ayam goreng krispy)
echo Harga = 80.000
echo Keuntungan = nasi + air putih + kurma
echo ======================================================
pause
goto restaurant

:4
cls
echo ======================================================
echo Nama Paket = Paket Premium (gurame + cumi)
echo Harga = 125.000
echo Keuntungan = nasi + air putih + kurma
echo ======================================================
pause
goto restaurant

:5
cls
echo ======================================================
echo Nama Paket = Paket Gold (gurame + seafood)
echo Harga = 250.000
echo Keuntungan = nasi + air putih + kurma
echo ======================================================
pause
goto restaurant

:back
goto begin

:6
exit

:keluar
exit