if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_greeting ""

if test -e /opt/homebrew/bin/brew 
    eval "$(/opt/homebrew/bin/brew shellenv)"
end

set PATH $PATH /Users/zlimon/.local/bin
set -x EDITOR "nvim"
