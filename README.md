# Stefan's dotfiles

## Installation

* Separate imports method

1. create a .dotfiles folder, which is used to track dotfiles
```
git init --bare $HOME/.dotfiles
```

2. create an alias dotfiles so we don't need to type it all over again
```
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. set git status to hide untracked files
```
dotfiles config --local status.showUntrackedFiles no
```

4. add the alias to .bashrc so we can use it later
```
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
```

* gitignore method
..not documented (yet)

## Usage

### Separate imports method
```shell
dotfiles status
dotfiles add .vimrc
dotfiles commit -m "Add vimrc"
dotfiles add .bashrc
dotfiles commit -m "Add bashrc"
dotfiles push
```
[comment]: # (if the active branch is not main)
```shell
dotfiles branch -m main
```
[comment]: # (Link to a remote repo)
```shell
dotfiles remote add origin
```
[comment]: # (Push to a remote repo)
```shell
dotfiles push origin main
```
### Gitignore method
[comment]: # (Not documented, yet)

