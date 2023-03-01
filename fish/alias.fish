alias vim=nvim
alias cat=bat
alias reload='exec fish'
alias cheat "cht.sh -i"
alias weather "curl https://v2.wttr.in/u"
alias ip "curl ifconfig.me"
alias fishProfile="nvim ~/.config/fish/config.fish"
alias c="code ."
alias desktop "cd $home && cd Desktop"
alias commander "cd $home && cd GolandProjects/commander/ && go run ."
alias ls "exa --long --header"
alias tdie "tmux kill-server"
alias javaPrettier 'prettier --write "**/*.java"'
alias python "python3"
alias init beginday
alias okta openOkta
alias nvim-man displayNvimManPage 

function beginday
    open -a "slack"
    open -a "todoist"
    open -a "Google Chrome" https://calendar.google.com/calendar/u/0/r/day  https://mail.google.com/ --args --profile-directory="Profile 3" 
end

function openOkta
    open -a "Google Chrome" https://toasttab.okta.com  --args --profile-directory="Profile 3" 
end


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
