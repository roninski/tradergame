-- Generated with TexturePacker (http://www.codeandweb.com/texturepacker)
-- with a custom export by Stewart Bracken (http://stewart.bracken.bz)
--
-- $TexturePacker:SmartUpdate:2554fd0fe010cb728fe0b6bdc7ce2037:d9ef8e9dda6f1ee75ce54a1516fb999c:4b86055f2b53ae142de1353c0ec19794$
--
--[[------------------------------------------------------------------------
-- Example Usage --

function love.load()
	myAtlas = require("boatsprites")
	batch = love.graphics.newSpriteBatch( myAtlas.texture, 100, "stream" )
end
function love.draw()
	batch:clear()
	batch:bind()
		batch:add( myAtlas.quads['mySpriteName'], love.mouse.getX(), love.mouse.getY() )
	batch:unbind()
	love.graphics.draw(batch)
end

--]]------------------------------------------------------------------------

local TextureAtlas = {}
local Quads = {}
local Texture = love.graphics.newImage( "res/sprites/boatsprites.png" )

Quads["Down"] = love.graphics.newQuad(2, 2, 26, 32, 126, 36 )
Quads["Left"] = love.graphics.newQuad(58, 2, 32, 30, 126, 36 )
Quads["Right"] = love.graphics.newQuad(92, 2, 32, 30, 126, 36 )
Quads["Up"] = love.graphics.newQuad(30, 2, 26, 32, 126, 36 )

function TextureAtlas:getDimensions(quadName)
	local quad = self.quads[quadName]
	if not quad then
		return nil 
	end
	local x, y, w, h = quad:getViewport()
    return w, h
end

TextureAtlas.quads = Quads
TextureAtlas.texture = Texture

return TextureAtlas
