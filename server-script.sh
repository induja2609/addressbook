sudo yum install java-1.8.0-openjdk-devel -y
sudo yum install git -y
sudo yum install maven -y

if [-d "addressbook"]
then
    echo "repo is cloned and exists"
    cd /home/ec2-user/addressbook
    # git pull origin demo1
else
    git clone https://github.com/induja2609/addressbook.git
fi

cd /home/ec2-user/addressbook
mvn pmd:pmd
