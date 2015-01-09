" pandoc
noremap <buffer> <localleader>p :Pandoc pdf --template=~/Dropbox/Settings/Pandoc/custom.latex<enter>
noremap <buffer> <localleader>o :silent !open %:r.pdf<enter>
