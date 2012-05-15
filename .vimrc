syntax enable 
set encoding=utf-8
set showcmd
color solarized 
set background=dark
set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
set tabstop=4
set shiftwidth=4

function! CurDir()
	let curdir = substitute(getcwd(), '/home/anoop/', "~/", "g")
	return curdir
endfunction

function! HasPaste()
	if &paste
		return 'PASTE MODE '
	else
		return ''
	endif
endfunction 

set cursorline
set cursorcolumn
highlight CursorLine cterm=NONE ctermbg=blue
highlight CursorColumn cterm=NONE ctermbg=blue
