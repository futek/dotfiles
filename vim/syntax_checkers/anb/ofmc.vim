if exists("g:loaded_syntastic_anb_ofmc_checker")
	finish
endif
let g:loaded_syntastic_anb_ofmc_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_anb_ofmc_GetLocList() dict
	let makeprg = self.makeprgBuild({ 'args': '--numSess 0' })

	let errorformat  = 'ofmc: lexical error at line %l\, column %c,'
	let errorformat .= 'ofmc: AnB Parse error at line %l\, column %c - %m,'
	let errorformat .= 'ofmc: %m'

	return SyntasticMake({
		\ 'makeprg': makeprg,
		\ 'errorformat': errorformat,
   		\ 'defaults': { 'bufnr': bufnr(''), 'type': 'E' } })
	})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'anb',
	\ 'name': 'ofmc',
	\ 'exec': 'ofmc' })

let &cpo = s:save_cpo
unlet s:save_cpo
