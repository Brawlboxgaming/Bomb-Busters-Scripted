function onLoad()
    colors = {
        ["735b22"] = "Blue",
        ["144eda"] = "Green",
        ["b45794"] = "Purple",
        ["cca9b9"] = "Red",
        ["3604a7"] = "White",
        ["Grey"] = "Grey"
    }
    if #self.getTags() > 0 then
        zoneColor = colors[self.getGUID()]
        table.remove(colors, indexOf(colors, zoneColor))
        log(colors)
        for _, object in ipairs(self.getObjects()) do
            if object.hasTag("Outer") then
                object.setHiddenFrom({zoneColor})
            else
                object.setHiddenFrom(colors)
            end 
        end
    end
end

function onObjectEnterScriptingZone(zone, object)
    if zone.getGUID() == self.getGUID() then
        colors = {
            ["735b22"] = "Blue",
            ["144eda"] = "Green",
            ["b45794"] = "Purple",
            ["cca9b9"] = "Red",
            ["3604a7"] = "White",
            ["Grey"] = "Grey"
        }
        zoneColor = colors[self.getGUID()]
        table.remove(colors, indexOf(colors, zoneColor))
        log(colors)
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