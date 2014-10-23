-- DefendersOfTheJewel
displayMode(OVERLAY)
supportedOrientations(LANDSCAPE_ANY)

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
    
    function logic.loadMap(mapName)
        
    end
    
    function logic.draw()
        --called 60 times a second
    end
    
    --start hooks
    
    function logic.startGame()
        --takes the player to the game board
        logic.isInGame = true
    end
    
    function logic.placeDefence(gridX, gridY, defenceOrientation)
        --places a defence at gridX and gridY with defenceOrientation
    end
    
    --start startup logic
    
    renderer.splashScreen()
    
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
    background(255, 255, 255, 255)
    logic.draw()
    renderer.draw()
end

function touched(touch)
    renderer.touched(touch)
end
