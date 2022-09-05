local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()
_G.autoCollect = true

function antiAFK()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end



function collect()
    while wait() do
        if not _G.autoCollect then break end
        game:GetService("ReplicatedStorage").RemoteObjects.CollectedMoney:FireServer()
    end
end

function infmoney()
    local args = {
        [1] = 999999999999999999999
    }
    
    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
    
end
















local UI = Material.Load({
    Title = "Place_Holder",
    Style = 3,
    SizeX = 500,
    SizeY = 300,
    Theme = "Dark"
})

local Page = UI.New({
    Title = "Main"
 })

 Page.Toggle({
    Text = "Auto Collect",
    Callback = function(bool)
        _G.autoCollect = bool
        if bool then
            collect()
        end
    end,})
    
   Page.Button({
        Text = "Anti AFK",
        Callback = function()
            antiAFK()
            print("Anti Afk On")    
        end
    })
    
    Page.Button({
        Text = "inf money",
        Callback = function()
            infmoney()
            print("inf money")    
        end
    })
