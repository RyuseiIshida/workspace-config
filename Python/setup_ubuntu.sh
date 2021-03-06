#!/bin/bash
echo "このシェルスクリプトは $ source setup.sh で実行してください"

# INSTALL PYENV
sudo apt install -y build-essential libffi-dev libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev
sudo apt install -y git
git clone https://github.com/pyenv/pyenv.git
echo 'export PYENV_ROOT="$HOME/pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
source ~/.bashrc
pyenv -v

# INSTALL PYTHON3.9 WITH PYENV
$HOME/ryusei-ishida/pyenv/bin/pyenv install 3.9.8
pyenv install 3.9.8
pyenv versions
pyenv global 3.9.

# INSTALL POETRY
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
export PATH="$HOME/.poetry/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
poetry config virtualenvs.in-project
