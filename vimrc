nnoremap <space> za
set t_Co=256
colorscheme atom
let g:indentLine_enabled = 1
map <C-i> :IndentLinesToggle<cr>
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
map <C-n> :NERDTreeToggle<cr>
set encoding=utf8
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#formatter = 'default'
nnoremap <C-Right> :bn<CR>
nnoremap <C-Left> :bp<CR>
map <C-x> :bp \|bd #<cr>
let g:ctrlp_custom_ignore = ' v[ /] .(swp|zip)$'
let g:ctrlp_user_command = [' .git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_show_hidden = 1
filetype plugin on
let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
map cc <Plug>NERDCommenterInvert
let g:ale_linters = {'python': ['flake8', 'pylint'], 'javascript': ['eslint']}
let g:ale_completion_enabled = 0
set updatetime=200
let g:LanguageClient_serverCommands = {
    \ 'sql': ['sql-language-server', 'up', '--method', 'stdio'],
    \ }

nmap <F3> <Plug>(ale_previous_wrap)
nmap <F4> <Plug>(ale_next_wrap)

inoremap <expr> <TAB> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <Tab> <Space><Space><Space><Space>
hi CocListLine ctermfg=10 ctermbg=234
hi Pmenu ctermfg=10 ctermbg=234
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
nnoremap j jzz
nnoremap k kzz
nnoremap <Down> jzz
nnoremap <Up> kzz
set ttimeout
set ttimeoutlen=1
set ttyfast
let &t_SI = "\<esc>[5 q"
let &t_SR = "\<esc>[5 q"
let &t_EI = "\<esc>[2 q"
syntax on
set autoindent
set smartindent
set history=10000
set number

" set cursorline
autocmd InsertEnter * setlocal nocursorline
autocmd InsertLeave * setlocal cursorline

set mouse=a
set clipboard=unnamedplus
set tabstop=4 softtabstop=4 expandtab shiftwidth=4
set foldmethod=syntax
set foldlevel=99
set signcolumn=number
highlight clear SignColumn
source ~/.vim/coc.nvimrc
nnoremap <F2> :%s///gc<Left><Left><Left><Left>
nnoremap <F5> :ALEToggle<CR>

" Defina um atraso para a execução do comando
function! SetupSignColumn()
    " Defina o comando que você deseja executar
    set signcolumn=number
endfunction

function! SetupAleToggle()
    ALEToggle
endfunction

" Chame a função após um atraso de 1 segundo
call timer_start(200, {-> SetupSignColumn()})
call timer_start(400, {-> SetupAleToggle()})
