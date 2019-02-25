let g:vimtex_compiler_latexmk = {
\ 'backend' : 'jobs',
\ 'background' : 1,
\ 'build_dir' : './',
\ 'callback' : 1,
\ 'continuous' : 1,
\ 'executable' : 'latexmk',
\ 'options' : [
\   '-verbose',
\   '-file-line-error',
\   '-synctex=1',
\   '-xelatex',
\   '-interaction=nonstopmode',
\   '-shell-escape',
\ ],
\}

if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
