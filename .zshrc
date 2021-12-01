# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/icehe/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  cp
  git
  globalias
  safe-paste
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#########################################################################
# The settings above are almost all generated by oh-my-zsh installation #
#########################################################################

# NOTE : `ZSH_THEME` and `plugins` above are customized by IceHe.xyz

#######
# ENV #
#######

# Homebrew
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles
export PATH="/opt/homebrew/bin:$PATH"

# JDK
#export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=`/usr/libexec/java_home -v 11`
#export JAVA_HOME=`/usr/libexec/java_home -v 17`
# NOTE : Run `/usr/libexec/java_home -V` to list all installed JREs & JVMs

# Locale
#export LANG=zh_CN.UTF-8
# NOTE : macOS 下命令行终端无法输入中文或中文显示 : https://blog.csdn.net/j754379117/article/details/53897115
# NOTE : 解决 macOs SSH LC_CTYPE 警告问题 : http://data4q.com/2018/01/06/%E8%A7%A3%E5%86%B3mac-os-x-ssh-lc_ctype%E8%AD%A6%E5%91%8A%E9%97%AE%E9%A2%98/

# NVM : Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

#########
# ALIAS #
#########

# Common
alias bu='brew update -vvv && brew upgrade -vvv'
alias e='exit'
alias pb='pbcopy'
alias pbn='tr -d "\n" | pbcopy'
alias rm='safe-rm'
alias rp='realpath'
## Reload the ZSH settings in `.zshrc`
alias sz='source ~/.zshrc && echo \$ source ~/.zshrc'

# Applications
alias st='open -a /Applications/Sublime\ Text.app/'
alias vc='open -a /Applications/Visual\ Studio\ Code.app'

# CD - Change Directory
alias zd='cd ~/Desktop'
alias zl='cd ~/Downloads'
alias zo='cd ~/Documents'
alias zi='cd ~/Documents/lib'

# Vim
alias v='nvim'
alias sv='sudo nvim'

alias vgi='v ./.gitignore'
alias vh='sv /etc/hosts'
alias vv='v ~/.vimrc'
alias viv='v ~/.ideavimrc'
alias vt='v ~/.tmux.conf'
alias vz='v ~/.zshrc'

alias vk='v ~/.config/karabiner/karabiner.json'
alias vck='vc ~/.config/karabiner/karabiner.json'
alias stk='st ~/.config/karabiner/karabiner.json'

# Source
#source ~/.config/zsh/fzf.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # START TRYING on 2021/12/01
source ~/.config/zsh/git.zsh
source ~/.config/zsh/ip.zsh
source ~/.config/zsh/js.zsh
source ~/.config/zsh/ls.zsh
source ~/.config/zsh/proxy.zsh
source ~/.config/zsh/tmux.zsh

############
# BIND-KEY #
############

# Expand Alias
# ( including global via plugin globalias )
# ( REF : ~/.oh-my-zsh/plugins/globalias/globalias.plugin.zsh )
bindkey -M emacs "^x " globalias
bindkey -M viins "^x " globalias
# Revert part of settings in plugin globalias
bindkey -M isearch " " magic-space
bindkey -M emacs " " magic-space
bindkey -M viins " " magic-space
bindkey -M emacs -r "^ "
bindkey -M viins -r "^ "
