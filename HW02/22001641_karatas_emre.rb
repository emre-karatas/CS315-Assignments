puts('---5.1---')
# Type Checking Example
def print_famous_cs_people_details(name, birth_year)
  puts "Name: #{name}, Birth Year: #{birth_year}"
end

print_famous_cs_people_details("Alan Turing", 1912)
print_famous_cs_people_details(1912, "Alan Turing") # This also works but the output is not as expected.

puts('---5.2---')
# Named Parameters Example
def print_famous_cs_people_details(name:, birth_year:)
  puts "Name: #{name}, Birth Year: #{birth_year}"
end

print_famous_cs_people_details(birth_year: 1939, name: "Barbara Liskov")

puts('---5.3---')
# Default Parameters Example
def print_famous_cs_people_details(name = "Ada Lovelace", birth_year = 1815)
  puts "Name: #{name}, Birth Year: #{birth_year}"
end

print_famous_cs_people_details()

puts('---5.4---')
# Parameter Passing Methods Example
def change_famous_cs_people_details(name, details)
  name = "Bjarne Stroustrup"
  details[:name] = "Bjarne Stroustrup"
end

name = "Elon Musk"
details = {name: "Jeff Bezos"}

change_famous_cs_people_details(name, details)

puts name  # prints "Elon Musk"
puts details[:name]  # prints "Bjarne Stroustrup"

puts('---5.5---')
# Subprograms as Parameters Example
def print_famous_cs_people_details(name, birth_year)
  puts "Name: #{name}, Birth Year: #{birth_year}"
end

def print_with_introduction(func, name, birth_year)
  puts '------Famous CS Person Details------'
  func.call(name, birth_year)
  puts '------------------------------------'
end

print_func = Proc.new do |name, birth_year|
  print_famous_cs_people_details(name, birth_year)
end

print_with_introduction(print_func, "Larry Page", 1973)
