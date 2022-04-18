########
# Tmux #
########

alias t='tmux' alias tn='tmux new-session -s'

alias tch="tmux split-window -h -c '#{pane_current_path}'"
alias tcv="tmux split-window -v -c '#{pane_current_path}'"

# Tmux Windows
function tw {

    # Prepare
    
    ## Pull latest IceHe's mac-conf
    echo -e "\n\$ cd ~ && git pull || return"
    cd ~ && git pull || return

    ## Upgrade Oh-My-Zsh!
    echo -e "\n\$ .oh-my-zsh/tools/upgrade.sh"
    .oh-my-zsh/tools/upgrade.sh

    ## Reload .zshrc
    echo -e "\n\$ source ~/.zshrc"
    source ~/.zshrc && echo

    ## Switch PWD to lib
    # cd ~/Projects/lib
    
    ###########################################

    # Session ICEHE
    tmux new -s icehe -d

    # Window INIT 
    tmux rename-window -t 'icehe:1' init
    tmux send -t 'icehe:init' 'cd ~' Enter

    # LOGTO : root
    tmux neww -a -t icehe -n logto -c ~/Projects/logto
    tmux send -t 'icehe:logto' 'gUpdJsProj' Enter

    # LOGTO : core
    tmux neww -a -t icehe -n core -c ~/Projects/logto/packages/core

    # LOGTO : schemas
    tmux neww -a -t icehe -n schemas -c ~/Projects/logto/packages/schemas

    # JS : root & browser-sample
    tmux neww -a -t icehe -n js -c ~/Projects/js
    tmux send -t 'icehe:js' 'gUpdJsProj' Enter
    tmux split-window -t 'icehe:js' -c ~/Projects/js/packages/browser-sample

    # # JS : browser ( & js )
    # tmux neww -a -t icehe -n browser -c ~/Projects/js/packages/js
    # tmux split-window -t 'icehe:browser' -c ~/Projects/js/packages/browser

    # # KOTLIN : root
    # tmux neww -a -t icehe -n kt -c ~/Projects/kotlin
    # tmux send -t 'icehe:kt' 'git fetch -ap && echo && git pull' Enter

    # # SWIFT : swift
    # tmux neww -a -t icehe -n swift -c ~/Projects/swift
    # tmux send -t 'icehe:swift' 'git fetch -ap && echo && git pull' Enter

    # LIB
    tmux new-window -a -t icehe -n lib -c ~/Projects/lib
    tmux send -t 'icehe:lib' 'git add --all && git stash && echo && git pull && git stash pop' Enter
    tmux send -t 'icehe:lib' 'nohup npx docsify serve -p 3100 . &' Enter
    tmux split-window -t 'icehe:lib' -c ~/Projects/lib/_private
    tmux send -t 'icehe:lib' 'git pull' Enter

    # HOME
    tmux neww -a -t icehe -n home -c ~
    tmux send -t 'icehe:home' 'brew update && brew upgrade' Enter
    tmux split-window -t 'icehe:home' -c ~

    # clean up
    tmux send -t 'icehe:init' 'exit' Enter
    tmux select-window -t 'icehe:js'

    tmux
}
