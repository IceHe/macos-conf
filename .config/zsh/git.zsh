#######
# Git #
#######

alias gcf='git config'
alias gcfl='git config -l'
alias gcfe='git config -e'

alias gcm='git commit -m'
alias gu='git commit -m "`date +%F\ %T\ %A`"'
alias gau='gaa && gu'

alias gcom='git checkout master'

alias gdc='git diff --cached'
alias gdwc='git diff --word-diff --cached'

alias gfap='git fetch -ap'

alias ggr='git grep'

alias gi='git init'

alias glf='git ls-files'

alias glm='git pull main'
alias glmm='git pull main master'

alias gls='git ls-files'

alias gmom='git merge origin/master'

alias gmv='git mv'

function gnb {
    branch=`git rev-parse --abbrev-ref HEAD`
    echo git push --set-upstream origin $branch
    git push --set-upstream origin $branch
}

alias grm='git rm'

alias gr='git reset'
alias grh='git reset HEAD --hard'

alias gs='git status -bs'

alias gst='git stash'
alias gsd='git stash drop'
alias gsl='git stash list'
alias gsp='git stash pop'

## Git Experimental
function args {
    echo \$?=$?
    echo \$#=$#
    echo \$@=$@
    echo \$*=$*
    echo \$0=$0
    echo \$1=$1
    echo \$2=$2
    echo \$3=$3
    echo \$4=$4
    echo \$5=$5
}

# git commit message prefix
function gcmc {
    if [[ $1 == "" ]]; then
        echo && echo custom text for git 404!
        return
    fi

    export clipboard=`pbpaste`
    echo

    echo \$ git add $clipboard
    ga $clipboard
    gs
    echo

    echo \$ git commit -m \"$1\"
    gcm "$1"
}

alias gadd="gcmp Add"
alias gupd="gcmp Update"
alias gfix="gcmp Fix"
alias gimp="gcmp Improve"
alias gref="gcmp Refactor"
alias grem="gcmp Remove"
alias grvt="gcmp Revert"
alias gsim="gcmp Simplify"
alias gtt="gcmp Test"

# git commit short message prefix
function gcsmp {
    if [[ $1 == "" || $2 == "" ]]; then
        echo && echo verb & type prefix for git 404!
        return
    fi

    gs
    echo

    desc=`git status -s | grep "$2  " | awk -F "[./]" '{print $(NF-1)}'`

    cmd="git commit -m '$1 $desc'"
    echo \$ $cmd
    echo

    eval $cmd
}

alias gaddj="gcsmp Add A"
alias gupdj="gcsmp Update M"
alias gfixj="gcsmp Fix M"
alias gimpj="gcsmp Improve M"
alias gmovj="gcsmp Move R"
alias grenj="gcsmp Rename R"
alias grefj="gcsmp Refactor M"
alias gremj="gcsmp Remove D"
alias gsimj="gcsmp Simplify M"
alias gttj="gcsmp Test M"

function gren {
    gs
    echo

    desc=`git status -s | grep "R  " | awk -F "R  " '{ print $2 }'`

    tmp_cmd="git commit -m 'Rename $desc'"
    echo \$ $tmp_cmd
    echo

    eval $tmp_cmd
}

function gmov {
    gs
    echo

    desc=`git status -s | grep "R  " | awk -F "R  " '{ print $2 }'`

    tmp_cmd="git commit -m 'Move $desc'"
    echo \$ $tmp_cmd
    echo

    eval $tmp_cmd
}
