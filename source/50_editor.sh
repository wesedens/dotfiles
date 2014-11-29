# Editing

export EDITOR=$(type vim vi nano pico 2>/dev/null | sed 's/ .*$//;q')

export VISUAL="$EDITOR"
alias q="$EDITOR"
alias qv="q $DOTFILES/link/.{,g}vimrc +'cd $DOTFILES'"
alias qs="q +'cd $DOTFILES'"
