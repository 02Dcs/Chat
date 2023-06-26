repeat game:isLoaded() until task.wait(1)
print("hi") local Alphabet,old = loadstring(game:HttpGet("https://raw.githubusercontent.com/02Dcs/Chat/main/Symbols"))()
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
};visual.__index = visual


-- 02 Chat byp
-- Visual Tag

local function noti(x, b)
    local success, err = pcall(function()
    result = game.StarterGui:SetCore("SendNotification")
     if success then
        return
     end    
        game.StarterGui:SetCore("SendNotification", {
        Title = x;
        Text = b .. tostring(visual.vl); 
        Duration = 3; 
        })   
   end)
end
       
local p = game.Players.LocalPlayer
local x = os.time() - (p.AccountAge*86400); local d = os.date("!*t", x)

p.Chatted:Connect(function(b)
     local m = string.split(b, '')
       if m[1]:match('#') then
         visual.vl = visual.vl + 1
         noti('02 Chat Byp', 'Visual Tag: ');
    end
end)     

if (d.year <= 2023) then
return nil; else p:Kick'Make sure, u make an alt account in the year 2023'
end
