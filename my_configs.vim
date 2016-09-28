set cmdheight=1
nmap <leader>q :q<cr>

set gfn=Monospace

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_asm_checkers = ['nasm']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline Theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='molokai'
let g:airline_powerline_fonts = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-color-solarised
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:solarized_termcolors=256
syntax enable
set background=dark
colorscheme solarized

let g:lightline = {
    \ 'component': {
    \   'lineinfo': ' %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'readonly': 'LightLineReadonly',
    \   'fugitive': 'LightLineFugitive'
    \ },
    \ 'separator': { 'left': '', 'right': '' },
    \ 'subseparator': { 'left': '', 'right': '' }
    \ }
function! LightLineReadonly()
    return &readonly ? '' : ''
endfunction
function! LightLineFugitive()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ''.branch : ''
    endif
    return ''
endfunction
