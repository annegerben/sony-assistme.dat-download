@echo off
cls
echo remove old assistme.dat file
del %~dp0PRIVATE\SONY\GPS\assistme.dat /f
cd %~dp0PRIVATE\SONY\GPS\
echo downloading new assistme.dat file
powershell (New-Object System.Net.WebClient).DownloadFile('http://control.d-imaging.sony.co.jp/GPS/assistme.dat','%~dp0PRIVATE\SONY\GPS\assistme.dat')
echo finished