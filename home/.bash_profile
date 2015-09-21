if [ -f ~/.bashrc ]; then
  source ~/.aliases
  source ~/.bash_autocomplete
  source ~/.bashrc
  source ~/.colours
  source ~/.git-completion
  eval "$(hub alias -s)"
fi
