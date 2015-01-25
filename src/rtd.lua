local dice = {}
function dice.init()
	math.randomseed(os.time())
end

function dice.roll(value)
	x, y = string.match(value, "(%d+)d(%d+)")
	total = 0
	for i=1, x do
		total = total + math.random(1, y)
	end
	return total
end

return dice