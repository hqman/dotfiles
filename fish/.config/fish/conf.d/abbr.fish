function git_current_branch
    echo (git symbolic-ref --short -q HEAD)
end

abbr v nvim
abbr nv "nvim ."
abbr bic "brew install --cask"
abbr bin "brew info"
abbr binc "brew info --cask"
abbr bs "brew search"

abbr reload "source ~/.config/fish/config.fish"
abbr tree 'exa --tree --level=3'
# abbr cat bat
abbr gcm 'git commit -am'
abbr g git
abbr gs 'git status'
abbr ga 'git add'
abbr gb 'git branch'
abbr gco 'git checkout'
abbr gp 'git push origin "$(git_current_branch)"'
abbr t tmux
abbr ta "tmux a -t"
abbr tls "tmux ls"
abbr tn "tmux new -t"
abbr vf 'fd --type f --hidden --exclude .git | fzf-tmux -p --reverse | xargs nvim'
abbr lg lazygit
abbr c code
abbr lla 'ls -ali'
