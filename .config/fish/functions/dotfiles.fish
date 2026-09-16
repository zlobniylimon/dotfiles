function dotfiles
    git --work-tree=$HOME/.dotfiles --git-dir=$HOME/.dotfiles/.git $argv
end
