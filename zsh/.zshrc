alias avd='/Users/haupma/Library/Android/sdk/emulator/emulator -avd Nexus_5X_API_28_x86'
alias avd="~/Library/Android/sdk/emulator/emulator -avd Pixel_2_API_26"
alias adb-restart='sudo adb kill-server && sudo adb start-server'
alias adb-screenshot='adb exec-out screencap -p > screencap.png'

function git-alias() {
    ag $1 ~/.oh-my-zsh/plugins/git/git.plugin.zsh
}

function docker-deleteeveryimage() {
    docker rmi -f $(docker image ls -q) 
}

function docker-killeverycontainer() {
    docker kill $(docker ps -q) 
}

function docker-expose() {
    docker run -p $1:$1 $2 
}
function fuckthisport() {
    kill -9 $(lsof -ti :$1)
} 

function ezpush() {
    git add -A
    if [ $# -eq 0 ]; then
        git commit -m "Work in progress" && git push

    elif [ $# -eq 1 ]; then
        git commit -m "$1" && git push
    fi
}

function for-dev() {
    ag $1 ~/Entwicklung/privat/for-dev
}

function ezcommit() {
    git add -A
    if [ $# -eq 0 ]; then
        git commit

    elif [ $# -eq 1 ]; then
        git commit -m "$1"
    fi
}

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"