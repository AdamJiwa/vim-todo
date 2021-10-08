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

local function YesterdaysTodo()
    local date = os.date.now()
    date.days = date.days - 1
    OpenFile(os.date(dateFormat, date))
end

return {
    init = init,
    TodaysTodo = TodaysTodo,
    YesterdaysTodo = YesterdaysTodo
}
