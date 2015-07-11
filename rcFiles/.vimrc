set autoindent
set shiftwidth=4
set softtabstop=4


set number

set cursorline

set cursorcolumn

set ffs=unix


set grepprg=grep\ -nH\ $*

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
