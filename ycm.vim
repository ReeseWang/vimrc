let g:ycm_max_diagnostics_to_display=0
let g:ycm_filepath_completion_use_working_dir=1
nnoremap  <leader>fs :YcmCompleter GoTo<CR>
nnoremap  <leader>ff :YcmCompleter GoToImprecise<CR>
nnoremap  <leader>fg :YcmCompleter GoToDefinition<CR>
nnoremap  <leader>fd :YcmCompleter GoToDeclaration<CR>
nnoremap  <leader>fi :YcmCompleter GoToInclude<CR>
nnoremap  <leader>fc :YcmCompleter GoToReferences<CR>
nnoremap  <leader>gt :YcmCompleter GetType<CR>
nnoremap  <leader>fx :YcmCompleter FixIt<CR>
