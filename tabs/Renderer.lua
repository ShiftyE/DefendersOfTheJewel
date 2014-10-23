renderer = {}
renderer.imageBuffers = {}

--resize all assets to the correct size
for k, v in pairs(assets) do
    local originalAssetName, originalAsset = v()
    --multiplier is subject to change
    --codea only
    fullSizeAssets[originalAssetName] = resize.resize(originalAsset, 4*ContentScaleFactor)
end

--code to test the buffer system
renderer.currentBuffer = "test"
renderer.imageBuffers.test = image(WIDTH, HEIGHT)
setContext(renderer.imageBuffers.test)
sprite(fullSizeAssets.testTurret, WIDTH/2, HEIGHT/2)
setContext()

function renderer.draw()
    --called 60 times a second
    sprite(renderer.imageBuffers[renderer.currentBuffer], WIDTH/2, HEIGHT/2)
end

function renderer.runTutorial()
    return false
    --return true
end

function renderer.splashScreen()
    renderer.imageBuffers.splashScreen = image(WIDTH, HEIGHT)
    renderer.currentBuffer = "splashScreen"
    setContext(renderer.imageBuffers.splashScreen)
    background(46, 228, 230, 255)
    fill(255, 255, 255, 255)
    text("Loading...", WIDTH/2, HEIGHT/2)
    setContext()
end

function renderer.stopSplashScreen()
    renderer.currentBuffer = "test"
end
