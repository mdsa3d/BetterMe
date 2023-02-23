# pyenv on Mac OS X - Venture

## Instaallation

### Setup Homebrew environment

```bash
sudo xcode-select --reset
sudo chown -R "$USER":admin /usr/local
sudo chown -R "$USER":admin /Library/Caches/Homebrew 
brew install gcc
```
### Install pyenv
```bash
brew install -i pyenv

# if any error fix it using
brew doctor

# else
pyenv --version
```

### Configuring pyenv
```bash
pyenv init

# check list of pyth version through pyenv
pyenv list


# install python 3.10.10
pyenv install 3.10.10

# Virtual Environment configuration
# first time pyenv virtualenv configuration
brew install pyenv pyenv-virtualenv
brew install pyenv-virtualenvwrapper 
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)" 

# create virtualenv
sudo pyenv virtualenv 3.10.10 virtualenv_name

# you can find your environment here
cd /Users/{user_name}/.pyenv/versions/

# set the virtual environment for local dir
pyenv local virtualenv_name

```




### Virtualenv configuration

```bash
pyenv 
```
