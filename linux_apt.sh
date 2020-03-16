##### PPA
wget -q https://packages.microsoft.com/config/ubuntu/19.10/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install apt-transport-https
sudo apt-get update

##### PUBLIC
sudo apt install -y gnome-tweak-tool
sudo apt install -y openconnect
sudo apt install -y uget

##### DEVELOP (Cross Platform, Open Source, CLI)
sudo apt install -y dotnet-sdk-3.1
sudo apt install -y dotnet-sdk-2.2
sudo apt install -y nuget
sudo snap install -y rider --classic
sudo snap install -y azuredatastudio
sudo snap install -y node --classic
sudo snap install -y code --classic
sudo snap install -y datagrip --classic
sudo snap install -y docker
sudo snap install -y powershell --classic
sudo apt install -y yarn
sudo apt install -y git
sudo snap install -y ffmpeg

##### Alias
sudo snap alias dotnet-sdk.dotnet dotnet
