# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/thomasbigger/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colorize brew osx)

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

# Finder: show hidden files
defaults write com.apple.finder AppleShowAllFiles TRUE

git config --global color.ui true
git config --global format.pretty oneline
git config --global core.autocrl input
git config --global core.fileMode true
git config --global alias.lol "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
git config --global alias.p "push"
git config --global alias.c "commit"
git config --global alias.a "add"


alias grep='grep -n'
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'
export TERM=xterm-256color

export EDITOR='nano'

# Commom Mac programs
alias reload='source ~/.zshrc'

# Bash
alias cp='rsync -aP'
alias ls='ls -laghFG'
alias ll='ls -laghFG'
alias l='ls -laghFG'
alias xcode='open -a xcode'
alias text='open -a TextEdit'
alias pre='open -a Preview'
alias cd..='cd ..'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias f='open -a Finder ./'
alias k='kubectl'
alias dnsclear='sudo killall -HUP mDNSResponder'

alias ionicw='docker run --rm -v $(pwd):/ionicapp -p 8100:8100 ionic-builder:latest'

ask () { read -p "Are you sure? (y/n)? " CONT; if [ "$CONT" = "y" ]; then "$@"; else echo "exiting"; fi; }

alias mvnwclr='ask ./mvnw clean compile liquibase:dropAll spring-boot:run'
alias gitfc='ask git add . && git reset --hard head && git clean -i -f'


trash () { command mv "$@" ~/.Trash ; }  # Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; } # Opens any file in MacOS Quicklook Preview

#   showa: to remind yourself of an alias (given some part of it)
showa () { /usr/bin/grep --color=always -i -a1 $@ ~/Library/init/bash/aliases.bash | grep -v '^\s*$' | less -FSRXc ; }

#   mans:   Search manpage given in agument '1' for term given in argument '2' (case insensitive)
#           displays paginated result with colored search terms and two lines surrounding each hit.             Example: mans mplayer codec
#   --------------------------------------------------------------------
mans () {
    man $1 | grep -iC2 --color=always $2 | less
}

# use new docker build output
export DOCKER_BUILDKIT=1

export PATH=$HOME/bin:$PATH
export PATH="/Users/thomasbigger/Library/Python/3.6/bin:$PATH"

# 2 installs? may need fixed 
export ANDROID_HOME=/usr/local/share/android-sdk
export ANDROID_SDK_ROOT=/usr/local/share/android-sdk
export PATH="/Users/thomasbigger/Library/Android/sdk/platform-tools:$PATH"

#  flutter binaries
export PATH="/Users/thomasbigger/bin/flutter/bin:$PATH"

# added by Anaconda3 4.2.0 installer
export PATH="/Users/thomasbigger/anaconda/bin:$PATH"

###-tns-completion-start-###
if [ -f /Users/thomasbigger/.tnsrc ]; then 
    source /Users/thomasbigger/.tnsrc 
fi
###-tns-completion-end-###

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/thomasbigger/.sdkman"
[[ -s "/Users/thomasbigger/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/thomasbigger/.sdkman/bin/sdkman-init.sh"
