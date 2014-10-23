-- DefendersOfTheJewel
displayMode(OVERLAY)

-- Use this function to perform your initial setup
function setup()
    --start variables
    
    logic = {}
    logic.saveFile = {}
    logic.isInGame = false
    
    --start functions
    
    function logic.writeSaveData()
        for k, v in pairs(logic.saveFile) do
            --codea only
            saveLocalData("saveFile_"..k, v)
        end
        return true
    end
    
    function logic.readSaveData()
        --codea only
        local totalData = listLocalData()
        local saveData = {}
        for i in #totalData do
            if string.sub(totalData[i], 1, 9) == "saveFile_" then
                --codea only
                table.insert(saveData, string.sub(readLocalData(totalData[i]), 10, -1))
            end
        end
        return saveData
    end
    
    function logic.draw()
        --called 60 times a second
    end
    
    --start hooks
    
    function logic.startGame()
        --takes the player to the game board
        logic.isInGame = true
    end
    
    --start startup logic
    
    renderer.splashScreen()
    
    --resize all assets to the correct size
    fullSizeAssets = {}
    for k, v in pairs(assets) do
        local originalAssetName, originalAsset = v()
        --multiplier is subject to change
        fullSizeAssets[originalAssetName] = resize.resize(originalAsset, 4)
    end
    
    renderer.stopSplashScreen()
    
    --codea only
    if not readLocalData("hasRanTutorial") then
        --checks to see if it is the player's first time playing the gane
        if renderer.runTutorial() == true then
            --checks to see if the tutorial has been successfully run
            --codea only
            saveLocalData("hasRanTutorial", true)
        end
    end
end

--codea only
function draw()
    --codea only
    background(175, 41, 41, 255)
    sprite(fullSizeAssets.testTurret, WIDTH/2, HEIGHT/2)
    logic.draw()
    renderer.draw()
end

