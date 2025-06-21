function onDrop(playerColor)
    Wait.condition(function()
        for _, otherObj in ipairs(getObjects()) do
            if self ~= otherObj and
            (otherObj.hasTag("Attention")
            or otherObj.hasTag("Validation")
            or otherObj.hasTag("Warning"))
            and otherObj.hasTag("Destroy")
            and math.abs(self.getPosition()[1] - otherObj.getPosition()[1]) < 0.1
            and math.abs(self.getPosition()[3] - otherObj.getPosition()[3]) < 0.1 then
                otherObj.destruct()
            end
        end
    end, function()
        return self.getVelocity():sqrMagnitude() < 0.1
    end)
end