# export CLICOLOR=1;
# export LSCOLORS=ExFxCxDxBxegedabagacad
# PS1='\033[0;31m\w \033[0;32m\$ \033[0m'
PATH=$PATH:$HOME/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:bin:/Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# linuxbrew
PATH="$HOME/.linuxbrew/bin:$PATH"
PATH="$HOME/.linuxbrew/sbin:$PATH"
export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

# VMWare
PATH="/Applications/VMware Fusion.app/Contents/Library:$PATH"

export PGDATA=/usr/local/var/postgres

#export FSEVENT_SLEEP="/Users/krisluminar/Downloads/svoop-autotest-fsevent-b143d0a/prebuilt/10.7/fsevent_sleep"
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

#export JAVA_HOME=$(/usr/libexec/java_home)

alias ls="ls -Gh"
alias ll="ls -lh"
alias l.="ls -dlh .*"
alias lf="ls -lh | egrep -v '^d'"
alias ldir="ls -lh | egrep '^d'"

alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."
alias ..4="cd ../../../.."
alias ..5="cd ../../../../.."

alias cgs='clear && git status'

###################################### BEGIN FROM YADR ###############################

# Aliases in this file are bash and zsh compatible

# PS
alias psa="ps aux"
alias psg="ps aux | grep "
alias psr='ps aux | grep ruby'

# Moving around
alias cdb='cd -'
alias cls='clear;ls'

# Show human friendly numbers and colors
alias df='df -h'
alias du='du -h -d 2'

# show me files matching "ls grep"
alias lsg='ll | grep'

# alias edit_modified_files="vim -p $(git status --porcelain | awk '{print $2}')"
# alias edit_modified_files="vim $(git status --porcelain | awk '{print $2}')"

# mimic vim functions
alias :q='exit'

# vimrc editing
alias ve='vim ~/.vimrc'

# zsh profile editing
alias ze='vim ~/.zshrc'
alias zr='source ~/.zshrc'

# Git Aliases
alias gis='git status'
alias gits='git status'
alias gi='vim .gitignore'
alias gcm='git ci -m'
alias gcim='git ci -m'
alias gci='git ci'
alias gco='git co'
alias gcp='git cp'
alias ga='git add -A'
alias guns='git unstage'
alias gunc='git uncommit'
alias gim='git merge'
alias gms='git merge --squash'
alias gam='git amend --reset-author'
alias grv='git remote -v'
alias grr='git remote rm'
alias grad='git remote add'
alias gr='git rebase'
alias gra='git rebase --abort'
alias ggrc='git rebase --continue'
alias gbi='git rebase --interactive'
alias gl='git l'
alias glg='git l'
alias glog='git l'
alias co='git co'
alias gf='git fetch'
alias gfch='git fetch'
alias gd='git diff'
alias gb='git b'
alias gbd='git b -D -w'
alias gdc='git diff --cached -w'
alias gpub='grb publish'
alias gtr='grb track'
alias gpl='git pull'
alias gplr='git pull --rebase'
alias gps='git push'
alias gpsh='git push -u origin `git rev-parse --abbrev-ref HEAD`'
alias gnb='git nb' # new branch aka checkout -b
alias grs='git reset'
alias grsh='git reset --hard'
alias gcln='git clean'
alias gclndf='git clean -df'
alias gclndfx='git clean -dfx'
alias gsm='git submodule'
alias gsmi='git submodule init'
alias gsmu='git submodule update'
alias gt='git t'
alias gbg='git bisect good'
alias gbb='git bisect bad'
# git rebase lastest master (grlm)
alias grlm='git checkout master && git pull && git checkout - && git rebase master'

# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'

# Zippin
alias gz='tar -zcvf'

# Ruby
alias c='rails c' # Rails 3+

alias rdm='rake db:migrate'
alias rdmr='rake db:migrate:redo'

# Rspec
alias r='rspec'

alias grb='git recent-branches'

# Finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Homebrew
alias brewu='brew update && brew upgrade && brew cleanup && brew prune && brew doctor'

################################ END FROM YADR ############################################

alias delete_merged_branches="git branch --merged | grep -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d"
alias branch_moved_to_master='git checkout master && git pull && delete_merged_branches'
alias edit_last_committed_files='vim `git changes -1 | cut -f2 | sed "1 d"`'
alias delete_vim_swp_files='find ./ -type f -name "\.*sw[klmnop]" -delete'
alias git_sorted_branches="git for-each-ref --count=30 --sort=-committerdate refs/heads/ --format='%(refname:short)'"
alias glist='for ref in $(git for-each-ref --sort=-committerdate --format="%(refname)" refs/heads/ ); do git log --author="Kris Luminar" -n1 $ref --pretty=format:"%Cgreen%cr%Creset %C(yellow)%d%Creset %C(bold blue)<%an>%Creset%n" | cat ; done | awk '"'! a["'$0'"]++' | head -18"
alias git_recently_checked_out_branches="git reflog | egrep -io 'moving from ([^[:space:]]+)' | awk '{ print $3 }' | head -n9"

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\"";
}

# adapted from https://gist.github.com/richadams8/daf1113e91a2f6eb4404
# you can add this little gem to your .bash_profile to run a command inside of each directory in the current folder
# eg: foreachdir 'git status'
function foreachdir() { /usr/bin/find . -type d -mindepth 1 -maxdepth 1 -exec sh -c "(cd {} && echo '\033[0;31m// '\$PWD'------>\033[0m' && $1)" ';' ; }

alias grep='grep -a --color'
alias scp='scp -p'

# did this instead: 'brew install coreutils'
alias md5sum='gmd5sum'

alias be='bundle exec'
alias migrate='rake db:migrate && rake db:test:load'
alias reset_migrations='rake db:migrate && git checkout db/schema.rb && rake db:schema:load && rake db:test:load'

alias rrg='be rake routes | grep '

#When running the Cucumber features, you need to explicitly include the `features/` directory with the `-r` flag.
alias cuke='time bundle exec cucumber -r features/'

export PATH=$HOME/local/bin:$PATH
export PATH
