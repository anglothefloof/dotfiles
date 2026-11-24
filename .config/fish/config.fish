fish_vi_key_bindings
set fish_cursor_default underscore blink
set fish_cursor_insert underscore blink

function fish_user_key_bindings
    bind -M insert \b backward-kill-word
end

alias config="git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

starship init fish | source
