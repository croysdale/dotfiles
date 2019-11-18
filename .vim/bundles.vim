" Modeline and Notes {
" vim: set sw=4 ts=4 sts=4 et foldmarker={,} foldlevel=0 foldmethod=marker spell:
" }

"" Documentation for each bundle on the web at: 
""     https://github.com/<plugin_name>
""     Example:  https://github.com/


call plug#begin('~/.vim/bundle.local')
" }}

" ========= Helper bundles ========================================={{
" Needed by other bundles
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Enable async processes for plugins like Unite
Plug 'Shougo/vimproc.vim'
" }}

" ================ Colorschemes ===================================={{
" Switch colorschemes <F8> and Shift<F8> 
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'

" Plug 'tomasr/molokai'
" Plug 'romainl/Apprentice'
" Plug 'zefei/cake16'
" Plug '29decibel/codeschool-vim-theme'
" Plug 'jeetsukumaran/vim-mochalatte'
Plug 'altercation/vim-colors-solarized'
" Plug 'chriskempson/base16-vim'
" Plug 'DAddYE/soda.vim'
" Plug 'vim-scripts/Cleanroom'
" Plug 'jnurmine/Zenburn'
" Plug 'junegunn/seoul256.vim'
" Plug 'morhetz/gruvbox'
" Plug 'sjl/badwolf'
Plug 'NLKNguyen/papercolor-theme'
"}}

" ================ tpope bundles   ================================={{
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" Highlight syntax for markdown
Plug 'tpope/vim-markdown'
" Enhancements to netrw (built in file manager)
Plug 'tpope/vim-vinegar'
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" Correct common mis-spellings
Plug 'tpope/vim-abolish'
" Readline style insertion (Ctrl-a,w,d,f,...)
Plug 'tpope/vim-rsi'
" pairs of handy bracket mappings 
Plug 'tpope/vim-unimpaired'
"}}

Plug 'vim-perl/vim-perl'

" Fuzzy finder for opening files (,m ,f ,F ..)
Plug 'kien/ctrlp.vim'

" Auto-completion bundles             - <TAB>
" Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'


" Newer version of netrw (build it file viewer)
Plug 'vim-scripts/netrw.vim'

" Fast split/join of if command       - cJ/cS
Plug 'AndrewRadev/splitjoin.vim'

" Fast comment of code blocks         - gcc
Plug 'tomtom/tcomment_vim'

" Color  parens, brackets, and braces :Rainbow*
Plug 'kien/rainbow_parentheses.vim'

" Compare directories                 :DirDiff  <dirA> <dirB>
Plug 'zhaocai/DirDiff.vim'

" expand regions in visual-mode       - m
Plug 'terryma/vim-expand-region'

" Unite searches/displays information - gm, gl, gC, gy, g/, gr, gb, <F12>
" http://www.ustream.tv/recorded/11240673
Plug 'Shougo/unite.vim'

" ,ww VimwikiIndex                    - ,ww
Plug 'vim-scripts/vimwiki'

" Tabular aligns code                 - a,= a,| 
Plug 'godlygeek/tabular'

" Man page viewer
" Plug 'emezeske/manpageview'
Plug 'powerman/vim-plugin-viewdoc'

" Undo navigator                    - ,gu
Plug 'sjl/gundo.vim'

" Snippet completion (<TAB> and <Ctrl><Enter>)
if (has("lua"))
    Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
endif

if (has("python") || has("python3")) 
    Plug 'joonty/vdebug' , { 'for': 'perl' }
endif

" Perl helper routines
Plug 'vim-scripts/perlhelp.vim' , { 'for': 'perl' }
Plug 'vim-scripts/perl-support.vim' , { 'for': 'perl' }

" Source local bundles {
    if filereadable(expand("~/.vim/bundles.vim.local"))
        source ~/.vim/bundles.vim.local
    endif
" }
"
call plug#end()
