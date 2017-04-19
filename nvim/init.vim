" ======= vim-plugin =======
call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'easymotion/vim-easymotion'
Plug 'elixir-lang/vim-elixir'
Plug 'joukevandermaas/vim-ember-hbs'
Plug 'kien/ctrlp.vim'
Plug 'mxw/vim-jsx'
Plug 'ntpeters/vim-better-whitespace'
Plug 'pangloss/vim-javascript'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/nerdtree'
Plug 'sonjapeterson/1989.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" ======= settings =======
colorscheme 1989

:set number
:set relativenumber

:set tabstop=2
:set shiftwidth=2
:set expandtab

autocmd BufEnter * EnableStripWhitespaceOnSave

:map <F7> :setlocal spell! spelllang=en_us<CR>

map <silent> <C-n> :NERDTreeToggle<CR>

