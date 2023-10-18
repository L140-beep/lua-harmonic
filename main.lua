require "harmonic"

function love.load()
    width = love.graphics.getWidth()
    height = love.graphics.getHeight()
    A = 20
    vel = 0.005
    angle = 0

    harmonic1 = Harmonic:create(width, height, A, vel, angle, 300, 0)
    harmonic2 = Harmonic:create(width, height, 25, 0.002, angle, 200, 50)
    harmonic3 = Harmonic:create(150, height, 25, 0.002, angle, 400, 300)
end

function love.update()
end

function love.draw()
    harmonic1:draw()
    harmonic2:draw()
    harmonic3:draw()
end