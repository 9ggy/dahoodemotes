local AnimationIds = {
    Lay = "rbxassetid://0",
    Greet = "rbxassetid://0",
    Sturdy = "rbxassetid://0",
    Griddy = "rbxassetid://0",
    Speed = "rbxassetid://0",
}

if game.PlaceId == 2788229376 or game.PlaceId == 7213786345 then -- // Da Hood
    AnimationIds = {
        Lay = "rbxassetid://3152378852",
        Greet = "rbxassetid://3189777795",
        Sturdy = "rbxassetid://11710529975",
        Griddy = "rbxassetid://11710529975",
        Speed = "rbxassetid://11710541744",
    }
elseif game.PlaceId == 5602055394 or game.PlaceId == 7951883376 then
    AnimationIds = {
        Lay = "rbxassetid://12848619324",
        Greet = "rbxassetid://12848108646",
        Sturdy = "rbxassetid://12848836068",
        Griddy = "rbxassetid://12848118145",
        Speed = "rbxassetid://12848831214",
    }
elseif game.PlaceId == 12867571492 then
    AnimationIds = {
        Lay = "rbxassetid://12649394546",
        Greet = "rbxassetid://12649400354s",
        Sturdy = "rbxassetid://0",
        Griddy = "rbxassetid://0",
        Speed = "rbxassetid://0",
    }
elseif game.PlaceId == 14412601883 then -- // Hood Bank
    AnimationIds = {
        Lay = "rbxassetid://14414332833",
        Greet = "rbxassetid://14413912697",
        Sturdy = "rbxassetid://0",
        Griddy = "rbxassetid://0",
        Speed = "rbxassetid://0",
    }
elseif game.PlaceId == 14413712255 then 
    AnimationIds = {
        Lay = "rbxassetid://14414368594",
        Greet = "rbxassetid://14414355346",
        Sturdy = "rbxassetid://0",
        Griddy = "rbxassetid://0",
        Speed = "rbxassetid://0",
    }
end
    
    
game:GetService("UserInputService").InputBegan:Connect(function(key, gp)
    if not gp then 
        if key.KeyCode == Script.Emotes.LayKey then 
            if Script.Emotes.Lay then 
                local Lay = Instance.new("Animation")
                Lay.AnimationId = AnimationIds.Lay
                local LayTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Lay)
                LayTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    LayTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Script.Emotes.GreetKey then
            if Script.Emotes.Greet then 
                local Greet = Instance.new("Animation")
                Greet.AnimationId = AnimationIds.Greet
                local GreetTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Greet)
                GreetTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    GreetTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Script.Emotes.SpeedKey then
            if Script.Emotes.Speed then 
                local Speed = Instance.new("Animation")
                Speed.AnimationId = AnimationIds.Speed
                local SppedTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Speed)
                SpeedTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    SpeedTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Script.Emotes.SturdyKey then
            if Script.Emotes.Sturdy then 
                local Sturdy = Instance.new("Animation")
                Sturdy.AnimationId = AnimationIds.Sturdy
                local SturdyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Sturdy)
                SturdyTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    SturdyTrack:Stop()
                end)
            end
        end
        if key.KeyCode == Script.Emotes.GriddyKey then
            if Script.Emotes.Griddy then 
                local Griddy = Instance.new("Animation")
                Griddy.AnimationId = AnimationIds.Griddy
                local GriddyTrack = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Griddy)
                GriddyTrack:Play()
                game.Players.LocalPlayer.Character.Humanoid.Running:Connect(function()
                    GriddyTrack:Stop()
                end)
            end
        end
    end
end)
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "Emote Script",
	Text = "Successfully Injected",
	Icon = "rbxassetid://12714203201"
    end
end
