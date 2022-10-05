# ~/.config/fish/config.fish
source ~/.config/fish/alias.fish
starship init fish | source
jump shell fish | source

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /Users/ahmedsaheed/opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

