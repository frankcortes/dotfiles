# Dotfiles

Yep! This is my own dotfiles collection. In contrast to other extremely-detailed dotfiles collections like [this](https://github.com/mathiasbynens/dotfiles) and [this](https://github.com/paulmillr/dotfiles), this repo is an attempt to define the minimal configuration that I need in my computer to be comfortable. For now:

+ .vimrc
+ .yarnrc
+ .Brewfile, install initial things
+ .gitconfig
+ .vscode (Visual Code)
+ Some initial scripts to bootstrap the configuration

## Scripts

This folder contains all the scripts which are needed to use my personal configuration.

### setup folder

These scripts will be executed after [Strap](https://github.com/MikeMcQuaid/strap) does. They all are [idempotent](https://en.wikipedia.org/wiki/Idempotence) scripts, and can be executed at the same time.
+ **files.sh**: generate symbolic links for the home repository.
+ **folders.sh**: create extra folders that I use.
+ **hosts.sh**: generate and set hosts file, with a blacklist of malware/adware websites.
+ **xos.sh**: add extra custom config for my XOS. Maybe, at some point, I will have to do something similar for a linux system.

## TO DO List

+ Keyboard layout config and shortcut to change between them.
+ .npmrc, ~.yarnrc~
+ Watch [settings sync](https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync) in visual studio code
+ oh-my-zsh bootstrap & config
+ Add my own custom alias and a init script to set the vscode config where it should be located, for instance.
+ Create two profiles, one for work and another one for my personal computer.

## Use homebrew-brewfile to bootstrap a new machine
Easy bootstrapping of a new development machine via strap

### Steps
1. Fork this repo and customize your own Brewfile. Your Brewfile can be use `cast`/`brew` commands, even you can use `mas` commands (from the App Store) adding `brew 'mas'`.
1. Use Strap: https://github.com/MikeMcQuaid/strap
1. Execute strap, so you will have all the Brewfile's apps.
1. Install oh-my-zsh using curl: https://github.com/robbyrussell/oh-my-zsh
1. Update iterm/IDE with your own preferences. Maybe you need some extra package, use homebrew/cask/tap/mas if it's possible.
1. ???
1. Profit!!!

### Some Brewfile literature
+ [Strap](https://github.com/MikeMcQuaid/strap)
+ [Searchbrew](http://searchbrew.com/), search brew formulas
+ [Brew Formulas](http://brewformulas.org/), another search engine

## License
[MIT](license.md)
