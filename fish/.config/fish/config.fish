starship init fish | source # prompt
atuin init fish --disable-up-arrow | source # smarter history
zoxide init fish --cmd cd | source # smarter cd
set -x PNPM_HOME $HOME/.local/share/pnpm; fish_add_path $PNPM_HOME
set -x RIPGREP_CONFIG_PATH $HOME/.config/ripgrep/config

# Path
fish_add_path $HOME/.local/bin

# Env Vars
set -x EDITOR (which nvim)
set -x VISUAL (which neovide)
set -x SUDO_EDITOR $EDITOR
set -x SSH_AUTH_SOCK "$HOME/.1password/agent.sock"

# Keybinds
fish_vi_key_bindings
set fish_cursor_default     block      blink
set fish_cursor_insert      line       blink
set fish_cursor_replace     underscore blink
set fish_cursor_replace_one underscore blink
set fish_cursor_visual      block

# Aliases
alias mv "mv -iv"
alias cp "cp -riv"
alias mkdir "mkdir -vp"
alias ls "eza --all --icons --group-directories-first"
alias tree "ls --tree --ignore-glob '.git|node_modules'"
alias edit $EDITOR
alias visual $VISUAL

# Abbreviations
abbr --add --set-cursor c "calc '%'"
abbr --add e "edit"
abbr --add v "visual"
abbr --add se "sudoedit"
abbr --add ll "ls -l"
abbr --add qq "exit"

# Just
abbr --add j "just"
abbr --add jt "just test"
abbr --add jb "just build"
abbr --add js "just start"
abbr --add jd "just dev"
abbr --add jf "just format"
abbr --add jl "just lint"
abbr --add ji "just install"

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
