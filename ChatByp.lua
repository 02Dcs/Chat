repeat game:isLoaded() until task.wait(1)

syn.request(
   {
       Url = "http://127.0.0.1:6463/rpc?v=1",
       Method = "POST",
       Headers = {
           ["Content-Type"] = "application/json",
           ["origin"] = "https://discord.com",
       },
       Body = game:GetService("HttpService"):JSONEncode(
           {
               ["args"] = {
                   ["code"] = "TDYcgxXH",
               },
               ["cmd"] = "INVITE_BROWSER",
               ["nonce"] = "."
           })
   })

print("-> If you have skill issues with that script, it depends on ur windows(windows + other unicodes supports!)"); print("-> Recommending: Use windows 11 for the best bypass!(your own choice!)")  local Alphabet,old = loadstring(game:HttpGet("https://raw.githubusercontent.com/02Dcs/Chat/main/Symbols"))()
old = hookmetamethod(game,"__namecall",function(self,...)
    if getnamecallmethod() == "FireServer" and tostring(self) == "SayMessageRequest" then
        local Arguments = {...}
        local Word = {}
        local Message = Arguments[1]


      for Letters in string.gmatch(Arguments[1],".") do
            table.insert(Word, Alphabet[Letters:upper()])
        end

      local new = Message
      Arguments[1] = "̌ 𐌜⬜⬜⬜⬜̌   𐌜⬜ 𐌜▰◻ ˜ˆ 𐌔˜𐌖 𐌖￭𐌒▰𐌖𐌖  ॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓▰𐌖𐌖  𐌜  𐌖￭𐌒▰𐌖𐌖   ̌  ̌𐌖 𐌜⬜𐌖 𐌜¹¹¹¹¡ 𐌜⬜𐌜⬜ 𐌖¹¹¹¹¡  𐌜⬜⬜⬜॓॓॓॓i 𐌜⬜⬜ ť" .. new

      return old(self, unpack(Arguments))
    end
    return old(self, ...)
end)

    local Bypasses = {
        [" "] = "\226\129\165\226\129\165\226\129\165\226\129\165\226\129\165\226\129\165 \226\129\165\226\129\165\226" ..
            "\129\165\226\129\165\226\129\165\226\129\165",

           ["a"] = "а",
           ["s"] = "ѕ",
           ["o"] = "о",
           ["e"] = "е",
           ["o"] = "о",
           ["c"] = "с",
           ["p"] = "р",
    }


local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

    local ChatBypass; ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
        local Method = getnamecallmethod()
        local Arguments = {...}

        if self == Remote and Method == "FireServer" then
            local Message = Arguments[1]
            local Split = Message:split("")
            local FinalMessage = ""



            for _, x in next, Split do
                for _, Bypass in next, Bypasses do

                    if x:lower() == _ then
                        if x:upper() ~= x then
                            Message = Message:gsub(x, Bypass)
                            FinalMessage = Message .. ""
                        end
                    end
                end
            end

            if FinalMessage ~= "" then

                 Arguments[1] = FinalMessage 
            end

            return ChatBypass(self, unpack(Arguments))
        end
    return ChatBypass(self, ...)
end)

local visual = {
vl = 0; -- Skill issues check
mx = nil; -- msg count
};visual.__index = visual


-- 02 Chat byp
-- Visual Tag

local function noti(x, b, p)
    local success, err = pcall(function()
    result = game.StarterGui:SetCore("SendNotification")
     if success then
        return
     end    
        game.StarterGui:SetCore("SendNotification", {
        Title = x;
        Text = b .. tostring(p); 
        Duration = 3; 
        })   
   end)
end

 noti('02 Chat Byp', 'Press F9 to read the informations!');

local p = game.Players.LocalPlayer
local x = os.time() - (p.AccountAge*86400); local d = os.date("!*t", x)

p.Chatted:Connect(function(b)
     local m = string.split(b, '')
       if m[1]:match('#') then
         visual.vl = visual.vl + 1
         noti('02 Chat Byp', 'Visual Tag: ', visual.vl);
    end
    if string.len(b) > 51 then
        visual.mx = string.len(b);
      return noti('02 Chat Byp', 'Max Limits Too High: ', visual.mx);
     end
end)     

if (d.year <= 2023) then
return nil; else p:Kick'Make sure, u make an alt account in the year 2023'
end

