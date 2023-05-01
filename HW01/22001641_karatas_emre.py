# Declare an empty list
empty_list = []

# Initialize a list with some values
famous_cs_people = ["Tim Barners-Lee", "Alan Turing", "Barbara Liskov"]

# Check if the list is empty or not
print("emptyList is empty" if not empty_list else "emptyList is not empty")
print("famousCSPeople is empty" if not famous_cs_people else "famousCSPeople is not empty")

# Add a new element to a list
famous_cs_people.append("Lars Bak")

# Check if a particular element exists in the list
def contains(list, element):
    return element in list

if contains(famous_cs_people, "Ada Lovelace"):
    print("Ada Lovelace exists in famousCSPeople")
else:
    print("Ada Lovelace does not exist in famousCSPeople")

# Remove a particular element from the list
def remove_element(list, element):
    if element in list:
        list.remove(element)

remove_element(famous_cs_people, "Barbara Liskov")

# Get the head and the tail of a list
if len(famous_cs_people) > 0:
    head = famous_cs_people[0]
    tail = famous_cs_people[1:]

    # Print the head and tail of the list with labels
    print("Head is:", head)
    print("Tail is:", ', '.join(tail))
else:
    print("The famousCSPeople array is empty or not defined.")

# Print all of the elements in the list
if len(famous_cs_people) > 0:
    print(', '.join(famous_cs_people))
else:
    print("The famousCSPeople array is empty or not defined.")
