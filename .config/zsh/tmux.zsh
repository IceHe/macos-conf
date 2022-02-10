########
# Tmux #
########

alias t='tmux' alias tn='tmux new-session -s'

alias tch="tmux split-window -h -c '#{pane_current_path}'"
alias tcv="tmux split-window -v -c '#{pane_current_path}'"

function tw {
    cd ~/Projects/lib

    # ICEHE
    tmux new -s icehe -d

    # init
    tmux rename-window -t 'icehe:1' init
    tmux send -t 'icehe:init' 'cd ~' Enter

    # JS : root
    tmux neww -a -t icehe -n js -c ~/Projects/js
    tmux send -t 'icehe:js' 'git pull' Enter
    tmux send -t 'icehe:js' 'clear' Enter

    # JS : js
    tmux neww -a -t icehe -n js/js -c ~/Projects/js/packages/client
    tmux send -t 'icehe:js/js' 'clear' Enter

    ## JS : browser
    tmux neww -a -t icehe -n js/browser -c ~/Projects/js/packages/browser
    tmux send -t 'icehe:js/browser' 'clear' Enter
    #tmux split-window -t 'icehe:js/browser' -c ~/Projects/js/packages/browser-sample
    #tmux send -t 'icehe:js/browser' 'clear' Enter

    ## JS : client & playground
    #tmux neww -a -t icehe -n js/pkgs -c ~/Projects/js/packages/client
    #tmux send -t 'icehe:js/pkgs' 'clear' Enter
    #tmux split-window -t 'icehe:js/pkgs' -c ~/Projects/js/packages/playground
    #tmux send -t 'icehe:js/pkgs' 'clear' Enter

    # KOTLIN : root
    tmux neww -a -t icehe -n kotlin -c ~/Projects/kotlin
    tmux send -t 'icehe:kotlin' 'git pull' Enter
    tmux send -t 'icehe:kotlin' 'clear' Enter

    # SWIFT : swift
    tmux neww -a -t icehe -n swift -c ~/Projects/swift
    tmux send -t 'icehe:swift' 'git pull' Enter
    tmux send -t 'icehe:swift' 'clear' Enter

    # LOGTO : root & core
    tmux neww -a -t icehe -n logto -c ~/Projects/logto
    tmux send -t 'icehe:logto' 'git pull' Enter
    tmux send -t 'icehe:logto' 'clear' Enter
    tmux split-window -t 'icehe:logto' -c ~/Projects/logto/packages/core
    tmux send -t 'icehe:logto' 'clear' Enter

    # LIB
    tmux new-window -a -t icehe -n lib -c ~/Projects/lib
    tmux send -t 'icehe:lib' 'git pull' Enter
    tmux send -t 'icehe:lib' 'nohup npx docsify serve -p 3100 . &' Enter
    tmux send -t 'icehe:lib' 'clear' Enter
    tmux split-window -t 'icehe:lib' -c ~/Projects/lib/_private
    tmux send -t 'icehe:lib' 'git pull' Enter
    tmux send -t 'icehe:lib' 'clear' Enter

    # HOME
    tmux neww -a -t icehe -n home -c ~
    tmux send -t 'icehe:home' 'brew update && brew upgrade' Enter
    tmux send -t 'icehe:home' 'clear' Enter
    tmux split-window -t 'icehe:home' -c ~
    tmux send -t 'icehe:home' 'clear' Enter

    # clean-up
    tmux send -t 'icehe:init' 'exit' Enter
    tmux select-window -t 'icehe:js'

    tmux
}
