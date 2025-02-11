loadstring(game:HttpGet(("https://raw.githubusercontent.com/daucobonhi/Ui-Redz-V2/refs/heads/main/UiREDzV2.lua")))()

       local Window = MakeWindow({
         Hub = {
         Title = "AngryCat",
         Animation = "AngryCat"
         },
        Key = {
        KeySystem = false,
        Title = "Key System",
        Description = "",
        KeyLink = "",
        Keys = {"1234"},
        Notifi = {
        Notifications = true,
        CorrectKey = "Running the Script...",
       Incorrectkey = "The key is incorrect",
       CopyKeyLink = "Copied to Clipboard"
      }
    }
  })

       MinimizeButton({
       Image = "http://www.roblox.com/asset/?id=114335381239098",
       Size = {0, 0},
       Color = Color3.fromRGB(10, 10, 10),
       Corner = true,
       Stroke = false,
       StrokeColor = Color3.fromRGB(255, 0, 0)
      })
      
------ Tab
     local Tab1o = MakeTab({Name = "BLOX FRUITS"})
     local Tab2o = MakeTab({Name = "MM2"})
     local Tab3o = MakeTab({Name = "ALL GAME"})
     local Tab4o = MakeTab({Name = "COMINGSOON"})

------- BUTTON
    
      AddButton(Tab1o, {
     Name = "Rubu V3",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/RubuRoblox/refs/heads/main/RuBuBFVn"))()
  end
  })   AddButton(Tab1o, {
     Name = "Redz",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/refs/heads/main/Source.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "Andz",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/AnDepZaiHub/AnDepZaiHubBeta/refs/heads/main/AnDepZaiHubNewUpdated.lua"))()
  end
  })   AddButton(Tab1o, {
     Name = "Angery Hub",
    Callback = function()
loadstring(game:HttpGet("https://gist.githubusercontent.com/angry5/ec20347a74aa4e46c71b15b6093eeaf5/raw/Angery.lua"))()
  end
  }) AddButton(Tab1o, {
     Name = "W-Azure",
    Callback = function()
loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()
  end
  }) AddButton(Tab1o, {
     Name = "AIM BOT",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/Totocoems/Ace/main/Ace"))()
  end
  }) AddButton(Tab1o, {
     Name = "Xero Hub",
    Callback = function()
getgenv().Team = "Marines" getgenv().Hide_Menu = false getgenv().Auto_Execute = false loadstring(game:HttpGet("https://raw.githubusercontent.com/Xero2409/XeroHub/refs/heads/main/main.lua"))()
  end
  }) AddButton(Tab2o, {
     Name = "Yarhm",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Joystickplays/psychic-octo-invention/main/yarhm.lua", false))()
  end
  }) AddButton(Tab1o, {
     Name = "BlueX",
    Callback = function()
	  _G.Team = "Pirates" 
_G.FixLag = false
loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-BlueX/BlueX-Hub/refs/heads/main/Main.lua"))()
  end
  }) AddButton(Tab2o, {
     Name = "X Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))()
  end
  }) AddButton(Tab3o, {
     Name = "FIX LAG",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/main/FixLag.lua"))()
  end
  }) AddButton(Tab3o, {
     Name = "FLY",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/Fly.lua"))()
  end
  }) AddButton(Tab3o, {
     Name = "Shader",
    Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
  end
  }) AddButton(Tab1o, {
     Name = "TurboLite",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/TurboLite/Script/refs/heads/main/Main.lua"))()
  end
  }) AddButton(Tab1o, {
     Name = "BapRed",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/BapRed/main/BapRedHub"))()
  end
  }) AddButton(Tab1o, {
     Name = "Master Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/obfmoonsec/Masterhub/refs/heads/main/obf"))()
  end
  }) AddButton(Tab2o, {
     Name = "Vertex-Error-Do not use ",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/vertex-peak/vertex/refs/heads/main/loadstring"))()
  end
  }) AddButton(Tab1o, {
     Name = "Volcano",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/wpisstestfprg/Volcano/refs/heads/main/VolcanoNewUpdated.luau"))()
  end
  }) AddButton(Tab1o, {
     Name = "Trau Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/TrauHub/refs/heads/main/TrauXt"))()
  end
  }) AddButton(Tab2o, {
     Name = "NX-Crazy",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/script-by/Nx-Crazy/main/Silent-Aim-MM2"))()
  end
  }) AddButton(Tab2o, {
     Name = "HighLight Hub",
    Callback = function()
	  loadstring(game:HttpGet("https://raw.githubusercontent.com/ThatSick/HighlightMM2/main/Main"))()
  end
  }) AddButton(Tab1o, {
     Name = "Speed Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()
  end
  }) AddButton(Tab1o, {
     Name = "HoHo Hub",
    Callback = function()
_G.HohoVersion = "v4"
loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
  end
  }) AddButton(Tab1o, {
     Name = "VanThanh Hub",
    Callback = function()
	  loadstring(Game:HttpGet("https://raw.githubusercontent.com/VanThanhIOS/OniiChanVanThanhIOS/refs/heads/main/oniichanpakavanthanhios"))()
  end
  }) AddButton(Tab1o, {
     Name = "Min Hub",
    Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LuaCrack/Min/refs/heads/main/MinBV"))()
  end
  })

------- SOUND

local startupSound = Instance.new("Sound")
    startupSound.SoundId = "rbxassetid://5683417249"
    startupSound.Volume = 5
    startupSound.Looped = false
    startupSound.Parent = game.CoreGui
    startupSound:Play()