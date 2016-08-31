Kris' Dotfiles
===============

A home for my dot files. I use thoughtbot's [rcm](https://github.com/thoughtbot/rcm) to install/update the files

Install
-------

Clone down this repo

    git clone git://github.com/kris-luminar/dotfiles.git ~/.dotfiles

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
    rcup -x README.md -x LICENSE
    # setup vim vundle
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    vim +BundleInstall +qall

This creates the symlinks for all files stored in .dotfiles

Additional Software (Install these before dotfiles on a fresh install)
------------------

- [Oh My Zsh](https://github.com/robbyrussell/oh-my-zsh) as a ZSH framework
- [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) fast file search
