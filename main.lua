function love.load()
	listOfParticles = {}
	for i = 1, 100 do
		createParticle()
	end
end

function createParticle()
	particle = {}
	particle.x = 0
	particle.y = 0
	particle.size = 0
	particle.red = 0
	particle.green = 0
	particle.blue = 0
	for i, v in ipairs(listOfParticles) do
		v.x = math.random(0, 800)
		v.y = math.random(0, 50)
		v.size = math.random(0, 25)
		v.red = math.random(0, 255)
		v.green = math.random(0, 255)
		v.blue = math.random(0, 255)
	end
	table.insert(listOfParticles, particle)
end

function love.update(dt)
	--for i, v in ipairs(listOfParticles) do
	--	v.y = v.y + 50 * dt
	--end
end


function love.draw()
	for i, v in ipairs(listOfParticles) do
		love.graphics.setColor(v.red, v.green, v.blue)
		love.graphics.circle("fill", v.x, v.y, v.size)
	end
	love.graphics.print("eheew", 100, 100)
end