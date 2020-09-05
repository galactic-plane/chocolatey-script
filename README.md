![Chocolatey Image](chocolatey-media.png)

---

# Chocolatey Script 
## Windows Package Manager
A simple script using the chocolatey package manager to install/update software I use on my development workstation

# Directions

    1.  Run the setup script once
    2.  Review "baseline.bat" as a guide for creating your own package manager "BAT" file
    3.  Find your own packages

Initial Setup: https://chocolatey.org/install

Find: https://chocolatey.org/packages


# Setup Script
Run powershell as an administrator and run the following once:
```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```
# Usage Example
"baseline.bat" installs or updates:
```bash
choco upgrade libreoffice-fresh -y
choco upgrade 7zip -y
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
choco upgrade audacity -y
choco upgrade chocolatey -y
```

Run in bash:
```bash
$ cd chocolatey-script
$ chmod +x baseline.bat
$ ./baseline.bat
```

# More Information

https://penrodtech.wixsite.com/blog/post/chocolatey-package-manager

https://chocolatey.org/