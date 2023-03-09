# https://direnv.net/
eval "$(direnv hook bash)"

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

if [ -f ~/.secrets/secrets.sh ]; then
  source ~/.secrets/secrets.sh
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

source $HOME/.config/op/plugins.sh
source $HOME/.docker/init-bash.sh || true # Added by Docker Desktop