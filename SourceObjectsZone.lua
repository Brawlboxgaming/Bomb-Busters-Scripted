function onLoad()
    zone = getObjectFromGUID("f55aed")
    for _, object in ipairs(zone.getObjects()) do
        object.setInvisibleTo({"Blue", "Green", "Purple", "Red", "White", "Grey"})
    end
end

function onObjectEnterScriptingZone(zone, object)
    if zone.getGUID() == "f55aed" then
        object.setInvisibleTo({"Blue", "Green", "Purple", "Red", "White", "Grey"})
    end
end

function onObjectLeaveScriptingZone(zone, object)
    if zone.getGUID() == "f55aed" then
        object.setInvisibleTo({})
    end
end