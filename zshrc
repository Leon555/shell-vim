# Path to your oh-my-zsh installation.
export ZSH=/Users/Leon/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git textmate autojump zsh-syntax-highlighting common-aliases history common-aliases cp gitfast git-extras osx perl ssh-agent web-search yum)

# User configuration

export PATH=".:/usr/bin:/bin:/usr/sbin:/sbin:/Applications/MAMP/Library/bin:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#man bash and then searching PROMPTING
#export  PS1="\n\e[1;34m[\u@\h \w] # \t \!\e[m\n$ "
#export  PS1="\n\e[1;34m\w # \d \t # \!\e[m\n$ "
export HISTTIMEFORMAT="%D %T "

HISTSIZE=1000000
export HISTSIZE

HISTFILESIZE=1000000
export HISTFILESIZE

# enable bash completion
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
	. /opt/local/etc/profile.d/bash_completion.sh
fi

#source ~/.git-completion.sh

alias ls='ls -G'
alias lsal='ls -Galh'
alias la='ls -Ga'
alias ll='ls -aGlh'
alias vim='/usr/local/bin/vim'
alias vimpro='vim -u /Users/Leon/.vimrc-pro'
alias ..='cd ..'
alias ...='cd ../..'

alias cdblade='cd ~/Documents/NDT/Software/TurbineBlade'
alias cdjava='cd ~/Dropbox/Source/Java'
alias cdbooks='cd ~/Dropbox/Books'
alias cdharibote='cd  ~/Dropbox/Source/Linux/haribote/'
alias cdc='cd  ~/Dropbox/Source/C-C++/snippets/'
alias cdperl='cd ~/Dropbox/Source/Perl/Perl_WS'
alias cdpython='cd ~/Dropbox/Source/Perl/'
alias cdperl='cd ~/Dropbox/Source/Perl/'
alias ebook='/Applications/calibre.app/Contents/MacOS/ebook-viewer &'
alias cddemo='cd ~/Documents/Android_WS/TAT_Demo/'
alias more='more -x 4'
alias edit="open -a textmate.app $1"
alias cpplint-google="~/Source/Others/cpplint-google/cpplint/cpplint.py"

###################################################
# Shortcuts for AWS
export AWS_KEY=~/Documents/Others/amazon/Leon_AWS.pem
export AWS_HOST=centos@ec2-54-249-35-45.ap-northeast-1.compute.amazonaws.com
export AWS_HOME=centos@ec2-54-249-35-45.ap-northeast-1.compute.amazonaws.com:/home/centos
alias saws='ssh -i  $AWS_KEY $AWS_HOST'

# shortcuts to ssh specific servers
export VMCT7=Leon@192.168.158.7
export VMCT7H=Leon@192.168.158.7:/home/Leon
alias sct6='ssh -p 22 Leon@192.168.158.6' # centos 6
alias sct7='ssh -p 22 Leon@192.168.158.7' # centos 7
alias sfb10='ssh -p 22 Leon@192.168.158.10' # freebsd 10.2
alias ssol='ssh -p 22 Leon@192.168.158.11' # solaris 11.2

alias gdb='gdb -q'
alias gdbgnu='/usr/local/bin/gdb -q'
alias gccgnu='/opt/local/bin/gcc-mp-4.9'

alias signgdb='sudo codesign -f -s "gdb-gnu-cert" /usr/local/bin/gdb'

#export C_INCLUDE_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/usr/include:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/include
#export LIBRARY_PATH=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/usr/lib:/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.8.sdk/usr/lib

#eject the hdd
alias ejecthdd='diskutil eject /dev/disk1'

#mount the hdd
alias mounthdd='diskutil mountDisk /dev/disk1'

# Make apache web server auto-start for proxy
#sudo apachectl start

# setting PATH for MAMP -- mysql, apache2, etc.
PATH=$PATH:/Applications/MAMP/Library/bin

# re-enable spotlight icon on menubar
alias spoticon='sudo chmod 755 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search; killall SystemUIServer'

PATH=.:$PATH:/opt/local/bin:/opt/local/sbin:/usr/local/sbin:/usr/local/bin
export PATH

# add a path for gcc include
C_INCLUDE_PATH=$C_INCLUDE_PATH:/opt/local/include:/opt/X11/include/
export C_INCLUDE_PATH

LIBRARY_PATH=$LIBRARY_PATH:/opt/local/lib
export LIBRARY_PATH

#export LANG="zh_CN.UTF"
#export LC_ALL="zh_CN.UTF-8"

#. /opt/local/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
