renderer = {}

local imageBuffer = image(WIDTH, HEIGHT)

function renderer.draw()
    --called 60 times a second
    sprite(imageBuffer, 1, 1)
end

function renderer.runTutorial()
    return false
    --return true
end

function renderer.splashScreen()
    setContext(imageBuffer)
    background(46, 228, 230, 255)
    fill(255, 255, 255, 255)
    text("Loading...", WIDTH/2, HEIGHT/2)
    setContext()
end

function renderer.stopSplashScreen()
    imageBuffer = image(WIDTH, HEIGHT)
end
