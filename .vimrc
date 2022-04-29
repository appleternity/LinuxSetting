set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'mg979/vim-visual-multi'
Plugin 'derekwyatt/vim-scala'
Plugin 'patstockwell/vim-monokai-tasty'
Plugin 'elzr/vim-json'
Plugin 'scrooloose/nerdtree'
Plugin 'rebelot/kanagawa.nvim'
Plugin 'Siddarth-Raghuvanshi/SimpylFold'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim'
Plugin 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
set t_Co=256
"colorscheme peachpuff
colorscheme monokai
"colorscheme vim-monokai-tasty

set nu
set cursorline

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab

set ai
set nowrap
set laststatus=2
set noshowmode

set hlsearch                                                                                                                                                                                  
"hi Search ctermbg=LightYellow                                                                                                                                                                 
"hi Search ctermfg=Black 

hi Comment ctermfg=033

filetype plugin on

" Rename tabs to show tab number.
" (Based on http://stackoverflow.com/questions/5927952/whats-implementation-of-vims-default-tabline-function)
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif

" 'tmhedberg/SimpylFold' setting
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_import = 0
let g:SimpylFold_fold_docstring = 0

" auto-complete
let g:deoplete#enable_at_startup = 1

" folding mapping to F9
inoremap <F9> <C-O>za
nnoremap <F9> za
nnoremap <C-F> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" Go to last active tab
au TabLeave * let g:lasttab = tabpagenr()
nnoremap <silent> <C-Up> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <C-Up> :exe "tabn ".g:lasttab<cr>
nnoremap <silent> <C-Down> :exe "tabn ".g:lasttab<cr>
vnoremap <silent> <C-Down> :exe "tabn ".g:lasttab<cr>
