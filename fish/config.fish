set -gx PATH /usr/local/bin $PATH
source ~/.config/fish/alias.fish
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx VCPKG_ROOT "$HOME/vcpkg"
set -gx REACT_EDITOR "WebStorm" 
neofetch

# pnpm
set -gx PNPM_HOME "/Users/ahmedsaheed/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

if test -d "/opt/homebrew/opt/ruby/bin"
    set -x PATH /opt/homebrew/opt/ruby/bin $PATH
    set -x PATH (gem environment gemdir)/bin $PATH
end
set -x PATH /Users/ahmedsaheed/.cargo/bin $PATH
starship init fish | source


