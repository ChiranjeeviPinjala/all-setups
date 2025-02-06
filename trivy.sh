# To install trivy
wget https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.tar.gz
tar zxvf trivy_0.18.3_Linux-64bit.tar.gz
#moving trivy after untar and copy the file in default path 
sudo mv trivy /usr/local/bin/
echo 'export PATH=$PATH:/usr/local/bin/' >> ~/.bashrc
source .bashrc
trivy --version
