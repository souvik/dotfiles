# FZF configurations
if [ -f ~/.fzf.zsh ]; then
  source ~/.fzf.zsh
fi

# NVM (Node Vesion Manager) configurations
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
