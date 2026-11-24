fish_vi_key_bindings
set fish_cursor_default underscore blink
set fish_cursor_insert underscore blink

function fish_user_key_bindings
    bind -M insert \b backward-kill-word
end

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias cgf="config fetch --prune"
alias cgc="config commit -m"
alias cgps="config push"
alias cgpl="config pull"
alias cgs="config status"
alias cga="config add"

alias gf="git fetch --prune"
alias gc="git commit -m"
alias gps="git push"
alias gpl="git pull"
alias gs="git status"
alias ga="git add ."

starship init fish | source
