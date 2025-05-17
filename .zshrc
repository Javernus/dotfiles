export NVM_DIR="$HOME/.nvm"
    [ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" # This loads nvm
    [ -s "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$HOMEBREW_PREFIX/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

eval "$(/opt/homebrew/bin/brew shellenv)"

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 10

plugins=(
	git
)

# Oh my Z.sh config
export ZSH="$HOME/.config/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
fi

export EDITOR=nvim

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export NVM_DIR=~/.nvm
# . "/usr/local/opt/nvm/nvm.sh"

# pnpm
export PNPM_HOME="/Users/jakejongejans/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# bun completions
[ -s "/Users/jakejongejans/.bun/_bun" ] && source "/Users/jakejongejans/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

ssh-add --apple-load-keychain >/dev/null 2>&1

eval "$(zoxide init --cmd cd zsh)"

source ~/dotfiles/aliases.sh

bindkey -e
bindkey '^[[1;3C' emacs-forward-word
bindkey '^[[1;3D' emacs-backward-word

export PATH="$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

[ -f "/Users/jake.jongejans/.ghcup/env" ] && . "/Users/jake.jongejans/.ghcup/env" # ghcup-env

export PATH="$HOME/.air:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/jake.jongejans/.lmstudio/bin"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/jake.jongejans/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
