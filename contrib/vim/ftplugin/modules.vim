
if exists("b:did_modules_ftplugin")
  finish
endif
let b:did_modules_ftplugin = 1

set syntax=modules

" from tcl ftplugin: (Robert L Hicks <sigzero@gmail.com> - 2009-05-01)
let s:cpo_save = &cpo
set cpo-=C

setlocal comments=:#
setlocal commentstring=#%s
setlocal formatoptions+=croql

" Undo the stuff we changed.
let b:undo_ftplugin = "setlocal fo< com< cms< inc< inex< def< isf< kp<" .
                    \ " | unlet! b:browsefilter"

" Restore the saved compatibility options.
let &cpo = s:cpo_save
unlet s:cpo_save
