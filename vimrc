call pathogen#runtime_append_all_bundles() 

" Map control space to auto-complete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Map Tab and Shift Tab to indenting and outdenting highlighted code
vmap <Tab> >gv
vmap <S-Tab> <gv

set number
set autoindent
set directory=/tmp " Don't clutter my dirs up with swp and tmp files
set shiftround
set expandtab
set shiftwidth=2
set softtabstop=2
set smarttab

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

" Show whitespace like TextMate
set list
set listchars=tab:▸\ ,eol:¬

" Set up syntax highlighting for Pig scripts
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
  au BufNewFile,BufRead *.json set filetype=json syntax=json
augroup END 

" Set up syntax highlighting for Markdown files
augroup mkd

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.mk  set ai formatoptions=tcroqn2 comments=n:&gt;
  autocmd BufRead *.mdown  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END
