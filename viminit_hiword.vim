set rtp+=~/Devel/neovim/debug_phodge/vim-hiword

fun! <SID>Hiwords()
  if exists(':Hiword')
    syntax off
    Hiword Conditional NODE
    " and so on
  endif
endfun
" run Hiword commands when vim has finished loading the plugin
au! VimEnter * call <SID>Hiwords()
" run Hiword commands right now if they are ready (for example when the
" user sources this file)
call <SID>Hiwords()
