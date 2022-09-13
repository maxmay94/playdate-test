local pd <const> = playdate
local gfx <const> = pd.graphics

class('Circle').extends(gfx.sprite)

function Circle:init(x, y, r)
  Circle.super.init(self)
  self:moveTo(x, y)
  local circleImage = gfx.image.new(r * 2, r * 2)
	gfx.pushContext(circleImage)
		gfx.fillCircleAtPoint(r, r, r)
	gfx.popContext()
	local circleSprite = gfx.sprite.new(circleImage)
	circleSprite:moveTo(200, 120)
end