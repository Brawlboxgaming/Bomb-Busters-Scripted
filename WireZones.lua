function onLoad()
    guids = {
        "735b22", -- Blue
        "144eda", -- Green
        "b45794", -- Purple
        "cca9b9", -- Red
        "3604a7", -- White
        "000000"  -- Grey
    }
    colors = {
        "Blue",
        "Green",
        "Purple",
        "Red",
        "White",
        "Grey"
    }
    zoneColor = colors[self.getGUID()]
    table.remove(colors, indexOf(guids, self.getGUID()))
    for _, object in ipairs(self.getObjects()) do
        if object.hasTag("Outer") then
            object.setHiddenFrom({zoneColor})
        else
            object.setHiddenFrom(colors)
        end
    end
end

function onObjectEnterScriptingZone(zone, object)
    if zone.getGUID() == self.getGUID() then
        guids = {
            "735b22", -- Blue
            "144eda", -- Green
            "b45794", -- Purple
            "cca9b9", -- Red
            "3604a7", -- White
            "000000"  -- Grey
        }
        colors = {
            "Blue",
            "Green",
            "Purple",
            "Red",
            "White",
            "Grey"
        }
        zoneColor = colors[self.getGUID()]
        table.remove(colors, indexOf(guids, self.getGUID()))
        if object.hasTag("Outer") then
            object.setHiddenFrom({zoneColor})
        else
            object.setHiddenFrom(colors)
        end
    end
end

function onObjectLeaveScriptingZone(zone, object)
    if zone.getGUID() == self.getGUID() then
        object.setHiddenFrom({})
    end
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