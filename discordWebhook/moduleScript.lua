local module = {}
local HttpService = game:GetService("HttpService")

local function module.sendMessage(url, text)
    
    local data = {
        ["content"] = text
        --You can add more here like embeds, username ect
    }

    local finaldata = HttpService:JSONEncode(data)
    HttpService:PostAsync(url, finaldata)
end

return module
