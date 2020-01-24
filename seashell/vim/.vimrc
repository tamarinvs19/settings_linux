syntax on
set number
set relativenumber
set autoindent
set smartindent

set showtabline=1

" set textwidth=80

" Отключаем автоперенос
" set nowrap 

" Размер таба
set shiftwidth=4
" время после переключения режима
set ttimeoutlen=0

" :vsplit открывает окна справа
set splitright

" :split открывает окна снизу
set splitbelow

" Позволяет переходить на другю вкладку без сохранения
set hidden

" Игнорировать регистр при поиске. Намного удобнее вводить команды без учета регистра, например ctrlsf, вместо CtrlSF.
" Для поиска с учетом регистра, нужно поместить \C в любое место искомой строки
set ignorecase

" подсвечивать все совпадения при поиске
set hlsearch

" подсвечивать совпадение во время поиска на лету
set incsearch

" выделять строку, на которой находится курсор
set cursorline

" количество cтрок в всплывающем окне
set pumheight=5

" inoremap  ';           <Esc>

nnoremap  <F12>f       :exe ':silent !firefox %'<CR><C-l>

nmap fl :bn<cr>
nmap fh :bp<cr>
nmap fd :bn<cr>

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
let NERDTreeWinSize = 20
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" markdown preview
Plug 'JamshedVesuna/vim-markdown-preview'
let vim_markdown_preview_github=1
let vim_markdown_preview_toggle=1

" colorscheme
Plug 'morhetz/gruvbox'

" Вместо 'c-n' 'tab'
Plug 'ervandew/supertab'

" ctags for tagbar and tagbar-css  + install ctags (pacman/apt)
"Plug 'szw/vim-tags'

" tagbar
Plug 'majutsushi/tagbar'
" сортировать в том порядке, в котором тег появляется в коде, а не по имени
let g:tagbar_sort = 0

" поддержка css, less и scss для tagbar
"Plug 'mtscout6/vim-tagbar-css', {'for': ['css', 'less', 'scss']}

" подсветка парных скобок
Plug 'amdt/vim-niji'
let g:niji_dark_colours = 1
let g:niji_matching_filetypes = ['python', 'javascript', 'json', 'julia']
let g:niji_matching_characters = [['(', ')'],
                                     \ ['\[', '\]'],
                                     \ ['{', '}'],]

" восстановление последней позиции в файле
Plug 'farmergreg/vim-lastplace'
let g:lastplace_ignore = "gitcommit,gitrebase,svn,hgcommit"
let g:lastplace_open_folds = 0


" vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" FixedTaskList
Plug 'fisadev/FixedTaskList.vim'

" Documentation
Plug 'Keithbsmiley/investigate.vim'
nnoremap <F1> :call investigate#Investigate()<CR>

" Change lang to EN in Normal
Plug 'lyokha/vim-xkbswitch'
let g:XkbSwitchEnabled       = 1
let g:XkbSwitchLib           = '/usr/local/lib/libxkbswitch.so'
let g:XkbSwitchIMappings     = ['ru']
let g:XkbSwitchSkipIMappings = {'*' : ['[', ']', '{', '}', "'"]}

" перемещение текущей строки или выделенных строк вверх или вниз
" <C-k>   Move current line/selections up
" <C-j>   Move current line/selections down
Plug 'matze/vim-move'
let g:move_key_modifier = 'C'

" комментирование выделенных строк
" gcc - comment line
Plug 'tomtom/tcomment_vim'

"============WEB-programming==============

" HTML/XML audoclosing tags
Plug 'tpope/vim-surround', {'for': ['htmldjango','html', 'xml']}

" Удобный способ создавать обе части тега html
Plug 'tpope/vim-ragtag', {'for': ['htmldjango', 'html', 'xhtml', 'xml']}

" Plugun for fast creating tags
Plug 'mattn/emmet-vim',           { 'for': ['htmldjango', 'html','xhtml','css','sass','scss','less'] }
"au FileType html,css,sass,scss,less imap <expr><F4> emmet#expandAbbrIntelligent("\<tab>")
"au FileType html,css,sass,scss,less imap <expr>jk   emmet#expandAbbrIntelligent("\<tab>")
"au FileType html                    imap <C-\>      <CR><CR><Esc>ki<Tab>
let g:user_emmet_leader_key='<F4>'
"let g:user_emmet_install_global = 0
"autocmd FileType html,css EmmetInstall

" Подсветка парных тегов
Plug 'gregsexton/MatchTag'

" Подсветка синтаксиса
Plug 'othree/html5-syntax.vim',   { 'for': ['htmldjango', 'html']  }
Plug 'cakebaker/scss-syntax.vim', { 'for': 'scss'   }

Plug 'hail2u/vim-css3-syntax',    { 'for': ['htmldjango', 'html','css'] }
augroup VimCSS3Syntax
  autocmd!
  autocmd FileType css setlocal iskeyword+=-
augroup END

" Проверка синтаксиса
Plug 'scrooloose/syntastic', { 'for': ['ruby','htmldjango', 'html','css', 'javascript', 'haml'] }
let g:syntastic_auto_jump           = 1
let g:syntastic_error_symbol        = '✖'
let g:syntastic_warning_symbol      = '►'
let g:syntastic_javascript_checkers = ['jshint'   ] " sudo npm install -g jshint
let g:syntastic_html_checkers       = ['jshint'   ] " sudo npm install -g jshint
let g:syntastic_css_checkers        = ['csslint'  ] " sudo npm install -g csslint
let g:syntastic_css_csslint_args    = "--ignore=zero-units"


" ---JS---
" js синкаксис --> jQuery, underscore.js, Backbone.js, AngularJS, RequireJS, Sugar.js, Jasmine
Plug 'moll/vim-node', {'for': 'javascript'}
Plug 'pangloss/vim-javascript',      { 'for': 'javascript' }
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
let javascript_enable_domhtmlcss = 1
let g:html_indent_inctags        = "html,body,head,tbody"
let g:html_indent_script1        = "inc"
let g:html_indent_style1         = "inc"

Plug 'othree/javascript-libraries-syntax.vim', { 'for': 'javascript' }
let b:current_syntax       = 'javascript'
let g:used_javascript_libs = 'jquery'

"---HTML---
"Plug 'othree/html5.vim', {'for': ['htmldjango', 'html']}


"(-------------WEB-Programming------------)


" Отображение линий отступов
Plug 'Yggdroot/indentLine'
"let g:indentLine_enabled    = 0
let g:indentLine_char       = '¦'
let g:indentLine_color_term = 239
let g:indentLine_color_gui  = '#A4E57E'
" nmap <F9> :IndentLinesToggle<CR> " 

" autoformat -vim 
Plug 'Chiel92/vim-autoformat'
let g:formatprg_args_javascript = "-j -q -B -f -"
noremap  <F8>   :Autoformat<CR><CR>
vnoremap <C-F8> gq

" julia
Plug 'JuliaEditorSupport/julia-vim', {'for': 'julia'}
autocmd BufRead,BufNewFile *.jl :set filetype=julia

" java
" Plug 'vim-scripts/Vim-JDE', {'for': 'java'}

" tex
Plug 'lervag/vimtex', {'for': 'tex'}
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

let g:vimtex_compiler_latexmk = {
      \ 'options' : [
      \   '-verbose',
      \   '-file-line-error',
      \   '-synctex=1',
      \   '-interaction=nonstopmode',
      \   '-jobname="string"'
      \ ],
      \}

" run pdflatex
nnoremap <buffer> <F10> :exec '!pdflatex' shellescape(@%, 1)<cr>


"---> https://github.com/sirver/ultisnips 
" Track the engine.
Plug 'SirVer/ultisnips' 

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-tab>"
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
" <--- https://github.com/sirver/ultisnips

" inkscape
inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:vimtex.root.'/figures/"'<CR><CR>:w<CR>
nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:vimtex.root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

Plug 'KeitaNakamura/tex-conceal.vim'
    set conceallevel=1
    set concealcursor=c
    let g:tex_conceal='abdmg'

" spell
setlocal spell
set spelllang=en_us,ru_ru
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

map <F7> :setlocal spell<cr>
vmap <F7> <esc>:setlocal spell<cr>i
imap <F7> <esc>:setlocal spell<cr>i

" cpp syntax
Plug 'octol/vim-cpp-enhanced-highlight', {'for': 'cpp'} 
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

" --- Python ---"
" Запуск кода
nnoremap <buffer> <F9> :exec '!python3' shellescape(@%, 1)<cr>

" Python mode (docs, refactor, lints, highlighting, run and ipdb and more)
" Plug 'klen/python-mode', {'for': 'python'}
" Jedi-vim autocomplete plugin
Plug 'davidhalter/jedi-vim', {'for': 'python'}

" --- END Python ---


" Initialize plugin system
call plug#end()
" end plugins

colorscheme gruvbox
set t_Co=256
set background=dark
let g:gruvbox_italicize_strings = 1

let g:indent_guides_auto_colors = 0
let g:indent_guides_enable_on_vim_startup = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" настройки Vim-Airline
let g:airline_theme='raven_green'"'murmur'"'bubblegum'"'luna'
let g:airline_left_sep = ''"'▶'
let g:airline_fugitive_prefix = '∲'
let g:airline_right_sep = ''"'◀'
" использовать пропатченные шрифты
let g:airline_powerline_fonts = 1
" включить управление табами
let g:airline#extensions#tabline#enabled = 1
" всегда показывать tabline
let g:airline#extensions#tabline#tab_min_count = 2
"если файл с уникальным именем - показывается только имя, если встречается файл с таким же именем, отображается также и директория
let g:airline#extensions#tabline#formatter = 'unique_tail'
" скрыть буферы
let g:airline#extensions#tabline#show_buffers = 1
" показывать номер вкладки
let g:airline#extensions#tabline#show_tab_nr = 1

map <F3> :NERDTreeToggle<CR>
map <F5> :TagbarToggle<CR>

"=====================================================
"" Python-mode settings
"=====================================================
"" отключаем автокомплит по коду (у нас вместо него используется jedi-vim)
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

" Отключаем надоедливое окно, отображающее ошибки и предупреждения
let g:pymode_lint_cwindow = 0

" документация
let g:pymode_doc = 0
let g:pymode_doc_key = 'F1'

" проверка кода
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_indent = 1

" провека кода после сохранения
let g:pymode_lint_write = 1

" поддержка virtualenv
let g:pymode_virtualenv = 1

" установка breakpoints
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" подстветка синтаксиса
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

let g:pymode_options_max_line_length = 79
let g:pymode_python = 'python3'
" Disable choose first function/method at autocomplete
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#popup_on_dot = 0
let g:jedi#force_py_version = 3
let g:jedi#popup_select_first = 0

" pyrope
let g:pymode_rope_goto_definition_bind = '<F4>'


" замена слова в <> без записи в буфер Х
nnoremap <silent> S :set opfunc=PasteReplace<CR>g@
function! PasteReplace(type, ...)
    if a:0
        silent exe "normal! `<" . a:type . "`>p"
    elseif a:type == 'line'
        silent exe "normal! '[V']p"
    elseif a:type == 'block'
        silent exe "normal! `[\<C-V>`]p"
    else
        silent exe "normal! `[v`]p"
    endif
endfunction
nmap SS S$

" Настройка навигации по автокомплиту deocomplite
" imap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" if has('conceal')
"   set conceallevel=2 concealcursor=c
" endif


" my commands
command W :w
command Wq :wq
command WQ :wq
command Q :q
