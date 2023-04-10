# Stefan's dotfiles

## Installation


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
```shell
#if the active branch is not main)
dotfiles branch -m main

#Link to a remote repo
dotfiles remote add origin

# Push to a remote repo
dotfiles push origin main
```

### Gitignore method
1. Use gitignore; ignore everything but the selected directories
```shell
# Ignore everything in repository root 
/*

# Files to not ignore
!/.gitignore
!/some_other_files

# Folder to not ignore
!/.config/
```

### Restore on a new build
1. clone your github repository
```
git clone --bare https://github.com/stefblg/dotfiles.git $HOME/.dotfiles
```

2. define the alias in the current shell scope
```shell
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

3. checkout the actual content from the git repository to your $HOME
```shell
dotfiles checkout
```
