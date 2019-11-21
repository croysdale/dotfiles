" Modeline and Notes (spacebar to open/close folds) {{
" vim: set sw=4 ts=4 sts=4 et foldmarker={{,}} foldlevel=0 foldmethod=marker spell:
" }}

"" Documentation for each bundle on the web at: 
""     https://github.com/<plugin_name>
""     Example:  https://github.com/kien/ctrlp.vim


call plug#begin('~/.vim/bundle.local')
" }}

" ========= Helper bundles ========================================={{
" Needed by other bundles
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
" Enable async processes for plugins like Unite
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
" fuzzy matching algorithm for use by other Vim plugins
Plug 'tpope/vim-tbone'
" Plugin for using GIT
Plug 'tpope/vim-fugitive'

" asynchronous build and test dispatcher
" Breaks tab complete ??
" Plug "tpope/vim-dispatch"

" Plug 'tpope/vim-haystack'`
" Change data with Ctrl-A / Ctrl-Z
Plug 'tpope/vim-speeddating'

" Simple plugin to replace airline
" Plug 'tpope/vim-flagship'
"}}


" ================ Shougo bundles   ================================={{
" Auto-completion bundles             - <TAB>
" Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/deoplete.nvim'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins \| call
"     \ deoplete#custom#option({
"     \   \"max_list\": 50,
"     \   \"smart_case\": v:true,
"     \   \*ignore_case\": v:true,
"     \ })' }

" Snips 
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Plugs required by deoplete
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

" Unite searches/displays information - gm, gl, gC, gy, g/, gr, gb, <F12>
" http://www.ustream.tv/recorded/11240673
Plug 'Shougo/unite.vim'

Plug 'Shougo/vimproc.vim'

" Plug 'Shougo/vimfiler.vim' , { 'on': 'VimFiler' }
" Plug 'Shougo/neco-syntax'

" }}


" Fuzzy finder for opening files (,m ,f ,F ..)
Plug 'kien/ctrlp.vim'

" Compare directories                 :DirDiff  <dirA> <dirB>
Plug 'zhaocai/DirDiff.vim'

" Fast split/join of if command       - cJ/cS
Plug 'AndrewRadev/splitjoin.vim'

" Fast comment of code blocks         - gcc
Plug 'tomtom/tcomment_vim'

" Color  parens, brackets, and braces :Rainbow*
Plug 'kien/rainbow_parentheses.vim'

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
" TODO : Should I use this or neosnippet?
" if (has("lua"))
"     Plug 'SirVer/ultisnips' 
" endif

" ================ perl bundles   ================================={{
" Debugger for perl
if (has("python") || has("python3")) 
    Plug 'joonty/vdebug' , { 'for': 'perl' }
endif

" Perl helper routines
Plug 'vim-scripts/perlhelp.vim' , { 'for': 'perl' }
Plug 'vim-scripts/perl-support.vim' , { 'for': 'perl' }

Plug 'vim-perl/vim-perl'
" }}

" TMUX bundles {{
" Interact with tmux (VimuxRunCommand)
Plug 'benmills/vimux'

" Common keys for tmux and vim for window/pane navigation
Plug 'christoomey/vim-tmux-navigator'

" Send to Tmux (similar to vim-dispatch)
Plug 'jgdavey/tslime.vim'

" Auto-complete words from another tmux panes into vim
" Breaks neocomplete??
" Plug 'wellle/tmux-complete.vim'
" }}

" HTML bundles {{
" Tag matches for HTML
Plug 'gregsexton/MatchTag' , { 'for': 'html' }
Plug 'heracek/HTML-AutoCloseTag' , { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax' , { 'for': 'html' }
" }}

Plug 'scrooloose/syntastic'

if executable('ag')
    Plug 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
endif

" New stuff 
Plug 'airblade/vim-gitgutter'

" Mappings that boost vim's command line (based on rsi)
Plug 'vim-utils/vim-husk'

" Highlight the indents 
Plug 'nathanaelkane/vim-indent-guides' , { 'for': [ 'perl', 'vim', 'tcl', 'csh', 'bash', 'zsh', 'sh' ] }

" Generate a tagbar on right of screen 
Plug 'majutsushi/tagbar' , { 'for': ['tcl', 'perl', 'logfile'] }

" Plugs being tested
" Allows easy control of tmux from vim
Plug 'benmills/vimux'

"" Plugs to retest {{
"
" " Newer version of netrw (build it file viewer)
" Plug 'vim-scripts/netrw.vim'

" expand regions in visual-mode       - m
" Plug 'terryma/vim-expand-region'

" Provides insert mode auto-completion for quotes, parens, brackets, 
" Plug 'Raimondi/delimitMate'

" Ecliptic maps the power of "+ to a more natural interface. All of its mapping
" start with the c prefix (mnemonic for clipboard).
" Does not work in Linux??
" Plug 'richsoni/vim-ecliptic'

" Simplified clipboard functionality for Vim
" Delete actions don't go to buffer. This might fix ?
" set clipboard=unnamed,unnamedplus
" Plug 'svermeulen/vim-easyclip'

" Show register values when pressing "
" Plug 'junegunn/vim-peekaboo'



" Plug 'zefei/vim-colortuner'

" Plug 'xolox/vim-session'

" Plug 'scrooloose/nerdtree'

" Allows editing of multiple words at once (Ctrl-N)
" Plug 'terryma/vim-multiple-cursors'


" Easy motion (s,t) similar to f but works across lines
" Plug 'Lokaltog/vim-easymotion'

" Syntax checker for perl, verilog, tcl and html
" http://nagelfar.sourceforge.net/
" https://github.com/scrooloose/syntastic/wiki/Syntax-Checkers
    " tcl     : ~/bin/nagelfar121
    " nagelfar121 -s ~/share/nagelfar121/icc_database <file>
    " verilog : verilator*
    " html    : jshint tidy validator* w3*
    " perl    : perl perlcritic podchecker
    "

" " :SyntasticCheck
" " :SyntasticToggleMode    
" " :Errors 
" let g:syntastic_enable_perl_checker = 1
" let g:syntastic_tcl_nagelfar_args='-s ~/bin/syntaxdbicc.tcl'
"
" " Only check on save and not when opening
" let g:syntastic_check_on_open = 0
" let g:syntastic_warning_symbol = "⚠"
" let g:syntastic_check_on_wq = 0



" RCS utilities {{
"
" Caused some odd BufWirePost errors??
" autocmd BufRead,BufWritePost             * call sy#start(b:sy_path)
" Shows signs in gutter for RCS
" 2015/02/27 07:09 Not working.
" Plug 'mhinz/vim-signify'
" let g:signify_vcs_list = [ 'rcs' ]

" Add support for RCS                :RCSci
" Plug 'vim-scripts/rcs.vim' , { 'for': [ 'fvwm', 'perl', 'vim', 'tcl', 'csh', 'bash', 'zsh', 'sh' ] }

" Opens RCS diff to previous version :RCSdiff
" Plug 'vim-scripts/rcsdiff.vim'  , { 'for': [ 'fvwm', 'perl', 'vim', 'tcl', 'csh', 'bash', 'zsh', 'sh' ] }
" }}

" Add support for scratch page        :Scratch (gs)
" Plug 'mtth/scratch.vim'

" Airline generates a highly functional status bar
" Looks great but will slow down vim and could cause fatals
" Plug 'bling/vim-airline'


" Re-maps f, F, t, and T to be more useful 
" Plug 'rhysd/clever-f.vim'

" Plug 'danro/rename.vim'
" Plug 'kana/vim-textobj-entire'
" Plug 'noahfrederick/vim-skeleton' , { 'for' : [ 'perl', 'csh', 'bash', 'zsh', 'sh' ] }
" Plug 'chrisbra/vim-diff-enhanced', { 'on' : 'EnhancedDiff' }
" Plug 'justinmk/vim-sneak'
" Plug 'PeterRincker/vim-argumentative'

" Plug 'mhinz/vim-grepper'


" Don't interrupt when both file on disk and vim's buffer are changed 
" Plug 'vim-utils/vim-interruptless', { 'for' : [ 'log' ] }

" Plug 'ggVGc/vim-fuzzysearch' , { 'on': 'FuzzySearch' }

" Plug 'vim-scripts/Tail-Bundle'


" Source local bundles {
    " if filereadable(expand("~/.vim/bundles.vim.local"))
    "     " source ~/.vim/bundles.vim.local
    " endif
" }

"}}
"
call plug#end()
