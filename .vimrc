" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'crusoexia/vim-monokai'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug '907th/vim-auto-save'
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'majutsushi/tagbar'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" basic
syntax on
set tabstop=4
set shiftwidth=4
set number
set smartindent
set mouse=a

inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {<CR>}<ESC>O

"NERDTree
autocmd vimenter * NERDTree
let NERDTreeShowBookmarks=1
nnoremap <F3> :NERDTreeToggle<CR> " F3开关
"autosave
let g:auto_save = 1  " enable AutoSave on Vim startup
"colorscheme
colo monokai
"airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline_theme = 'desertink'
"indentLine
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level           = 2  " 从第二层开始可视化显示缩进
"tagbar
"brew install ctags-exuberant
"brew install gotags
let g:Tlist_Ctags_Cmd='/usr/local/Cellar/ctags/5.8_2/bin/ctags'
let g:tagbar_autofocus = 1
autocmd VimEnter * nested TagbarOpen
nmap <F9> :TagbarToggle<CR>
"youcompleteme
let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
nnoremap <SPACE> :YcmCompleter GoTo<CR> "代码跳转
nnoremap <F4> :YcmDiags "查看报错
