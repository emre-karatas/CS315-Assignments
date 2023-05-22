-- Formal and actual parameters type checked
function printFamousCSPersonWithTypeCheck(name, birthYear)
    if type(name) ~= 'string' or type(birthYear) ~= 'number' then
        error('Invalid parameters')
    end
    print('Name: '..name..', Birth Year: '..birthYear)
end

print('---4.1---')
printFamousCSPersonWithTypeCheck('Alan Turing', 1912)

-- Named parameters
function printFamousCSPersonNamed(details)
    print('Name: '..details.name..', Birth Year: '..details.birthYear)
end

print('---4.2---')
printFamousCSPersonNamed({name = 'Barbara Liskov', birthYear = 1939})

-- Default parameters
function printFamousCSPersonDefault(name, birthYear)
    name = name or 'Elon Musk'
    birthYear = birthYear or 1923
    print('Name: '..name..', Birth Year: '..birthYear)
end

print('---4.3---')
printFamousCSPersonDefault()

-- Parameter passing methods
function changeFamousCSPerson(person)
    person.name = 'Changed Name'
end

print('---4.4---')
famousPerson = {name = 'Ada Lovelace'}
changeFamousCSPerson(famousPerson)
print(famousPerson.name)  -- prints 'Changed Name'

-- Subprograms as parameters
function printWithFunction(func, name, birthYear)
    print('***')
    func(name, birthYear)
    print('***')
end

function printFamousCSPersonSub(name, birthYear)
    print('Name: '..name..', Birth Year: '..birthYear)
end

print('---4.5---')
printWithFunction(printFamousCSPersonSub, 'Larry Page', 1973)
