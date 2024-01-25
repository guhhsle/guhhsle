local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'

-----------------------------------

Plug 'natebosch/dartlang-snippets'
Plug 'neoclide/coc.nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'dart-lang/dart-vim-plugin'

-----------------------------------

Plug 'sainnhe/everforest'
Plug 'morhetz/gruvbox' 
Plug 'rose-pine/neovim'

vim.call('plug#end')

vim.wo.number = true
vim.wo.relativenumber = true

vim.cmd [[
	let g:gruvbox_italic=1
	set bg=dark
	set mouse=a
	colorscheme rose-pine
	hi Normal guibg=NONE ctermbg=NONE

	set colorcolumn= 

	set noerrorbells
	set wrap
	set textwidth=200
	set tabstop=4
	set shiftwidth=4
	set nohlsearch
	set smartcase
	set noswapfile
	set nobackup
	set undodir=~/AppData/Local/nvim-data/backup
	set undofile
	set incsearch
	set clipboard=unnamedplus
	set backspace=indent,eol,start
	
	let g:dart_format_on_save = 1
	let g:dartfmt_options = ['--fix', '--line-length 120']
	let mapleader=" "

	nnoremap <silent> K :call CocActionAsync('doHover')<CR>


	nmap <leader>a <Plug>(coc-codeaction-selected)

	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)
	nmap <leader>rn <Plug>(coc-rename)
	
	nnoremap <C-b> :NERDTreeToggle<CR>


	let g:coc_global_extensions = [
	  \ 'coc-flutter',
	  \ 'coc-snippets',
	  \ 'coc-yaml',
	  \ ]
]]

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-P>', builtin.find_files, {})
