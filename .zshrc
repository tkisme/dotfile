# Path to your oh-my-zsh installation.
export ZSH=/Users/tk/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="random"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(git brew npm pip pkill history-substring-search cmake)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

#fpath=(/usr/local/share/zsh-completions $fpath)
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
##alias gae="sudo ~/venv/bin/python ~/goagent/local/proxy.py"
#alias caskupgrade="for app in $(brew cask list); do brew cask install --force "${app}" ;done"
alias gae="sudo ~/goagent/local/proxy.sh restart ; youtube restart"
alias mongostart="mongod --config /usr/local/etc/mongod.conf"
alias pipUpgrade='sudo pip install -U `pip freeze|cut -d= -f 1|grep -v matplotlib|grep -v numpy`'
alias reload=". ~/.zshrc"
alias reshadow="heroku ps:restart --app tkismeapi"
alias sshamazon="ssh -v ubuntu@52.74.229.37"
alias sshb2b="ssh -vl kevin www.ultra-u2u.com"
alias sshli="ssh -v kevin@112.74.89.49"
alias sshnew="ssh -v kevin@120.26.49.168"
alias sshnode="ssh -v kevin@139.162.7.50"
alias sshnewer="ssh -v root@112.124.114.83"
alias updatedb="sudo /usr/libexec/locate.updatedb"
alias venv=" . venv/bin/activate"
alias vi="vim" 
alias vialias="vi ~/.zshrc && reload"
alias vigae="vi ~/goagent/local/proxy.user.ini"
alias vitheme="vi ~/.oh-my-zsh/themes/robbyrussell.zsh-theme"
alias setproxy="export {http,https,ftp}_proxy=localhost:8087"
alias unsetproxy="unset {http,https,ftp}_proxy"
alias startmysql="mysql.server start"
#alias youtube="node ~/MEGAsync/node/cloud/heroku/tkishadow/local.js -s tkishadow.herokuapp.com -l 1080 -m rc4 -k tkisme2013@gmail.com -r 80"
#alias youtube="/Users/tk/MEGAsync/cloud/shadowsocks-python/venv/bin/sslocal -c /Users/tk/MEGAsync/cloud/shadowsocks-python/config.aws.json && sudo /Users/tk/MEGAsync/cloud/shadowsocks-python/venv/bin/sslocal -c /Users/tk/MEGAsync/cloud/shadowsocks-python/config.json -d restart" 
#alias youtube = "sudo /Users/tk/MEGAsync/cloud/shadowsocks-python/venv/bin/sslocal -c /Users/tk/MEGAsync/cloud/shadowsocks-python/config.json -d restart"
#alias ress="youtube -d restart"
#alias viss="vi ~/MEGAsync/cloud/shadowsocks-python/config.json"
alias viss="cd ~/MEGAsync/cloud/ss"
alias youtube="~/MEGAsync/cloud/ss/start"
#compdef pkill=kill
#以下字符视为单词的一部分
WORDCHARS='*?_-[]~=&;!#$%^(){}<>'
#开启此选项，补全时会直接选中菜单项
#setopt MENU_COMPLETE
#补全 ssh scp sftp 等
zstyle -e ':completion::*:*:*:hosts' hosts 'reply=(${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) /dev/null)"}%%[# ]*}//,/ })'
#app='tkismephp';heroku apps:destroy -a $app --confirm $app
#export LDFLAGS=LDFLAGS+"-L/usr/local/opt/openssl/lib"
#export CPPFLAGS=CPPFLAGS+"-I/usr/local/opt/openssl/include"
export ANDROID_SDK="/Users/tk/Library/Android/sdk"
#sqlite is already installed by macos
export PATH="/opt/local/bin:/opt/local/sbin:/Users/tk/MEGAsync/cloud/red/bin:$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:/usr/local/sbin:$PATH"
export SS_CONFIG="/Users/tk/MEGAsync/cloud/shadowsocks-python"
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
#plugins=(git brew npm pip pkill history-substring-search cmake)
eval "$(npm completion 2>/dev/null)"
