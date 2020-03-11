##### SQL Server container
sudo docker pull mcr.microsoft.com/mssql/server
sudo docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=Pa55w0rd' -p 1433:1433 -d --name mssqllinux mcr.microsoft.com/mssql/server
sudo docker exec -it mssqllinux mkdir /var/opt/mssql/backup
sudo docker cp ~/Azure/LastBK.bak mssqllinux:/var/opt/mssql/backup
sudo docker exec -it mssqllinux /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P 'Pa55w0rd' -Q 'RESTORE FILELISTONLY FROM DISK = "/var/opt/mssql/backup/LastBK.bak"' | tr -s ' ' | cut -d ' ' -f 1-2

##### Redis container
