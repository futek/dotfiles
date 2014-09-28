" omnisharp
setlocal omnifunc=OmniSharp#Complete

let g:syntastic_cs_checkers = ['syntax', 'semantic', 'issues', 'unity']

nnoremap <buffer> gd :OmniSharpGotoDefinition<enter>
nnoremap <buffer> <localleader>fi :OmniSharpFindImplementations<enter>
nnoremap <buffer> <localleader>ft :OmniSharpFindType<enter>
nnoremap <buffer> <localleader>fs :OmniSharpFindSymbol<enter>
nnoremap <buffer> <localleader>fu :OmniSharpFindUsages<enter>
nnoremap <buffer> <localleader>fm :OmniSharpFindMethods<enter>

nnoremap <buffer> <localleader>x :OmniSharpFixIssue<enter>
nnoremap <buffer> <localleader>fx :OmniSharpFixUsings<enter>
nnoremap <buffer> <localleader>tt :OmniSharpTypeLookup<enter>
nnoremap <buffer> <localleader>d :OmniSharpDocumentation<enter>

nnoremap <buffer> <localleader>r :OmniSharpRename<enter>
