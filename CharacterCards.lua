faceUrls = {
    ["Double Detector"] = "", -- Gets filled in later for the different character card visuals
    ["Walkie-Talkies"] = "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Items/Walkie%20Personal.png",
    ["Triple Detector"]  = "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Items/Triple%20Personal.png",
    ["General Radar"]   = "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Items/Radar%20Personal.png",
    ["X or Y ray"]   = "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Items/X%20or%20Y%20Personal.png"
}

cardNames = {
    [1] = "Double Detector",
    [2] = "Walkie-Talkies" ,
    [3] = "Triple Detector",
    [4] = "General Radar",
    [5] = "X or Y ray"
}

local cardConfigs = {
    [1] = { bannedMissions = {} }, -- Double Detector
    [2] = { bannedMissions = {35, 58}, minPlayers = 2 }, -- Walkie-Talkies
    [3] = { bannedMissions = {58} }, -- Triple Detector
    [4] = { bannedMissions = {58} }, -- General Radar
    [5] = { bannedMissions = {44, 45, 47, 49, 51, 54, 58, 59, 63, 65} } -- X or Y ray
}

-- Reimplementing custom mission character card overrides from Counter.lua
local missionConfigs = {
    [-2] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-3] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-4] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-5] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-8] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-9] = { characterCards = {"Triple Detector", "General Radar"} },
    [-10] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-11] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-12] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} },
    [-14] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar"} },
    [-15] = { characterCards = {"Walkie-Talkies", "Triple Detector", "X or Y ray"} },
    [-17] = { characterCards = {"Walkie-Talkies", "Triple Detector", "General Radar", "X or Y ray"} }
}

local playerColors = {
    Blue    = {0.118, 0.53, 1},
    Green   = {0.192, 0.701, 0.168},
    Purple  = {0.627, 0.125, 0.941},
    Red     = {0.856, 0.1, 0.094},
    White   = {1, 1, 1}
}

cardColor = nil
currentMissionNum = 0
backUrl = "https://files.timwi.de/Tabletop%20Simulator/Bomb%20Busters/Items/Personal%20Back.png"

function onSave()
    return JSON.encode({
        ddFaceUrl = faceUrls["Double Detector"],
        backUrl = backUrl
    })
end

function onLoad(save_state)
    -- Restore state if it exists
    if save_state ~= "" then
        local data = JSON.decode(save_state)
        if data then
            if data.ddFaceUrl then faceUrls["Double Detector"] = data.ddFaceUrl end
            if data.backUrl then backUrl = data.backUrl end
        end
    end

    -- Get the player color from tags
    for _, tag in ipairs(self.getTags()) do
        if playerColors[tag] then
            cardColor = tag
            break
        end
    end

    if not cardColor or self.hasTag("Captain") then return end

    -- Capture the Double Detector face URL and card back URL if not already saved
    if faceUrls["Double Detector"] == "" or backUrl == "" then
        local charCard = self.getCustomObject()
        if self.getName() == "" or self.getName() == "Double Detector" then
            if faceUrls["Double Detector"] == "" then faceUrls["Double Detector"] = charCard.face end
            self.setName("Double Detector")
        end
    end

    local mc = getObjectsWithAllTags({"Mission", "Destroy"})
    if #mc == 0 then return end
    local missionCard = mc[1]
    if missionCard then
        currentMissionNum = tonumber(missionCard.getName())
        if currentMissionNum and currentMissionNum > 30 then
                self.createButton({
                    click_function = "cycleCharacterCardLeft",
                    function_owner = self,
                    label          = "←",
                    scale          = { 2, 2, 2 },
                    position       = { -1.50, 0.3, 0.00 },
                    rotation       = { 0, 0, 0 },
                    width          = 150,
                    height         = 200,
                    font_size      = 100
                })

                self.createButton({
                    click_function = "cycleCharacterCardRight",
                    function_owner = self,
                    label          = "→",
                    scale          = { 2, 2, 2 },
                    position       = { 1.50, 0.3, 0.00 },
                    rotation       = { 0, 0, 0 },
                    width          = 150,
                    height         = 200,
                    font_size      = 100
                })

                self.createButton({
                    click_function = "confirmCharacterCard",
                    function_owner = self,
                    label          = "Confirm",
                    scale          = { 2, 2, 2 },
                    position       = { 0.00, 0.3, 2.00 },
                    rotation       = { 0, 0, 0 },
                    width          = 450,
                    height         = 200,
                    font_size      = 100
                })
        end
    end
end

function getTakenSelections()
    local taken = {}
    local charCards = getObjectsWithTag("Character")
    for _, obj in ipairs(charCards) do
        if obj.getGUID() ~= self.getGUID() then
            local name = obj.getName()
            for i, cardName in ipairs(cardNames) do
                if name == cardName and i ~= 1 then -- Double Detector (1) is always allowed to be multiple
                    taken[i] = true
                end
            end
        end
    end
    return taken
end

function isAllowed(selectionIndex)
    if selectionIndex == 1 then return true end -- Double Detector is always allowed
    
    local cardName = cardNames[selectionIndex]
    local config = cardConfigs[selectionIndex]
    
    -- Check mission override list (custom missions)
    local mConfig = missionConfigs[currentMissionNum]
    if mConfig and mConfig.characterCards then
        local found = false
        for _, allowedName in ipairs(mConfig.characterCards) do
            if allowedName == cardName then
                found = true
                break
            end
        end
        if not found then return false end
    end
    
    -- Check general banned missions
    if config.bannedMissions then
        for _, banned in ipairs(config.bannedMissions) do
            if currentMissionNum == banned then
                return false
            end
        end
    end
    
    -- Check min players
    if config.minPlayers then
        local playerNum = 0
        for _, p in ipairs(Player.getPlayers()) do
            if p.seated then playerNum = playerNum + 1 end
        end
        if playerNum < config.minPlayers then
            return false
        end
    end
    
    return true
end

function cycle(direction, playerColor)
    if playerColor ~= cardColor then return end
    
    local taken = getTakenSelections()
    local name = self.getName()
    local currentSelection = 1
    for i, cardName in ipairs(cardNames) do
        if name == cardName then
            currentSelection = i
            break
        end
    end

    local nextSelection = currentSelection
    local found = false
    
    for i = 1, #cardNames - 1 do
        nextSelection = nextSelection + direction
        if nextSelection > #cardNames then nextSelection = 1
        elseif nextSelection < 1 then nextSelection = #cardNames end
        
        -- Check if it's taken (except DD) AND if it's allowed for this mission
        if (nextSelection == 1 or not taken[nextSelection]) and isAllowed(nextSelection) then
            found = true
            break
        end
    end

    if not found or nextSelection == currentSelection then
        printToColor("There are no other character cards available.", playerColors[cardColor], playerColors[cardColor])
        return
    end

    self.setName(cardNames[nextSelection])
    self.setCustomObject({
        face = faceUrls[cardNames[nextSelection]],
        back = backUrl
    })
    self.reload()
end

function cycleCharacterCardLeft(obj, playerColor)
    cycle(-1, playerColor)
end

function cycleCharacterCardRight(obj, playerColor)
    cycle(1, playerColor)
end

function confirmCharacterCard(obj, playerColor)
    if playerColor ~= cardColor then return end
    self.clearButtons()
end
