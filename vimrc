map <leader>t :FuzzyFinderTextMate<CR>

" Map control space to auto-complete
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

set number
set autoindent
set directory=/tmp " Don't clutter my dirs up with swp and tmp files
set shiftround
set shiftwidth=2
set smarttab


" Set up syntax highlighting for Pig scripts
augroup filetypedetect 
  au BufNewFile,BufRead *.pig set filetype=pig syntax=pig 
augroup END 

" Set up syntax highlighting for Markdown files
augroup mkd

  autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:&gt;

augroup END

