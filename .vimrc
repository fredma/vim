set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set hlsearch
set pastetoggle=<F2>
set showmode

" Gtags cscope
" set csprg=/usr/bin/gtags-cscope
source ~/cscope.vim

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on

" 'quote' a word
nnoremap qw :silent! normal mpea'<Esc>bi'<Esc>`pl
" double "quote" a word
nnoremap qd :silent! normal mpea"<Esc>bi"<Esc>`pl
" remove quotes from a word
nnoremap wq :silent! normal mpeld bhd `ph<CR>
