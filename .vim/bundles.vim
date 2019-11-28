
"" Documentation for each bundle on the web at: 
""     https://github.com/<plugin_name>
""     Example:  https://github.com/kien/ctrlp.vim


call plug#begin('~/.vim/bundle')

" Helper bundles {{{1
" Needed by other bundles
Plug 'MarcWeber/vim-addon-mw-utils'
" Enable async processes for plugins like Unite
Plug 'tomtom/tlib_vim'
Plug 'xolox/vim-misc'
Plug 'Shougo/vimproc.vim'

" tpope bundles   {{{1
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" enable repeating supported plugin maps with "."
Plug 'tpope/vim-repeat'
" Correct common mis-spellings
Plug 'tpope/vim-abolish'

" pairs of handy bracket mappings 
Plug 'tpope/vim-unimpaired'
" Plugin for using GIT
Plug 'tpope/vim-fugitive'


" Plug 'tpope/vim-haystack'`
" Change data with Ctrl-A / Ctrl-Z
Plug 'tpope/vim-speeddating'

" Text Objects, Motions and Operators {{{1
Plug 'wellle/targets.vim'

" Command Line {{{1
" Readline style insertion (Ctrl-a,w,d,f,...)
Plug 'tpope/vim-rsi'
" Mappings that boost vim's command line (based on rsi)
" Plug 'vim-utils/vim-husk'

" Languages - Formatters {{{1
"Plug 'sheerun/vim-polyglot'
"Plug 'mattn/emmet-vim' , { 'for':  ['html', 'css']}
"Plug 'sbdchd/neoformat', { 'on' : 'Neoformat'}

" Auto-completion bundles {{{1
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Snips  {{{1
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'honza/vim-snippets'

" Unite searches/displays information - gm, gl, gC, gy, g/, gr, gb, <F12>
" http://www.ustream.tv/recorded/11240673
Plug 'Shougo/unite.vim'
Plug 'Shougo/neoyank.vim'

" Enables completion of syntax files
" Plug 'Shougo/neco-syntax'

" File management {{{1

" Enhancements to netrw (built in file manager)
Plug 'tpope/vim-vinegar'

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
Plug 'powerman/vim-plugin-viewdoc'

" Undo navigator                    - ,gu
Plug 'sjl/gundo.vim'
" Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' }

" Perl bundles  {{{1

" Debugger for perl
if (has("python") || has("python3")) 
    Plug 'joonty/vdebug' , { 'for': 'perl' }
endif

" Perl helper routines
Plug 'vim-scripts/perlhelp.vim' , { 'for': 'perl' }
Plug 'vim-scripts/perl-support.vim' , { 'for': 'perl' }

Plug 'vim-perl/vim-perl'

" TMUX bundles {{{1
" Interact with tmux (VimuxRunCommand)
Plug 'benmills/vimux'

" :Tmux, :Tyank, :Twrite, :Tattach
Plug 'tpope/vim-tbone'

" Common keys for tmux and vim for window/pane navigation
Plug 'christoomey/vim-tmux-navigator'

" Send to Tmux (similar to vim-dispatch)
Plug 'jgdavey/tslime.vim'

" asynchronous build and test dispatcher
" Breaks tab complete ??
" Plug "tpope/vim-dispatch"

" Auto-complete words from another tmux panes into vim
" Breaks neocomplete??
" Plug 'wellle/tmux-complete.vim'

" HTML bundles {{{1
" Tag matches for HTML
Plug 'gregsexton/MatchTag' , { 'for': 'html' }
Plug 'heracek/HTML-AutoCloseTag' , { 'for': 'html' }
Plug 'hail2u/vim-css3-syntax' , { 'for': 'html' }

" Syntax checker {{{1
" Plug 'scrooloose/syntastic'

if executable('ag')
    Plug 'mileszs/ack.vim'
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
endif

" New stuff 
Plug 'airblade/vim-gitgutter'

" Highlight the indents 
Plug 'nathanaelkane/vim-indent-guides' , { 'for': [ 'perl', 'vim', 'tcl', 'csh', 'bash', 'zsh', 'sh' ] }

" Generate a tagbar on right of screen 
Plug 'majutsushi/tagbar' 
"Plug 'majutsushi/tagbar' , { 'for': ['tcl', 'perl', 'logfile'] }

" Plugs being tested
" Allows easy control of tmux from vim
Plug 'benmills/vimux'

Plug 'dense-analysis/ale'

"" Plugs to retest {{{1
"
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




" Add support for scratch page        :Scratch (gs)
" Plug 'mtth/scratch.vim'

" Airline generates a highly functional status bar
" Looks great but will slow down vim and could cause fatals
" Plug 'bling/vim-airline'


" Re-maps f, F, t, and T to be more useful 
" Plug 'rhysd/clever-f.vim'

" Plug 'danro/rename.vim'
" Plug 'noahfrederick/vim-skeleton' , { 'for' : [ 'perl', 'csh', 'bash', 'zsh', 'sh' ] }
" Plug 'chrisbra/vim-diff-enhanced', { 'on' : 'EnhancedDiff' }
" Plug 'justinmk/vim-sneak'
" Plug 'PeterRincker/vim-argumentative'

" Plug 'mhinz/vim-grepper'


" Don't interrupt when both file on disk and vim's buffer are changed 
" Plug 'vim-utils/vim-interruptless', { 'for' : [ 'log' ] }

" Plug 'ggVGc/vim-fuzzysearch' , { 'on': 'FuzzySearch' }

" Plug 'vim-scripts/Tail-Bundle'


" Colorschemes {{{1
Plug 'altercation/vim-colors-solarized'
Plug 'NLKNguyen/papercolor-theme'
" Plug 'tomasr/molokai'
" Plug 'romainl/Apprentice'
" Plug 'zefei/cake16'
" Plug '29decibel/codeschool-vim-theme'
" Plug 'jeetsukumaran/vim-mochalatte'
" Plug 'chriskempson/base16-vim'
" Plug 'DAddYE/soda.vim'
" Plug 'vim-scripts/Cleanroom'
" Plug 'jnurmine/Zenburn'
" Plug 'junegunn/seoul256.vim'
" Plug 'morhetz/gruvbox'
" Plug 'sjl/badwolf'
" source local bundles {{{1
    if filereadable(expand("~/.vim/bundles.vim.local"))
        source ~/.vim/bundles.vim.local
    endif
"
call plug#end()

" Modeline (spacebar to open/close folds) {{{1
" vim: fdm=marker
