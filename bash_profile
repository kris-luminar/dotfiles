if [ -f ~/.secrets/secrets.sh ]; then
  source ~/.secrets/secrets.sh
fi

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
source /Users/kris.luminar/.docker/init-bash.sh || true # Added by Docker Desktop