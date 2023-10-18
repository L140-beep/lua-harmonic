Harmonic = {}
Harmonic.__index = Harmonic

function Harmonic:create(width, height, A, vel, angle, y, x)
    local harmonic = {}
    harmonic.width = width
    harmonic.height = height
    harmonic.A = A
    harmonic.vel = vel
    harmonic.angle = angle
    harmonic.y = y
    harmonic.x = x
    setmetatable(harmonic, Harmonic)
    return harmonic
end

function Harmonic:draw()
    for x = self.x, self.x + self.width, 8 do
        local y = self.A * math.sin((self.angle + x / 240) * 4) + self.y
        y = y + self.A * math.sin((self.angle + x / 240) * 7)
        love.graphics.setColor(1, 1, 1)
        love.graphics.circle("line", x, y, 10)
        love.graphics.setColor((self.width)/x, 0, x/(self.width), 0.5)
        love.graphics.circle("fill", x, y, 10)
    end
    self.angle = self.angle + self.vel
end