function love.load()
	x = 100
	y = 200
end


function move(dt)
	if love.keyboard.isDown("right") then
		x = x + 100 * dt
	end
	if love.keyboard.isDown("left") then
		x = x - 100 * dt
	end
end

function love.update(dt)
	move(dt)
end


function love.draw()
	love.graphics.circle("fill", x, y, 100, 25)
end