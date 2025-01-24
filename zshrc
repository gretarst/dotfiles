# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# 1password ssh agent
export SSH_AUTH_SOCK=~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# go 
export PATH=$PATH:$(go env GOPATH)/bin

# iterm 
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# bun
[ -s "/Users/gretar.magnusson/.bun/_bun" ] && source "/Users/gretar.magnusson/.bun/_bun"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# ocaml 
[[ ! -r /Users/gretar.magnusson/.opam/opam-init/init.zsh ]] || source /Users/gretar.magnusson/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# haskell 
[ -f "/Users/gretar.magnusson/.ghcup/env" ] && source "/Users/gretar.magnusson/.ghcup/env" # ghcup-env

function update-all() {
  # macOS system updates
  echo "Updating macOS system software..."
  sudo softwareupdate -i -a

  # Homebrew updates
  echo "Updating Homebrew..."
  brew update
  brew upgrade
  brew cleanup

  # NPM updates
  echo "Updating NPM..."
  npm install npm -g
  npm update -g

  # Ruby Gem updates
  echo "Updating Ruby Gems..."
  sudo gem update --system
  sudo gem update
  sudo gem cleanup

  # Composer updates
  echo "Updating Composer packages..."
  composer global update

  # Python Pip updates
  echo "Updating pip..."
  pip3 install --upgrade pip

  # TLDR updates
  echo "Updating TLDR pages..."
  tldr --update

  echo "All updates completed!"
}

eval "$(starship init zsh)"
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
