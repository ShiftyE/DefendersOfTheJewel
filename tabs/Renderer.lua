renderer = {}

local imageBuffer = image(WIDTH, HEIGHT)

function renderer.draw()
    --called 60 times a second
    sprite(imageBuffer, 1, 1)
end

function renderer.runTutorial()
    return true
end

function renderer.splashScreen()
    
end
