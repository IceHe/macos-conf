#######
# ENV #
#######

# Plugins
plugins=(brew-cask colored-man copydir copyfile cp git osx sudo tmux vundle z zsh-syntax-highlighting)
## Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
## Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
## Example format: plugins=(rails git textmate ruby lighthouse)
## Add wisely, as too many plugins slow down shell startup.
## Warning: sudo plugin must be put after vi-mode!

# Editor 
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# PATH

## TEMP
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# PATH Settings on macOS
#
# - /etc/profile
#   - Auto Completion : eval `/usr/libexec/path_helper -s`
# - /etc/paths
# - /etc/paths.d/*
#

#/bin
#/sbin
#/usr/bin
#/usr/sbin
#/usr/local/bin
#/usr/local/sbin
#/opt/bin
#/opt/sbin
#/opt/local/bin
#/opt/local/sbin
#……

# e.g.
#export PATH="$PATH:/Users/IceHe/.composer/vendor/bin"
#export PATH="$PATH:/usr/local/opt/go/libexec/bin"
#……
#export PATH="$PATH:/bin"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# Groovy SDK
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# JDK
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# NVM
export NVM_DIR="/Users/IceHe/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Theme
ZSH_THEME="sunrise_icehe" # Look in ~/.oh-my-zsh/themes/

# Oh-my-zsh
export ZSH=/Users/IceHe/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

# Key-bindings
bindkey '^n' forward-word
bindkey '^p' backward-word

## Zsh-autosuggentsions ( enable plugin manually )
source ~/.oh-my-zsh/plugins/zsh-autosuggestions/autosuggestions.zsh
zle-line-init() {
    zle autosuggest-start
}

# Zstyle ( auto correct )
zstyle ':completion:*' verbose true
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:*' completer _complete _prefix _correct _prefix _match _approximate
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters

#########
# ALIAS #
#########

# Abbrs
alias bu='brew upgrade -vvv && brew update -vvv'
alias d='docker'
alias e='exit'
alias o='open'
alias pb='pbcopy'
alias pbn='tr -d "\n" | pbcopy'
alias rm='safe-rm'
alias rp='realpath'
alias sx="/Users/IceHe/Documents/Work/Scripts/sinax.sh"

alias ms="mysql.server"
alias rs="redis-server /usr/local/etc/redis.conf"

# Applications
alias st='open -a /Applications/Sublime\ Text.app/'
alias vc='open -a /Applications/Visual\ Studio\ Code.app'

# CD ( change directory )
alias zd='cd ~/Desktop'
alias zl='cd ~/Downloads'
alias zo='cd ~/Documents'
alias za='cd ~/Documents/AppleScript'
alias zb='cd ~/Documents/Blog/blog'
alias z_='cd ~/Documents/Blog/blog/source/_posts'
alias zi='cd ~/Documents/Lib'

alias zj='cd ~/Documents/Java'
alias zf='cd ~/Documents/Java/form'
alias zm='cd ~/Documents/Java/medialib'
alias zs='cd ~/Documents/Java/story'
alias zsora='cd ~/Documents/Work/sora'

alias ze='cd /etc'
alias zc='cd /usr/local/Cellar'
alias z.='cd ~/.config'
alias zh='cd ~/.config/zsh'
alias zp='cd ~/.privacy'
alias zz='cd ~/.oh-my-zsh'

# Docker
alias dps='docker ps'
alias dst='docker start'
alias dsp='docker stop'
alias de='docker exec -it'
alias drm='docker rm'
alias drmi='docker rmi'

# Maven
alias m='mvn'
alias sms='mv /Users/IceHe/.m2/settings.xml2 /Users/IceHe/.m2/settings.xml'
alias nms='mv /Users/IceHe/.m2/settings.xml /Users/IceHe/.m2/settings.xml2'

# Rsync
alias rsync='/usr/local/bin/rsync'

# Source
source ~/.config/zsh/fzf.zsh
source ~/.config/zsh/git.zsh
source ~/.config/zsh/ip.zsh
source ~/.config/zsh/ls.zsh
source ~/.config/zsh/proxy.zsh
source ~/.config/zsh/tmux.zsh

# Vim
alias v='nvim'
alias sv='sudo nvim'
alias vim='nvim'

alias vgi='v ./.gitignore'
alias vh='v /etc/hosts'
alias vv='v ~/.vimrc'
alias vcv='v ~/.cvimrc'
alias viv='v ~/.ideavimrc'
alias vz='v ~/.zshrc'
alias vt='v ~/.tmux.conf'
alias vs='v  ~/.ShadowsocksX-NG/user-rule.txt'

alias vk='v ~/.config/karabiner/karabiner.json'
alias stk='st ~/.config/karabiner/karabiner.json'
alias vck='vc ~/.config/karabiner/karabiner.json'

# WTool
export DCP_USER=zhiyuan16
alias wt="wtool"
alias jp="wtool jpool"
alias dcp="wtool dcplogin"
alias wl="wtool login" 

#############################################################################

# SELDOM #

## Hexo
alias h='zb && hexo s'
alias ha='zb && hexo clean && hexo g && hexo s'
alias tg='zb && clear && hexo clean && hexo deploy && -'

