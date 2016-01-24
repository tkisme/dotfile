# dotfile
It is a copy of tk's configuration file
Maybe just right for you to use

.vimrc 
vim config file copy it to home and deploy 
```
$ git clone https://github.com/VundleVim/Vundle.vim.git  ~/.vim/bundle/Vundle.vim
$ vim
:BundleInstall
```

due to [zsh config path](http://zshwiki.org/home/config/files)

.zshrc and .zprofile
zsh config file and you need oh my zsh
```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

deploytocloud
you need a foregin cloud to run it remind to change the rsa key in deploytocloud and update password in autoss
```
$ sudo ./deploytocloud
$ wget https://raw.githubusercontent.com/tkisme/dotfile/master/ss_sysctl
$ sudo cat ss_sysctl >> /etc/sysctl.d/local.conf
$ sudo sysctl -p
# if need restart
$ sudo ./ress
```

proxy.user.ini
just for someone still use goagent


startss
simple way to control ss
```
$./startss start
```
