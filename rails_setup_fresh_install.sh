cd ~/
mkdir foundry
cd foundry/
ls -al ~/.ssh
ssh-keygen -t ed25519 -C "<email_address>"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519
cat ~/.ssh/id_ed25519.pub 
sudo apt install git
git clone git@github.com:<repo>.git
cd maisha-meds-rails-api/
sudo apt install curl
source ~/.bashrc
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
source ~/.bashrc
nvm install v20.18.0
sudo apt-get install openssl
sudo sudo apt install libpq-dev
nvm ls-remote
node -v
npm install --global yarn
npm install -g npm@10.9.0
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
~/.rbenv/bin/rbenv init
source ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
sudo apt install build-essential libz-dev libffi-dev checkinstall zlib1g-dev libtool libyaml-dev
sudo apt install postgresql
rbenv install 3.3.3
sudo apt install direnv
source ~/.bashrc
sudo apt-get install tmux
cd <path/to/project/folder>
gem install overmind
sudo -u postgres createuser -s $USER
bin/setup
