" Don't need to be compatible with vi
set nocompatible

" Use xterm. This allows Ctrl + ... and Alt + ... shortcuts to work correctly.
set term=xterm


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make netrw look better
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default to tree view
let g:netrw_liststyle = 3
" Remove banner
let g:netrw_banner = 0
" Ignore certain files (comma-separated)
let g:netrw_list_hide = ".*\.sw[po]$,__pycache__,.*\.egg-info,\.pytest_cache"
" Set size of netrw pane on left when using :Lexplore
let g:netrw_winsize = 30


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic editor settings for code
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme desert
syntax on
" Enable line numbers
set number
" Set tab width as 2 spaces
set tabstop=2
" Expand tabs into spaces
set expandtab
" Width in spaces for autoindent
set shiftwidth=2
" Show cursor position
set ruler
" Use UTF-8 with no BOM
set encoding=utf-8 nobomb
" Highlight searches
set hls
" Configure horizontal/vertical split behavior
set splitbelow
set splitright


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key remappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Press F5 to remove all trailing spaces
noremap <F5> :%s/\s\+$//e

" Split navigations (Ctrl + hjkl)
noremap <C-H> <C-W><C-H>
noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>

" Switch tabs with Crtl + left/right arrow key
noremap <C-Left> :tabprevious<CR>
noremap <C-Right> :tabnext<CR>
" Re-order tabs with Alt + left/right arrow key
noremap <silent> <A-Left> :tabm -1<CR>
noremap <silent> <A-Right> :tabm +1<CR>

