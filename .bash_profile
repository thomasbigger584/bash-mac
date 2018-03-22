export EDITOR=nano

export PATH=$PATH:.

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre
export PATH=$PATH:$JAVA_HOME

export ANDROID_SDK=/Users/thomasbigger/Library/Android/sdk
export ANDROID_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK

export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

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

# Commom Mac programs
alias reload='source ~/.bash_profile'

# Bash
alias ls='ls -laghFG'
alias ll='ls -laghFG'
alias l='ls -laghFG'
alias xcode='open -a xcode'
alias text='open -a TextEdit'
alias pre='open -a Preview'
alias cd..='cd ..'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# append to history instead of overwrite
shopt -s histappend
