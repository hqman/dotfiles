# fish config file
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

set -Ux XDG_CONFIG_HOME "$HOME/.config"
command -qv nvim && alias vim nvim
if type -q exa
    alias ll "exa -l -g --icons"
    alias lla "ll -a"
end
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
fish_add_path -m ~/.local/bin
pyenv init - | source
zoxide init fish | source
# set Theme colors
set -U fish_color_normal normal
set -U fish_color_command 99cc99
set -U fish_color_quote ffcc66
set -U fish_color_redirection d3d0c8
set -U fish_color_end cc99cc
set -U fish_color_error f2777a
set -U fish_color_param d3d0c8
set -U fish_color_comment ffcc66
set -U fish_color_match 6699cc
set -U fish_color_selection white --bold --background=brblack
set -U fish_color_search_match bryellow --background=brblack
set -U fish_color_history_current --bold
set -U fish_color_operator 6699cc
set -U fish_color_escape 66cccc
set -U fish_color_cwd green
set -U fish_color_cwd_root ffcc66
set -U fish_color_valid_path --underline
set -U fish_color_autosuggestion 747369
set -U fish_color_user brgreen
set -U fish_color_host normal
set -U fish_color_cancel --reverse
set -U fish_pager_color_background
set -U fish_pager_color_prefix normal --bold --underline
set -U fish_pager_color_progress brwhite --background=cyan
set -U fish_pager_color_completion normal
set -U fish_pager_color_description B3A06D
set -U fish_pager_color_selected_background --background=brblack
set -U fish_pager_color_selected_prefix
set -U fish_pager_color_selected_completion
set -U fish_pager_color_selected_description
set -U fish_pager_color_secondary_prefix
set -U fish_pager_color_secondary_completion
set -U fish_pager_color_secondary_background
set -U fish_color_option
set -U fish_pager_color_secondary_description
set -U fish_color_host_remote
set -U fish_color_keyword
#. /Users/$USER/.nix-profile/etc/profile.d/nix.sh
