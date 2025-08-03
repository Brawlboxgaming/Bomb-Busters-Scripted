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
            allWireDecks = {
                "e19471", -- Blue Wires
                "100a8d", -- Yellow Wires
                "9ef350"  -- Red Wires
            }
            for _, guid in ipairs(allWireDecks) do
                local wireDeck = getObjectFromGUID(guid)
                for _, wire in ipairs(wireDeck.getObjects()) do
                    -- Set the fetched script to each wire object.
                    wire.lua_script = e.text
                end
                -- Reload the wire deck's script to apply the changes.
                wireDeck.reload()
            end
        end
    end)
    -- For the token objects, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/ColouredTokens.lua", function(e)
        -- If there's an error during the web request, log it.
        if e.is_error then
            log(e.error)
        -- If the request is successful, the text is not empty.
        elseif e.text ~= "" then
            allTokenBags = {
                "71d8fc", -- Validation Tokens
                "65ad93", -- Attention Tokens
                "598943", -- Warning Tokens
                "44bcac", -- Validation Tokens
                "00d52c", -- Attention Tokens
                "13939b"  -- Warning Tokens
            }
            for _, guid in ipairs(allTokenBags) do
                local tokenBag = getObjectFromGUID(guid)
                if tokenBag then
                    token = tokenBag.takeObject()
                    -- Set the fetched script to the token bag object.
                    token.setLuaScript(e.text)
                    -- Reload the object's script to apply the changes.
                    token.reload()
                    tokenBag.reset()
                    tokenBag.putObject(token)
                end
            end
        end
    end)
    -- For the scripting zones, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/SourceObjectsZone.lua", function(e)
        -- If there's an error during the web request, log it.
        if e.is_error then
            log(e.error)
        -- If the request is successful, the text is not empty.
        elseif e.text ~= "" then
            zone = getObjectFromGUID("f55aed") -- Source Objects Zone
            -- Set the fetched script to the object.
            zone.setLuaScript(e.text)
            for _, object in ipairs(zone.getObjects()) do
                object.setInvisibleTo({"Blue", "Green", "Purple", "Red", "White", "Grey"})
            end
        end
    end)
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

    -- Create mission card object once
    local missionCard = getObjectsWithTag("Mission")[1].clone({position = {-34.45, 1.50, -2.63}})
    missionCard.locked = false
    missionCard.addTag("Destroy")
    missionCard.setName(missionNum)

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