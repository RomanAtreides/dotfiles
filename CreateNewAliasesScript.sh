#!/usr/bin/bash

# Если создавать синоним с помощью ввода команды в терминале то после придуманного сокращения знак = не нужен.
# Соответственно при создании скрипта = тоже использовать не надо.
# Но если новый синоним прописывать вручную в файл .gitconfig то нужен знак =.

# Create aliases
git config --global alias.st status 
git config --global alias.co checkout
git config --global alias.hist "log --pretty=format:'%C(227)%h%Creset | %C(197)%cd [%an]%C(35)%d%Creset%n%s%n' --date=format:'%#d %b %Y %R %z'"
echo "Aliases have been created"
echo "To see all configuration parameters type 'git config --list --global'"
echo "To get help use 'git config -h'"
# echo "To see all aliases in bash use 'alias -p' command"

# Set default editor
git config --global core.editor nano # Здесь перед nano тоже знак = не нужен.
echo "Nano has been setted as default text editor"

# Set difftool editor
git config --global diff.tool vimdiff
echo "Vim has been setted as default difftool editor"