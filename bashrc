source ~/.profile
source ~/.secrets

# https://direnv.net/
eval "$(direnv hook bash)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
