#!/bin/bash

### Utilities ###

# Install Xcode command line tools (prerequisite for Homebrew)
xcode-select --install

# Install Homebrew using their installation script
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Install utilities using Homebrew
brew install bash-completion git hub rmtrash

# Configure system not to yell about using Bash instead of ZSH
echo 'export BASH_SILENCE_DEPRECATION_WARNING=1' >> ~/.bash_profile

# Configure Bash colors
echo 'export CLICOLOR=1' >> ~/.bash_profile
echo 'export LSCOLORS=ExFxBxDxCxegedabagacad' >> ~/.bash_profile

# Load completions when Bash initializes
echo 'if type brew &>/dev/null; then
  if [[ -f $(brew --prefix)/etc/profile.d/bash_completion.sh ]]; then
    source "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in $(brew --prefix)/etc/bash_completion.d/*
    do
      [[ -f $COMPLETION ]] && source "$COMPLETION"
    done
  fi
fi' >> ~/.bash_profile

# Add Git info to Bash prompt
echo 'export GIT_PS1_SHOWDIRTYSTATE=1' >> ~/.bash_profile
echo 'export PS1='\''\[\033[0;36m\]\w\[\033[0m\]\[\033[0;90m\]$(__git_ps1 " (%s)")\[\033[0m\]\n🔥 '\' >> ~/.bash_profile

# Proxy all Git commands through hub
echo 'eval "$(hub alias -s)"' >> ~/.bash_profile

# Configure grep to always colorize output
echo 'alias grep="grep --color=auto"' >> ~/.bash_profile

# Allow rmtrash to be referenced as just `trash`
echo 'alias trash="rmtrash"' >> ~/.bash_profile

### PROGRAMMING LANGUAGES ###

# Install nvm using their installation script
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bash_profile

# Install Node.js using nvm, then update global packages
nvm install node
npm i -gf npm npx

### APPLICATIONS ###

# Make additional drivers available through Homebrew Cask
brew tap homebrew/cask-drivers

# Install applications using Homebrew Cask
declare -a brewapplications=(
  'android-messages'
  'appcleaner'
  'brave-browser'
  'figma'
  'firefox'
  'google-backup-and-sync'
  'imageoptim'
  'kap'
  'rectangle'
  'rocket'
  'slack'
  'spotify'
  'tomtom-sports-connect'
  'visual-studio-code'
)
for brewapp in "${brewapplications[@]}"
do
  brew cask install "$brewapp"
done

# Install Visual Studio Code extensions
declare -a extensions=(
  'mgmcdermott.vscode-language-babel'
  'adpyke.codesnap'
  'vsls-contrib.codetour'
  'editorconfig.editorconfig'
  'dsznajder.es7-react-js-snippets'
  'dbaeumer.vscode-eslint'
  'abierbaum.vscode-file-peek'
  'tombonnike.vscode-status-bar-format-toggle'
  'eamodio.gitlens'
  'andys8.jest-snippets'
  'ms-vsliveshare.vsliveshare'
  'yzhang.markdown-all-in-one'
  'pkief.material-icon-theme'
  'arcticicestudio.nord-visual-studio-code'
  'esbenp.prettier-vscode'
  'jakob101.relativepath'
  'humao.rest-client'
  'stylelint.vscode-stylelint'
  'gruntfuggly.todo-tree'
  'jpoissonnier.vscode-styled-components'
)
for ext in "${extensions[@]}"
do
  code --install-extension "$ext"
done

# Download Visual Studio Code settings
curl https://raw.githubusercontent.com/pdhoopr/dotfiles/master/visual-studio-code/settings.json --output ~/Library/Application\ Support/Code/User/settings.json

### CLEANUP ###

# Clean up Homebrew artifacts
brew cleanup

# Reload the bash profile
source ~/.bash_profile

# Output success message
echo 'Congratulations! You should be all set. Feel free to add additional things as needed.'
