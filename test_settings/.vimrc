syntax on
set number
set relativenumber
" set autoindent
set smartindent
set expandtab

" set nowrap " автоперенос
set ttimeoutlen=0
set splitright
set splitbelow
set hidden " Позволяет переходить на другую вкладку без сохранения
set ignorecase " Игнорировать регистр при поиске. Для поиска с учетом регистра, нужно поместить \C в любое место искомой строки
set hlsearch " подсвечивать все совпадения при поиске
set incsearch " подсвечивать совпадение во время поиска на лету
set cursorline " выделять строку, на которой находится курсор
set pumheight=5 " количество строк в всплывающем окне
set scrolloff=5 " количество строк вокруг курсора при прокрутке

" отступы
autocmd FileType cpp setlocal ts=4 sts=4 sw=4 et
autocmd FileType c setlocal ts=4 sts=4 sw=4 et

" copy to buffer
vmap <F2> "+y

nmap fl :bn<cr>
nmap fh :bp<cr>

" toggle paste mode
nmap fp :set paste<cr>
nmap fpp :set nopaste<cr>


" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeWinSize = 20
map <F3> :NERDTreeToggle<CR>

Plug 'altercation/vim-colors-solarized'

" Вместо 'c-n' 'tab'
Plug 'ervandew/supertab'

Plug 'ryanoasis/vim-devicons'

Plug 'tomtom/tcomment_vim'

Plug 'szw/vim-tags'
Plug 'majutsushi/tagbar'
let g:tagbar_sort = 0
map <F5> :TagbarToggle<CR>

Plug 'luochen1990/rainbow'
let g:rainbow_active = 1
let g:rainbow_conf = {
\    'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\    'ctermfgs': ['red', 'yellow', 'darkgreen', 'darkcyan', 'blue', 'darkmagenta'],
\    'guis': [''],
\    'cterms': [''],
\    'operators': '_,_',
\    'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\    'separately': {
\        '*': {
\            'guifgs': ['yellow', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\        },
\    }
\}

" восстановление последней позиции в файле
Plug 'farmergreg/vim-lastplace'
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_open_folds = 0

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'
let g:airline_solarized_bg = 'dark'
let g:airline_left_sep = ''
let g:airline_fugitive_prefix = '∲'
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = '0'
let g:airline#extensions#xkblayout#enabled = '0'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tab_nr = 1

" Отображение линий отступов
Plug 'Yggdroot/indentLine'
let g:indentLine_char       = '¦'
let g:indentLine_color_term = 239
let g:indentLine_color_gui  = '#A4E57E'

Plug 'Chiel92/vim-autoformat'
let g:formatprg_args_javascript = "-j -q -B -f -"
noremap  <F8>   :Autoformat<CR><CR>
vnoremap <C-F8> gq

" Plug 'vim-syntastic/syntastic'
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
"
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

call plug#end()
" end plugins

colorscheme solarized
set background=dark
set t_Co=256

autocmd FileType cpp set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

set includeexpr=substitute(v:fname,'\\.','/','g')
