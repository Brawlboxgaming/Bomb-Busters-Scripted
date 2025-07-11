infoTokenPositions = {
    {-10.65, 1.81, -5.20},
    {-9.13, 1.81, -5.20},
    {-7.61, 1.81, -5.20},
    {-6.09, 1.81, -5.20},
    {-4.57, 1.81, -5.20},
    {-3.04, 1.81, -5.20},
    {-10.65, 1.81, -7.65},
    {-9.13, 1.81, -7.65},
    {-7.61, 1.81, -7.65},
    {-6.09, 1.81, -7.65},
    {-4.57, 1.81, -7.65},
    {-3.04, 1.81, -7.65},
    {-6.85, 1.81, -10.10}
}

function onDrop(playerColor)
    missionNum = tonumber(getObjectsWithAllTags({"Mission", "Destroy"})[1].getName())
    if missionNum > 54 then
        infoTokenPositions = {
            {-10.65, 1.81, -5.20},
            {-9.13, 1.81, -5.20},
            {-7.61, 1.81, -5.20},
            {-6.09, 1.81, -5.20},
            {-4.57, 1.81, -5.20},
            {-3.04, 1.81, -5.20},
            {-10.65, 1.81, -7.65},
            {-9.13, 1.81, -7.65},
            {-7.61, 1.81, -7.65},
            {-6.09, 1.81, -7.65},
            {-4.57, 1.81, -7.65},
            {-3.04, 1.81, -7.65},
            {-7.61, 1.81, -10.10},
            {-6.09, 1.81, -10.10}
        }
    end
    Wait.condition(function()
        for _, otherObj in ipairs(getObjects()) do
            if self ~= otherObj
            and otherObj.hasTag("Destroy")
            and math.abs(self.getPosition()[1] - otherObj.getPosition()[1]) < 0.2
            and math.abs(self.getPosition()[3] - otherObj.getPosition()[3]) < 0.2 then
                if otherObj.hasTag("InfoTokens") then
                    otherObj.setPosition({infoTokenPositions[tonumber(otherObj.getName())][1], infoTokenPositions[tonumber(otherObj.getName())][2] + 1, infoTokenPositions[tonumber(otherObj.getName())][3]})
                    otherObj.setRotation({0.00, 180.00, 0.00})
                    if (otherObj.getStateId() == 2) then
                        otherObj.setState(1)
                    end
                elseif otherObj.hasTag("x1Tokens")
                or otherObj.hasTag("x2Tokens")
                or otherObj.hasTag("x3Tokens")
                or otherObj.hasTag("XToken") then
                    objPos = self.getPosition()
                    otherObj.setPosition({objPos[1], objPos[2] + 0.5, objPos[3]})
                elseif otherObj.hasTag("EvenTokens")
                or otherObj.hasTag("OddTokens") then
                    otherObj.destruct()
                end
            end
        end
    end, function()
        return self.getVelocity():sqrMagnitude() < 0.1
    end)
end