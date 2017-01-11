"muh plugins
execute pathogen#infect()

"indentation and indentation
set number
set cindent
set expandtab
set tabstop=4
set shiftwidth=4

"open nerdtree if no files are specified when opening vim
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"and make nerd tree open with f3 and preview with f4
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

"auto save folding and restore it
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

"add f9 for fold toggling
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

"space also unfolds if you are in normal mode
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

"cool colors
syntax on
color sift

"you complete me really does complete me.
let g:ycm_autoclose_preview_window_after_completion=1
"let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
