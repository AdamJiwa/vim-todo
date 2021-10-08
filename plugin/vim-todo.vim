fun! VimNotes()
    # lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").init()
endfun

fun! TTodo()
    # lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").TodaysTodo()
endfun

fun! YTodo()
    # lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").YesterdaysTodo()
endfun

augroup VimNotes
    autocmd!
augroup END
