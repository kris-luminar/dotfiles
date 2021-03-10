# export CLICOLOR=1;
# export LSCOLORS=ExFxCxDxBxegedabagacad
# PS1='\033[0;31m\w \033[0;32m\$ \033[0m'
PATH=$PATH:$HOME/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:bin:/Applications/VMware\ Fusion.app/Contents/Library/VMware\ OVF\ Tool:$HOME/bin/diff-so-fancy/
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=/usr/local/apache-maven-3.5.2/bin:$PATH
export NEW_RELIC_NO_CONFIG_FILE=true
export DEFAULT_USER=default2

# VMWare
PATH="/Applications/VMware Fusion.app/Contents/Library:$PATH"

# Chrome webdriver lives here
PATH="$HOME/.webdrivers/:$PATH"

# add dropbox bin folder to PATH
# $PERSONAL_DROPBOX_DIR="$HOME/Dropbox\ \(Personal\)/"
# # $PERSONAL_DROPBOX_DIR=$HOME/'Dropbox (Personal)/'
# echo "PERSONAL_DROPBOX_DIR:$PERSONAL_DROPBOX_DIR"
# $PORTABLE_BIN_DIR="$PERSONAL_DROPBOX_DIRbin"
# if [[ -d "${PORTABLE_BIN_DIR}" && ! -L "${PORTABLE_BIN_DIR}" ]] ; then
#   PATH=$PATH:$PORTABLE_BIN_DIR
# fi

# https://guides.cocoapods.org/using/getting-started.html
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

if [[ -d $HOME/Developer ]] ; then
  PATH=$PATH:$HOME/Developer
fi

export PGDATA=/usr/local/var/postgres

#export FSEVENT_SLEEP="/Users/krisluminar/Downloads/svoop-autotest-fsevent-b143d0a/prebuilt/10.7/fsevent_sleep"
export EDITOR='/usr/bin/vim'
export VISUAL='/usr/bin/vim'

# export JAVA_HOME=$(/usr/libexec/java_home)

# https://stackoverflow.com/questions/29593792/oh-my-zsh-ignore-untracked-files
export DISABLE_UNTRACKED_FILES_DIRTY=true

# https://stackoverflow.com/questions/40248265/how-to-set-android-sdk-root-in-mac/48957460#48957460
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_AVD_HOME=~/.android/avd

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

export PATH="/Users/kluminar/Library/Android/sdk/platform-tools/:$PATH"

# https://confluence.corp.*??????*.com/display/T2/Building+the+Application
# export JAVA_HOME=`/usr/libexec/java_home -v 9`
# ulimit -n 1024

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias cd=cdEnhanced

alias ls="ls -Gh"
alias ll="ls -lah"
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
alias gfrh='git fetch && git reset --hard origin/$(git rev-parse --abbrev-ref HEAD)'
alias gfp='git fetch && git push --force-with-lease'

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
alias yarnr="find . -type d -name node_modules -prune -exec rm -rf {} \; && yarn"
alias yarnu="yarn upgrade-interactive --latest"

## commenting this out since I usually don't have Docker running
# alias psql_core="docker exec -it $(docker ps | awk '/postgres/{print $1}') psql -U postgres -S paperstreethouse"

function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\"";
}

# adapted from https://gist.github.com/richadams8/daf1113e91a2f6eb4404
# you can add this little gem to your .bash_profile to run a command inside of each directory in the current folder
# eg: foreachdir 'git status'
function foreachdir() { /usr/bin/find . -type d -mindepth 1 -maxdepth 1 -exec sh -c "(cd {} && echo '\033[0;31m// '\$PWD'------>\033[0m' && $1)" ';' ; }

# if stderr wil make text red. From https://serverfault.com/a/502019
color()(set -o pipefail;"$@" 2>&1>&3|sed $'s,.*,\e[31m&\e[m,'>&2)3>&1

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

alias view_latest_android_screenshot='open "e2e/reporting/android/screenshots/$(ls -t e2e/reporting/android/screenshots/ | head -n1)"'

alias postgresd="pg_ctl -D /usr/local/var/postgres"
## commented out as this raises errors on Ubuntu and I don't remember why I needed it anyway
# alias whatsmyip="ipconfig getifaddr $(route -n get default|awk '/interface/ { print $2 }')"

## Ubuntu specific aliases
if [  -n $(python -mplatform | grep -qi Ubuntu) ]; then
  # see https://garywoodfine.com/use-pbcopy-on-ubuntu/
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -selection clipboard -o'
fi

export PATH=$HOME/local/bin:$PATH
export PATH

# https://github.com/asdf-vm/asdf
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

