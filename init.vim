" 打开 24 位真彩色支持
set termguicolors
" 搜索的时候忽略大小字字母
set ignorecase
" 若搜索内容中有大写字母，则不再忽略大小写
set smartcase
" 高亮第80列
set colorcolumn=80
" 高亮光标所在行
set cursorline
" 行号
set nu
" tab
set tabstop=4
set shiftwidth=4

" 空格代替tab
set expandtab

color hybrid
:highlight Normal guibg=Black


" NerdTree
nmap <F9> :NERDTreeToggle<cr>
let g:NERDTreeMinimalUI = 1
let g:NERDTreeChDirMode = 2
let g:NERDTreeWinSize = 20


" tagbar
nmap <F10> :TagbarToggle<cr>
let g:tagbar_width= 25

" nvim-treesitter
" 开启语法高亮功能
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      ["foo.bar"] = "Identifier",
    },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF



" vim-floaterm
let g:floaterm_keymap_new    = '<F1>'
let g:floaterm_keymap_prev   = '<F2>'
let g:floaterm_keymap_next   = '<F3>'
let g:floaterm_keymap_toggle = '<F4>'

let g:floaterm_autoinsert    = 1
let g:floaterm_width         = 0.5
let g:floaterm_height        = 0.5
let g:floaterm_autoclose     = 1
let g:floaterm_title         = 'floaterm: $1/$2'
let g:floaterm_wintype       = 'popup'
let g:floaterm_position      = 'bottomright'
