#!bash

# Laptop install script

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$1/.zprofile

echo "Installing iterm"
brew install --cask iterm2

echo "Installing oh my zsh"
\n\n$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"\n
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"


brew install --cask alfred
brew install --cask firefox
brew install --cask rectangle
brew install --cask spotify
brew install --cask jetbrains-toolbox
brew install --cask visual-studio-code
brew install git
brew install --cask postman
brew install --cask postico
brew install --cask slack
brew install --cask zoom
brew install --cask notion
brew install --cask drawio

brew install whatsapp

brew install mysql
brew install --cask mysqlworkbench
brew services start mysql

brew install postgresql
brew services start postgresql

brew install node


# Make path for JetBrains IDE CLI shell scripts and add permissions

DIR="/usr/local/bin"
if [ -d "$DIR" ]; then
    echo "path exists ${DIR}..."
else
    mkdir -m 755 $DIR;
    echo "made dir: $DIR"
fi

export PATH="/usr/local/bin:$PATH"

ssh-keygen -t ed25519 -C $2

echo "Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519" >> ~/.ssh/config
touch ~/.ssh/config

ssh-add -K ~/.ssh/id_ed25519
ssh-ed25519 
pbcopy < ~/.ssh/id_ed25519.pub


echo “Copied  ssh key to clipboard, add it to your GitHub now”