if executable('gopls')
  au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls', '-mode', 'stdio']},
        \ 'whitelist': ['go'],
        \ })
endif

nnoremap [vimlsp] <Nop>
nmap <space>j [vimlsp]

nnoremap <silent> [vimlsp]d :<C-u>LspDefinition<CR>
nnoremap <silent> [vimlsp]t :<C-u>LspTypeDefinition<CR>
nnoremap <silent> [vimlsp]f :<C-u>LspDocumentFormat<CR>
nnoremap <silent> [vimlsp]h :<C-u>LspHover<CR>
nnoremap <silent> [vimlsp]] :<C-u>LspNextError<CR>
nnoremap <silent> [vimlsp][ :<C-u>LspPreviousError<CR>
nnoremap <silent> [vimlsp]r :<C-u>LspReferences<CR>
nnoremap <silent> [vimlsp]s :<C-u>LspStatus<CR>
nnoremap <silent> [vimlsp]n :<C-u>LspRename<CR>
nnoremap <silent> [vimlsp]i :<C-u>!goimports -w %<CR>

let g:lsp_signs_error = {'text': '✗'}
let g:lsp_signs_warning = {'text': '‼'}
