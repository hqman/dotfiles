if status is-interactive
    # Commands to run in interactive sessions can go here
end
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH

source /Users/bella/.docker/init-fish.sh || true # Added by Docker Desktop
starship init fish | source

set -Ux EDITOR nvim

set -U fish_greeting # disable fish greeting

set -Ux FZF_DEFAULT_COMMAND "fd -H -E '.git'"
set -Ux VISUAL nvim

set -Ux BAT_THEME TwoDark


#test
set -x HOMEBREW_NO_INSTALL_FROM_API 1

# 设置 shell vi + emacs 模式一起运行
set -U fish_key_bindings fish_vi_key_bindings
function fish_hybrid_key_bindings --description \
    "Vi-style bindings that inherit emacs-style bindings in all modes"
    for mode in default insert visual
        fish_default_key_bindings -M $mode
    end
   fish_vi_key_bindings --no-erase
end
set -g fish_key_bindings fish_hybrid_key_bindings
