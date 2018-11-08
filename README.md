# cheatsheets

dotfiles, configs, reference sheets, plugins, links, etc.

* [https://vimawesome.com/](https://vimawesome.com/)
* [Download Source Code Pro font](https://github.com/adobe-fonts/source-code-pro/releases/tag/2.030R-ro%2F1.050R-it)
* [ConEmu](https://github.com/Maximus5/ConEmu/releases)
* [Install vim](https://www.vim.org/download.php)

* [Install vim-plug](https://github.com/junegunn/vim-plug)

`C:\> md C:\vim\vimfiles\autoload`

Open Powershell:

```
PS C:\WINDOWS\system32> $uri = 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
PS C:\WINDOWS\system32> (New-Object Net.WebClient).DownloadFile($uri,$ExecutionContext.SessionState.Path.GetUnresolvedPr
oviderPathFromPSPath("C:\vim\vimfiles\autoload\plug.vim"))
```

Install promptline plugin with airline installed:

    In vim :PromptlineSnapshot ~/.promptline.sh airline
    In bash/zsh source ~/.promptline.sh

* [powerline fonts](https://github.com/powerline/fonts)

Install powerline fonts on Bash:

`sudo apt-get install fonts-powerline`

Install powerline fonts on Windows:

```
in powershell:
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts
.\install.ps1
```

apt-get install xsel

* NERD tree

`:NERDTree`

:TabooRename [filename]

https://github.com/swaroopch/byte-of-vim/blob/master/plugins.md

https://github.com/danilo-augusto/vim-afterglow

* [vim afterglow colorscheme](https://github.com/danilo-augusto/vim-afterglow)
* [Install YCM manually](https://github.com/junegunn/vim-plug/wiki/faq#installing-youcompleteme-manually)
* [Learning the vi and vim editors](ftp://ftp.borg.moe/yarr/Gentoomen%20Library/Operating%20Systems/Unix/Learning%20the%20vi%20and%20Vim%20Editors,%207e.pdf)
* [vimrc examples](https://github.com/swaroopch/byte-of-vim/blob/master/plugins.md)
* [Vim Cheatsheet](https://vim.rtorr.com/)
* [Installing FontForge](http://designwithfontforge.com/en-US/Installing_Fontforge.html)
* [Install FontForge manually](https://github.com/fontforge/fontforge/blob/master/INSTALL-git.md)
* [FontForge (Windows dl](https://fontforge.github.io/en-US/downloads/windows-dl/)
* [Scoop](https://scoop.sh/)
* [wsltty](https://github.com/mintty/wsltty)
