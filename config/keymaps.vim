" Reminder of built in keys to learn
"   imap <crtl>o   : exit insert for one command and then reenter insert
"   imap <ctrl>c   : exit insert mode

let mapleader=','

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" paste mode toggle (needed when using autoindent/smartindent)
nmap <silent> <leader>pa :set paste!<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" edit vim config
nmap <silent> <leader>ev :e $VIMROOT/config/vimrc<CR>
nmap <silent> <leader>ec :e $VIMROOT/config/<CR>
nmap <silent> <leader>sv :so $VIMROOT/config/vimrc<CR>

" escape from insert and save!
inoremap <leader>s <esc>:w<cr>:echo 'saved'<cr>a
imap <silent> <leader><leader> <esc>
nnoremap <leader><leader> i

" remove search highlight
nmap <silent> <leader>/ :nohlsearch<CR>
imap <silent> <leader>/ :nohlsearch<CR>

" allow command line editing like emacs
nnoremap <C-A>      <Home>
inoremap <C-A>      <Home>
cnoremap <C-A>      <Home>
nnoremap <C-E>      <End>
inoremap <C-E>      <End>
cnoremap <C-E>      <End>
cnoremap <D-Left>   <S-Left>
cnoremap <D-Right>  <S-Right>

"remap forward|backward-search-word-under-cursor to stay on the keyword and highlight it
" movement: n (up) or N (down)
" strict highlight: delimited word
" loose highlight: maybe a part of
nmap # #N

" Yank from the cursor to the end of the line, to be consistent with C and D.
nnoremap Y y$

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv 

