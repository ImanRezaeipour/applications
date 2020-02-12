
##### SQL Server container
sudo docker pull mcr.microsoft.com/mssql/server
sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa55w0rd' -p 1433:1433 -d --name mssqllinux mcr.microsoft.com/mssql/server

##### Redis container
