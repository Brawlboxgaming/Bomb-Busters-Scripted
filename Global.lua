DEBUG = false
DEBUG_PLAYER_COUNT = 5

function onLoad()
    if DEBUG then return end
    -- For the counter object, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/Counter.lua", function(e)
        counter = getObjectFromGUID("151b73")
        -- If there's an error during the web request, log it.
        if e.is_error then
            log(e.error)
        -- If the request is successful, the text is not empty.
        elseif e.text ~= "" then
            -- Set the fetched script to the object.
            counter.setLuaScript(e.text)
            -- Reload the object's script to apply the changes.
            counter.reload()
        end
    end)
    -- For the wire objects, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/Wire.lua", function(e)
        -- If there's an error during the web request, log it.
        if e.is_error then
            log(e.error)
        -- If the request is successful, the text is not empty.
        elseif e.text ~= "" then
            allBagsBag = getObjectsWithTag("All")[1]
            local redWireBag = allBagsBag.takeObject({position = {-55.85, 8, -29.70}, smooth = false})
            local yellowWireBag = allBagsBag.takeObject({position = {-55.85, 16, -29.70}, smooth = false})
            local blueWireBag = allBagsBag.takeObject({position = {-55.85, 24, -29.70}, smooth = false})
            redWireBag.locked = true
            yellowWireBag.locked = true
            blueWireBag.locked = true
            wireBags = {redWireBag, yellowWireBag, blueWireBag}
            for _, bag in ipairs(wireBags) do
                for _, wire in ipairs(bag.getObjects()) do
                    -- Set the fetched script to each wire object.
                    wire.lua_script = e.text
                end
                -- Reload the wire deck's script to apply the changes.
                bag.reload()
            end
        end
    end)

    
    Wait.frames(function()
        -- For the token objects, set the Lua script to the one fetched from the web.
        WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/ColouredTokens.lua", function(e)
            -- If there's an error during the web request, log it.
            if e.is_error then
                log(e.error)
            -- If the request is successful, the text is not empty.
            elseif e.text ~= "" then
                allBagsBag = getObjectsWithTag("All")[1]
                if allBagsBag then
                    local validationBag = allBagsBag.takeObject({position = {-55.85, 32, -29.70}, smooth = false})
                    local attentionBag = allBagsBag.takeObject({position = {-55.85, 40, -29.70}, smooth = false})
                    local warningBag = allBagsBag.takeObject({position = {-55.85, 48, -29.70}, smooth = false})
                    validationBag.locked = true
                    attentionBag.locked = true
                    warningBag.locked = true
                    tokenBags = {validationBag, attentionBag, warningBag}
                    for _, bag in ipairs(tokenBags) do
                        token = bag.takeObject()
                        -- Set the fetched script to the token bag object.
                        token.setLuaScript(e.text)
                        -- Reload the object's script to apply the changes.
                        token.reload()
                        bag.reset()
                        bag.putObject(token)
                    end
                end
            end
        end)
    end, 40)
    
    Wait.frames(function()
        allBagsBag = getObjectsWithTag("All")[1]
        if allBagsBag then
            allModifiedBags = getObjectsWithTag("Scripted")
            for _, bag in ipairs(allModifiedBags) do
                bag.locked = false
                allBagsBag.putObject(bag)
            end
        end
    end, 80)

    Wait.frames(function()
        allBagsBag = getObjectsWithTag("All")[1]
        if allBagsBag then
            infiniteBag = getObjectsWithTag("AllInfinite")[1]
            infiniteBag.putObject(allBagsBag)
        end
    end, 120)

    -- For the wire zones, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/WireZones.lua", function(e)
        -- If there's an error during the web request, log it.
        if e.is_error then
            log(e.error)
        -- If the request is successful, the text is not empty.
        elseif e.text ~= "" then
            allWireZones = {
                "735b22", -- Blue
                "144eda", -- Green
                "b45794", -- Purple
                "cca9b9", -- Red
                "3604a7" -- White
            }
            for _, guid in ipairs(allWireZones) do
                local wireZone = getObjectFromGUID(guid)
                -- Set the fetched script to each wire zone object.
                wireZone.setLuaScript(e.text)
                colors = {
                    "Blue",
                    "Green",
                    "Purple",
                    "Red",
                    "White",
                    "Grey"
                }
                colorIx = indexOf(allWireZones, guid)
                zoneColor = colors[colorIx]
                table.remove(colors, colorIx)
                for _, object in ipairs(wireZone.getObjects()) do
                    if object.hasTag("Outer") then
                        object.setHiddenFrom({zoneColor})
                    else
                        object.setHiddenFrom(colors)
                    end
                end
            end
        end
    end)
end

function spawn(missionNum)
    local counter = getObjectFromGUID("151b73")
    local config = counter.call("getMissionConfig", missionNum)
    if config == nil then
        log("Mission configuration not found for mission number: " .. missionNum)
        return
    end
    
    local folderName = "Missions"
    if missionNum < 1 then
        folderName = "Custom Missions"
    end

    -- Determine URLs based on mission type and config
    local params
    if config and config.missionCardFrontUrl and config.missionCardBackUrl then
        -- Mission 0 with custom URLs
        params = {
            face = config.missionCardFrontUrl,
            back = config.missionCardBackUrl
        }
    else
        -- Default URL pattern or fallback
        if missionNum == 0 and (not config.missionCardFrontUrl or not config.missionCardBackUrl) then
            printToAll("Error: No mission card found for mission " .. missionNum .. ". Using default card.", {1, 0, 0})
            params = {
                face = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Front.png",
                back = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Back.png"
            }
        else
            -- Standard URL pattern
            params = {
                face = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/" .. folderName .. "/Mission " .. missionNum .. " Front.png",
                back = "https://files.timwi.de/Tabletop Simulator/Bomb Busters/" .. folderName .. "/Mission " .. missionNum .. " Back.png"
            }
        end
    end
    missionCard = spawnObjectJSON({json = [[{
        "GUID": "b7f94a",
        "Name": "CardCustom",
        "Transform": {
            "posX": -16.77,
            "posY": 1.52,
            "posZ": -10.55,
            "rotX": 0.00,
            "rotY": 180.00,
            "rotZ": 180.00,
            "scaleX": 3.36110425,
            "scaleY": 1.0,
            "scaleZ": 3.39677835
        },
        "Nickname": "",
        "Description": "",
        "GMNotes": "",
        "AltLookAngle": {
            "x": 0.0,
            "y": 0.0,
            "z": 0.0
        },
        "ColorDiffuse": {
            "r": 0.713235259,
            "g": 0.713235259,
            "b": 0.713235259
        },
        "Tags": [
            "Mission",
            "Destroy"
        ],
        "LayoutGroupSortIndex": 0,
        "Value": 0,
        "Locked": false,
        "Grid": true,
        "Snap": true,
        "IgnoreFoW": false,
        "MeasureMovement": false,
        "DragSelectable": true,
        "Autoraise": true,
        "Sticky": true,
        "Tooltip": true,
        "GridProjection": false,
        "HideWhenFaceDown": true,
        "Hands": true,
        "CardID": 162700,
        "SidewaysCard": false,
        "CustomDeck": {
            "1627": {
            "FaceURL": "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Front.png",
            "BackURL": "https://files.timwi.de/Tabletop Simulator/Bomb Busters/Missions/Mission 1 Back.png",
            "NumWidth": 1,
            "NumHeight": 1,
            "BackIsHidden": true,
            "UniqueBack": false,
            "Type": 0
            }
        },
        "LuaScript": "",
        "LuaScriptState": "",
        "XmlUI": ""
    }]]})
    
    missionCard.setName(missionNum)
    missionCard.setCustomObject(params)
    missionCard.reload()
end

-----------------
--- UTILITIES ---
-----------------

function indexOf(array, value)
    for i, v in ipairs(array) do
        if v == value then
            return i
        end
    end
    return nil
end