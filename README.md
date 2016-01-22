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

.zshrc
zsh config file and you need oh my zsh
```
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

deploytocloud
you need a foregin cloud to run it remind to change the rsa key in deploytocloud and update password in autoss
```
$ ./deploytocloud
```

proxy.user.ini
just for someone still use goagent
