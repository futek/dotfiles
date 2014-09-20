# disable fish greeting
set -e fish_greeting

# prepend /usr/local binaries to path
set PATH /usr/local/bin /usr/local/sbin $PATH

# append powerline config to python path
set -x PYTHONPATH $PYTHONPATH ~/.config/powerline
