# Method to store dotfiles on github

## Full Tutorial
Built following tutorial from [Atlassian](https://www.atlassian.com/git/tutorials/dotfiles)

More details are [here] (https://news.ycombinator.com/item?id=11070797)

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

Do not enable shell configuration files ... this is already setup
```
Downloading bin/fzf ...
  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100   616    0   616    0     0   1687      0 --:--:-- --:--:-- --:--:--  1692
100 1133k  100 1133k    0     0   732k      0  0:00:01  0:00:01 --:--:-- 1737k
  - Checking fzf executable ... 0.19.0
Do you want to enable fuzzy auto-completion? ([y]/n) y
Do you want to enable key bindings? ([y]/n) y

Generate /home/testuser/.fzf.bash ... OK
Generate /home/testuser/.fzf.zsh ... OK

Do you want to update your shell configuration files? ([y]/n) n

Update /home/testuser/.bashrc:
  - [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    ~ Skipped

Update /home/testuser/.zshrc:
  - [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
    - Already exists: line #92

For more information, see: https://github.com/junegunn/fzf
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
tmux
Install additional packages required for vim
```
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```


