![Chocolatey Image](chocolatey-media.png)

---

# Chocolatey Script 
## Windows Package Manager
A simple script using the chocolatey package manager to install/update software I use on my development workstation

# Directions

    1.  Run the setup script once (Source: https://chocolatey.org/install)
    2.  Review "baseline.bat" as a guide for creating your own package manager "BAT" file.
    3.  Find your own packages here: https://chocolatey.org/packages

# Setup Script
Run powershell as an administrator and run the following once:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
# Usage Example
"baseline.bat" installs or updates:

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

Run in bash:
```bash
$ cd chocolatey-script
$ chmod +x baseline.bat
$ ./baseline.bat
```