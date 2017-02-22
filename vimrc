" Needed for Vundles
set shell=/bin/bash

" Used for host detection
let hostname = substitute(system('hostname'), '\n', '', '')
let hostos = substitute(system('uname -o'), '\n', '', '')

" The domain variable is used to install different modules depending where you
" are.  You can use the hostname to vary this, or OS, etc.
if hostname ==? 'tegra-ubuntu' || hostos ==? 'Cygwin'
	let domain='neptec-small'
else
	let domain='neptec'
endif

let is_win=0
let is_mac=0
let is_nix=1
if has('win32')||has('win32unix')
	let is_win=1
elseif has('mac')
	let is_mac=1
else
	let is_nix=1
endif


" Configure some unconventional filetypes
au BufNewFile,BufRead *.dot            set filetype=sh
au BufNewFile,BufRead */Wt/W*          set filetype=cpp

set nocompatible             " be iMproved, required
filetype off                 " required
call plug#begin('~/dotfiles/bundles')


if domain !=? 'neptec-small'
	" Solarized colour scheme
	Plug 'altercation/vim-colors-solarized'

	" Atelier color scheme
	Plug 'atelierbram/vim-colors_atelier-schemes'
	" base16-atelierforest base16-atelierplateau base16-atelierheath base16-ateliercave base16-ateliersulphurpool base16-atelierlakeside base16-ateliersavanna base16-atelierseaside base16-atelierdune base16-atelierestuary

	" Duotones
	Plug 'atelierbram/vim-colors_duotones'

	" Full of colour schemes:
	Plug 'flazz/vim-colorschemes'
	" Tomorrow Tomorrow-Night Tomorrow-Night-Eighties Tomorrow-Night-Bright Tomorrow-Night-Blue SlateDark PapayaWhip MountainDew Monokai Monokai-chris DevC++ c colorscheme_template colorful colorful256 colorer coldgreen coffee codeschool CodeFactoryv3 codeburn codeblocks_dark cobalt cobaltish clue cloudy clearance cleanroom cleanphp clarity ciscoacl chrysoprase chocolate ChocolatePapaya ChocolateLiquor chlordane chela_light Chasing_Logic charon charged-256 chance-of-storm cascadia carvedwood carvedwoodcool carrot caramel candy candyman candycode campfire camo calmar256-light cake16 C64 bw bvemu buttercream busybee busierbee burnttoast256 bubblegum brown brookstream breeze borland bog bocau bmichaelsen blugrine bluez blue blueshift blueprint bluegreen bluedrake bluechia blink blazer BlackSea blacklight blackdust blackboard blackbeauty black_angus biogoo billw bensday beauty256 beachcomber bclear bayQua baycomb basic base16-atelierdune badwolf babymate256 autumn autumnleaf automation atom asu1dark astronaut asmanian_blood ashen aqua apprentice ansi_blows anotherdark aiseered af advantage adrian adobe adaryn adam abra 3dglasses 256-jungle 256-grayvim 0x7A69_dark heliotrope habiLight h80 guepardo guardian gruvbox grishin greyblue grey2 greenvision greens grb256 graywh gravity grape gothic gotham gotham256 gor google golden golded gobo github getfresh getafe gentooish gemcolors gardener fu fruity fruit fruidle frood freya forneus fokus fog fnaqevan flatui flattr flatland flatlandia flatcolor fine_blue felipec far evening_2 enzyme emacs elrodeo elisex elise elda.vim* ekvoli ekinivim ego edo_sea editplus ecostation eclm_wombat eclipse earth earthburn earendel dusk dull dual doriath doorhinge donbass django distinguished disciple developer deveiate devbox-dark-256 detailed desert desertEx desertedocean desertedoceanburnt desert256 desert256v2 derefined denim delphi delek dawn darth darkZ darkzen darktango darkspectrum darkslategray dark-ruby darkroom darkrobot darkocean darker-robin darkerdesert darkeclipse darkdot darkburn darkbone darkBlue darkblue2 darkblack dante d8g_04 d8g_03 d8g_02 d8g_01 custom cthulhian corporation corn cool contrasty colorzone navajo-night nature native mustang muon mud mrpink mrkn256 motus moss moria mopkai mophiaSmoke mophiaDark montz monokain molokai mod_tcsoft mizore mint miko midnight midnight2 metacosm mellow mdark mayansmoke matrix martin_krischik mars maroloccio marklar manxome manuscript mango made_of_code mac_classic luna luinnar lucius louver lodestone lizard lizard256 literal_tango liquidcarbon lingodirector lilypink lilydjwg_green lilydjwg_dark lilac lightcolors leya lettuce less leo leglight2 legiblelight lazarus last256 landscape kyle kruby kolor kkruby kiss kib_plastic kib_darktango khaki kellys kate kalt kaltex kalisi jiks jhlight jhdark jellyx jellybeans jelleybeans jammy ironman ir_black inkpot ingretu industry industrial impact impactG iceberg icansee ibmedit iangenzo hybrid hybrid-light hornet holokai herokudoc herokudoc-gvim herald hemisu softblue softbluev2 smyck smp skittles_dark skittles_berry simplewhite simple_b simpleandfriendly simple256 silent sift sienna shobogenzo shadesofamber sf sexy-railscasts settlemyer seoul seoul256 seoul256-light selenitic sea seashell sean scite scala saturn satori sand rtl rootwater robinhood revolutions reloaded reliable relaxedgreen refactor redstring redblack rdark rdark-terminal rcg_term rcg_gui rastafari random rainbow_neon rainbow_fruit rainbow_fine_blue railscasts radicalgoodspeed quagmire python pyte pw putty psql pspad proton professional prmths print_bw potts pleasant playroom pink pic phpx phphaxor phd pf_earth perfect peppers pencil peaksea paintbox pacific otaku osx_like orange olive oceanlight oceandeep oceanblack oceanblack256 obsidian obsidian2 nuvola nour norwaytoday northsky northland no_quarter nightwish nightVision night_vision night nightsky nightshimmer nightflight nightflight2 nicotine newsprint newspaper nevfn neverness neverland neverland-darker neverland2 neverland2-darker neutron nerv-ous neon nefertiti nedit nedit2 nazca navajo zmrok zephyr zen zenesque zenburn zazen yeller yaml xterm16 xoria256 xmaslights xian xemacs wuye wood wombat wombat256 wombat256mod wombat256i winter wintersday win9xblueback widower whitedust whitebox watermark warm_grey wargrey vylight vydark void vj vividchalk visualstudio vilight vibrantink vexorian vc vcbc vanzan_color up underwater underwater-mod understated umber-green ubloh two2tango twitchy twilight twilight256 tutticolori turbo trogdor trivial256 transparent torte toothpik tony_light tomatosoup tolerable tir_black tidy tibet thor thestars thegoodluck textmate16 tetragrammaton tesla telstar tcsoft tchaba tchaba2 taqua tangoX tango tangoshady tango-morning tango-desert tango2 tabula synic symfony swamplight surveyor summerfruit summerfruit256 strawimodo strange stingray stackoverflow spring spiderhawk spectro southwest-fog southernlights soso sorcerer sonoma sonofobsidian sol sol-term solarized softlight

	" One-dark
	Plug 'joshdick/onedark.vim'
endif

if is_win==0 && domain !=? 'neptec-small'
	" YouCompleteMe
	Plug 'Valloric/YouCompleteMe'

	" YCMGenerator - generates configs for YouCompleteMe
	Plug 'rdnetto/YCM-Generator',{'branch': 'stable'}
endif

if domain !=? 'neptec-small'
	" NERD Tree - file explorer for vim
	Plug 'scrooloose/nerdtree'
endif

if domain !=? 'neptec-small'
	" Install fzf, the fuzzy searcher
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
endif

if is_win==0
	" Better C++ Syntax Highlighting:
	Plug 'octol/vim-cpp-enhanced-highlight'
endif

if is_win==0
	" Track the ultisnips engine.
	Plug 'SirVer/ultisnips'

	" Snippets are separated from the engine. Add this if you want them:
	Plug 'honza/vim-snippets'
endif

" Easy motion
Plug 'easymotion/vim-easymotion'

if is_win==0 && (domain ==? 'neptec' || domain ==? 'home')
	" tagbar - allows browsing tags of the current source file
	" from ctags. Good for seeing functions, variables, etc.
	Plug 'majutsushi/tagbar'
endif

if is_win==0 && (domain ==? 'neptec' || domain ==? 'home')
	" Key mappings for clang-format, to format source code:
	map <leader>f :pyf /usr/share/vim/addons/syntax/clang-format-3.6.py<CR>
endif

" fugitive - a Git wrapper for vim. Also allows current
" git branch to be shown by vim-airline:
Plug 'tpope/vim-fugitive'
set diffopt+=vertical

if domain !=? 'ec'
	" gitgutter - Shows [git] status of each line in a file
	" On Dena, this injects annoying arroy key characters everywhere (e.g. ^[0D
	" ^[0B ^[0A ^[0C)

	" Toggle with :GitGutterToggle
	Plug 'airblade/vim-gitgutter'
endif

" Plug to assist with commenting out blocks of text:
Plug 'tomtom/tcomment_vim'

" Status bar
Plug 'powerline/powerline'

if domain !=? 'ec'
	" Switch between header and source files:
	" TODO Make filetype specific: http://stackoverflow.com/questions/6133341/can-you-have-file-type-specific-key-bindings-in-vim
	Plug 'derekwyatt/vim-fswitch'
endif

" Plug to help manage vim buffers:
" Plug 'jeetsukumaran/vim-buffergator'

if domain !=? 'neptec-small'
	" Doxygen
	Plug 'vim-scripts/DoxygenToolkit.vim'
endif

if domain !=? 'neptec-small'
	" A Plug to use rtags in vim. (rtags allows for code following,
	" some refactoring, etc.)
	" Ensure to run the following in the build directory that uses rtags
	"    cmake . -DCMAKE_EXPORT_COMPILE_COMMANDS=1
	"    rc -J .
	" And have the rdm service running somewhere in the background.
	Plug 'lyuts/vim-rtags'
endif

if domain !=? 'neptec-small'
	" Colour coding nests
	Plug 'luochen1990/rainbow'
	let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle
endif

" Tabular, align equals
Plug 'godlygeek/tabular'

" Show markers
Plug 'kshenoy/vim-signature'

if domain !=? 'neptec-small'
	" Python Syntax highlighting (the default is pretty bad)
	Plug 'Hdima/python-syntax'
endif

" Undo tree
Plug 'sjl/gundo.vim'


if domain !=? 'neptec-small'
	" Plug to wrap all the various grep tools, and provide
	" some more advanced search functionality
	Plug 'mhinz/vim-grepper'
endif

" Manage font size
Plug 'drmikehenry/vim-fontsize'

" Provides a nicer start up screen
Plug 'mhinz/vim-startify'

" Work with editorconfig files
"Plug 'editorconfig-vim'

"if domain !=? 'school'
"	" Concurrent Editing
"	Plug 'floobits/floobits-neovim'
"endif

" All of your Plugins must be added before the following line
call plug#end()          " required



" Random Colorscheme
function! s:RandColorScheme()
	let s:scheme=system('/usr/bin/env php ~/dotfiles/grabRandomColorscheme.php')
	execute ':colorscheme '.s:scheme
	echom 'Loading colorscheme ' s:scheme
endfunction
:map <Leader>rcs :call <SID>RandColorScheme()<CR>

" Grab a random whitelisted colour scheme
function! s:RandWhiteListColorScheme()
	let s:scheme=system('/usr/bin/env php ~/dotfiles/grabRandomColorscheme.php -w')
	execute ':colorscheme '.s:scheme
	echom 'Loading whitelist colorscheme ' s:scheme
endfunction
:map <Leader>wcs :call <SID>RandWhiteListColorScheme()<CR>


" Colour scheme
if has('gui_running')
	set mousemodel=popup
	set nomousehide

	" TODO Write a command to toggle this
	"set background=light
	set background=dark

	" call <SID>RandColorScheme()
endif
colorscheme abra

" OS Detection
if is_win
	behave xterm
	set ffs=unix
	set backspace=2
endif

""""""""""""""""""""" Git-Gutter """"""""""""""""""""""""
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
" stage the hunk with <Leader>hs or
" revert it with <Leader>hr.
""""""""""""""""""""" /Git-Gutter """"""""""""""""""""""""



"""""""""""""""""""""""""" fzf """""""""""""""""""""""""""
" Set up keyboard shortbuts for fzf, the fuzzy finder
" This one searches all the files in the current git repo:
map <c-k> :GitFiles<CR>
map <c-m> :Buffers<CR>

" Unmap center/<CR> from launching fzf which appears to be mapped by default.
unmap <CR>

""""""""""""""""""""""""" /fzf """""""""""""""""""""""""""

" For vim-cpp-enhanced-highlight, turn on highlighting of class scope:
let g:cpp_class_scope_highlight = 1

" Tell vim to set the current directory to the directory
" of the file being opened:
set autochdir

" Have vim reload a file if it has changed outside
" of vim:
set autoread

" Tell vim to look for a tags file in the current
" directory, and all the way up until it finds one:
set tags=./tags;/

""""""""""""""""""""""" YCM Config """"""""""""""""""""""""
if has('unix')
	" Let YouCompleteMe use tag files for completion as well:
	let g:ycm_collect_identifiers_from_tags_files = 1

	" Turn off prompting to load .ycm_extra_conf.py:
	let g:ycm_confirm_extra_conf = 0

	" Map GetType to an easier key combination:
	nnoremap <leader>ty :YcmCompleter GetType<CR>

	" Compile the file
	nnoremap <leader>y :YcmDiag<CR>

	" F2 will jump to a variable/method definition
	map <F2> :YcmCompleter GoTo<CR>

	nnoremap <leader>diag YcmDiag<CR>

	" Ignore some files
	let g:ycm_filetype_blacklist = {
		\ 'tagbar'    : 1,
		\ 'qf'        : 1,
		\ 'notes'     : 1,
		\ 'markdown'  : 1,
		\ 'unite'     : 1,
		\ 'text'      : 1,
		\ 'vimwiki'   : 1,
		\ 'pandoc'    : 1,
		\ 'infolog'   : 1,
		\ 'vim'       : 1,
		\ 'gitcommit' : 1,
		\ 'gitrebase' : 1,
		\ 'cmake'     : 1,
		\ 'mail'      : 1
	\}

	let g:ycm_filetype_whitelist = {
		\ 'javascript': 1,
		\ 'python' : 1,
		\ 'css'    : 1,
		\ 'cpp'    : 1,
		\ 'php'    : 1,
		\ 'fortran': 1,
		\ 'xml'    : 1,
		\ 'html'   : 1,
	\}

	" Ignore large files (BONA db's for instance)
	let g:ycm_disable_for_files_larger_than_kb = 300

	" Shut off preview window on PHP files
	if (&ft ==? 'php')
		let g:ycm_add_preview_to_completeopt=0
	endif
	" Alternatively..
	"au BufNewFile,BufRead *.php let g:ycm_add_preview_to_completeopt=0

endif
"""""""""""""""""""""" /YCM Config """"""""""""""""""""""""

"""""""""""""""""""" Ultisnips config """"""""""""""""""""""
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
if is_win==0
	let g:UltiSnipsExpandTrigger='<c-j>'
	let g:UltiSnipsJumpForwardTrigger='<c-j>'
	let g:UltiSnipsJumpBackwardTrigger='<c-n>'

	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit='vertical'

	" Add to the runtime path so that custom
	" snippets can be found:
	set rtp+=~/dotfiles

	augroup neptec-ultisnips
		au!
		autocmd BufRead */3dri/* :set rtp+=~/workspace/ScriptsAndTools
	augroup end

endif
""""""""""""""""""" /Ultisnips config """"""""""""""""""""""


""""""""""""""""""""" Airline Config """"""""""""""""""""""
" For vim-airline, ensure the status line is always displayed:
set laststatus=2

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" Certain number of spaces are allowed after a tab (so, /**\n* comments can work
let g:airline#extensions#whitespace#mixed_indent_algo = 1
"""""""""""""""""""" /Airline Config """"""""""""""""""""""


""""""""""""""""""""" Tagbar Config """"""""""""""""""""""
" tagbar config. Enable it using this key map:
nmap <F8> :TagbarToggle<CR>
"""""""""""""""""""" /Tagbar Config """"""""""""""""""""""


""""""""""""""""""""" NERDTree """"""""""""""""""""""
" Shortcut key to open NERDTree:
map <F5> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
nnoremap <leader>n :NERDTree .<CR>
"""""""""""""""""""" /NERDTree """"""""""""""""""""""

""""""""""""""""""""" BBye """"""""""""""""""""""
:nnoremap <Leader>q :Bdelete<CR>
""""""""""""""""""""" /BBye """"""""""""""""""""""

if is_win==0 && domain ==? 'neptec'

	"""""""""""""""""""" ctags """""""""""""""""""""""
	" A key map to run ctags:
	nnoremap <leader>ct :!ctags .<CR>
	"""""""""""""""""""" /ctags """"""""""""""""""""""

endif


""""""""""""""""""""""" Grepper """"""""""""""""""""""""""
" Grepper key bindings:
" Define an operator that takes any motion and
" uses it to populate the search prompt:
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Have git grep perform searches throughout the whole repo
" regardless of the directory we are currently in:
let g:grepper = {
	\ 'open':    1,
	\ 'jump':    0,
	\ 'switch':  1,
	\ 'git':     { 'grepprg': 'git grep -nI $* -- `git rev-parse --show-toplevel`'},
   \ }

""""""""""""""""""""""" /Grepper """""""""""""""""""""""""


""""""""""""""""""""""" /fswitch """""""""""""""""""""""""
" Mapping for fswitch, to switch between header
" and source:
nmap <silent> <Leader>of :FSHere<cr>
""""""""""""""""""""""" /fswitch """""""""""""""""""""""""


""""""""""""""""""""""" Gundo """"""""""""""""""""""""""
nnoremap <F6> :GundoToggle<CR>
""""""""""""""""""""""" /Gundo """""""""""""""""""""""""


"""""""""""""""" Rainbow (foldering) """""""""""""""""""
	let g:rainbow_conf = {
	\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
	\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
	\   'operators': '_,_',
	\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\   'separately': {
	\	   '*': {},
	\	   'tex': {
	\		   'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\	   },
	\	   'lisp': {
	\		   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
	\	   },
	\	   'vim': {
	\		   'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\	   },
	\	   'html': {
	\		   'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\	   },
	\	   'css': 0,
	\   }
	\}
"""""""""""""""" /Rainbow (foldering) """""""""""""""""""


filetype on
syntax on
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>
let fortran_free_source=1
let fortran_have_tabs=1
set number
set ignorecase
set noincsearch
set hlsearch
set ffs=unix,dos

" Easy save
noremap <leader>w :w<CR>
" map alt/apple or something-S for khea

" Remove trailing space
nnoremap <leader>rt :%s/\s\s*$//<CR>
let trim_whitelist = ['php', 'js', 'cpp', 'h', 'vim', 'css']
"autocmd BufWritePre * if index(trim_whitelist, &ft) >= 0 | :%s/\s\+$//e

" Ignore whitespace on vimdiff
if &diff
	" diff mode
	set diffopt+=iwhite
endif

" Map CTRL-Tab to change tab
noremap <C-S-Tab> <Esc>:tabprev<CR>
noremap <C-Tab> <Esc>:tabnext<CR>

" Faster vertical expansion
nmap <C-v> :vertical resize +5<cr>

" Swap splits to vertical
noremap <C-w>th <C-W>t<ctrl-w>H
noremap <C-w>tv <C-W>t<ctrl-w>K

" Remove search results
noremap H :noh<cr>

" Replace highlighted content with content of register 0
noremap <C-p> ciw<Esc>"0p

" Un-indent current line by one tab stop
imap <S-Tab> <C-o><<

"
" Abbreviations
ab laster laser
ab jsut just
ab eticket etiket
ab breif brief
ab OPL2 OPAL2
ab unqiue unique
ab unique unique

" vim: ts=3 sts=3 sw=3 noet nowrap :
