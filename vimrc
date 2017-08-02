execute pathogen#infect()
syntax on
filetype plugin indent on

" set Leader to ','
let mapleader = ","

" for vim compiled with the +clipboard all operations such as yy, D, and P work with the clipboard. No need to prefix them with \"* or \"+
" also see http://robots.thoughtbot.com/how-to-copy-and-paste-with-tmux-on-mac-os-x
" set clipboard=unnamed


" https://github.com/wincent/clipper
nnoremap <leader>y :call system('nc localhost 8377', @0)<CR>

" copy to system clipboard on yank
" https://stackoverflow.com/a/10979533/446954
set clipboard=unnamedplus

" Open new split panes to right and bottom, which feels more natural than Vim’s default
set splitbelow
set splitright

" show numbers in the left gutter
set number

" don't wrap text across lines by default
set nowrap

" autocmd BufEnter * lcd %:p:h
set binary
set tabstop=2 shiftwidth=2 expandtab

" smart case sensitivity
" /copyright      " Case insensitive
" /Copyright      " Case sensitive
" /copyright\C    " Case sensitive
" /Copyright\c    " Case insensitive
set smartcase

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
" When the file has been deleted this is not done.
set autoread

" added due to indentation issues in HTML markup
" https://stackoverflow.com/a/5942413/446954
set autoindent

" restore standard page up/down commands after being hijacked by, I think, gotofile.vim
" nnoremap <silent> <C-F> <PageDown>
" nnoremap <silent> <C-B> <PageUp>

" Use numbers to pick the tab you want (like iTerm)
map <silent> ,1 :tabn 1<cr>
map <silent> ,2 :tabn 2<cr>
map <silent> ,3 :tabn 3<cr>
map <silent> ,4 :tabn 4<cr>
map <silent> ,5 :tabn 5<cr>
map <silent> ,6 :tabn 6<cr>
map <silent> ,7 :tabn 7<cr>
map <silent> ,8 :tabn 8<cr>
map <silent> ,9 :tabn 9<cr>

" I capitolize a bunch of commands accidentelly, maybe these will help
" :command Bd bd
" :command BD bd
" :command WQ wq
" :command Wq wq
" :command W w
" :command Q q
"

" autocomplete HTML tags with leader c
" https://stackoverflow.com/questions/130734/how-can-one-close-html-tags-in-vim-quickly
imap <silent> <C-c> </<C-X><C-O><C-X>
" this one will put the courser back inside the HTML element
" imap <silent> <C-c> </<C-X><C-O><C-X> <Esc>F<i


"""""" NERDtree
" open NERDtree with Ctrl \ ?
" nmap <C-\> :NERDTreeToggle<CR>

" Open NERDTree in the directory of the current file (or /home if no file is open)
nmap <silent> <C-\> :call ToggleNERDTreeInCurDir()<cr>
function! ToggleNERDTreeInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    exe ":NERDTreeFind"
  endif
endfunction

" Command-/ to toggle comments
map <C-/> :TComment<CR>
" imap <C-/> <Esc>:TComment<CR>

" Make nerdtree look nice
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize = 30

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> vv <C-w>v
nnoremap <silent> ss <C-w>s

" click on a buffer to switch to it. Yes, with the mouse.
" set mouse+=a
if !has('nvim')
  set ttymouse=xterm2
endif

" resize current buffer by +/- 5
noremap <silent> ,+ :resize +5<cr>
noremap <silent> ,- :resize -5<cr>
noremap <silent> ,> :vertical resize +5<cr>
noremap <silent> ,< :vertical resize -5<cr>


" copy filepaths from current buffer to system clipboard
" relative path  (src/foo.txt)
nnoremap <leader>cf :let @*=expand("%")<CR>

" absolute path  (/something/src/foo.txt)
nnoremap <leader>cF :let @*=expand("%:p")<CR>

" filename       (foo.txt)
nnoremap <leader>ct :let @*=expand("%:t")<CR>

" directory name (/something/src)
nnoremap <leader>ch :let @*=expand("%:p:h")<CR>

"============================== search =============================="
set hlsearch
noremap <F4> :set hlsearch! hlsearch?<CR>
let g:highlighting = 0

" highlight all instance of current word when pressing <enter> without jumping to matches
" function! Highlighting()
"   if g:highlighting == 1 && @/ =~ '^\\<'.expand('<cword>').'\\>$'
"     let g:highlighting = 0
"     return ":silent nohlsearch\<CR>"
"   endif
"   let @/ = '\<'.expand('<cword>').'\>'
"   let g:highlighting = 1
"   return ":silent set hlsearch\<CR>"
" endfunction
" nnoremap <silent> <expr> <CR> Highlighting()

"============================== colors =============================="
" use all colors
 set t_Co=256
" set t_AB=^[[48;5;%dm
" set t_AF=^[[38;5;%dm

"============================== favorite colorschemes =============================="
" good light themes
" set background=light
" colorscheme lucius
" colorscheme simple256
" colorscheme summerfruit256
" colorscheme autumnleaf
" colorscheme blackbeauty
" colorscheme desert
" colorscheme evening
" colorscheme peachpuff

" good dark themes
" highlight Normal ctermfg=grey ctermbg=darkblue
set background=dark
" colorscheme jellybeans
" colorscheme lettuce
" colorscheme inkpot
" colorscheme calmar256-dark
" colorscheme gentooish
" colorscheme Mustang
" colorscheme nightvision
" colorscheme darkZ
" colorscheme buttercream
colorscheme distinguished
" colorscheme delek

highlight ShowTrailingWhitespace ctermbg=Red guibg=Red
nnoremap <silent> <Leader>t :<C-u>call ShowTrailingWhitespace#Toggle(0)<Bar>echo (ShowTrailingWhitespace#IsSet() ? 'Show trailing whitespace' : 'Not showing trailing whitespace')<CR>
nnoremap <Leader>w :<C-u>%DeleteTrailingWhitespace<CR>

" indentation guidlines from
" https://github.com/nathanaelkane/vim-indent-guides
" usage: <leader>ig
" set ts=4 sw=4 et
let g:indent_guides_start_level = 1
" let g:indent_guides_guide_size = 1


" vim-rspec

" let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "!bundle exec rspec --drb {spec}"
" map <Leader>w :!bundle exec cucumber --profile wip<CR>
map <Leader>r :call RunCurrentSpecFile()<CR>
map <Leader>R :call RunNearestSpec()<CR>

"""" vim-plug

" Install vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/vim-xmark', { 'do': 'make' }

"Add plugins to &runtimepath
call plug#end()

""" end vim-plug

" draw a line at column 80
set textwidth=80
let &colorcolumn=join(range(81,81),",")
" " highlight ColorColumn ctermbg=235 guibg=#2c2d27
highlight ColorColumn ctermbg=233 guibg=#2c2d27

" watches this vimrc file for changes and reloads them into vim automatically
" copied from http://superuser.com/a/417997/224585
augroup myvimrc
  au!
  au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
