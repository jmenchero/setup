
# Package lists
requirements = (
    curl
    wget
    fonts-powerline
    ca-certificates
    software-properties-common
    apt-transport-https
    git
    scrot
    imagemagick
)

everyday-use = (
    chrome
    telegram
)

system-utilities = (
    htop
    ncdu
    terminator
    zsh
    i3
    i3lock
    xautolock
)

programming-utilities = (
    gitkraken
    node
    notepad
    npm
    pip
    postman
    python
    spotify
)

# Linux Setup
sudo su
apt update
apt-get install requirements everyday-use system-utilities programming-utilities

## Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

## Visual Studio Code
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
apt install code

## Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt update
sudo apt install docker-ce docker-ce-cli

