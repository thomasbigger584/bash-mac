export EDITOR=nano

export PATH=$PATH:.

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home
export PATH=$PATH:$JAVA_HOME

export ANDROID_SDK=/Users/thomasbigger/Library/Android/sdk
export ANDROID_ROOT=$ANDROID_SDK
export ANDROID_HOME=$ANDROID_SDK

export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export PATH=$PATH:/Users/thomasbigger/Desktop/flutter/bin

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

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/thomasbigger/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Users/thomasbigger/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/thomasbigger/anaconda3/etc/profile.d/conda.sh"
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/Users/thomasbigger/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda init <<<
