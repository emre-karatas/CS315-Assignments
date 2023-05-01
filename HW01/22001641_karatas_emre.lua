-- Declare an empty list
local emptyList = {}

-- Initialize a list with some values
local famousCSPeople = {"Tim Barners-Lee", "Alan Turing", "Barbara Liskov"}

-- Check if the list is empty or not
print(#emptyList == 0 and "emptyList is empty" or "emptyList is not empty")
print(#famousCSPeople == 0 and "famousCSPeople is empty" or "famousCSPeople is not empty")

-- Add a new element to a list
table.insert(famousCSPeople, "Lars Bak")

-- Check if a particular element exists in the list
function contains(list, element)
    for _, value in ipairs(list) do
        if value == element then
            return true
        end
    end
    return false
end

if contains(famousCSPeople, "Ada Lovelace") then
    print("Ada Lovelace exists in famousCSPeople")
else
    print("Ada Lovelace does not exist in famousCSPeople")
end

-- Remove a particular element from the list
function removeElement(list, element)
    for i, value in ipairs(list) do
        if value == element then
            table.remove(list, i)
            break
        end
    end
end

removeElement(famousCSPeople, "Barbara Liskov")

-- Get the head and the tail of a list
if #famousCSPeople > 0 then
    local head = famousCSPeople[1]
    local tail = {table.unpack(famousCSPeople, 2)}

    -- Print the head and tail of the list with labels
    print("Head is: " .. head)
    print("Tail is: " .. table.concat(tail, ", "))
else
    print("The famousCSPeople array is empty or not defined.")
end

-- Print all of the elements in the list
if #famousCSPeople > 0 then
    print(table.concat(famousCSPeople, ", "))
else
    print("The famousCSPeople array is empty or not defined.")
end
