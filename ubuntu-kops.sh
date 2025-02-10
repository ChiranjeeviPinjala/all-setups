#vim .bashrc
#export PATH=$PATH:/usr/local/bin/
#source .bashrc
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
wget https://github.com/kubernetes/kops/releases/download/v1.25.0/kops-linux-amd64
chmod +x kubectl
chmod +x kops-linux-amd64 kubectl
mv kubectl /usr/local/bin/
mv kops-linux-amd64 /usr/local/bin/kops

aws s3 mb s3://unqbucketname.devops
aws s3api put-bucket-versioning --bucket unqbucketname.devops --region us-east-1 --versioning-configuration Status=Enabled
export KOPS_STATE_STORE=s3://unqbucketname.devops
kops create cluster --name clustername.k8s.local --zones us-east-1a --master-count=1 --master-size t2.medium --master-volume-size 27 --node-count=2 --node-volume-size 25 --node-size t2.micro
kops update cluster --name clustername.k8s.local --yes --admin
