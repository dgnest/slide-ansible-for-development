#!/usr/bin/env bash

if [[ ! $TRAVIS = 'true' ]]; then
    pyenv virtualenv ansible-vagrant
    pyenv activate ansible-vagrant
fi

pip install -r requirements.txt