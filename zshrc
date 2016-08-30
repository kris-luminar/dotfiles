source ~/.profile
source ~/.secrets

# use vi/vim bindings in the shell
bindkey -v

#Set CLICOLOR if you want Ansi Colors in iTerm2
export CLICOLOR=1

# Set colors to match iTerm2 Terminal Colors
export TERM=xterm-256color

# bind Ctrl-R to search history in reverse, like the normalm emacs keybinding
bindkey "^R" history-incremental-search-backward

HISTFILE=~/.zshistory
HISTSIZE=10000
SAVEHIST=10000

# appends your last command to history and reloads your history after each command (from http://stackoverflow.com/a/12656085/446954)
export PROMPT_COMMAND="history -a; history -n"
setopt share_history

setopt SHARE_HISTORY #history is shared across concurrent ZSH sessions
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS

#To save every command before it is executed (this is different from bash's history -a solution):
setopt inc_append_history

#To retrieve the history file everytime history is called upon.
setopt share_history

setopt hist_ignore_dups
