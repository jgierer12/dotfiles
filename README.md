# dotfiles

## Installation

1. Download or clone the repo into your home directory

```
git clone https://github.com/jgierer12/dotfiles.git $HOME/dotfiles
```

2. Install brew packages

⚠️ Make sure you understand what this script is doing before running it!

```
$HOME/dotfiles/.local/bin/setup-brew
```

3. Use stow to symlink everything from the dotfiles directory into the relevant places

```
stow . -d $HOME/dotfiles -t $HOME
```

4. Change default shell to fish and restart shell

```
sudo usermod --shell $(command -v fish) $USER
```

5. Install pnpm packages

⚠️ Make sure you understand what this script is doing before running it!

```
pnpm-import
```

6. To add your git credentials, copy the example config

```
cp ~/.gitconfig{.example,} --dereference
```

then edit `~/.gitconfig` and add your own credentials.
The rest of the config is stored in `~/.config/git/config`.
