" colorscheme gruvbox-material " Change Vim Theme
" colorscheme molokai " Change Vim Theme
set number " Show absolute line numbers on the left.
syntax on " Turn syntax highlighting on
set ai " Sets auto-indentation
set si " Sets smart-indentation
"set cursorline " Highlight current cursor line
set tabstop=2 " Tab equal 2 spaces (default 4)
set shiftwidth=2 " Arrow function (>>) creates 2 spaces
set smarttab " Be smart when using tabs
set wrap " Wrap overflowing lines
set linebreak " Break lines at word (requires Wrap lines)
set hlsearch " When searching (/), highlights matches as you go
set smartcase " When searching (/), automatically switch to a case-sensitive search if you use any capital letters
set showmatch " Show matching brackets when text indicator is over them
set shiftround " Shift to the next round tab stop. Aka When at 3 spaces, hit >> to go to 4, not 5 if your shiftwidth is set to 2."

" Auto-complete Brackets and Quotes

"inoremap " ""<left>
"inoremap ' ''<left>
"inoremap ( ()<left>
"inoremap [ []<left>
"inoremap { {}<left>
"inoremap {<CR> {<CR>}<ESC>O
"inoremap {;<CR> {<CR>};<ESC>O

" Add a shortcut on F5 to save and run tcl scripts.
" nnoremap <F5> :w \| !tclsh % <CR>

" Add a shortcut for commenting/uncommenting TCL Scripts [Select lines using Visual Block Mode (Ctrl+V) before using these shortcuts]
" xmap <C-r> :norm i#<CR>
" xmap <C-q> :norm x<CR>
