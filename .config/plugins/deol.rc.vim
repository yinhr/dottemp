" filetype = deol
" Deol mappings
nnoremap [deol] <Nop>
nmap <space>t [deol]

nnoremap <silent> [deol]<CR> :<C-u>Deol -split=floating<CR>

let g:deol#prompt_pattern = '% \|%$'
