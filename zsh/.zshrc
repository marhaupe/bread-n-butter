alias adb-restart='sudo adb kill-server && sudo adb start-server'
alias adb-screenshot='adb exec-out screencap -p > screencap.png'
alias ll="ls -Al"

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

function ezcommit() {
    git add -A
    if [ $# -eq 0 ]; then
        git commit -m "Work in progress"

    elif [ $# -eq 1 ]; then
        git commit -m "$1"
    fi
}

function pbcopy(){
    if [ -e /usr/bin/pbcopy ]
    then
        pbcopy $
    elif [ $# -eq 1 ]
    then
        cat $1 | xclip -selection clipboard
    else
        xclip -selection clipboard
    fi
}

function pbpaste(){ 
    if [ -e /usr/bin/pbpaste ]
    then
        pbpaste $
    else
        xclip -selection clipboard -o
    fi     
}
