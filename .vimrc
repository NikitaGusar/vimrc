if has("syntax")
	syntax on
endif

set showcmd
set noswapfile

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'

call plug#end()
let g:airline_theme='murmur'

autocmd vimenter * NERDTree "Автоматически открывать Nerdtree
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTree<CR>
 "Автоматически закрываться, когда NERDTree остается единственным окном
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

 "Фильтр: все указанные файлы и папки не отображаются.
let NERDTreeIgnore = ['\.pyc$','\.o', '\.swp', '\.swo', '\.vscode', '__pycache__']
"cntr + w + w window change
let NERDTreeQuitOnOpen=1   " Close NERDtree when files was opened
let NERDTreeMinimalUI=1    " Start NERDTree in minimal UI mode (No help lines)
autocmd VimEnter * wincmd p










