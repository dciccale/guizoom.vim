# guizoom.vim

With guizoom plugin you can easily increase or decrease gui font size.

## Installation

### Pathogen
1. cd ~/.vim/bundle
2. git clone git://github.com/dciccale/guizoom.vim.git
3. for updating the plugin run:

```bash
$ cd ~/.vim/bundle/guizoom.vim
$ git pull
```

### Vundle
1. in your vimrc: `Bundle 'dciccale/guizoom.vim'`
2. run `:BundleInstall` in vim
3. for updating the plugin run `:BundleUpdate` in vim

For normal installation (not recommended) run `:h guizoom-normal-install` in vim.

## Usage

- `:ZoomIn` to increase font size
- `:ZoomOut` to decrease font size
- `:ZoomReset` to reset font size to default (keeping original windows size)

### Mappings

I recommend these mappings for using the plugin:
```vim
nmap <Leader>+ :ZoomIn<CR>
nmap <Leader>- :ZoomOut<CR>
nmap <Leader>= :ZoomReset<CR>
```

## License
See [LICENSE.txt](https://raw.github.com/dciccale/placeholder-enhanced/master/LICENSE.txt)
