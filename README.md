- Install git prompt

```
if [ ! -d ~/bin ]; then
  mkdir ~/bin;
fi
curl -sSo ~/bin/git-prompt.sh https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
```

- Download and install Source Code Pro with Powerline from

```
git clone https://github.com/Lokaltog/powerline-fonts.git
cp powerline-fonts/SourceCodePro/*.otf ~/Library/Fonts
```

- Downnload and install [iTerm2](http://www.iterm2.com/#/section/home)

- Download Base16 iTerm profiles, open iTerm2, and install base16-ocean.dark (not the 256 version) profile. Set the font to Source Code Pro with Powerline 14pt.

```
git clone https://github.com/chriskempson/base16-iterm2
```

- Install `bash_profile`

```
cp bash_profile ~/.bash_profile
```

- Download and install [MacVim](https://github.com/b4winckler/macvim/releases)

- Install vim config

```
cp vimrc  ~/.vimrc
git clone -q https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall! +qall
```

- Config git

```
cp gitconfig ~/.gitconfig
```

