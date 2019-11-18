## Method to store dotfiles on github
https://news.ycombinator.com/item?id=11070797

## Full Tutorial
https://www.atlassian.com/git/tutorials/dotfiles

git init --bare $HOME/.myconf
alias dot_config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
alias dot_status='dot_config config status.showUntrackedFiles no'

# where my ~/.myconf directory is a git bare repository. 
# Then any file within the home folder can be versioned with normal commands like:

dot_status
dot_config add .vimrc
dot_config commit -m "Add vimrc"
dot_config add .config/redshift.conf
dot_config commit -m "Add redshift config"
dot_config push

echo "# dotfiles" >> README.md
dot_config remote add origin https://github.com/croysdale/dotfiles.git
dot_config push -u origin master


# Clone into new env
   echo ".myconf" > .gitignore

# Setup aliases
   alias dot_config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
   alias dot_status='dot_config config status.showUntrackedFiles no'

   git clone --bare http://github.com/croysdale/dotfiles.git $HOME/.myconf


# Alternate clone command ...
   git clone --separate-git-dir=~/.myconf /path/to/repo ~


# Install additional packages 
   git clone http://github.com/robbyrussell/oh-my-zsh
   git clone http://github.com/junegunn/fzf
   cd .zsh 
   git clone http://github.com/rupa/z

