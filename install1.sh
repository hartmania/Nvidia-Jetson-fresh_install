put bin bash here


Sudo apt-get update & upgrade 

#to check jetpack version
head -n 1 /etc/nv_tegra_release

#add id_rsa.pub to .ssh folder
cd ~/.ssh
touch ~/.ssh/authorized_keys
cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys   (can confirm with this more ~/.ssh/authorized_keys)

#no sudo
sudo visudo
change  %sudo ALL=(ALL) ALL to %sudosud ALL=(ALL) NOPASSWD: ALL     then esc then :wq
sudo service sudo restart

#change hostname
sudo hostnamectl set-hostname xxxxx

#python3 alias
Change python to default to python3
Open your .bashrc file nano ~/.bashrc. 
Type alias python=python3 on to a new line at the top of the file then save the file with ctrl+o and close the file with ctrl+x. 
Then, back at your command line type source ~/.bashrc. Now your alias should be permanent.

wget https://bootstrap.pypa.io/get-pip.py
sudo python3 get-pip.py
sudo pip3 install virtualenv virtualenvwrapper


# virtualenv and virtualenvwrapper
nano ~/.bashrc
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

#Docker NO sudo    
sudo groupadd docker
sudo usermod -aG docker $USER

#test csi camera
gst-launch-1.0 nvarguscamerasrc sensor_id=0 ! nvoverlaysink

jetson_clocks   --show --store --restore

#to ensure full speed
sudo nvpmodel -m <mode> --for MAX perf and power mode is 0
sudo nvpmodel -m 0
sudo jetson_clocks
