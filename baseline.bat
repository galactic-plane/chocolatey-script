@ECHO OFF 
ECHO ============================
ECHO Chocolatey Updater
ECHO ============================
:: This batch file reveals OS, hardware, and networking configuration.
TITLE My System Info
ECHO Please wait... Checking system information.
:: Section 1: OS information.
ECHO ============================
ECHO OS INFO
ECHO ============================
systeminfo | findstr /c:"OS Name"
systeminfo | findstr /c:"OS Version"
systeminfo | findstr /c:"System Type"
:: Section 2: Hardware information.
ECHO ============================
ECHO HARDWARE INFO
ECHO ============================
systeminfo | findstr /c:"Total Physical Memory"
wmic cpu get name
:: Section 3: Networking information.
ECHO ============================
ECHO NETWORK INFO
ECHO ============================
ipconfig | findstr IPv4
ipconfig | findstr IPv6
ECHO ============================
ECHO UPDATES
ECHO ============================
choco upgrade libreoffice-fresh -y
choco upgrade nodejs -y
choco upgrade vscode -y
choco upgrade visualstudio2019community -y
choco upgrade dotnetcore-sdk -y
choco upgrade skype -y
choco upgrade notepadplusplus -y
choco upgrade microsoft-teams -y
choco upgrade obs-studio -y
choco upgrade microsoft-edge -y
choco upgrade googlechrome -y
choco upgrade firefox -y
choco upgrade vlc -y
choco upgrade ccleaner -y
choco upgrade cpu-z -y
choco upgrade git -y
choco upgrade steam -y
choco upgrade chocolatey -y