#!/bin/bash
# git
sudo apt update
sudo apt install git -y

ls -al ~/.ssh
ssh-keygen -t ed25519 -C "<email_address>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub
read -rp  "Have you added a new ssh key on GitHub(y/n): " answer
read github_ssh_key_added_confirm
read -rp "Do you want to continue? (y/n): " answer

if [ "$answer" == "${answer#[Nn]}" ] ;then 
    exit 0
fi

# VS Codium
snap install codium --classic

# postgres
sudo apt install -y postgresql-common
sudo /usr/share/postgresql-common/pgdg/apt.postgresql.org.sh
sudo apt update
sudo apt install postgresql-15 postgresql-client-15
sudo systemctl status postgresql.service

sudo apt install curl
source ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source ~/.bashrc
nvm install --lts
sudo apt-get install openssl
sudo sudo apt install libpq-dev

npm install --global yarn
npm install -g npm@10.9.0

sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init

source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
sudo apt install build-essential libz-dev libffi-dev checkinstall zlib1g-dev libtool libyaml-dev
rbenv install <ruby_version>
sudo apt install direnv
source ~/.bashrc
sudo apt-get install tmux

## Android Studio
sudo apt update
sudo apt install terminator libfuse2 libxi6 libxrender1 libxtst6 mesa-utils libfontconfig libgtk-3-bin
## To begin installing Toolbox, go ahead and visit the official site and download the archived installer. 
cd ~/Downloads
wget -c https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.5.1.34629.tar.gz
sudo tar -xzf jetbrains-toolbox-2.5.1.34629.tar.gz -C /opt

sudo apt-get install tmux

# Set up MM Repo
cd ~/ && mkdir foundry && cd foundry/ && mkdir maisha && cd maisha
git clone git@github.com:MaishaMeds/maisha-meds-rails-api.git
cd maisha-meds-rails-api/
gem install overmind
sudo -u postgres createuser -s $USER
bin/setup


sudo snap install obsidian --classic
curl -f https://zed.dev/install.sh | sh
