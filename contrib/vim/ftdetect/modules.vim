
au BufNewFile,BufRead *
    \ if (getline(1) =~? "^#%Module") |
    \     set filetype=modules |
    \ endif

