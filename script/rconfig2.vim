" colorscheme desert
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set nowrap
set smartcase

:echo ">>>^__^<<<\nWELCOME TO RMP!!!\n>>>^__^<<<"

syntax keyword CommandsWord p1 vl
syntax keyword VidCommandWord  vd_1 vd_vel vd_sline vd_sfill vd_r

syntax match Comment /#.*/ 

highlight CommandsWord ctermfg=Blue guifg=Blue
highlight VidCommandWord ctermfg=Red guifg=Red
highlight Comment ctermfg=Green guifg=Green

" Define the host for pdsend
let g:pdsend_host = "localhost"

" Function send the current line to pdsend
function! SendCurrentLineToPdSend()
    " Get the current line under the cursor
    let current_line = getline('.')
    
    " Determine the port based on the beginning of the message

    let port = "6005" " Default port
    if current_line =~ '^vl' || current_line =~'vd_' || current_line =~'p1'
        let port = "6004"   
    elseif current_line=~ '^#' 
        echo "--> comment" . current_line        

    else
        " Default port if no match
        let port = "6000"
    endif
    " Construct the pdsend command
    let command = 'echo ' . shellescape(current_line) . ' | sed "s/t/\$v1/g" | pdsend ' . port . ' ' . g:pdsend_host
    if current_line =~ '^vl' || current_line =~'vd_' || current_line =~'p1'
    " Execute the command
    call system(command)
    else 
    let command = 'echo ' . shellescape(current_line) . ' | sed "s/t/\$v1/g" | sed "s/ //g"| pdsend ' . port . ' ' . g:pdsend_host
    call system(command)
    endif
    " Notify user
    echo "--> (port " . port . "): " . current_line
endfunction

function FlashRegion()
  set cursorline
  highlight Cursorline cterm=bold ctermbg=Blue
  redraw
  sleep 200ms
  highlight Cursorline cterm=bold ctermbg=NONE
  redraw
endfunction

function! SendandHighlight()
   call SendCurrentLineToPdSend()
   call FlashRegion() 
endfunction

" Map the F2 key to call the SendAndHighlightCurrentLine function in normal mode
nnoremap <F2> :call SendandHighlight()<CR>

" Map the F2 key to call the SendAndHighlightCurrentLine function in insert mode
inoremap <F2> <C-o>:call SendandHighlight()<CR>


