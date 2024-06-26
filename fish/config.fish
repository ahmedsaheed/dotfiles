set -gx PATH /usr/local/bin $PATH
source ~/.config/fish/alias.fish
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx VCPKG_ROOT "$HOME/vcpkg"
set -gx REACT_EDITOR "WebStorm" 
neofetch

export REACT_EDITOR=WebStorm
# pnpm
set -gx PNPM_HOME "/Users/ahmedsaheed/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/ahmedsaheed/google-cloud-sdk/path.fish.inc' ]; . '/Users/ahmedsaheed/google-cloud-sdk/path.fish.inc'; end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
