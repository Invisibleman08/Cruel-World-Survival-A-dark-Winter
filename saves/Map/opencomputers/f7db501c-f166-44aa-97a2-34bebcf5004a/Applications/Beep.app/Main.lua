local beep = require('component').computer.beep
local GUI = require("GUI")
local sys = require("System")
local wk,win,menu = sys.addWindow(GUI.filledWindow(1,1,50,15,0x2D2D2D))
local but = win:addChild(GUI.button(20,5,10,3,0xFFFFFF,0x555555,0x880000,0xFFFFFF, 'Beeeeep'))
local mhz = win:addChild(GUI.slider(5, 10, 30, 0x66DB80, 0x0, 0xFFFFFF, 0xAAAAAA, 20, 2000, 200, true, "Value: "))
mhz.roundValues = true
local speed = win:addChild(GUI.slider(5, 13, 30, 0x66DB80, 0x0, 0xFFFFFF, 0xAAAAAA, 0.1, 50, 1, true, 'Value:'))
speed.roundValues = false
but.animated = false
but.onTouch = function()
  beep(mhz.value,speed.value)
end
win:draw()
