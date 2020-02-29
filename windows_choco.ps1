##### Remove Windows Store Packages
Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
Get-WindowsOptionalFeature -Online | Disable-WindowsOptionalFeature -Online -NoRestart
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-NetFx4-US-OC-Package
Install-WindowsFeature -name Web Server -IncludeManagementTools
#Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

##### Install Chocolately (By PowerShell Admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

##### Microsoft Management Console (MMC)

##### PUBLIC (Cross Platform)
choco install -y googlechrome
choco install -y potplayer
choco install -y libreoffice-fresh
choco install -y anydesk
choco install -y aimp
choco install -y fsviewer
choco install -y paint.net
choco install -y winrar
choco install -y conemu
choco install -y foxitreader
choco install -y directoryopus
choco install -y notepadplusplus
choco install -y internet-download-manager
choco install -y rufus

##### DEVELOP (Cross Platform + Opern Source + CLI)
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
choco install -y dotpeek
choco install -y nginx
choco install -y redis-64
choco install -y rabbitmq
choco install -y linqpad
choco install -y winmerge
choco install -y poedit
choco install -y advanced-installer
choco install -y ealite
choco install -y sysinternals
choco install -y putty
choco install -y winscp.install
choco install -y curl
choco install -y wget
choco install -y cygwin
choco install -y boxstarter
choco install -y iisexpress
choco install -y webdeploy
choco install -y urlrewrite
choco install -y dotnetcore-windowshosting -version 2.2.0 --force
choco install -y wsl
choco install -y wsl-ubuntu-1804
choco install -y ffmpeg

##### Scripts (Path Alias)
$path = 'C:\Program Files (x86)\JetBrains\JetBrains Rider 2019.3.1\bin'
[Environment]::SetEnvironmentVariable('PATH', ([Environment]::GetEnvironmentVariable('PATH', 'Machine') + ';' + $path), 'Machine')
$path = 'C:\Program Files\MongoDB\Server\4.2\bin'
[Environment]::SetEnvironmentVariable('PATH', ([Environment]::GetEnvironmentVariable('PATH', 'Machine') + ';' + $path), 'Machine')
$path = 'C:\tools\nginx-1.17.8'
[Environment]::SetEnvironmentVariable('PATH', ([Environment]::GetEnvironmentVariable('PATH', 'Machine') + ';' + $path), 'Machine')

##### Shell Integration
$path = "C:\Program Files\PowerShell\6\pwsh.exe"
New-Item -Path Registry::HKCR\Directory\Background\shell\PowershellCore
New-Item -Path Registry::HKCR\Directory\Background\shell\PowershellCore\command
Set-ItemProperty -Path Registry::HKCR\Directory\Background\shell\PowershellCore -Name "(Default)" -Value "Powershell Core Here"
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\PowershellCore -Name "Icon" -PropertyType String -Value $path
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\PowershellCore\command -Name "(Default)" -PropertyType String -Value "$($path) -noexit -command Set-Location -literalPath '%V'"
$path = "C:\Program Files (x86)\JetBrains\JetBrains Rider 2019.3.4\bin\rider64.exe"
New-Item -Path Registry::HKCR\Directory\Background\shell\Rider
New-Item -Path Registry::HKCR\Directory\Background\shell\Rider\command
Set-ItemProperty -Path Registry::HKCR\Directory\Background\shell\Rider -Name "(Default)" -Value "Open with Rider"
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\Rider -Name "Icon" -PropertyType String -Value $path
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\Rider\command -Name "(Default)" -PropertyType String -Value "$($path) '%V'"
$path = "C:\Program Files\ConEmu\ConEmu64.exe"
New-Item -Path Registry::HKCR\Directory\Background\shell\ConEmu
New-Item -Path Registry::HKCR\Directory\Background\shell\ConEmu\command
Set-ItemProperty -Path Registry::HKCR\Directory\Background\shell\ConEmu -Name "(Default)" -Value "ConEmu Here"
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\ConEmu -Name "Icon" -PropertyType String -Value $path
New-ItemProperty -Path Registry::HKCR\Directory\Background\shell\ConEmu\command -Name "(Default)" -PropertyType String -Value "$($path) -here /single /cmd {powershell} -cur_console:n"

##### Extensions (Visual Studio Code)
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension vscode-icons-team.vscode-icons
code --install-extension esbenp.prettier-vscode
code --install-extension ms-vscode.csharp
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-vscode.powershell
code --install-extension dracula-theme.theme-dracula
code --install-extension ms-mssql.mssql

##### Extensions (Jetbrains Rider and DataGrip)
Dracula Theme
Atom Material Icons
