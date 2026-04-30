local manipulator = peripheral.find("magnetic_card_manipulator")

local function create_card(sec_level)
    
    if manipulator.hasCard() then
        if sec_level == "5" then
            manipulator.setLabel("O5 KEYCARD")
        else
            manipulator.setLabel("L%s Keycard", sec_level)
        end

        manipulator.writeCard(sec_level)
        
    end
end


while true do
    term.clear()
    write("Level: ")
    local input = read()
    create_card(input)
end