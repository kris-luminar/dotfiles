[ -f ~/.fzf.bash ] && source ~/.fzf.bash

function cdEnhanced() {
    cd $1;
    useNvmrc;
}

function useNvmrc() {
    if [ -f .nvmrc ]; then
        nvm use;
    fi
}

if [ -f ~/.profile ]; then
  source ~/.profile
fi

if [ -f ~/.localconfig ]; then
  source ~/.localconfig
fi

if [ -f ~/.secrets ]; then
  source ~/.secrets
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source $HOME/.config/op/plugins.sh

