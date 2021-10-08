fun! VimTodo()
    " lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").init()
endfun

fun! TodaysTodo()
    " lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").TodaysTodo()
endfun

fun! TomorrowsTodo()
    " lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").TomorrowsTodo()
endfun

fun! YesterdaysTodo()
    " lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").YesterdaysTodo()
endfun

fun! GlobalTodo()
    " lua for k in pairs(package.loaded) do if k:match("^vim%-todo") then package.loaded[k] = nil end end
    lua require("vim-todo").GlobalTodo()
endfun

augroup VimTodo
    autocmd!
augroup END
