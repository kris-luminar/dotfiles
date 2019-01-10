Kris' Dotfiles
===============

A home for my dot files. I use thoughtbot's [rcm](https://github.com/thoughtbot/rcm) to install/update the files

Install
-------

Clone down this repo

    git clone https://github.com/kris-luminar/dotfiles.git ~/.dotfiles

Install [rcm](https://github.com/thoughtbot/rcm):

    # Mac
    brew tap thoughtbot/formulae
    brew install rcm

    # CentOS (other linux distros, here: https://github.com/thoughtbot/rcm)
    cd /etc/yum.repos.d/
    sudo wget http://download.opensuse.org/repositories/utilities/CentOS_6/utilities.repo
    sudo yum install rcm

Install:

    # install the dotfiles
    rcup -d ~/dotfiles -x README.md -x LICENSE
    # setup vim pathogen
    mkdir -p ~/.vim/autoload ~/.vim/bundle && \
    curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

This creates the symlinks for all files stored in .dotfiles

Additional Software (Install these before dotfiles on a fresh install)
------------------

- [Bash It](https://github.com/Bash-it/bash-it) a Bash framework
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) fast file search
