-- Generated with TexturePacker (http://www.codeandweb.com/texturepacker)
-- with a custom export by Stewart Bracken (http://stewart.bracken.bz)
--
-- $TexturePacker:SmartUpdate:71d7a94ebc8b55040ac7e96c4becea9e:b8b9e5dc1cd669e3932a3b4766aec1d2:c46243f411ca86fe596665ab352bd775$
--
--[[------------------------------------------------------------------------
-- Example Usage --

function love.load()
	myAtlas = require("spritesheet")
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
local Texture = love.graphics.newImage( "res/sprites/mapsprites.png" )

Quads["Boat"] = love.graphics.newQuad(2, 2, 32, 32, 206, 36 )
Quads["City"] = love.graphics.newQuad(36, 2, 32, 32, 206, 36 )
Quads["Dock"] = love.graphics.newQuad(70, 2, 32, 32, 206, 36 )
Quads["Grass"] = love.graphics.newQuad(104, 2, 32, 32, 206, 36 )
Quads["Sand"] = love.graphics.newQuad(138, 2, 32, 32, 206, 36 )
Quads["Water"] = love.graphics.newQuad(172, 2, 32, 32, 206, 36 )

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
