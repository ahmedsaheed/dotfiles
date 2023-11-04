set -gx PATH /usr/local/bin $PATH
source ~/.config/fish/alias.fish
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
set -gx VCPKG_ROOT "$HOME/vcpkg"
