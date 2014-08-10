nmap <leader>r :call ExecuteScript()<cr>
function! ExecuteScript()
	silent execute '!echo "myvimrun" > ~/vimpipe &' | redraw!
endfunction
