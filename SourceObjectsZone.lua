function onLoad()
    for _, object in ipairs(self.getObjects()) do
        object.setInvisibleTo({"Blue", "Green", "Purple", "Red", "White", "Grey"})
    end
end

function onObjectEnterScriptingZone(zone, object)
    if zone.getGUID() == self.getGUID() then
        object.setInvisibleTo({"Blue", "Green", "Purple", "Red", "White", "Grey"})
    end
end

function onObjectLeaveScriptingZone(zone, object)
    if zone.getGUID() == self.getGUID() then
        object.setInvisibleTo({})
    end
end