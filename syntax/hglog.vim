" Vim syntax file
" Language:	    mercurial log
" Maintainer:	Georgi Valkov


if exists("b:current_syntax")
  finish
endif

syn case match
syn sync minlines=60



syn match  HgChangeset      "\<\d\+:\x\{12\}\>"  contained 
syn match  HgKeyword        "\(bookmark\|parent\|tag\|user\|files\|description\)" contained nextgroup=gitHash,gitType skipwhite
syn match  HgLogParent      "parent:\s" nextgroup=HgChangeset skipwhite
syn match  HgLogChangeset   "changeset:\s\+" nextgroup=HgChangeset skipwhite
syn match  HgLogPath        ".*" contained


hi def link HgChangeset     Identifier
hi def link HgLogChangeset  Identifier


let b:current_syntax = "hglog"
