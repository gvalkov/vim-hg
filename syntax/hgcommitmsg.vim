" Vim syntax file
" Language:     mercurial commit message
" Maintainer:   Georgi Valkov

if exists("b:current_syntax")
  finish
endif

syn case match
syn sync minlines=60

if has("spell")
  syn spell toplevel
endif


syn match   HgCommitMsgComment    "^#.*"
syn match   HgCommitMsgIgnored    "^HG:\s.*"
syn match   HgCommitMsgBlank      "^.*"    contained
syn match   HgCommitMsgSeparator  "^.*--$" contained containedin=hgCommitMsgIgnored

syn match   HgCommitMsgOverflow   ".*"    contained
syn match   HgCommitMsgLineOne    "\%^.*" nextgroup=HgCommitMsgBlank skipnl
syn match   HgCommitMsgSummary    "^.\{0,60\}" contained containedin=HgCommitMsgLineOne nextgroup=HgCommitMsgOverflow

syn match   HgCommitMsgUser       "user:\s" contained containedin=HgCommitMsgIgnored nextgroup=HgCommitMsgUsername
syn match   HgCommitMsgUsername   ".*"      contained

syn match   HgCommitMsgBranch     "branch\s" contained containedin=HgCommitMsgIgnored nextgroup=HgCommitMsgBranchName
syn match   HgCommitMsgBranchName ".*"       contained

syn match   HgCommitMsgAdded      "added\s"   contained containedin=HgCommitMsgIgnored nextgroup=HgCommitMsgPath
syn match   HgCommitMsgRemoved    "removed\s" contained containedin=hgCommitMsgIgnored nextgroup=HgCommitMsgPath
syn match   HgCommitMsgChanged    "changed\s" contained containedin=hgCommitMsgIgnored nextgroup=HgCommitMsgPath
syn match   HgCommitMsgNoChanges  "no files changed" contained containedin=hgCommitMsgIgnored
syn match   HgCommitMsgPath       ".*" contained


hi def link HgCommitMsgComment    Comment
hi def link HgCommitMsgIgnored    HgCommitMsgComment
hi def link HgCommitMsgBlank      Error
hi def link HgCommitMsgSummary    Keyword
hi def link HgCommitMsgSeparator  Ignore

hi def link HgCommitMsgUser       Type
hi def link HgCommitMsgUsername   Special
hi def link HgCommitMsgBranch     Type
hi def link HgCommitMsgBranchName Special

hi def link HgCommitMsgAdded      Type
hi def link HgCommitMsgRemoved    Type
hi def link HgCommitMsgChanged    Type
hi def link HgCommitMsgNoChanges  Special
hi def link HgCommitMsgPath       Constant


let b:current_syntax = "hgcommitmsg"
