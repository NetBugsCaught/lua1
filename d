local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

function antiAFK()
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame) wait(1) game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end

function infmoney()
    local args = {
        [1] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
    }
    
    game:GetService("ReplicatedStorage").RemoteObjects.DanceGameCash:FireServer(unpack(args))
    
    local args = {
    [1] = 99999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999999
    }

    game:GetService("ReplicatedStorage").RemoteObjects.IncrementBeachCash:FireServer(unpack(args))

    
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
