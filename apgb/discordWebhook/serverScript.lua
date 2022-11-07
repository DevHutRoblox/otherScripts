local HttpService = game:GetService("HttpService")

local function sendMessage(url, text)
    
    local data = {
        ["content"] = text
        --You can add more here like embeds, username ect
    }

    local finaldata = HttpService:JSONEncode(data)
    HttpService:PostAsync(url, finaldata)
end

sendMessage("https://support.discord.com/hc/en-us/articles/228383668","My cool message!")
