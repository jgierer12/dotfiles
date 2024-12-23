# dotfiles

## Installation

1. Download or clone the repo into your home directory

```
git clone git@github.com:jgierer12/dotfiles.git $HOME/dotfiles
cd $HOME/dotfiles
```

2. Install brew and pnpm packages

⚠️  Make sure you understand what these scripts are doing before running them!

```
$HOME/dotfiles/.local/bin/setup-brew
$HOME/dotfiles/.local/bin/setup-pnpm
```

3. Use stow to symlink everything from the dotfiles directory into the relevant places

```
stow . -d $HOME/dotfiles -t $HOME
```

4. Change default shell to fish and restart shell

```
sudo usermod --shell $(command -v fish) $USER
exit
```

5. To add your git credentials, copy the example config

```
cp ~/.gitconfig{.example,}
```

then edit `~/.gitconfig` and add your own credentials.
The rest of the config is stored in `~/.config/git/config`.

