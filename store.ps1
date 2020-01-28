Get-AppxPackage
Get-AppxPackage | Select Name , PackageFullName
Get-AppxPackage -AllUsers | Remove-AppxPackage
Get-AppXProvisionedPackage -online | Remove-AppxProvisionedPackage -online
