#!/bin/bash

##################
# Language setup #
##################

# Node.js (and NVM)
echo "Installing node through NVM..."
echo
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
source $HOME/.bash_profile
nvm install stable

if is_osx; then
    echo "Installing yarn through brew..."
    echo
    brew install node # Still needed when using /bin/zsh -c (e.g. for Ale)
    brew install yarn --ignore-dependencies # Install yarn and use NVM's version
fi

npm install -g \
    commitizen \
    htmlhint \
    http-server \
    jsonlint \
    np \
    npm-check-updates \
    react-devtools 

############
#   TODO   #
############

    # ndb \
    # npmrc \
    # nps \
    # wscat \
    # @storybook/cli


# Install OSX-only npm packages
# if is_osx; then
#     npm install -g \
#         alfred-npms
# fi

# Python (and Pyenv)
echo "Installing python through pyenv..."
echo
echo 'eval "$(pyenv init -)"' >> $HOME/.bash_profile # This will be overwritten after, just do it now to install global python packages
source $HOME/.bash_profile
pyenv install 2.7.16
pyenv install 3.7.4
pyenv global 3.7.4 2.7.16

pip install --upgrade pip setuptools
pip2 install --upgrade pip setuptools

pip install --user \
    glances \
    ipython \
    restview \
    twine \
    virtualenv

# Ruby (and RVM)
# echo "Installing ruby through rvm..."
# echo
# gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
# \curl -sSL https://get.rvm.io | bash -s stable --ruby
# source $HOME/.bash_profile

# gem install \
#     ghi \
#     lolcat \
#     pry \
#     screengif \
#     travis
