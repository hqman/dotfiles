function git_current_branch
    echo (git symbolic-ref --short -q HEAD)
end

abbr vim nvim
abbr v nvim
abbr bic "brew install --cask"
abbr bin "brew info"
abbr binc "brew info --cask"
abbr bs "brew search"

abbr reload "source ~/.config/fish/config.fish"
abbr g git
abbr tree 'exa --tree'
# abbr cat bat
abbr gcm 'git commit -am'
abbr gst 'git status'
abbr gp 'git push origin "$(git_current_branch)"'
abbr t tmux
abbr ta "tmux a -t"
abbr tls "tmux ls"
abbr tn "tmux new -t"
abbr vf 'fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
