##### Remove Windows Store Packages
Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

##### Install Chocolately (By PowerShell Admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

##### Scripts (Path Alias)
$path = 'C:\Program Files (x86)\JetBrains\JetBrains Rider 2019.3.1\bin'
[Environment]::SetEnvironmentVariable('PATH', ([Environment]::GetEnvironmentVariable('PATH', 'Machine') + ';' + $path), 'Machine')

##### Extensions
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension vscode-icons-team.vscode-icons
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.csharp
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell

##### PUBLIC (Cross Platform)
choco install -y kis
choco install -y googlechrome
choco install -y potplayer
choco install -y libreoffice-fresh
choco install -y anydesk
choco install -y aimp
choco install -y fsviewer
choco install -y paint.net
choco install -y winrar
choco install -y internet-download-manager
choco install -y rufus
choco install -y burnawarefree
choco install -y hwinfo
choco install -y partitionmasterfree
choco install -y freemake-video-converter
choco install -y shotcut
choco install -y foxitreader
choco install -y terminus

##### DEVELOP (Cross Platform + Opern Source + CLI)
choco install -y dotnetcore-sdk
choco install -y dotnetcore-sdk -version 2.2.0 --force
choco install -y nuget.commandline
choco install -y sql-server-2017
choco install -y jetbrains-rider
choco install -y sql-server-management-studio
choco install -y azure-data-studio
choco install -y nodejs
choco install -y yarn
choco install -y mongodb
choco install -y vscode
choco install -y datagrip
choco install -y php
choco install -y composer
choco install -y mysql
choco install -y docker-desktop
choco install -y powershell-core
choco install -y git
choco install -y openssh
choco install -y telnet
choco install -y fiddler
choco install -y postman
choco install -y soapui
choco install -y notepadplusplus
choco install -y dotpeek
choco install -y nginx
choco install -y redis-64
choco install -y rabbitmq
choco install -y filezilla
choco install -y linqpad
choco install -y winmerge
choco install -y poedit
choco install -y advanced-installer
choco install -y ealite
