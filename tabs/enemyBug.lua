enemyBug = class()

function enemyBug:init(x, y)
    -- you can accept and set parameters here
    self.x = x
    self.y = y
    self.sprite = fullSizeAssets.enemyBug
    self.health = 100
end

function enemyBug:draw()
    -- Codea does not automatically call this method
end

function enemyBug:touched(touch)
    -- Codea does not automatically call this method
end

function enemyBug:hit(damage)
    self.health = self.health - damage
    if self.health <= 0 then
        self = nil
    end
end
