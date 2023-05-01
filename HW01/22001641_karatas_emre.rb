# Declare an empty list
empty_list = []

# Initialize a list with some values
famous_cs_people = ["Tim Barners-Lee", "Alan Turing", "Barbara Liskov"]

# Check if the list is empty or not
puts empty_list.empty? ? "emptyList is empty" : "emptyList is not empty"
puts famous_cs_people.empty? ? "famousCSPeople is empty" : "famousCSPeople is not empty"

# Add a new element to the list, if it exists and is not frozen
if famous_cs_people && !famous_cs_people.frozen?
  famous_cs_people << "Lars Bak"
else
  puts "Error: famous_cs_people is not defined or is frozen."
end

# Check if a particular element exists in the list
def contains(list, element)
  list.include?(element)
end

if contains(famous_cs_people, "Ada Lovelace")
  puts "Ada Lovelace exists in famousCSPeople"
else
  puts "Ada Lovelace does not exist in famousCSPeople"
end

# Define the function to remove an element from the list, if it exists
def remove_element(list, element)
  if list && !list.frozen?
    list.delete(element)
  else
    puts "Error: The list is not defined or is frozen."
  end
end

# Call the function to remove an element from the list, if it exists
remove_element(famous_cs_people, "Barbara Liskov")


# Get the head and the tail of a list
if famous_cs_people.length > 0
  head = famous_cs_people.first
  tail = famous_cs_people.drop(1)

  # Print the head and tail of the list with labels
  puts "Head is: #{head}"
  puts "Tail is: #{tail.join(', ')}"
else
  puts "The famousCSPeople array is empty or not defined."
end

# Print all of the elements in the list
if famous_cs_people.length > 0
  puts famous_cs_people.join(', ')
else
  puts "The famousCSPeople array is empty or not defined."
end
