export EDITOR=nano

export PATH=$PATH:.

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

export ANDROID_SDK=/Users/thomasbigger/Library/Android/sdk
export ANDROID_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK

export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$PATH:/usr/local/mysql/bin

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

# append to history instead of overwrite
shopt -s histappend


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/thomasbigger/Desktop/google-cloud-sdk/path.bash.inc' ]; then . '/Users/thomasbigger/Desktop/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/thomasbigger/Desktop/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/thomasbigger/Desktop/google-cloud-sdk/completion.bash.inc'; fi

export PATH='/Users/thomasbigger/Library/Python/3.6/bin':$PATH
export PATH=$HOME/bin:$PATH

# added by Anaconda3 4.2.0 installer
export PATH="/Users/thomasbigger/anaconda/bin:$PATH"
