"let g:quickui_color_scheme = 'gruvbox'
"let g:quickui_color_scheme = 'solarized'
"let g:quickui_color_scheme = 'papercol light'
let g:quickui_color_scheme = 'papercol dark'
let g:quickui_border_style = 3

function! TermExit(code) 
    echom "terminal exit code: ". a:code
endfunc

function! s:open_python() abort
	let opts = {'w':100, 'h':40, 'callback':'TermExit'}
	let opts.title = 'Terminal Popup'
	call quickui#terminal#open('python', opts)
endfunc

function! s:open_term(cmd) abort
	let opts = {'w':100, 'h':40, 'callback':'TermExit'}
	let opts.title = a:cmd
	call quickui#terminal#open(a:cmd, opts)
endfunc

function! s:display_help(filename) abort
	if !filereadable(a:filename)
		call quickui#utils#errmsg('E484: Sorry, cannot open file ' . a:filename)
		return -3
	endif
	let content = readfile(a:filename)
	let opts = {'syntax':'help', 'color':'QuickPreview', 'close':'button'}
	let opts.title = 'Help: ' . fnamemodify(a:filename, ':t')
	let opts.command = ["exec 'nohl'"]
	let opts.command += ["normal zz"]
	let opts.w = 90
	let opts.h = 43
	" echom opts
	let winid = quickui#textbox#open(content, opts)
	return 0
endfunc


nnoremap <silent><leader>py :call <SID>open_term('python')<CR>
nnoremap <silent><leader>sh :call <SID>open_term('zsh')<CR>
nnoremap <silent><space>py :call <SID>open_term('python')<CR>
nnoremap <silent><space>sh :call <SID>open_term('zsh')<CR>
nnoremap <silent><F1>	:call <SID>display_help($HOME . '/.vim/README.md')<CR>
