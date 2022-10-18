let g:pymode_python = 'python3'
let g:pymode_rope = 1
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_show_doc_bind = '<leader>pd'
let g:pymode_rope_goto_definition_bind = '<leader>pg'
let g:pymode_rope_goto_definition_cmd = 'new'
let g:pymode_rope_rename_bind = '<leader>prr'
let g:pymode_rope_rename_module_bind = '<leader>pr1r'
let g:pymode_rope_organize_imports_bind = '<leader>pro'
let g:pymode_rope_autoimport_bind = '<leader>pra'
let g:pymode_rope_module_to_package_bind = '<leader>pr1p'
let g:pymode_rope_extract_method_bind = '<leader>prm'
let g:pymode_rope_extract_variable_bind = '<leader>prl'
let g:pymode_rope_use_function_bind = '<leader>pru'
let g:pymode_rope_move_bind = '<leader>prv'
let g:pymode_rope_change_signature_bind = '<leader>prs'
nmap <F2> :PymodeLintAuto<CR>
