""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Short utility for magically adding git/hg/svn repository roots to `&path` when
" we open version-controlled files.
" This makes `gf`, `sfind`, `find`, etc in vim actually work for various
" relative paths (particularly those in #include statements).
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

augroup RepoFileSearch
    autocmd!

    " Search for repo whenever a new buffer is opened
    " Called with a delay to prevent some display artifacts :(
    autocmd BufEnter * call repo_file_search#check_for_repo_delayed(150)
augroup END
