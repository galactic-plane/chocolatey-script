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

"baseline.cmd" installs or updates:

```bat
:: Developer Updates
choco upgrade nodejs -y
choco upgrade bower -y
choco upgrade yarn -y
choco upgrade git -y
choco upgrade gh -y
choco upgrade microsoft-edge -y
choco upgrade googlechrome -y
choco upgrade firefox -y
choco upgrade visualstudio2019enterprise -y
choco upgrade visualstudio2019buildtools -y
choco upgrade sql-server-express -y
choco upgrade vscode -y
choco upgrade dotnetcore-sdk -y
choco upgrade azure-cli -y
choco upgrade microsoftazurestorageexplorer -y
choco upgrade azure-functions-core-tools -y
choco upgrade azurepowershell -y
choco upgrade azure-data-studio -y
choco upgrade rust -y
choco upgrade docker-desktop -y
choco upgrade robo3t -y
choco upgrade mongodb -y
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
:: Chocolatey
choco upgrade chocolatey -y
```

Run in bash:

```bash
$ cd chocolatey-script
$ chmod +x baseline.cmd
$ ./baseline.cmd
```

After Baseline Run Once in PowerShell (Installs VSCode Extentions):

```powershell
$ cd chocolatey-script\VSCode
$ .\vscodeExtentions.ps1
```

# More Information

https://www.penrodtech.org/post/chocolatey-package-manager

https://chocolatey.org/
