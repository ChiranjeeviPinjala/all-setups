cd /opt/
wget -O splunk-9.0.1-82c987350fde-Linux-x86_64.tgz "https://download.splunk.com/products/splunk/releases/9.0.1/linux/splunk-9.0.1-82c987350fde-Linux-x86_64.tgz" 
tar -zxvf splunk-9.0.1-82c987350fde-Linux-x86_64.tgz 
• cd splunk/bin/
sudo ./splunk start --accept-license
