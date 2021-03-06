"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'djoshea/vim-autoread'

Plug 'vim-syntastic/syntastic'
Plug 'editorconfig/editorconfig-vim'

Plug 'pechorin/any-jump.vim'
Plug 'sheerun/vim-polyglot'

" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }

Plug 'wakatime/vim-wakatime'

" All of your Plugins must be added before the following line
call plug#end()            " required
