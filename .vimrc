let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin()
Plug 'drewtempelmeyer/palenight.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/fzf.vim'
Plug 'dracula/vim', {'name':'dracula'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'universal-ctags/ctags'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
Plug 'mhinz/vim-startify'
" Plug 'github/copilot.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'arcticicestudio/nord-vim'
Plug 'https://github.com/preservim/nerdtree.git'
Plug 'tikhomirov/vim-glsl'
call plug#end()

" Theme
" colorscheme palenight
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
let g:airline_theme='base16_gruvbox_dark_hard'

let mapleader = ","

" Keys for NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
if (has("nvim"))
      let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

" air-line
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
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" Disable C-z from job-controlling neovim
nnoremap <c-z> <nop>

" exit terminal mode
tnoremap <Esc> <C-\><C-n>

" navigate splits
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

" enable syntax folding
set foldmethod=syntax
" set foldlevelstart=99 " but dont automatically fold files when opening them

" enable line numbers
set number

" ignore case when searching with /s, to unset: set noic
set ignorecase

" coc things
set updatetime=300
set cmdheight=2
set nobackup
set nowritebackup
set shortmess+=c

inoremap <silent><expr> <TAB>
                  \ pumvisible() ? "\<C-n>" :
                  \ <SID>check_back_space() ? "\<TAB>" :
                  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                  \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
      if (index(['vim','help'], &filetype) >= 0)
            execute 'h '.expand('<cword>')
      elseif (coc#rpc#ready())
            call CocActionAsync('doHover')
      else
            execute '!' . &keywordprg . " " . expand('<cword>')
      endif
endfunction

" Remap for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

"""""""""""""""""""""""""""""""""""""""""""
" smaller things "
"""""""""""""""""""""""""""""""""""""""""""
set mouse=a
syntax on
set wrap
set encoding=utf-8
set autoindent
set smartindent
set expandtab
set relativenumber
" fzf
" source /usr/share/doc/fzf/examples/fzf.vim

set backup
set writebackup
set backupdir=~/.vim/backup

" Don't automatically comment next line
au BufEnter * set fo-=c fo-=r fo-=o

