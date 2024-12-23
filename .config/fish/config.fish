# Cleanup
functions --erase fastfetch # remove Bluefin fastfetch override

# Path
fish_add_path $HOME/.local/bin

# Env Vars
set -x EDITOR (which nvim)
set -x SUDO_EDITOR $EDITOR

# Aliases
alias ls "eza -a"
alias tree "eza -aT"
alias e $EDITOR
alias dots "stow . -d $HOME/dotfiles -t $HOME"

# Greeting
function fish_greeting
	fastfetch
end

# Third Party
starship init fish | source # prompt
atuin init fish | source # smarter history
zoxide init fish --cmd cd | source # smarter cd

# pnpm
set -x PNPM_HOME $HOME/.local/share/pnpm
fish_add_path $PNPM_HOME

