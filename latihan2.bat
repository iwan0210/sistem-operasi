@echo off
Title Latihan 2 Inputan

rem Variable dan Inputan
set /p nim=     Masukkan NIM Anda       : 
set /p nama=    Masukkan Nama Lengkap   : 
set /p prodi=   Masukkan Prodi Anda     : 
set /p a=  Masukkan a        :
set /p b=  Masukkan b        :
set /p c=  Masukkan c        :

set /a d = %a% + %b%
set /a volume = %a% * %b% * %c%
set /a no2 = ((%a% + %b%) * (%c% - %d%)) / (%a% * %b%)
set /a no3 = ((%a% * %a%) + (%b% * %b%)) * (%b% + %c%)

rem Output
echo -----------------------------------
echo Data Mahasiswa UNISS
echo -----------------------------------
echo NIM            : %nim%
echo Nama           : %nama%
echo Prodi          : %prodi%
echo -----------------------------------
echo Hasil Perhitungan Aritmatika
echo -----------------------------------
echo 1. a x b x c   : %volume%
echo 2. (Rumus)     : %no2%
echo 3. (Rumus)     : %no3%
echo -----------------------------------
pause