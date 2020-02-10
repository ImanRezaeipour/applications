##### Remove Windows Store Packages
Get-AppxPackage
Get-AppxPackage | Select Name , PackageFullName
Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}

##### Install Chocolately (By PowerShell Admin)
Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex

##### Scripts (Alias)


##### PUBLIC (Cross Platform)
choco install -y kis
choco install -y foxitreader
choco install -y googlechrome
choco install -y office2019-homeandstudent
choco install -y potplayer
choco install -y libreoffice-fresh
choco install -y anydesk
choco install -y aimp
choco install -y fsviewer
choco install -y paint.net
choco install -y winrar
choco install -y internet-download-manager
choco install -y rufus
choco install -y ultraiso
choco install -y burnawarefree
choco install -y hwinfo
choco install -y partitionmasterfree
choco install -y freemake-video-converter
choco install -y shotcut

##### DEVELOP (Cross Platform + Opern Source + CLI)
choco install -y vscode
choco install -y git
choco install -y nodejs
choco install -y yarn
choco install -y dotnetcore-sdk
choco install -y powershell-core
choco install -y jetbrains-rider
choco install -y openssh
choco install -y docker-desktop
choco install -y mongodb
choco install -y nginx
choco install -y python
choco install -y fiddler
choco install -y datagrip
choco install -y postman
choco install -y notepadplusplus
choco install -y sql-server-2017
choco install -y sql-server-management-studio
choco install -y nuget.commandline
choco install -y telnet
choco install -y redis-64
choco install -y rabbitmq
choco install -y filezilla
choco install -y azure-data-studio
choco install -y sqltoolbelt
choco install -y dotpeek
choco install -y dbforge-sql
choco install -y soapui
choco install -y mysql
choco install -y apache-httpd
choco install -y php
choco install -y linqpad
choco install -y mariadb
choco install -y composer
