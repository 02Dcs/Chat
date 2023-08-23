--[[
Arguments[1] = "̌ 𐌜⬜⬜⬜⬜̌   𐌜⬜ 𐌜▰◻ ˜ˆ 𐌔˜𐌖 𐌖￭𐌒▰𐌖𐌖  ॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓▰𐌖𐌖  𐌜  𐌖￭𐌒▰𐌖𐌖   ̌  ̌𐌖 𐌜⬜𐌖 𐌜¹¹¹¹¡ 𐌜⬜𐌜⬜ 𐌖¹¹¹¹¡  𐌜⬜⬜⬜॓॓॓॓i 𐌜⬜⬜ ť" .. new

]]


local notifications = loadstring(game:HttpGet(("https://raw.githubusercontent.com/AbstractPoo/Main/main/Notifications.lua"),true))()
local function msg(x)
    notifications:notify{
        Title = "Notifications showcase",
        Description = tostring(x),
        Length = 10
    }
end

if not getgenv().check then

     getgenv().Keybind = 'Q';
     getgenv().enabled = true;
     getgenv().check = true;

    local user = game:GetService("UserInputService")
    
    local function en()
        if enabled then
            msg('Keybind has been set as: ' .. Keybind .. ' | Script is already enabled')
            return
        end
        enabled = true
        msg('Keybind has been set as: ' .. Keybind .. ' | Script is enabled')
    end

    local function dis()
        if not enabled then
            msg('Keybind has been set as: ' .. Keybind .. ' | Script is already disabled')
            return
        end
        enabled = false
        msg('Keybind has been set as: ' .. Keybind .. ' | Script is disabled')
    end

    user.InputBegan:Connect(function(x, y)
        if not y and x.KeyCode == Enum.KeyCode[Keybind] then
            if enabled then
                dis()
            else
                en()
            end
        end
    end)

    repeat game:IsLoaded() until task.wait(1)
    print("-> If you have skill issues with that script, it depends on ur windows(windows + other unicodes supports!)")
    print("-> Recommending: Use windows 11 for the best bypass!(your own choice!)")

    local Alphabet, old = loadstring(game:HttpGet("https://raw.githubusercontent.com/02Dcs/Chat/main/Symbols"))()
    old = hookmetamethod(game, "__namecall", function(self, ...)
        if getnamecallmethod() == "FireServer" and tostring(self) == "SayMessageRequest" then
            if not enabled then -- Check if the script is disabled
                return old(self, ...)
            end

            local Arguments = {...}
            local Word = {}
            local Message = Arguments[1]

            for Letters in string.gmatch(Arguments[1], ".") do
                table.insert(Word, Alphabet[Letters:upper()])
            end

            local new = Message
             Arguments[1] = "  ť ॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓॓   𐍹 𐍹 𐍹 𐍹 𐍹 𐍹  " .. new .. "  𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹 𐍹𐍷 "   

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
        ["i"] = "і",
        ["n"] = "n",
        ["t"] = "t",
        ["x"] = "x",
        ["y"] = "y",
        ["j"] = "ϳ",
        ["k"] = "k",
        ["v"] = "ν",
        ["b"] = "b",
        
    }

    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Remote = ReplicatedStorage:FindFirstChild("SayMessageRequest", true)

    local ChatBypass;
    ChatBypass = hookmetamethod(Remote, "__namecall", function(self, ...)
        local Method = getnamecallmethod()
        local Arguments = {...}

        if self == Remote and Method == "FireServer" then
            if not enabled then -- Check if the script is disabled
                return ChatBypass(self, ...)
            end

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
    }
    visual.__index = visual

    -- 02 Chat byp
    -- Visual Tag

    local p = game.Players.LocalPlayer
    local x = os.time() - (p.AccountAge * 86400)
    local d = os.date("!*t", x)

    p.Chatted:Connect(function(b)
        local m = string.split(b, '')
        if m[1]:match('#') then
            visual.vl = visual.vl + 1
            return msg('02 Chat Byp Visual Tag: ' .. visual.vl)
        end
        if string.len(b) > 51 then
            visual.mx = string.len(b)
            return msg('02 Chat Byp Max Limits Too High: ' .. visual.mx)
        end
        return nil
    end)

    if (d.year <= 2023) then
        local Tick = tick();
        msg('Alt has been founded through the checker, you can use the script now' .. ' | ' .. 'PUBLIC VERSION - BETA will close in ' .. tonumber(string.format("%." ..(2).. "f", tick()-Tick)) .. ' seconds')
        task.wait(1.8); msg('Undetectedable Chat bypass by 02#03000 will close in ' .. tonumber(string.format("%." ..(2).. "f", tick()-Tick)) .. ' seconds')
        task.wait(1.8); msg('02 Chat Byp Press F9 to read the informations will close in '  .. tonumber(string.format("%." ..(2).. "f", tick()-Tick)) .. ' seconds')
    else
        p:Kick('Make sure, u make an alt account in the year 2023')
    end
else
    msg('Script has already been executed once')
end
