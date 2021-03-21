call plug#begin('~/AppData/Local/nvim/plugged')           
  Plug 'bilalq/lite-dfm'
  Plug 'tpope/vim-commentary'
  Plug 'jiangmiao/auto-pairs'
  Plug 'easymotion/vim-easymotion'
  Plug 'tpope/vim-surround'
  Plug 'unblevable/quick-scope'
  Plug 'justinmk/vim-sneak'
  Plug 'reedes/vim-pencil'
  Plug 'NLKNguyen/papercolor-theme'
  Plug 'psliwka/vim-smoothie'
call plug#end()
let g:lite_dfm_left_offset = 1
let mapleader = ','
set background=light
colorscheme PaperColor
set hidden
set tabstop=2
set shiftwidth=2
set expandtab "табы пробеламим
set softtabstop=2 "2 пробела в табе
"set autoindent
" ignore text case when search
set ignorecase
set smartcase
" search when you type
set incsearch
syntax on "syntax higligth
set mousehide "hide coursore when type text
set mouse=a "mouse поддержка
set termencoding=utf-8 
set encoding=utf-8 " Кодировка файлов по умолчанию
" for system clipboard "+y copy to global 
" +p paste 
set clipboard+=unnamedplus
" insert blank line shift enter before current line enter 
nmap <CR> o<Esc>
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set langmap+=ЖжЭэХхЪъ;\:\;\"\'{[}]
nnoremap j gj 
nnoremap k gk
nnoremap о gj
nnoremap л gk
nnoremap ю .
nnoremap . /
set noshowmode
set noswapfile
set nobackup
set noerrorbells
augroup Textgroup
	autocmd!
	autocmd BufEnter * :SoftPencil
	autocmd BufEnter * :LiteDFMToggle
augroup END
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

map а f
map А F
map е t
map Е T
map ж ;
map б ,
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
let g:qs_accepted_chars = ['ф','и','с','в','у','а','п','р','ш','о','л','д','ь','т','щ','з','й','к','ы','е','г','м','ц','ч','я']
highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline
highlight Sneak guifg='#afff5f'gui=underline ctermfg=155 cterm=underline
highlight SneakScope guifg='#5fffff' gui=underline ctermfg=81 cterm=underline
hi! link Sneak Search
let g:sneak#label = 1   
" case insensitive sneak
let g:sneak#use_ic_scs = 1
" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1
let g:sneak#target_labels = 'фіваолджсчятиуцгнщйш'
" 2-character Sneak (default)
nmap і <Plug>Sneak_s
nmap І <Plug>Sneak_S
" visual-mode
xmap і <Plug>Sneak_s
xmap І <Plug>Sneak_S
" operator-pending-mode
omap і <Plug>Sneak_s
omap І <Plug>Sneak_S

" repeat motion
" gS
map пІ <Plug>Sneak_,
map пі <Plug>Sneak_;
" 1-character enhanced 'f'
" nmap а <Plug>Sneak_f
" nmap А <Plug>Sneak_F
" " visual-mode
" xmap а <Plug>Sneak_f
" xmap А <Plug>Sneak_F
" " operator-pending-mode
" omap а <Plug>Sneak_f
" omap А <Plug>Sneak_F

" " 1-character enhanced 't'
" nmap е <Plug>Sneak_t
" nmap Е <Plug>Sneak_T
" " visual-mode
" xmap е <Plug>Sneak_t
" xmap Е <Plug>Sneak_T
" " operator-pending-mode
" omap е <Plug>Sneak_t
" omap Е <Plug>Sneak_T

" label-mode
nmap і <Plug>SneakLabel_s
nmap І <Plug>SneakLabel_S

