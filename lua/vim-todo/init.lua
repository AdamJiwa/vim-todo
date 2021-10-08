local dateFormat = "%Y-%m-%d"

local function exists(file)
   local ok, err, code = os.rename(file, file)
   if not ok then
      if code == 13 then
         -- Permission denied, but it exists
         return true
      end
   end
   return false 
end

-- TODO find a nice way to deal with creating dirs posix
local function init()
    -- if not exists("/todo") then
    --     os.execute("mkdir /todo")
    -- end
end

local function OpenFile(name)
    vim.cmd('vsplit /todo/' .. name .. '.TODO')
end

local function TodaysTodo()
    local today = os.date(dateFormat)
    OpenFile(today)
end

local function TomorrowsTodo()
    local date = os.date.now()
    date.days = date.days + 1
    OpenFile(os.date(dateFormat, date))
end

local function YesterdaysTodo()
    local date = os.date.now()
    date.days = date.days - 1
    OpenFile(os.date(dateFormat, date))
end

local function GlobalTodo()
    -- Should maybe move this to a seperate folder
    OpenFile("global")
end

return {
    init = init,
    TodaysTodo = TodaysTodo,
    TomorrowsTodo = TomorrowsTodo,
    YesterdaysTodo = YesterdaysTodo,
    GlobalTodo = GlobalTodo
}
