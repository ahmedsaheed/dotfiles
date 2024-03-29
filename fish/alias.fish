alias vim=nvim
alias cat=bat
alias reload='exec fish'
alias cheat "cht.sh -i"
alias weather "curl https://v2.wttr.in/u"
alias ip "curl ifconfig.me"
alias fishProfile="nvim ~/.config/fish/config.fish"
alias c="code ."
alias desktop "cd $home && cd Desktop"
alias ls "exa --long --header"
alias tdie "tmux kill-server"
alias python "python3"
alias nvim-man displayNvimManPage 


function displayNvimManPage
    if type -q glow
        glow ~/.config/nvim/readme.md
    else
        if test $fish_platform = "msys"
            type ~/.config/nvim/readme.md
        else
            cat ~/.config/nvim/readme.md
        end
    end 
end
