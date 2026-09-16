if status is-interactive
    # Commands to run in interactive sessions can go here
end

eval "$(/opt/homebrew/bin/brew shellenv)"

set PATH $PATH /Users/zlimon/.local/bin
set -x EDITOR "nvim"
