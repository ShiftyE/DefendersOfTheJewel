-- DefendersOfTheJewel

-- Use this function to perform your initial setup
function setup()
    --start functions
    
    function saveData()
        for k, v in pairs(saveFile) do
            saveLocalData(k, v)
        end
        return true
    end
    
    --start hooks
    
    function logic.startGame()
        --takes the player to the game board
    end
    
    --start variables
    
    saveFile = {}
    
    --start startup logic
    
    if readLocalData("hasRanTutorial") == false then
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

