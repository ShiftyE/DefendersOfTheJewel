-- DefendersOfTheJewel

-- Use this function to perform your initial setup
function setup()
    --start functions
    
    function logic.writeSaveData()
        for k, v in pairs(logic.saveFile) do
            saveLocalData("saveFile_"..k, v)
        end
        return true
    end
    
    function logic.readSaveData()
        local totalData = listLocalData()
        local saveData = {}
        for i in #totalData do
            if string.sub(totalData[i], 1, 9) == "saveFile_" then
                table.insert(saveData, readLocalData(totalData[i]))
            end
        end
        return saveData
    end
    
    --start hooks
    
    function logic.startGame()
        --takes the player to the game board
        logic.isInGame = true
    end
    
    --start variables
    
    logic.saveFile = {}
    logic.isInGame = false
    
    --start startup logic
    
    if not readLocalData("hasRanTutorial") then
        --checks to see if it is the player's first time playing the gane
        if renderer.runTutorial() == true then
            --checks to see if the tutorial has been successfully run
            saveLocalData("hasRanTutorial", true)
        end
    end
end

-- This function gets called once every frame
function draw()
    -- This sets a dark background color 
    background(40, 40, 50)

    -- This sets the line thickness
    strokeWidth(5)

    -- Do your drawing here
    
end

