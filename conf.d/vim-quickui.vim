"let g:quickui_color_scheme = 'gruvbox'
"let g:quickui_color_scheme = 'solarized'
"let g:quickui_color_scheme = 'papercol light'
let g:quickui_color_scheme = 'papercol dark'

function! TermExit(code) 
    echom "terminal exit code: ". a:code
endfunc

function! s:open_python() abort
	let opts = {'w':100, 'h':40, 'callback':'TermExit'}
	let opts.title = 'Terminal Popup'
	call quickui#terminal#open('python', opts)
endfunc

function! s:open_zsh() abort
	let opts = {'w':100, 'h':40, 'callback':'TermExit'}
	let opts.title = 'zsh'
	call quickui#terminal#open('zsh', opts)
endfunc

nnoremap <Leader>py :call <SID>open_python()<CR>
nnoremap <Leader>sh :call <SID>open_zsh()<CR>
