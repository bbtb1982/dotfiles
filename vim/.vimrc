execute pathogen#infect()
syntax on
syntax enable
filetype plugin indent on

" ========= COLOR-SCHEME =========
" ~/.vim/bundle

" colorscheme blues
colorscheme 1989
highlight ExtraWhitespace ctermbg=238
execute pathogen#infect()
syntax on
syntax enable
filetype plugin indent on

" ========= SETTINGS =========

hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>

set exrc
set secure
set background=dark
set backupdir=~/.vim/backup//
set directory=~/.vim/swp//
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber
set number
set showcmd

set cursorline   "highlight current line
set cursorcolumn "highlight current column

" ========= SYNTASTIC =========
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
set spell spelllang=en_us
set spelllang=en
set spellfile=~/.vim/spell/en.utf-8.add

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_error_symbol = '❌'
let g:syntastic_style_error_symbol = '⁉️'
let g:syntastic_warning_symbol = '⚠️'
let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" vim-airline
let g:airline_powerline_fonts = 1

"key-mapping

"ctrl-p
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|_site|bower_components|node_modules)$',
  \ }

" COMMANDS
"remove tailing whitespaces on save
autocmd BufWritePre * StripWhitespace

" ========= MAPPINGS  =========
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>c ddO
nnoremap <leader>sv :source $MYVIMRC<cr>
:map <F7> :setlocal spell! spelllang=en_us<CR>

" COMMANDS
"remove tailing whitespaces on save
autocmd BufWritePre * StripWhitespace
