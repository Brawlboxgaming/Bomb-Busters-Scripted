infoTokenPositions = {
    {-10.71, 1.61, -5.20},
    {-9.18, 1.61, -5.20},
    {-7.65, 1.61, -5.20},
    {-6.12, 1.61, -5.20},
    {-4.59, 1.61, -5.20},
    {-3.06, 1.61, -5.20},
    {-10.71, 1.61, -7.65},
    {-9.18, 1.61, -7.65},
    {-7.65, 1.61, -7.65},
    {-6.12, 1.61, -7.65},
    {-4.59, 1.61, -7.65},
    {-3.06, 1.61, -7.65},
    {-6.89, 1.61, -10.10}
}

function onDrop(playerColor)
    Wait.condition(function()
        for _, otherObj in ipairs(getObjects()) do
            if self ~= otherObj
            and otherObj.hasTag("Destroy")
            and math.abs(self.getPosition()[1] - otherObj.getPosition()[1]) < 0.2
            and math.abs(self.getPosition()[3] - otherObj.getPosition()[3]) < 0.2 then
                if otherObj.hasTag("InfoTokens") then
                    otherObj.setPosition({infoTokenPositions[tonumber(otherObj.getName())][1], infoTokenPositions[tonumber(otherObj.getName())][2] + 0.1, infoTokenPositions[tonumber(otherObj.getName())][3]})
                    otherObj.setRotation({0.00, 180.00, 0.00})
                    otherObj.setState(1)
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