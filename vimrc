if has('gui_running')
    :set guifont=Consolas\ 10
    :set guioptions-=m  "remove menu bar
    :set guioptions-=T  "remove toolbar
    :set guioptions-=r  "remove right-hand scroll bar
    :set guioptions-=L  "remove left-hand scroll bar

    func! ToggleGUI()

      if &go=~#'m' 
        if &go=~#'m'
          if &go=~#'m'
            call HideGUI() 
          else
            call ShowGUI()
          endif  
        else
          call ShowGUI()
        endif  
      else        
       call ShowGUI()
      endif 


    endfunc

    func! ShowGUI()
      
      :set guioptions+=m  
      :set guioptions+=T 
      :set guioptions+=r
      :set guioptions+=L

    endfunc

    func! HideGUI()
      
      :set guioptions-=m  "remove menu bar
      :set guioptions-=T  "remove toolbar
      :set guioptions-=r  "remove right-hand scroll bar
      :set guioptions-=L  "remove left-hand scroll bar

    endfunc
endif


colorscheme desert
:set background=dark
set tabstop=2
set softtabstop=2
set shiftwidth=2
set nocompatible
set backspace=2


syntax on
map <F7> :tabp<ENTER>
map <F8> :tabn<ENTER>

set smartindent
set expandtab

map <F9> :set mouse=<ENTER>
map <F10> :set mouse=a<ENTER>
map <F11> :call ToggleGUI()<ENTER> 
"map <MouseUp> <C-E>
"map <MouseDown> <C-Y>






