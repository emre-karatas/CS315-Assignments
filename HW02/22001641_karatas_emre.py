print('---5.1---')
# Type Checking Example
def print_famous_cs_people_details(name: str, birth_year: int):
    print(f'Name: {name}, Birth Year: {birth_year}')

print_famous_cs_people_details("Alan Turing", 1912)


print('---5.2---')
# Named Parameters Example
def print_famous_cs_people_details(name, birth_year):
    print(f'Name: {name}, Birth Year: {birth_year}')

print_famous_cs_people_details(birth_year=1939, name="Barbara Liskov")

print('---5.3---')
# Default Parameters Example
def print_famous_cs_people_details(name="Ada Lovelace", birth_year=1815):
    print(f'Name: {name}, Birth Year: {birth_year}')

print_famous_cs_people_details()


print('---5.4---')
# Parameter Passing Methods Example
def change_famous_cs_people_details(name, details):
    name = "Bjarne Stroustrup"
    details['name'] = "Bjarne Stroustrup"

name = "Alan Turing"
details = {'name': "Elon Musk"}

change_famous_cs_people_details(name, details)

print(name)  # prints "Elon Musk"
print(details['name'])  # prints "Bjarne Stroustrup"


print('---5.5---')
# Subprograms as Parameters Example
def print_famous_cs_people_details(name, birth_year):
    print(f'Name: {name}, Birth Year: {birth_year}')

def print_with_introduction(func, name, birth_year):
    print('------Famous CS Person Details------')
    func(name, birth_year)
    print('------------------------------------')

print_with_introduction(print_famous_cs_people_details, "Larry Page", 1973)


