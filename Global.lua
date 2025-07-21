DEBUG = false

DEBUG_PLAYER_COUNT = 5

DEBUG_PLAYER_COLORS = {"Blue", "Green", "Purple", "Red", "White"}

function onLoad()
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
        allWireDecks = {
            "4794d6", -- Blue Wires
            "47fcdf", -- Yellow Wires
            "d850b2"  -- Red Wires
        }
        for _, guid in ipairs(allWireDecks) do
            local wireDeck = getObjectFromGUID(guid)
            -- If there's an error during the web request, log it.
            if e.is_error then
                log(e.error)
            -- If the request is successful, the text is not empty.
            elseif e.text ~= "" then
                for _, wire in ipairs(wireDeck.getObjects()) do
                    -- Set the fetched script to each wire object.
                    wire.lua_script = e.text
                end
            end
        end
    end)
    -- For the token objects, set the Lua script to the one fetched from the web.
    WebRequest.get("https://raw.githubusercontent.com/Brawlboxgaming/Bomb-Busters-Scripted/refs/heads/main/ColouredTokens.lua", function(e)
        allTokenBags = {
            "6ae025", -- Validation Tokens
            "1e89b5", -- Attention Tokens
            "eda3e6"  -- Warning Tokens
        }
        for _, guid in ipairs(allTokenBags) do
            local tokenBag = getObjectFromGUID(guid)
            -- If there's an error during the web request, log it.
            if e.is_error then
                log(e.error)
            -- If the request is successful, the text is not empty.
            elseif e.text ~= "" then
                token = tokenBag.takeObject()
                -- Set the fetched script to the token bag object.
                token.setLuaScript(e.text)
                -- Reload the object's script to apply the changes.
                token.reload()
                tokenBag.reset()
                tokenBag.putObject(token)
            end
        end
    end)
end