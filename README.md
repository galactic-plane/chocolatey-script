![Chocolatey Image](chocolatey-media.png)

---

# Chocolatey Script (Windows Packagage Manager)
A simple script using the chocolatey package manager to install/update software I use on my development workstation

# Directions

    1.  Run the setup script once (Source: https://chocolatey.org/install)
    2.  Find packages here: https://chocolatey.org/packages
    3.  Use the below "Usage" information as a guide for creating your own package manager "BAT" file.

# Setup Script
Run powershell as an administrator and run the following once:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
# Usage Example
The following commands installs or updates:

    * Node.js
    * VSCode
    * Visual Studio 2019
    * Dot Net Core SDK
    * Skype
    * Notepad++
    * Microsoft Teams
    * OBS Studio
    * Firefox
    * VLC
    * CCleaner
    * CPU-Z
    * Git
    * Steam
    * Chocolatey

```cmd
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
choco upgrade nodejs -y
choco upgrade vscode -y
choco upgrade visualstudio2019community -y
choco upgrade dotnetcore-sdk -y
choco upgrade skype -y
choco upgrade notepadplusplus -y
choco upgrade microsoft-teams -y
choco upgrade obs-studio -y
choco upgrade firefox -y
choco upgrade vlc -y
choco upgrade ccleaner -y
choco upgrade cpu-z -y
choco upgrade git -y
choco upgrade steam -y
choco upgrade chocolatey -y
```