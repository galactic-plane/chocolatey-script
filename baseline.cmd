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
:: Developer Updates
choco upgrade python -y
choco upgrade yarn -y
choco upgrade git -y
choco upgrade gh -y
choco upgrade microsoft-edge -y
choco upgrade googlechrome -y
choco upgrade firefox -y
choco upgrade visualstudio2019buildtools -y
choco upgrade vscode -y
choco upgrade azure-cli -y
choco upgrade microsoftazurestorageexplorer -y
choco upgrade azure-functions-core-tools -y
choco upgrade azurepowershell -y
choco upgrade azure-data-studio -y
choco upgrade docker-desktop -y
choco upgrade filezilla -y
choco upgrade 7zip -y
choco upgrade notepadplusplus -y
choco upgrade audacity -y
:: Meetings
choco upgrade skype -y
choco upgrade microsoft-teams -y
choco upgrade webex-meetings -y
choco upgrade zoom -y
:: Video
choco upgrade obs-studio -y
choco upgrade vlc -y
:: Utilities
choco upgrade rufus -y
choco upgrade ccleaner -y
choco upgrade cpu-z -y
choco upgrade steam -y
choco upgrade grammarly -y
choco upgrade choco-cleaner -y
:: Chocolatey
choco upgrade chocolatey -y