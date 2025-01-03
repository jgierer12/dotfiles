# Cleanup
functions --erase fastfetch # remove Bluefin fastfetch override

# Third Party
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
starship init fish | source # prompt
atuin init fish --disable-up-arrow | source # smarter history
zoxide init fish --cmd cd | source # smarter cd
set -x PNPM_HOME $HOME/.local/share/pnpm; fish_add_path $PNPM_HOME
set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgrep/config

# Path
fish_add_path $HOME/.local/bin

# Env Vars
set -x EDITOR (which nvim)
set -x SUDO_EDITOR $EDITOR

# Keybinds
fish_vi_key_bindings

# Aliases
alias mv "mv -iv"
alias cp "cp -riv"
alias mkdir "mkdir -vp"
alias ls "eza --all --icons --group-directories-first"
alias tree "ls --tree --ignore-glob '.git|node_modules'"
alias edit $EDITOR
alias dots "stow . -d $HOME/dotfiles -t $HOME"
alias bat "bat-themed"
alias delta "delta-themed"

if test "$TERM" = "xterm-kitty"
	alias ssh "kitten ssh"
end

# Abbreviations
abbr --add --set-cursor c "calc '%'"
abbr --add e "edit"
abbr --add se "sudoedit"
abbr --add ll "ls -l"
abbr --add qq "exit"

# Git
abbr --add lg "lazygit"
abbr --add --set-cursor gc "git commit -m '%'"
abbr --add --set-cursor gca "git commit -am '%'"
abbr --add ga "git add"
abbr --add gaa "git add ."
abbr --add gp "git pull"
abbr --add gP "git push"

# Greeting
function fish_greeting
	fastfetch
end

