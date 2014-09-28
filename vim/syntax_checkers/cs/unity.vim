if exists("g:loaded_syntastic_cs_unity_checker")
	finish
endif
let g:loaded_syntastic_cs_unity_checker = 1

let s:save_cpo = &cpo
set cpo&vim

function! SyntaxCheckers_cs_unity_GetLocList() dict
	let makeprg = self.makeprgBuild({ 'args_after': '-lib:/Applications/Unity/Unity.app/Contents/Frameworks/Managed -r:UnityEngine,UnityEditor -target:module -out:$TMPDIR/unity.netmodule' })

	let errorformat  = '%f(%l\,%c): %trror %m'

	return SyntasticMake({
		\ 'makeprg': makeprg,
		\ 'errorformat': errorformat })
	})
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
	\ 'filetype': 'cs',
	\ 'name': 'unity',
	\ 'exec': '/Applications/Unity/Unity.app/Contents/Frameworks/Mono/bin/gmcs' })

let &cpo = s:save_cpo
unlet s:save_cpo
