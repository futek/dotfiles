# disable fish greeting
set -e fish_greeting

# prepend /usr/local binaries to path
set -x PATH /usr/local/bin /usr/local/sbin $PATH

# append powerline config to python path
set -x PYTHONPATH $PYTHONPATH ~/.config/powerline

# set editor to MacVim
set -x EDITOR "mvim -f"

# append cabal binaries to path
set -x PATH $PATH ~/Library/Haskell/bin

# maven variables
set -x JAVA_HOME (/System/Library/Frameworks/JavaVM.framework/Versions/Current/Commands/java_home -v 1.8)