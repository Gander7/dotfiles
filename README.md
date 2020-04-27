# dotfiles
Personal config files to be used across computers and for new installs

## Prerequisites
- Vim-Plug
- Git

## Installation
1. Clone Repo
2. For each file you want to include, in your `~`:
  `ln -s ABSOULTE_PATH_TO_REPO/FILENAME`
  
## Issues I've faced
Issue: Command not found ^M
Resolve: Git config autocrlf is set to `input`
