function plugin_cfg#fugitive#post_source()
    nmap <silent> <Leader>ga :!git add %<CR>
    nmap <silent> <Leader>gR :Gremove!<CR>
    nmap <silent> <Leader>gc :Gcommit -a<CR>
    nmap <silent> <Leader>gA :Gcommit -a --amend<CR>
    nmap <silent> <Leader>gC :Gcommit<CR>
    nmap <silent> <Leader>gp :Gpush<CR>
    nmap <silent> <Leader>gP :Gpull<CR>
    nmap <silent> <Leader>gd :Gdiff<CR>
    nmap <silent> <Leader>gs :Gstatus<CR>
    nmap <silent> <Leader>gl :Glog<CR>
    nmap <silent> <Leader>gb :Gblame<CR>
    nmap <silent> <Leader>gi :Gsplit! svn info<CR>
endfunction
