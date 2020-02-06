Get-AppxPackage
Get-AppxPackage | Select Name , PackageFullName
Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
Get-AppXPackage *WindowsStore* -AllUsers | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppXManifest.xml"}
