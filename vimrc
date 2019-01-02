"Begin Plugs!
call plug#begin ('~/.vim/plugged')
	Plug 'scrooloose/nerdtree'
	Plug 'scrooloose/syntastic' " follow git instructions/manual <--------------[YOU STILL NEED TO CONFIGURE THIS ONE]
	Plug 'kiddos/malokai.vim'
	Plug 'vim-airline/vim-airline' "depends 'fonts-powerline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'bling/vim-bufferline'
	Plug 'majutsushi/tagbar' "depends 'ctags'
	Plug 'myusuf3/numbers.vim'
	Plug 'valloric/youcompleteme' "depends 'build-essential' 'cmake' 'python3-dev' && follow git instructions/manual
	Plug 'yggdroot/indentline' "<------------- [CURRENTLY NOT WORKING]
	Plug 'kien/ctrlp.vim'
	Plug 'sjl/gundo.vim'
call plug#end()

"SHORTCUTS
map <C-o> :NERDTreeToggle<CR> "NerdTree
map <C-K> :bnext<CR> "Next buffer
map <C-J> :bprev<CR> "Prev buffer
nmap <F8> :TagbarToggle<CR> "Tagbar
nnoremap <F3> :NumbersToggle<CR> "Indentline
nnoremap <F4> :NumbersOnOff<CR> "Indentline
map <F1> :mksession<CR> "Save session
map <C-U> :GundoToggle<CR> "Gundo Toggle (CTRL-Z undo list)

"Syntastic stuff
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"Mouse support
set mouse=a

"Syntax
syntax on

"Set colorscheme
colorscheme molokai

"Airline statusbar stuff
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

  " airline symbols
  "let g:airline_left_sep = ''
  "let g:airline_left_alt_sep = ''
  "let g:airline_right_sep = ''
  "let g:airline_right_alt_sep = ''
  "let g:airline_symbols.branch = ''
  "let g:airline_symbols.readonly = ''
  "let g:airline_symbols.linenr = ''

 "Close vim if NERDTree is only buffer left open
 autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"indentline stuff
set conceallevel =1
let g:indentLine_conceallevel = 1
let g:indentLine_enabled = 0

"Gundo fix for python 2.4 requirement
if has('python3')
    let g:gundo_prefer_python3 = 1
endif
