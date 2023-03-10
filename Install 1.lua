--install reactor
local REPOSITORY = "https://raw.githubusercontent.com/Codermsk/reactor-s/main"

local shell = require("shell")

local libs = {
    
    {
        url = REPOSITORY .. "/IgorTimofeev/AdvancedLua.lua",
        path = "/lib/advancedLua.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/Color.lua",
        path = "/lib/color.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/OCIF.lua",
        path = "/lib/FormatModules/OCIF.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/Image.lua",
        path = "/lib/image.lua"
    },
    {
        url = REPOSITORY .. "/IgorTimofeev/DoubleBuffering.lua",
        path = "/lib/doubleBuffering.lua"
    }
}
--wget -f https://raw.githubusercontent.com/QueueLi/Reactor-1.12.2/main/r.txt /home/Reactor.lua
shell.execute("md /home/images/reactor/")
shell.execute("md md /lib/FormatModules")
shell.execute("rm .shrc")
shell.execute("wget -f https://raw.githubusercontent.com/Codermsk/reactor-s/main/r.txt" .. " /home/Reactor.lua")
--Если вы что-то понимаете за юзеров то советую использовать 
shell.execute("useradd CoderMS")
shell.execute("useradd Ser6amE")
shell.execute("useradd Keengit")
shell.execute("wget -f https://raw.githubusercontent.com/Codermsk/reactor-s/main/IntR.lua" .. " /home/IntR.lua")
shell.execute("wget -f https://raw.githubusercontent.com/Codermsk/reactor-s/main/reboot" .. " /home/reboot")
shell.execute("wget -f https://raw.githubusercontent.com/Codermsk/reactor-s/main/off" .. " /home/off")
shell.execute("wget -f https://raw.githubusercontent.com/Codermsk/reactor-s/main/.shrc" .. " /home/.shrc")

for i = 1, #libs do
		shell.execute("wget -f " ..  libs[i].url .. " " .. libs[i].path)
		
    end
