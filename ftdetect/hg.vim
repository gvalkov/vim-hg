
" Commit messages
autocmd BufNewFile,BufRead */hg-editor-*.txt               set ft=hgcommitmsg
" autocmd BufNewFile,BufRead * if getline(3) =~ '^HG:\s\S' | set ft=hgcommitmsg | endif

" Config files
autocmd BufNewFile,BufRead .hgrc,*.hg/hgrc,*/hgrc.d/*.rc,*/.hgrc.d/*.rc set ft=hgconfig

" Logs
autocmd BufNewFile,BufRead,StdinReadPost *
      \ if getline(1) =~ '^changeset:\s\+\d\+:\x\{12\}$' |
      \   set ft=hglog |
      \ endif

autocmd BufNewFile,BufRead,StdinReadPost *
      \ if getline(1) =~ '^\d\d\d\d-\d\d-\d\d \d\d:\d\d .* (\x\{12\} .*)$' |
      \   set ft=hglog-changelog |
      \ endif

autocmd BufNewFile,BufRead,StdinReadPost *
      \ if getline(1) =~ '^\d\+\(\S\+\)\?\s\+\x\{12\}\s' |
      \   set ft=hglog-compact |
      \ endif
