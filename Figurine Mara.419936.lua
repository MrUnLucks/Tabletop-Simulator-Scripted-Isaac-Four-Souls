function theySeeMeRollin()
    local die = getObjectFromGUID("38165b")
    die.addTorque({math.random(10,20)*(math.random(0,1)*2-1), math.random(10,20)*(math.random(0,1)*2-1), math.random(10,20)*(math.random(0,1)*2-1)})
    die.addForce({0, math.random(20,25), 0})
    Wait.condition(
        function()
            if die.isDestroyed() then
                print("Die was destroyed before it came to rest.")
            else
                print(die.getRotationValue() .. " was rolled.")
            end
        end,
        function()
            return die.isDestroyed() or die.resting
        end
    )
end

function myGetPlayer()
    for _, player in ipairs(Player.getPlayers()) do
        -- player.changeColor("Red")
        player.showInfoDialog("Test")
    end
end