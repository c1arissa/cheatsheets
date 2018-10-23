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

`sudo apt-get install fonts-powerline`

apt-get install xsel

* NERD tree

`:NERDtree`

:TabooRename [filename]

https://github.com/swaroopch/byte-of-vim/blob/master/plugins.md
