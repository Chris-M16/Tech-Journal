#secure-ssh.sh
#author Chris-M16
#creates a new ssh user using $1 parameter
#adds a public key from the local repo or curled from the remote repo
#removes roots ability to ssh in
echo Welcome to passwordless user creation \(you must be sudo/root user to execute properly\)
echo What would you like the username to be?  
read user
sudo useradd -m -d /home/$user -s /bin/bash $user -p '*'
sudo mkdir /home/$user/.ssh
sudo cp ~/Tech-Journal/SYS265/linux/public-keys/id_rsa.pub /home/$user/.ssh/authorized_keys
sudo chmod 700 /home/$user/.ssh
sudo chmod 600 /home/$user/.ssh/authorized_keys
sudo chown -R $user:$user /home/$user/.ssh
