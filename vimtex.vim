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
\   '-interaction=nonstopmode',
\   '-shell-escape',
\ ],
\}

let g:vimtex_compiler_latexmk_engines = {
\ '_'                : '-xelatex',
\ 'pdflatex'         : '-pdf',
\ 'dvipdfex'         : '-pdfdvi',
\ 'lualatex'         : '-lualatex',
\ 'xelatex'          : '-xelatex',
\ 'context (pdftex)' : '-pdf -pdflatex=texexec',
\ 'context (luatex)' : '-pdf -pdflatex=context',
\ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
\}

if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
