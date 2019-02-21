# Oh My Zshell configs
ZSH_THEME="agnoster"
plugins (
    git
    zsh-autosuggestions
)
prompt_context () {}
source ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Custom aliases
## Virualenvs
nvenv () {
    virtualenv /ETS/venvs/${PWD##*/} --python=/usr/bin/python3.6
    source /ETS/venvs/${PWD##*/}/bin/activate
    pip3 install -r requirements.txt
}

## SWAP
rswap () {
    sudo swapoff -a
    sudo swapon -a
}

## ETS Public
mpublic () {
    sudo mount.cifs "//ets.es/public" /mnt/public/ -o user="$1",dom=ETS
}

## Docker
rportainer () {
    sudo docker run -d -p 9000:9000 -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer
}

rrabbitmq () {
    sudo docker run -d --hostname my-rabbit --name some-rabbit -p 4369:4369 -p 5671:5671 -p 5672:5672 -p 15672:15672 rabbitmq:3-management
}

rredis () {
    sudo docker run -d --hostname my-redis --name some-redis -p 6379:6379 redis
}

## Python
ppython () {
    mprof run python -m memory_profiler $
    mprof plot
}