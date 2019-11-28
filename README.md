
## Installation

Clone into new env
```
   echo ".myconf" > .gitignore
```

Setup aliases
```
   alias dot_config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
   alias dot_status='dot_config config status.showUntrackedFiles no'
```
Clone into existing HOME directory .. could interfer with existing files
```
   git clone --bare http://github.com/croysdale/dotfiles.git $HOME/.myconf
   dot_config checkout
```

Install additional packages required for zsh
```
   git clone http://github.com/robbyrussell/oh-my-zsh ~/.oh-my-zsh
   git clone http://github.com/junegunn/fzf ~/.fzf
   git clone http://github.com/rupa/z ~/.zsh/z

   git clone http://github.com/zsh-users/zsh-syntax-highlighting ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
   git clone http://github.com/psprint/zsh-editing-workbench     ~/.oh-my-zsh/custom/plugins/zsh-editing-workbench
   git clone http://github.com/changyuheng/fz                    ~/.oh-my-zsh/custom/plugins/fz
```

Run fzf installer
```
   ~/.fzf/install
```

Install TMUX package manager
```
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

Install additional packages required for vim
```
vim
:PlugInstall
:q
```

Install additional tmux plugins
```
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```
Cheatsheets

[Cheatsheet 1](https://www.cheatography.com//kcroysdale/cheat-sheets/unified-vim-tmux-fvwm-environment/pdf/)

Full Tutorial credit
Built following tutorial from [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)
