" How to use
" :call HelpDocLoad(#{your bundle path})

function! HelpDocLoad(bundle_path)
  let s:vim_plugins = glob(a:bundle_path . "/*")
  let s:vim_plugin_directories = split(s:vim_plugins, '\n')

  for plugin_directory in s:vim_plugin_directories
    execute "silent! helptags " . plugin_directory . "/doc"
  endfor
endfunction

command! -nargs=1 -complete=command HelpDocLoad :call HelpDocLoad(<args>)

