##### Install Snap
sudo apt update
sudo apt install -y snapd

##### PUBLIC
sudo apt-get install -y gnome-tweak-tool
sudo apt-get install -y openconnect
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb

##### DEVELOP (Cross Platform, Open Source, CLI)
sudo snap install -y dotnet-sdk --classic
sudo snap install -y dotnet-sdk --channel=2.2/stable --classic
sudo apt-get install -y nuget
sudo snap install -y rider --classic
sudo snap install -y azuredatastudio

sudo snap install -y node --classic
sudo snap install -y code --classic
sudo snap install -y datagrip --classic

sudo snap install -y docker
sudo snap install -y powershell --classic
