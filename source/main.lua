import "CoreLibs/object"
import "CoreLibs/graphics"
import "CoreLibs/sprites"

import "circle"
-- import "dvd" -- DEMO
-- local dvd = dvd(1, -1) -- DEMO

local pd <const> = playdate
local gfx <const> = pd.graphics
local font = gfx.font.new('font/Mini Sans 2X') -- DEMO

local function loadGame()
	pd.display.setRefreshRate(50) -- Sets framerate to 50 fps
	math.randomseed(pd.getSecondsSinceEpoch()) -- seed for math.random
	gfx.setFont(font) -- DEMO
end

local function initialize()
	local circleSprite = Circle(200, 120, 20)
	circleSprite:add()
	local circleSprite2 = Circle(100, 220, 10)
	circleSprite2:add()
end

local function updateGame()
	-- dvd:update() -- DEMO
end

local function drawGame()
	gfx.clear() -- Clears the screen
	-- dvd:draw() -- DEMO
	gfx.sprite.update()
end

initialize()
loadGame()

function pd.update()
	updateGame()
	drawGame()
	pd.drawFPS(0,0) -- FPS widget
end