if has("syntax")
	syntax on
endif

set showcmd
set noswapfile

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif


call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
"Plug 'skywind3000/asyncrun.vim'  " For async make 
"Plug 'Shougo/neosnippet'         " For snippet support   
"Plug 'godlygeek/tabular',        " For aligning    
"Plug 'mattia72/vim-delphi' 

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
"let g:neosnippet#disable_runtime_snippets














